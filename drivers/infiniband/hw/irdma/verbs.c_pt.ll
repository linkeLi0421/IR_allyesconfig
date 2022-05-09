; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/verbs.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rdma_stat_desc = type { ptr, i32, ptr }
%struct.irdma_modify_qp_info = type <{ i64, i64, i16, i8, i8, i8, i16, i8 }>
%struct.irdma_modify_qp_resp = type { i64, i64, i16, i8, [5 x i8] }
%struct.irdma_modify_qp_req = type { i8, i8, [6 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.irdma_qp = type { %struct.ib_qp, [4 x i8], %struct.irdma_sc_qp, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_qp_host_ctx_info, %union.anon.292, %union.anon.293, %struct.irdma_ah, %struct.list_head, %struct.refcount_struct, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, ptr, i8, i8, i16, i16, i8, i8, %struct.irdma_qp_kmode, %struct.irdma_dma_mem, %struct.timer_list, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.completion, %struct.wait_queue_head, %struct.wait_queue_head, i8 }
%struct.irdma_sc_qp = type <{ %struct.irdma_qp_uk, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, [4 x i8], %struct.irdma_pfpdu, i32, ptr, i64, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, [3 x i8], i32, i32, i8, i8, [2 x i8], %struct.list_head }>
%struct.irdma_qp_uk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_ring, %struct.irdma_ring, %struct.irdma_ring, i32, i32, i32, i32, i32, i32, i32, %struct.irdma_wqe_uk_ops, i16, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_wqe_uk_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_pfpdu = type { %struct.list_head, i32, i32, i32, i32, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.spinlock, ptr }
%struct.irdma_qp_host_ctx_info = type { i64, %union.anon.290, %union.anon.291, i32, i32, i32, i8, i8, i8 }
%union.anon.290 = type { ptr }
%union.anon.291 = type { ptr }
%union.anon.292 = type { %struct.irdma_roce_offload_info }
%struct.irdma_roce_offload_info = type { i16, i16, i32, i32, i8, i8, i8, i32, i16, i16, i16, i16, i16, i8, [6 x i8], i8 }
%union.anon.293 = type { %struct.irdma_tcp_offload_info }
%struct.irdma_tcp_offload_info = type { i16, i8, i8, i8, i8, i8, i16, i16, [4 x i32], i32, i16, i16, i16, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [4 x i32] }
%struct.irdma_ah = type { %struct.ib_ah, %struct.irdma_sc_ah, ptr, %struct.irdma_av, i8, %union.ib_gid }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.irdma_sc_ah = type { ptr, %struct.irdma_ah_info }
%struct.irdma_ah_info = type { ptr, i32, i32, [4 x i32], [4 x i32], i32, i32, i16, i8, i8, i8, [6 x i8], i8 }
%struct.irdma_av = type { [16 x i8], %struct.rdma_ah_attr, %union.anon.294, %union.anon.294, i8 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.214 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.214 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%union.anon.294 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%union.ib_gid = type { %struct.anon.190 }
%struct.anon.190 = type { i64, i64 }
%struct.irdma_qp_kmode = type { %struct.irdma_dma_mem, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irdma_device = type { %struct.ib_device, ptr, ptr, ptr, %struct.irdma_sc_vsi, %struct.irdma_cm_core, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.228, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.228 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.191 }
%struct.anon.191 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.irdma_cm_core = type { ptr, ptr, %struct.list_head, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.irdma_udp_offload_info = type { i8, i8, i8, i16, i16, [4 x i32], i32, i16, i16, i32, i8, i32, i32, i32, i32, i32, [4 x i32], i32, i8, i8 }
%struct.irdma_pd = type { %struct.ib_pd, %struct.irdma_sc_pd }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.irdma_sc_pd = type { ptr, i32, i32 }
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
%struct.irdma_gen_ops = type { ptr, ptr, ptr }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.irdma_cq = type { %struct.ib_cq, %struct.irdma_sc_cq, i16, i16, i16, i8, i8, i32, i32, i32, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.irdma_cq_poll_info }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.187, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.187 = type { %struct.work_struct }
%struct.irdma_cq_poll_info = type { i64, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [6 x i8], i8, i8 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.uverbs_attr = type { %union.anon.219 }
%union.anon.219 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.220, i16, i16, i8 }
%union.anon.220 = type { i64 }
%struct.cqp_cmds_info = type { %struct.list_head, i8, i8, %struct.cqp_info }
%struct.cqp_info = type { %union.anon.244 }
%union.anon.244 = type { %struct.anon.273 }
%struct.anon.273 = type { ptr, %struct.irdma_update_sds_info, i64 }
%struct.irdma_update_sds_info = type { i32, i8, [11 x %struct.irdma_update_sd_entry] }
%struct.irdma_update_sd_entry = type { i64, i64 }
%struct.anon.260 = type { ptr, %struct.irdma_cqp_manage_push_page_info, i64 }
%struct.irdma_cqp_manage_push_page_info = type { i32, i16, i8, i8 }
%struct.irdma_cqp_request = type { %struct.cqp_cmds_info, %struct.wait_queue_head, %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.irdma_cqp_compl_info, i8 }
%struct.irdma_cqp_compl_info = type { i32, i16, i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irdma_ucontext = type { %struct.ib_ucontext, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, i8 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.irdma_user_mmap_entry = type { %struct.rdma_user_mmap_entry, i64, i8 }
%struct.rdma_user_mmap_entry = type { %struct.kref, ptr, i32, i32, i8 }
%struct.irdma_cm_node = type { ptr, ptr, ptr, %struct.irdma_cm_tcp_context, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.irdma_mpa_priv_info, ptr, %union.anon.287, %struct.irdma_kmem_info, ptr, %struct.hlist_node, %struct.completion, %struct.spinlock, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i32, i16, i16, i16, i16, i16, [512 x i8], [6 x i8], [6 x i8], i8, i8, i8 }
%struct.irdma_cm_tcp_context = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.irdma_mpa_priv_info = type { ptr, i32 }
%union.anon.287 = type { %struct.ietf_mpa_v2 }
%struct.ietf_mpa_v2 = type { [16 x i8], i8, i8, i16, %struct.ietf_rtr_msg, [0 x i8] }
%struct.ietf_rtr_msg = type { i16, i16 }
%struct.irdma_kmem_info = type { ptr, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.176, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.176 = type { %struct.list_head }
%struct.irdma_mr = type { %union.anon.295, ptr, i16, i32, i64, i32, i32, i64, [4 x i64], %struct.irdma_pbl }
%union.anon.295 = type { %struct.ib_mr }
%struct.irdma_pbl = type { %struct.list_head, %union.anon.288, i8, i64, %struct.irdma_pble_alloc, ptr }
%union.anon.288 = type { %struct.irdma_qp_mr }
%struct.irdma_qp_mr = type { %struct.irdma_hmc_pble, %struct.irdma_hmc_pble, i32, ptr }
%struct.irdma_hmc_pble = type { %union.anon.289 }
%union.anon.289 = type { i32 }
%struct.irdma_reg_ns_stag_info = type { i64, i64, i64, i32, i32, i32, i32, i32, i16, i32, i8, i8, i8, i8 }
%struct.ib_event = type { ptr, %union.anon.175, i32 }
%union.anon.175 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.192, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.213, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.192 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.213 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.243, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.243 = type { ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.irdma_create_ah_resp = type { i32, [4 x i8] }
%union.anon.297 = type { %struct.sockaddr_in6 }
%struct.rdma_ah_init_attr = type { ptr, i32, ptr }
%union.anon.298 = type { %struct.sockaddr_in6 }
%struct.anon.277 = type { ptr, %struct.irdma_mcast_grp_info, i64 }
%union.anon.299 = type { %struct.sockaddr_in6 }
%struct.irdma_post_sq_info = type { i64, i8, i8, i16, i32, i32, %union.anon.300 }
%union.anon.300 = type { %struct.irdma_bind_window }
%struct.irdma_bind_window = type { i32, i64, ptr, i32, i8, i32, i8 }
%struct.irdma_fast_reg_stag_info = type { i64, i64, i64, ptr, i64, i32, i32, i32, i32, i32, i16, i32, i8, i8, i8, i8 }
%struct.irdma_rdma_read = type { ptr, i32, %struct.ib_sge }
%struct.ib_sge = type { i64, i32, i32 }
%struct.irdma_post_inline_send = type { ptr, i32, i32, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.174, ptr, i32, i32, i32, %union.anon.188 }
%union.anon.174 = type { i64 }
%union.anon.188 = type { i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.irdma_post_rq_info = type { i64, ptr, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.189, ptr, i32 }
%union.anon.189 = type { i64 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.irdma_alloc_ucontext_req = type { i32, i8, [3 x i8] }
%struct.irdma_alloc_ucontext_resp = type { i32, i32, i32, i8, [3 x i8], i64, i64, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.irdma_alloc_pd_resp = type { i32, [4 x i8] }
%struct.irdma_create_qp_req = type { i64, i64 }
%struct.irdma_create_qp_resp = type { i32, i32, i32, i32, i16, i8, i8, i32 }
%struct.irdma_qp_init_info = type { %struct.irdma_qp_uk_init_info, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i8, i8, i8 }
%struct.irdma_qp_uk_init_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.irdma_qp_quanta = type { [4 x i64] }
%struct.irdma_cq_init_info = type { ptr, i64, i64, i32, i32, i8, i32, i8, i8, i8, %struct.irdma_cq_uk_init_info, ptr }
%struct.irdma_cq_uk_init_info = type { ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.irdma_create_cq_req = type { i64, i64 }
%struct.irdma_create_cq_resp = type { i32, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.irdma_ceq = type { %struct.irdma_sc_ceq, %struct.irdma_dma_mem, i32, i32, ptr, %struct.tasklet_struct, %struct.spinlock }
%struct.irdma_sc_ceq = type { i32, i64, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8, i32, i8, ptr, ptr, i32, %struct.spinlock, i8 }
%struct.irdma_modify_cq_info = type { i64, ptr, i32, i32, i8, i32, i8, i8, i8 }
%struct.irdma_resize_cq_req = type { i64 }
%struct.irdma_cq_buf = type { %struct.irdma_dma_mem, %struct.irdma_cq_uk, ptr, %struct.list_head, %struct.work_struct }
%struct.irdma_mem_reg_req = type { i16, i16, i16, i16 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.anon.254 = type { ptr, %struct.irdma_dealloc_stag_info, i64 }
%struct.irdma_dealloc_stag_info = type { i32, i32, i8 }
%struct.irdma_allocate_stag_info = type { i64, i64, i32, i32, i32, i32, i16, i8, i8 }
%struct.ib_mw = type { ptr, ptr, ptr, i32, i32 }
%struct.anon.252 = type { ptr, %struct.irdma_mw_alloc_info, i64 }
%struct.irdma_mw_alloc_info = type { i32, i32, i32, i8 }
%struct.irdma_vsi_pestat = type { ptr, %struct.irdma_dev_hw_stats, %struct.irdma_stats_gather_info, %struct.timer_list, ptr, %struct.irdma_dev_hw_stats, %struct.spinlock }
%struct.irdma_stats_gather_info = type <{ i8, i8, i8, %struct.irdma_dma_mem, i8, ptr, ptr }>
%struct.irdma_dev_hw_stats = type { [13 x i64], [33 x i64] }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.ib_wc = type { %union.anon.185, i32, i32, i32, i32, ptr, %union.anon.186, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.185 = type { i64 }
%union.anon.186 = type { i32 }
%struct.irdma_iwarp_offload_info = type { i16, i16, i8, i8, i8, i16, i32, i16, i16, i16, i16, i16, i8, [6 x i8], i8 }
%struct.anon.245 = type { ptr, %struct.irdma_create_qp_info, i64 }
%struct.irdma_create_qp_info = type { i8, i8, i8 }
%struct.ib_block_iter = type { ptr, i32, i32, i32, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rd_atomic = %d, above max_hw_ord=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rd_atomic = %d, above max_hw_ird=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/hw/irdma/verbs.c\00", [60 x i8] zeroinitializer }, align 32
@irdma_modify_qp_roce.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_modify_qp_roce\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"VERBS: caller: %pS qp_id=%d to_ibqpstate=%d ibqpstate=%d irdma_qpstate=%d attr_mask=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"modify_qp invalid for qp_id=%d, old_state=0x%x, new_state=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@irdma_modify_qp_roce.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 1, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VERBS: copy_to_udata failed\0A\00", [35 x i8] zeroinitializer }, align 32
@irdma_modify_qp.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_modify_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"VERBS: caller: %pS qp_id=%d to_ibqpstate=%d ibqpstate=%d irdma_qpstate=%d last_aeq=%d hw_tcp_state=%d hw_iwarp_state=%d attr_mask=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@irdma_modify_qp.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.7, i8 1, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irdma%d\00", [24 x i8] zeroinitializer }, align 32
@irdma_ib_register_device.__UNIQUE_ID_ddebug744 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 4, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irdma_ib_register_device\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VERBS: Register RDMA device fail\0A\00", [62 x i8] zeroinitializer }, align 32
@ip_tos2prio = external dso_local local_unnamed_addr constant [16 x i8], align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@irdma_alloc_rsrc.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.17, ptr @.str.18, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_alloc_rsrc\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/irdma/main.h\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERR: resource [%d] allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@irdma_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 9, i32 5, i8 0, ptr null, ptr null, ptr @irdma_post_send, ptr @irdma_post_recv, ptr null, ptr null, ptr @irdma_poll_cq, ptr null, ptr @irdma_req_notify_cq, ptr null, ptr null, ptr @irdma_query_device, ptr null, ptr @irdma_get_dev_fw_str, ptr null, ptr @irdma_query_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_alloc_ucontext, ptr @irdma_dealloc_ucontext, ptr @irdma_mmap, ptr @irdma_mmap_free, ptr @irdma_disassociate_ucontext, ptr @irdma_alloc_pd, ptr @irdma_dealloc_pd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_create_qp, ptr null, ptr @irdma_query_qp, ptr @irdma_destroy_qp, ptr @irdma_create_cq, ptr null, ptr @irdma_destroy_cq, ptr @irdma_resize_cq, ptr @irdma_get_dma_mr, ptr @irdma_reg_user_mr, ptr null, ptr null, ptr @irdma_dereg_mr, ptr @irdma_alloc_mr, ptr null, ptr null, ptr @irdma_map_mr_sg, ptr null, ptr @irdma_alloc_mw, ptr @irdma_dealloc_mw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_alloc_hw_port_stats, ptr @irdma_get_hw_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_ib_dealloc_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 256, i32 0, i32 464, i32 328, i32 124, i32 1536, i32 0, i32 0, i32 268, i32 0 }, [148 x i8] zeroinitializer }, align 32
@irdma_roce_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_roce_port_immutable, ptr @irdma_get_link_layer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_query_pkey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_create_ah, ptr @irdma_create_ah, ptr null, ptr @irdma_query_ah, ptr @irdma_destroy_ah, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_modify_qp_roce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_attach_mcast, ptr @irdma_detach_mcast, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@irdma_create_ah.__UNIQUE_ID_ddebug740 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 4, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_create_ah\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VERBS: CQP-OP Create AH fail\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@irdma_create_ah.__UNIQUE_ID_ddebug741 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 4, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VERBS: CQP create AH timed out\00", [33 x i8] zeroinitializer }, align 32
@irdma_attach_mcast.__UNIQUE_ID_ddebug735 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 3, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_attach_mcast\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VERBS: qp_id=%d, IP6address=%pI6\0A\00", [62 x i8] zeroinitializer }, align 32
@irdma_attach_mcast.__UNIQUE_ID_ddebug736 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 3, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VERBS: qp_id=%d, IP4address=%pI4, MAC=%pM\0A\00", [53 x i8] zeroinitializer }, align 32
@irdma_detach_mcast.__UNIQUE_ID_ddebug737 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 3, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_detach_mcast\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VERBS: address not found MCG\0A\00", [34 x i8] zeroinitializer }, align 32
@irdma_detach_mcast.__UNIQUE_ID_ddebug738 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 4, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VERBS: failed MC_DESTROY MCG\0A\00", [34 x i8] zeroinitializer }, align 32
@irdma_detach_mcast.__UNIQUE_ID_ddebug739 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 4, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VERBS: failed Modify MCG\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_iw_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_iw_port_immutable, ptr null, ptr null, ptr null, ptr null, ptr @irdma_query_gid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irdma_modify_qp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@irdma_post_send.__UNIQUE_ID_ddebug731 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 3, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_post_send\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VERBS: upost_send bad opcode = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@irdma_post_recv.__UNIQUE_ID_ddebug732 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 3, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_post_recv\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VERBS: post_recv err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__irdma_poll_cq.__UNIQUE_ID_ddebug733 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 3, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__irdma_poll_cq\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error polling CQ, irdma_err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid opcode = %d in CQE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@irdma_alloc_ucontext.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&ucontext->cq_reg_mem_list_lock\00", [32 x i8] zeroinitializer }, align 32
@irdma_alloc_ucontext.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&ucontext->qp_reg_mem_list_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Invalid userspace driver version detected. Detected version %d, should be %d\0A\00", [50 x i8] zeroinitializer }, align 32
@irdma_mmap.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irdma_mmap\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VERBS: pgoff[0x%lx] does not have valid entry\0A\00", [49 x i8] zeroinitializer }, align 32
@irdma_mmap.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VERBS: bar_offset [0x%llx] mmap_flag [%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@irdma_mmap.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"VERBS: bar_offset [0x%llx] mmap_flag[%d] err[%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@irdma_create_qp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&iwqp->waitq\00", [19 x i8] zeroinitializer }, align 32
@irdma_create_qp.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&iwqp->mod_qp_waitq\00", [44 x i8] zeroinitializer }, align 32
@irdma_create_qp.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_create_qp\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VERBS: ib_copy_from_data fail\0A\00", [33 x i8] zeroinitializer }, align 32
@irdma_create_qp.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VERBS: no pbl info\0A\00", [44 x i8] zeroinitializer }, align 32
@irdma_create_qp.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VERBS: setup qp failed\0A\00", [40 x i8] zeroinitializer }, align 32
@irdma_create_qp.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VERBS: qp_init fail\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_create_qp.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&iwqp->lock\00", [20 x i8] zeroinitializer }, align 32
@irdma_create_qp.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&iwqp->sc_qp.pfpdu.lock\00", [40 x i8] zeroinitializer }, align 32
@irdma_create_qp.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.7, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@irdma_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&iwcq->lock\00", [20 x i8] zeroinitializer }, align 32
@irdma_create_cq.__UNIQUE_ID_ddebug723 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 2, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_create_cq\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VERBS: init cq fail\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_create_cq.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 2, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VERBS: copy to user data\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_resize_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&cq_buf->work)\00", [63 x i8] zeroinitializer }, align 32
@irdma_reg_user_mr.__UNIQUE_ID_ddebug728 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 2, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irdma_reg_user_mr\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VERBS: Failed to create ib_umem region\0A\00", [56 x i8] zeroinitializer }, align 32
@irdma_handle_q_mem.__UNIQUE_ID_ddebug727 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 2, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_handle_q_mem\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VERBS: MR type error\0A\00", [42 x i8] zeroinitializer }, align 32
@irdma_hw_stat_descs = internal constant { [46 x %struct.rdma_stat_desc], [152 x i8] } { [46 x %struct.rdma_stat_desc] [%struct.rdma_stat_desc { ptr @.str.67, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.68, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.69, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.70, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.71, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.72, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.73, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.74, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.75, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.76, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.77, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.78, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.79, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.80, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.81, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.82, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.83, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.84, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.85, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.86, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.87, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.88, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.89, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.90, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.91, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.92, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.93, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.94, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.95, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.96, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.97, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.98, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.99, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.100, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.101, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.102, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.103, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.104, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.105, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.106, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.107, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.108, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.109, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.110, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.111, i32 0, ptr null }, %struct.rdma_stat_desc { ptr @.str.112, i32 0, ptr null }], [152 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip4InDiscards\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip4InTruncatedPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip4OutNoRoutes\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip6InDiscards\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip6InTruncatedPkts\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6OutNoRoutes\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcpRetransSegs\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcpInOptErrors\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcpInProtoErrors\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rxVlanErrors\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cnpHandled\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cnpIgnored\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cnpSent\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip4InOctets\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4InPkts\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip4InReasmRqd\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip4InMcastPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip4OutOctets\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip4OutPkts\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip4OutSegRqd\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip4OutMcastPkts\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip6InOctets\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6InPkts\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip6InReasmRqd\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6InMcastPkts\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip6OutOctets\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip6OutPkts\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip6OutSegRqd\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip6OutMcastPkts\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcpInSegs\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcpOutSegs\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwInRdmaReads\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwInRdmaSends\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iwInRdmaWrites\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iwOutRdmaReads\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iwOutRdmaSends\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iwOutRdmaWrites\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iwRdmaBnd\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iwRdmaInv\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip4InMcastOctets\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip4OutMcastOctets\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip6InMcastOctets\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip6OutMcastOctets\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RxUDP\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TxUDP\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxECNMrkd\00", [22 x i8] zeroinitializer }, align 32
@switch.table.irdma_modify_qp_roce = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 512, i32 1024, i32 2048, i32 4096], [44 x i8] zeroinitializer }, align 32
@switch.table.irdma_poll_one = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 5, i32 4, i32 10, i32 2, i32 11, i32 1, i32 19, i32 12, i32 6], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.118 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 9, i64 11, i64 32]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967228, i64 4294967274]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967228, i64 4294967274]
@__sancov_gen_cov_switch_values.127 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 13, i64 62, i64 63]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1246, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1259, i32 7 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1277, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1279, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1288, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1430, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1475, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4496, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4507, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 230, i32 6 }
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 214, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 156, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [38 x i8] c"../drivers/infiniband/hw/irdma/main.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 428, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"irdma_dev_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4348, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"irdma_roce_dev_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4329, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4246, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4260, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3949, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3958, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4092, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4105, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4126, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"irdma_iw_dev_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 4342, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3237, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3294, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3553, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3432, i32 6 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3741, i32 40 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 356, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 358, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 364, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 211, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 218, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 241, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 876, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 877, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 883, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 904, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 916, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 942, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 960, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 961, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 87, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1966, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 2081, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 2112, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 1900, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 2756, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 2414, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [20 x i8] c"irdma_hw_stat_descs\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3652, i32 36 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3655, i32 44 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3656, i32 42 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3657, i32 44 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3658, i32 44 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3659, i32 42 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3660, i32 44 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3661, i32 41 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3662, i32 43 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3663, i32 45 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3654, i32 41 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3664, i32 46 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3665, i32 46 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3666, i32 43 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3670, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3672, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3674, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3678, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3680, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3682, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3684, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3688, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3690, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3692, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3694, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3698, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3700, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3702, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3704, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3708, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3710, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3712, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3714, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3716, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3718, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3720, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3722, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3724, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3726, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3728, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3676, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3686, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3696, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3706, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3730, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3732, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.493 = private constant [39 x i8] c"../drivers/infiniband/hw/irdma/verbs.c\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.493, i32 3734, i32 11 }
@___asan_gen_.495 = private unnamed_addr constant [34 x i8] c"switch.table.irdma_modify_qp_roce\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [28 x i8] c"switch.table.irdma_poll_one\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @irdma_dev_ops, ptr @irdma_roce_dev_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @irdma_iw_dev_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @irdma_alloc_ucontext.__key, ptr @.str.37, ptr @irdma_alloc_ucontext.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @irdma_create_qp.__key, ptr @.str.45, ptr @irdma_create_qp.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @irdma_create_qp.__key.53, ptr @.str.54, ptr @irdma_create_qp.__key.55, ptr @.str.56, ptr @init_completion.__key, ptr @.str.57, ptr @irdma_create_cq.__key, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @irdma_resize_cq.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @irdma_hw_stat_descs, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @switch.table.irdma_modify_qp_roce, ptr @switch.table.irdma_poll_one], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_roce_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_iw_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_alloc_ucontext.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_alloc_ucontext.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_qp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_qp.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_qp.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_qp.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_resize_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_hw_stat_descs to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_modify_qp_roce to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_poll_one to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_modify_qp_roce(ptr noundef %ibqp, ptr noundef %attr, i32 noundef %attr_mask, ptr noundef readonly %udata) #0 align 64 {
entry:
  %info = alloca %struct.irdma_modify_qp_info, align 8
  %uresp = alloca %struct.irdma_modify_qp_resp, align 8
  %ureq = alloca %struct.irdma_modify_qp_req, align 8
  %vlan_id = alloca i16, align 2
  %local_ip = alloca [4 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %iwdev2 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %2 = ptrtoint ptr %iwdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iwdev2, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #21
  %6 = call ptr @memset(ptr %info, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uresp) #21
  %7 = call ptr @memset(ptr %uresp, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ureq) #21
  %8 = ptrtoint ptr %ureq to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %ureq, align 8
  %ctx_info3 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9
  %9 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10
  %10 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool.not, label %if.end, label %entry.cleanup571_crit_edge

entry.cleanup571_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

if.end:                                           ; preds = %entry
  %and4 = and i32 %attr_mask, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 7
  %11 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dest_qp_num, align 4
  %dest_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 3
  %13 = ptrtoint ptr %dest_qp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dest_qp, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %and8 = and i32 %attr_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %14 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkey_index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i = icmp eq i16 %15, 0
  br i1 %cmp.not.i, label %irdma_query_pkey.exit.thread, label %if.then10.cleanup571_crit_edge

if.then10.cleanup571_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

irdma_query_pkey.exit.thread:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #23
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %9, align 2
  br label %if.end15

if.end15:                                         ; preds = %irdma_query_pkey.exit.thread, %if.end7.if.end15_crit_edge
  %and16 = and i32 %attr_mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %17 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qkey, align 8
  %qkey19 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 2
  %19 = ptrtoint ptr %qkey19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %qkey19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %and21 = and i32 %attr_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 2
  %20 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %path_mtu, align 8
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 5
  br i1 %22, label %switch.lookup, label %if.then23.ib_mtu_enum_to_int.exit_crit_edge

if.then23.ib_mtu_enum_to_int.exit_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_enum_to_int.exit

switch.lookup:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #23
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.irdma_modify_qp_roce, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ib_mtu_enum_to_int.exit

ib_mtu_enum_to_int.exit:                          ; preds = %switch.lookup, %if.then23.ib_mtu_enum_to_int.exit_crit_edge
  %retval.0.i821 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.then23.ib_mtu_enum_to_int.exit_crit_edge ]
  %snd_mss = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %snd_mss to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i821, ptr %snd_mss, align 4
  br label %if.end25

if.end25:                                         ; preds = %ib_mtu_enum_to_int.exit, %if.end20.if.end25_crit_edge
  %and26 = and i32 %attr_mask, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %25 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sq_psn, align 8
  %psn_nxt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 13
  %27 = ptrtoint ptr %psn_nxt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %psn_nxt, align 4
  %lsn = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 14
  %28 = ptrtoint ptr %lsn to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %lsn, align 4
  %29 = load i32, ptr %sq_psn, align 8
  %psn_una = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 19
  %30 = ptrtoint ptr %psn_una to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %psn_una, align 4
  %31 = load i32, ptr %sq_psn, align 8
  %psn_max = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 18
  %32 = ptrtoint ptr %psn_max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %psn_max, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %and32 = and i32 %attr_mask, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %33 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rq_psn, align 4
  %epsn = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 17
  %35 = ptrtoint ptr %epsn to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %epsn, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %and36 = and i32 %attr_mask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #23
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 22
  %36 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rnr_retry, align 2
  %rnr_nak_thresh = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %10, i32 0, i32 19
  %38 = ptrtoint ptr %rnr_nak_thresh to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rnr_nak_thresh, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %and40 = and i32 %attr_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 21
  %39 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %retry_cnt, align 1
  %rexmit_thresh = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 25
  %41 = ptrtoint ptr %rexmit_thresh to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rexmit_thresh, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39.if.end43_crit_edge
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pd_id, align 4
  %44 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %pd_id44 = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %pd_id44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %pd_id44, align 4
  %and45 = and i32 %attr_mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end169_crit_edge, label %if.then47

if.end43.if.end169_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end169

if.then47:                                        ; preds = %if.end43
  %roce_ah = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #21
  %48 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 4096, ptr %vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_ip) #21
  %49 = call ptr @memset(ptr %local_ip, i32 255, i32 16)
  %50 = call ptr @memset(ptr %roce_ah, i32 0, i32 256)
  %ah_attr = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10
  %ah_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 4
  %51 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ah_flags, align 8
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool51.not = icmp eq i8 %53, 0
  br i1 %tobool51.not, label %if.then47.if.end77_crit_edge, label %if.then52

if.then47.if.end77_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end77

if.then52:                                        ; preds = %if.then47
  %hop_limit = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 0, i32 4
  %54 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hop_limit, align 1
  %ttl = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %10, i32 0, i32 1
  %56 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ttl, align 1
  %flow_label = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 0, i32 2
  %57 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flow_label, align 8
  %flow_label56 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 10
  %59 = ptrtoint ptr %flow_label56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %flow_label56, align 4
  %traffic_class = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 0, i32 5
  %60 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %traffic_class, align 2
  %tos = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 1
  %62 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then52.rdma_get_udp_sport.exit_crit_edge

if.then52.rdma_get_udp_sport.exit_crit_edge:      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #23
  br label %rdma_get_udp_sport.exit

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #23
  %dest_qp60 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 3
  %63 = ptrtoint ptr %dest_qp60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dest_qp60, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %65 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qp_num, align 4
  %conv.i.i = zext i32 %66 to i64
  %conv1.i.i = zext i32 %64 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 20
  %xor.i.i = xor i64 %shr.i.i, %mul.i.i
  %shr2.i.i = lshr i64 %xor.i.i, 40
  %xor3.i.i = xor i64 %shr2.i.i, %xor.i.i
  %67 = trunc i64 %xor3.i.i to i32
  %conv4.i.i = and i32 %67, 1048575
  br label %rdma_get_udp_sport.exit

rdma_get_udp_sport.exit:                          ; preds = %if.then.i, %if.then52.rdma_get_udp_sport.exit_crit_edge
  %fl.addr.0.i = phi i32 [ %58, %if.then52.rdma_get_udp_sport.exit_crit_edge ], [ %conv4.i.i, %if.then.i ]
  %and1.i.i = lshr i32 %fl.addr.0.i, 14
  %shr.i3.i = and i32 %and1.i.i, 63
  %xor.i4.i = xor i32 %shr.i3.i, %fl.addr.0.i
  %68 = trunc i32 %xor.i4.i to i16
  %conv.i5.i = or i16 %68, -16384
  %src_port = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 3
  %69 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i5.i, ptr %src_port, align 4
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  tail call void @irdma_qp_rem_qos(ptr noundef %sc_qp) #21
  %ws_remove = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 41
  %70 = ptrtoint ptr %ws_remove to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ws_remove, align 8
  %vsi = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 7
  %72 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vsi, align 4
  %user_pri = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 8
  %74 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %user_pri, align 2
  tail call void %71(ptr noundef %73, i8 noundef zeroext %75) #21
  %76 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tos, align 2
  %78 = lshr i8 %77, 1
  %79 = and i8 %78, 15
  %80 = zext i8 %79 to i32
  %arrayidx.i = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i, align 1
  %83 = ptrtoint ptr %user_pri to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %user_pri, align 2
  %user_pri68 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 31
  %84 = ptrtoint ptr %user_pri68 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %user_pri68, align 1
  %ws_add = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 40
  %85 = ptrtoint ptr %ws_add to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ws_add, align 4
  %87 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vsi, align 4
  %call72 = tail call i32 %86(ptr noundef %88, i8 noundef zeroext %82) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %rdma_get_udp_sport.exit.cleanup.thread_crit_edge

rdma_get_udp_sport.exit.cleanup.thread_crit_edge: ; preds = %rdma_get_udp_sport.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end75:                                         ; preds = %rdma_get_udp_sport.exit
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @irdma_qp_add_qos(ptr noundef %sc_qp) #21
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.then47.if.end77_crit_edge
  %89 = ptrtoint ptr %ah_attr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ah_attr, align 8
  %91 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %44, align 4
  %mac_addr = getelementptr inbounds %struct.irdma_roce_offload_info, ptr %92, i32 0, i32 14
  %call81 = call i32 @rdma_read_gid_l2_fields(ptr noundef %90, ptr noundef nonnull %vlan_id, ptr noundef %mac_addr) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end77.cleanup.thread_crit_edge

if.end77.cleanup.thread_crit_edge:                ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end84:                                         ; preds = %if.end77
  %93 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %94)
  %cmp = icmp ugt i16 %94, 4095
  br i1 %cmp, label %land.lhs.true, label %if.end84.if.then93_crit_edge

if.end84.if.then93_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then93

land.lhs.true:                                    ; preds = %if.end84
  %dcb = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 17
  %95 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load = load i8, ptr %dcb, align 2
  %96 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %bf.cast.not = icmp eq i8 %96, 0
  br i1 %bf.cast.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %97 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %vlan_id, align 2
  br label %if.then93

if.end89:                                         ; preds = %land.lhs.true
  %98 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %98)
  %.pr = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %.pr)
  %cmp91 = icmp ult i16 %.pr, 4096
  br i1 %cmp91, label %if.end89.if.then93_crit_edge, label %if.else

if.end89.if.then93_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then93

if.then93:                                        ; preds = %if.end89.if.then93_crit_edge, %if.then88, %if.end84.if.then93_crit_edge
  %99 = phi i16 [ %.pr, %if.end89.if.then93_crit_edge ], [ %94, %if.end84.if.then93_crit_edge ], [ 0, %if.then88 ]
  %100 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load94 = load i8, ptr %10, align 4
  %bf.set = or i8 %bf.load94, 64
  store i8 %bf.set, ptr %10, align 4
  %user_pri97 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 8
  %101 = ptrtoint ptr %user_pri97 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %user_pri97, align 2
  %conv98 = zext i8 %102 to i16
  %shl = shl i16 %conv98, 13
  %or = or i16 %shl, %99
  %vlan_tag = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 9
  %103 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %or, ptr %vlan_tag, align 4
  br label %if.end103

if.else:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #23
  %104 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load100 = load i8, ptr %10, align 4
  %bf.clear101 = and i8 %bf.load100, -65
  store i8 %bf.clear101, ptr %10, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then93
  %attrs = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 1
  %105 = call ptr @memcpy(ptr %attrs, ptr %ah_attr, i32 56)
  %sgid_addr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 2
  %gid = getelementptr inbounds %struct.ib_gid_attr, ptr %90, i32 0, i32 2
  %106 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %gid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %109, %107
  %arrayidx4.i.i = getelementptr %struct.ib_gid_attr, ptr %90, i32 0, i32 2, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i823 = xor i32 %111, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then.i824, label %if.else.i

if.then.i824:                                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #23
  %112 = call ptr @memset(ptr %sgid_addr, i32 0, i32 16)
  %113 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 2, ptr %sgid_addr, align 4
  %sin_addr.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 2, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %gid, i32 12
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %add.ptr.i, align 1
  %116 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %sin_addr.i, align 4
  br label %rdma_gid2ip.exit

if.else.i:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #23
  %117 = call ptr @memset(ptr %sgid_addr, i32 0, i32 28)
  %118 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 10, ptr %sgid_addr, align 4
  %sin6_addr.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 2, i32 0, i32 3
  %119 = call ptr @memcpy(ptr %sin6_addr.i, ptr %gid, i32 16)
  br label %rdma_gid2ip.exit

rdma_gid2ip.exit:                                 ; preds = %if.else.i, %if.then.i824
  %dgid_addr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 3
  %dgid = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 0, i32 1
  %120 = ptrtoint ptr %dgid to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dgid, align 4
  %arrayidx2.i.i826 = getelementptr [4 x i32], ptr %dgid, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx2.i.i826 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx2.i.i826, align 4
  %or.i.i827 = or i32 %123, %121
  %arrayidx4.i.i828 = getelementptr %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 0, i32 1, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx4.i.i828 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx4.i.i828, align 4
  %xor.i.i829 = xor i32 %125, 65535
  %or5.i.i830 = or i32 %or.i.i827, %xor.i.i829
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i830)
  %cmp.i.i831 = icmp eq i32 %or5.i.i830, 0
  br i1 %cmp.i.i831, label %if.then.i834, label %if.else.i836

if.then.i834:                                     ; preds = %rdma_gid2ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  %126 = call ptr @memset(ptr %dgid_addr, i32 0, i32 16)
  %127 = ptrtoint ptr %dgid_addr to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2, ptr %dgid_addr, align 4
  %sin_addr.i832 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 3, i32 0, i32 2
  %add.ptr.i833 = getelementptr i8, ptr %dgid, i32 12
  %128 = ptrtoint ptr %add.ptr.i833 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %add.ptr.i833, align 1
  %130 = ptrtoint ptr %sin_addr.i832 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %sin_addr.i832, align 4
  br label %rdma_gid2ip.exit838

if.else.i836:                                     ; preds = %rdma_gid2ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  %131 = call ptr @memset(ptr %dgid_addr, i32 0, i32 28)
  %132 = ptrtoint ptr %dgid_addr to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 10, ptr %dgid_addr, align 4
  %sin6_addr.i835 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 3, i32 0, i32 3
  %133 = call ptr @memcpy(ptr %sin6_addr.i835, ptr %dgid, i32 16)
  br label %rdma_gid2ip.exit838

rdma_gid2ip.exit838:                              ; preds = %if.else.i836, %if.then.i834
  %134 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %sgid_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %135)
  %cmp109 = icmp eq i16 %135, 10
  br i1 %cmp109, label %if.then111, label %if.else127

if.then111:                                       ; preds = %rdma_gid2ip.exit838
  call void @__sanitizer_cov_trace_pc() #23
  %sin6_addr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 3, i32 0, i32 3
  %sin6_addr115 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 2, i32 0, i32 3
  %dest_ip_addr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 6
  call void @irdma_copy_ip_ntohl(ptr noundef %dest_ip_addr, ptr noundef %sin6_addr) #21
  %local_ipaddr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 20
  call void @irdma_copy_ip_ntohl(ptr noundef %local_ipaddr, ptr noundef %sin6_addr115) #21
  %136 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load119 = load i8, ptr %10, align 4
  %bf.clear120 = and i8 %bf.load119, 127
  store i8 %bf.clear120, ptr %10, align 4
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %local_ip, ptr noundef %sin6_addr) #21
  %137 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rf, align 8
  %call125 = call i32 @irdma_arp_table(ptr noundef %138, ptr noundef nonnull %local_ip, i1 noundef zeroext false, ptr noundef null, i32 noundef 3) #21
  %conv126 = trunc i32 %call125 to i16
  %arp_idx = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %10, i32 0, i32 8
  %139 = ptrtoint ptr %arp_idx to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv126, ptr %arp_idx, align 2
  br label %cleanup

if.else127:                                       ; preds = %rdma_gid2ip.exit838
  call void @__sanitizer_cov_trace_pc() #23
  %sin_addr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 2, i32 0, i32 2
  %140 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sin_addr, align 4
  %sin_addr132 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 12, i32 3, i32 3, i32 0, i32 2
  %142 = ptrtoint ptr %sin_addr132 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sin_addr132, align 4
  %144 = ptrtoint ptr %local_ip to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %local_ip, align 4
  %145 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load135 = load i8, ptr %10, align 4
  %bf.set137 = or i8 %bf.load135, -128
  store i8 %bf.set137, ptr %10, align 4
  %dest_ip_addr138 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 6
  %146 = ptrtoint ptr %dest_ip_addr138 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %dest_ip_addr138, align 4
  %arrayidx141 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 8
  %147 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %arrayidx141, align 4
  %arrayidx143 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 8, i32 1
  %148 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx143, align 4
  %arrayidx146 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 8, i32 2
  %149 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %143, ptr %arrayidx146, align 4
  %local_ipaddr147 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 20
  %150 = ptrtoint ptr %local_ipaddr147 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %local_ipaddr147, align 4
  %arrayidx150 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 21
  %151 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx150, align 4
  %arrayidx152 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 22
  %152 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 23
  %153 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %141, ptr %arrayidx154, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end77.cleanup.thread_crit_edge, %rdma_get_udp_sport.exit.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call81, %if.end77.cleanup.thread_crit_edge ], [ -12, %rdma_get_udp_sport.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ip) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #21
  br label %cleanup571

cleanup:                                          ; preds = %if.else127, %if.then111
  %154 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rf, align 8
  %156 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load158 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load158)
  %bf.cast160 = icmp slt i8 %bf.load158, 0
  %157 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 10, i32 6
  %call163 = call i32 @irdma_add_arp(ptr noundef %155, ptr noundef nonnull %local_ip, i1 noundef zeroext %bf.cast160, ptr noundef %157) #21
  %conv164 = trunc i32 %call163 to i16
  %arp_idx165 = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %10, i32 0, i32 8
  %158 = ptrtoint ptr %arp_idx165 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv164, ptr %arp_idx165, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ip) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #21
  br label %if.end169

if.end169:                                        ; preds = %cleanup, %if.end43.if.end169_crit_edge
  %and170 = and i32 %attr_mask, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end169.if.end191_crit_edge, label %if.then172

if.end169.if.end191_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end191

if.then172:                                       ; preds = %if.end169
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %159 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %max_rd_atomic, align 2
  %conv173 = zext i8 %160 to i32
  %max_hw_ord = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 13
  %161 = ptrtoint ptr %max_hw_ord to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %max_hw_ord, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %conv173)
  %cmp174 = icmp ult i32 %162, %conv173
  br i1 %cmp174, label %if.then176, label %if.end181

if.then176:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv173, i32 noundef %162) #24
  br label %cleanup571

if.end181:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool183.not = icmp eq i8 %160, 0
  br i1 %tobool183.not, label %if.end181.if.end187_crit_edge, label %if.then184

if.end181.if.end187_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end187

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #23
  %conv186 = zext i8 %160 to i16
  %ord_size = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %163 = ptrtoint ptr %ord_size to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv186, ptr %ord_size, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %if.end181.if.end187_crit_edge
  %ord_valid = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %164 = ptrtoint ptr %ord_valid to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %bf.load188 = load i16, ptr %ord_valid, align 1
  %bf.set190 = or i16 %bf.load188, -32768
  store i16 %bf.set190, ptr %ord_valid, align 1
  br label %if.end191

if.end191:                                        ; preds = %if.end187, %if.end169.if.end191_crit_edge
  %and192 = and i32 %attr_mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end191.if.end212_crit_edge, label %if.then194

if.end191.if.end212_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end212

if.then194:                                       ; preds = %if.end191
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %165 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %max_dest_rd_atomic, align 1
  %conv195 = zext i8 %166 to i32
  %max_hw_ird = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 12
  %167 = ptrtoint ptr %max_hw_ird to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %max_hw_ird, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %conv195)
  %cmp197 = icmp ult i32 %168, %conv195
  br i1 %cmp197, label %if.then199, label %if.end205

if.then199:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #23
  %max_rd_atomic201 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %169 = ptrtoint ptr %max_rd_atomic201 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %max_rd_atomic201, align 2
  %conv202 = zext i8 %170 to i32
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %conv202, i32 noundef %168) #24
  br label %cleanup571

if.end205:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool207.not = icmp eq i8 %166, 0
  br i1 %tobool207.not, label %if.end205.if.end212_crit_edge, label %if.then208

if.end205.if.end212_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end212

if.then208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #23
  %conv210 = zext i8 %166 to i16
  %ird_size = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 9
  %171 = ptrtoint ptr %ird_size to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv210, ptr %ird_size, align 2
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.end205.if.end212_crit_edge, %if.end191.if.end212_crit_edge
  %and213 = and i32 %attr_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end212.do.body241_crit_edge, label %if.then215

if.end212.do.body241_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body241

if.then215:                                       ; preds = %if.end212
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %172 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %qp_access_flags, align 8
  %and216 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.then215.if.end222_crit_edge, label %if.then218

if.then215.if.end222_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end222

if.then218:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 10
  %174 = ptrtoint ptr %wr_rdresp_en to i32
  call void @__asan_load2_noabort(i32 %174)
  %bf.load219 = load i16, ptr %wr_rdresp_en, align 4
  %bf.set221 = or i16 %bf.load219, 2048
  store i16 %bf.set221, ptr %wr_rdresp_en, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %if.then215.if.end222_crit_edge
  %175 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %qp_access_flags, align 8
  %and224 = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224)
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end222.if.end231_crit_edge, label %if.then226

if.end222.if.end231_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end231

if.then226:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en227 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 10
  %177 = ptrtoint ptr %wr_rdresp_en227 to i32
  call void @__asan_load2_noabort(i32 %177)
  %bf.load228 = load i16, ptr %wr_rdresp_en227, align 4
  %bf.set230 = or i16 %bf.load228, 2048
  store i16 %bf.set230, ptr %wr_rdresp_en227, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then226, %if.end222.if.end231_crit_edge
  %178 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %qp_access_flags, align 8
  %and233 = and i32 %179, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end231.do.body241_crit_edge, label %if.then235

if.end231.do.body241_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body241

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #23
  %rd_en = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 10
  %180 = ptrtoint ptr %rd_en to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load236 = load i16, ptr %rd_en, align 4
  %bf.set238 = or i16 %bf.load236, 128
  store i16 %bf.set238, ptr %rd_en, align 4
  br label %do.body241

do.body241:                                       ; preds = %if.then235, %if.end231.do.body241_crit_edge, %if.end212.do.body241_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1277) #21
  %hw_mod_qp_pend = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 18
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %181 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool246.not = icmp eq i32 %182, 0
  br i1 %tobool246.not, label %do.body241.do.body261_crit_edge, label %if.end248

do.body241.do.body261_crit_edge:                  ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body261

if.end248:                                        ; preds = %do.body241
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #21
  %183 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #21
  %mod_qp_waitq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 44
  %call249850 = call i32 @prepare_to_wait_event(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #21
  %call.i.i816851 = call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %184 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool252.not852 = icmp eq i32 %185, 0
  br i1 %tobool252.not852, label %if.end248.for.end_crit_edge, label %if.end248.cleanup255_crit_edge

if.end248.cleanup255_crit_edge:                   ; preds = %if.end248
  br label %cleanup255

if.end248.for.end_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

cleanup255:                                       ; preds = %cleanup255.cleanup255_crit_edge, %if.end248.cleanup255_crit_edge
  call void @schedule() #21
  %call249 = call i32 @prepare_to_wait_event(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #21
  %call.i.i816 = call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %186 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  %tobool252.not = icmp eq i32 %187, 0
  br i1 %tobool252.not, label %cleanup255.for.end_crit_edge, label %cleanup255.cleanup255_crit_edge

cleanup255.cleanup255_crit_edge:                  ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup255

cleanup255.for.end_crit_edge:                     ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %cleanup255.for.end_crit_edge, %if.end248.for.end_crit_edge
  call void @finish_wait(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #21
  br label %do.body261

do.body261:                                       ; preds = %for.end, %do.body241.do.body261_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_modify_qp_roce.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_modify_qp_roce, %if.then267)) #21
          to label %do.body275 [label %if.then267], !srcloc !259

if.then267:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #23
  %188 = call ptr @llvm.returnaddress(i32 0)
  %qp_num269 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %189 = ptrtoint ptr %qp_num269 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %qp_num269, align 4
  %191 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %attr, align 8
  %ibqp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %193 = ptrtoint ptr %ibqp_state to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ibqp_state, align 4
  %iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %195 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %iwarp_state, align 1
  %conv270 = zext i8 %196 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_modify_qp_roce.__UNIQUE_ID_ddebug701, ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef %188, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %conv270, i32 noundef %attr_mask) #21
  br label %do.body275

do.body275:                                       ; preds = %if.then267, %do.body261
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 25
  %call280 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %and285 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body275.if.end444_crit_edge, label %if.then287

do.body275.if.end444_crit_edge:                   ; preds = %do.body275
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end444

if.then287:                                       ; preds = %do.body275
  %ibqp_state288 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %197 = ptrtoint ptr %ibqp_state288 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ibqp_state288, align 4
  %199 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %attr, align 8
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %201 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %qp_type, align 8
  %call291 = call zeroext i1 @ib_modify_qp_is_ok(i32 noundef %198, i32 noundef %200, i32 noundef %202, i32 noundef %attr_mask) #21
  br i1 %call291, label %if.end298, label %if.then292

if.then292:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #23
  %qp_num295 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %203 = ptrtoint ptr %qp_num295 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %qp_num295, align 4
  %205 = ptrtoint ptr %ibqp_state288 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ibqp_state288, align 4
  %207 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %attr, align 8
  call void (ptr, ptr, ...) @ibdev_warn(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %204, i32 noundef %206, i32 noundef %208) #24
  br label %exit

if.end298:                                        ; preds = %if.then287
  %iwarp_state299 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %209 = ptrtoint ptr %iwarp_state299 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %iwarp_state299, align 1
  %curr_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 4
  %211 = ptrtoint ptr %curr_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %curr_iwarp_state, align 1
  %212 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %attr, align 8
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values)
  switch i32 %213, label %if.end298.exit_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb313
    i32 3, label %sw.bb327
    i32 4, label %sw.bb378
    i32 5, label %if.end298.sw.bb392_crit_edge
    i32 6, label %if.end298.sw.bb392_crit_edge853
    i32 0, label %if.end298.sw.bb392_crit_edge854
  ]

if.end298.sw.bb392_crit_edge854:                  ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb392

if.end298.sw.bb392_crit_edge853:                  ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb392

if.end298.sw.bb392_crit_edge:                     ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb392

if.end298.exit_crit_edge:                         ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

sw.bb:                                            ; preds = %if.end298
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %210)
  %cmp303 = icmp ugt i8 %210, 1
  br i1 %cmp303, label %sw.bb.exit_crit_edge, label %if.end306

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end306:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp309 = icmp eq i8 %210, 0
  br i1 %cmp309, label %if.then311, label %if.end306.sw.epilog_crit_edge

if.end306.sw.epilog_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then311:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %215 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %next_iwarp_state, align 2
  br label %sw.epilog

sw.bb313:                                         ; preds = %if.end298
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %210)
  %cmp316 = icmp ugt i8 %210, 1
  br i1 %cmp316, label %sw.bb313.exit_crit_edge, label %if.end319

sw.bb313.exit_crit_edge:                          ; preds = %sw.bb313
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end319:                                        ; preds = %sw.bb313
  call void @__sanitizer_cov_trace_pc() #23
  %arp_cache_idx_valid = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %216 = ptrtoint ptr %arp_cache_idx_valid to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %bf.load320 = load i16, ptr %arp_cache_idx_valid, align 1
  %bf.set325 = or i16 %bf.load320, 6144
  store i16 %bf.set325, ptr %arp_cache_idx_valid, align 1
  %next_iwarp_state326 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %217 = ptrtoint ptr %next_iwarp_state326 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 4, ptr %next_iwarp_state326, align 2
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.end298
  %218 = ptrtoint ptr %ibqp_state288 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ibqp_state288, align 4
  %220 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %219, label %if.end335 [
    i32 6, label %sw.bb327.exit_crit_edge
    i32 1, label %sw.bb327.exit_crit_edge855
    i32 0, label %sw.bb327.exit_crit_edge856
  ]

sw.bb327.exit_crit_edge856:                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

sw.bb327.exit_crit_edge855:                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

sw.bb327.exit_crit_edge:                          ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end335:                                        ; preds = %sw.bb327
  %arp_cache_idx_valid336 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %221 = ptrtoint ptr %arp_cache_idx_valid336 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %bf.load337 = load i16, ptr %arp_cache_idx_valid336, align 1
  %bf.set347 = or i16 %bf.load337, -26624
  store i16 %bf.set347, ptr %arp_cache_idx_valid336, align 1
  %next_iwarp_state348 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %222 = ptrtoint ptr %next_iwarp_state348 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 2, ptr %next_iwarp_state348, align 2
  %push_mode = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 11
  %223 = ptrtoint ptr %push_mode to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %push_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool349.not = icmp eq i32 %224, 0
  %tobool351.not = icmp eq ptr %udata, null
  %or.cond814 = or i1 %tobool351.not, %tobool349.not
  br i1 %or.cond814, label %if.end335.sw.epilog_crit_edge, label %land.lhs.true352

if.end335.sw.epilog_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

land.lhs.true352:                                 ; preds = %if.end335
  %push_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 16
  %225 = ptrtoint ptr %push_idx to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %push_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %226)
  %cmp354 = icmp eq i32 %226, -1
  br i1 %cmp354, label %land.lhs.true356, label %land.lhs.true352.sw.epilog_crit_edge

land.lhs.true352.sw.epilog_crit_edge:             ; preds = %land.lhs.true352
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

land.lhs.true356:                                 ; preds = %land.lhs.true352
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 0, i32 9
  %227 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %228)
  %cmp359 = icmp ugt i8 %228, 1
  br i1 %cmp359, label %if.then361, label %land.lhs.true356.sw.epilog_crit_edge

land.lhs.true356.sw.epilog_crit_edge:             ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then361:                                       ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call280) #21
  call fastcc void @irdma_alloc_push_page(ptr noundef %ibqp)
  %call372 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  br label %sw.epilog

sw.bb378:                                         ; preds = %if.end298
  %229 = zext i8 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %210, label %if.then389 [
    i8 3, label %sw.bb378.exit_crit_edge
    i8 2, label %if.end390
  ]

sw.bb378.exit_crit_edge:                          ; preds = %sw.bb378
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.then389:                                       ; preds = %sw.bb378
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end390:                                        ; preds = %sw.bb378
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state391 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %230 = ptrtoint ptr %next_iwarp_state391 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 3, ptr %next_iwarp_state391, align 2
  br label %sw.epilog

sw.bb392:                                         ; preds = %if.end298.sw.bb392_crit_edge, %if.end298.sw.bb392_crit_edge853, %if.end298.sw.bb392_crit_edge854
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %210)
  %cmp395 = icmp eq i8 %210, 2
  br i1 %cmp395, label %if.then397, label %sw.bb392.if.end415_crit_edge

sw.bb392.if.end415_crit_edge:                     ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end415

if.then397:                                       ; preds = %sw.bb392
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call280) #21
  %next_iwarp_state399 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %231 = ptrtoint ptr %next_iwarp_state399 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 3, ptr %next_iwarp_state399, align 2
  %call400 = call i32 @irdma_hw_modify_qp(ptr noundef %3, ptr noundef %ibqp, ptr noundef nonnull %info, i1 noundef zeroext true) #21
  %call410 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  br label %if.end415

if.end415:                                        ; preds = %if.then397, %sw.bb392.if.end415_crit_edge
  %flags.0 = phi i32 [ %call410, %if.then397 ], [ %call280, %sw.bb392.if.end415_crit_edge ]
  %232 = ptrtoint ptr %iwarp_state299 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %iwarp_state299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %233)
  %cmp418 = icmp eq i8 %233, 6
  br i1 %cmp418, label %if.then420, label %if.end440

if.then420:                                       ; preds = %if.end415
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #21
  %tobool422.not = icmp eq ptr %udata, null
  br i1 %tobool422.not, label %if.then420.cleanup571_crit_edge, label %if.then423

if.then420.cleanup571_crit_edge:                  ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

if.then423:                                       ; preds = %if.then420
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %234 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %inlen, align 4
  %236 = call i32 @llvm.umin.i32(i32 %235, i32 8)
  %call427 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %ureq, ptr noundef nonnull %udata, i32 noundef %236)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427)
  %tobool428.not = icmp eq i32 %call427, 0
  br i1 %tobool428.not, label %if.end430, label %if.then423.cleanup571_crit_edge

if.then423.cleanup571_crit_edge:                  ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

if.end430:                                        ; preds = %if.then423
  call void @__sanitizer_cov_trace_pc() #23
  %237 = ptrtoint ptr %ureq to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %ureq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool432.not = icmp ne i8 %238, 0
  %cond433 = zext i1 %tobool432.not to i32
  %rq_flush = getelementptr inbounds %struct.irdma_modify_qp_req, ptr %ureq, i32 0, i32 1
  %239 = ptrtoint ptr %rq_flush to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %rq_flush, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool435.not = icmp eq i8 %240, 0
  %cond436 = select i1 %tobool435.not, i32 0, i32 2
  %or437 = or i32 %cond436, %cond433
  %or438 = or i32 %or437, 4
  call void @irdma_flush_wqes(ptr noundef %ibqp, i32 noundef %or438) #21
  br label %cleanup571

if.end440:                                        ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state441 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %241 = ptrtoint ptr %next_iwarp_state441 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 6, ptr %next_iwarp_state441, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end440, %if.end390, %if.then361, %land.lhs.true356.sw.epilog_crit_edge, %land.lhs.true352.sw.epilog_crit_edge, %if.end335.sw.epilog_crit_edge, %if.end319, %if.then311, %if.end306.sw.epilog_crit_edge
  %issue_modify_qp.0 = phi i8 [ 1, %if.end440 ], [ 1, %if.end390 ], [ 1, %if.then361 ], [ 1, %land.lhs.true356.sw.epilog_crit_edge ], [ 1, %land.lhs.true352.sw.epilog_crit_edge ], [ 1, %if.end335.sw.epilog_crit_edge ], [ 1, %if.end319 ], [ 1, %if.then311 ], [ 0, %if.end306.sw.epilog_crit_edge ]
  %flags.1 = phi i32 [ %flags.0, %if.end440 ], [ %call280, %if.end390 ], [ %call372, %if.then361 ], [ %call280, %land.lhs.true356.sw.epilog_crit_edge ], [ %call280, %land.lhs.true352.sw.epilog_crit_edge ], [ %call280, %if.end335.sw.epilog_crit_edge ], [ %call280, %if.end319 ], [ %call280, %if.then311 ], [ %call280, %if.end306.sw.epilog_crit_edge ]
  %242 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %attr, align 8
  %244 = ptrtoint ptr %ibqp_state288 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %243, ptr %ibqp_state288, align 4
  br label %if.end444

if.end444:                                        ; preds = %sw.epilog, %do.body275.if.end444_crit_edge
  %issue_modify_qp.1 = phi i8 [ %issue_modify_qp.0, %sw.epilog ], [ 0, %do.body275.if.end444_crit_edge ]
  %flags.2 = phi i32 [ %flags.1, %sw.epilog ], [ %call280, %do.body275.if.end444_crit_edge ]
  %iwscq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 4
  %245 = ptrtoint ptr %iwscq to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %iwscq, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq, ptr %246, i32 0, i32 1, i32 0, i32 4
  %247 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cq_id, align 8
  %send_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 3
  %249 = ptrtoint ptr %send_cq_num to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %send_cq_num, align 8
  %iwrcq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 5
  %250 = ptrtoint ptr %iwrcq to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %iwrcq, align 8
  %cq_id447 = getelementptr inbounds %struct.irdma_cq, ptr %251, i32 0, i32 1, i32 0, i32 4
  %252 = ptrtoint ptr %cq_id447 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cq_id447, align 8
  %rcv_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 4
  %254 = ptrtoint ptr %rcv_cq_num to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %rcv_cq_num, align 4
  %sc_qp448 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %host_ctx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 37
  %255 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %host_ctx, align 4
  call void @irdma_sc_qp_setctx_roce(ptr noundef %sc_qp448, ptr noundef %256, ptr noundef %ctx_info3) #21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #21
  br i1 %tobool286.not, label %if.end444.cleanup571_crit_edge, label %if.then452

if.end444.cleanup571_crit_edge:                   ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

if.then452:                                       ; preds = %if.end444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %issue_modify_qp.1)
  %tobool453.not = icmp eq i8 %issue_modify_qp.1, 0
  br i1 %tobool453.not, label %if.else504, label %if.then454

if.then454:                                       ; preds = %if.then452
  %arp_idx455 = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %10, i32 0, i32 8
  %257 = ptrtoint ptr %arp_idx455 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %arp_idx455, align 2
  %conv456 = zext i16 %258 to i32
  %rem_endpoint_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 5
  %259 = ptrtoint ptr %rem_endpoint_idx to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %conv456, ptr %rem_endpoint_idx, align 8
  %call457 = call i32 @irdma_hw_modify_qp(ptr noundef %3, ptr noundef %ibqp, ptr noundef nonnull %info, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call457)
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %do.body462, label %if.then454.cleanup571_crit_edge

if.then454.cleanup571_crit_edge:                  ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

do.body462:                                       ; preds = %if.then454
  %call470 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %iwarp_state475 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %260 = ptrtoint ptr %iwarp_state475 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %iwarp_state475, align 1
  %curr_iwarp_state477 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 4
  %262 = ptrtoint ptr %curr_iwarp_state477 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %curr_iwarp_state477, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %261, i8 %263)
  %cmp479 = icmp eq i8 %261, %263
  br i1 %cmp479, label %if.then481, label %do.body462.if.end486_crit_edge

do.body462.if.end486_crit_edge:                   ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end486

if.then481:                                       ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state482 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %264 = ptrtoint ptr %next_iwarp_state482 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %next_iwarp_state482, align 2
  %266 = ptrtoint ptr %iwarp_state475 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %iwarp_state475, align 1
  %267 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %attr, align 8
  %ibqp_state485 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %269 = ptrtoint ptr %ibqp_state485 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %268, ptr %ibqp_state485, align 4
  br label %if.end486

if.end486:                                        ; preds = %if.then481, %do.body462.if.end486_crit_edge
  %ibqp_state487 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %270 = ptrtoint ptr %ibqp_state487 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %ibqp_state487, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %271)
  %cmp488 = icmp ugt i32 %271, 3
  br i1 %cmp488, label %land.lhs.true490, label %if.end486.if.else501_crit_edge

if.end486.if.else501_crit_edge:                   ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else501

land.lhs.true490:                                 ; preds = %if.end486
  %flush_issued = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %272 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load491 = load i8, ptr %flush_issued, align 8
  %273 = and i8 %bf.load491, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool494.not = icmp eq i8 %273, 0
  br i1 %tobool494.not, label %if.then495, label %land.lhs.true490.if.else501_crit_edge

land.lhs.true490.if.else501_crit_edge:            ; preds = %land.lhs.true490
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else501

if.then495:                                       ; preds = %land.lhs.true490
  call void @__sanitizer_cov_trace_pc() #23
  %bf.set499 = or i8 %bf.load491, 16
  %274 = ptrtoint ptr %flush_issued to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %bf.set499, ptr %flush_issued, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call470) #21
  call void @irdma_flush_wqes(ptr noundef %ibqp, i32 noundef 11) #21
  br label %if.end507

if.else501:                                       ; preds = %land.lhs.true490.if.else501_crit_edge, %if.end486.if.else501_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call470) #21
  br label %if.end507

if.else504:                                       ; preds = %if.then452
  call void @__sanitizer_cov_trace_pc() #23
  %275 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %attr, align 8
  %ibqp_state506 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %277 = ptrtoint ptr %ibqp_state506 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %ibqp_state506, align 4
  br label %if.end507

if.end507:                                        ; preds = %if.else504, %if.else501, %if.then495
  %tobool508.not = icmp eq ptr %udata, null
  br i1 %tobool508.not, label %if.end507.cleanup571_crit_edge, label %land.lhs.true509

if.end507.cleanup571_crit_edge:                   ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

land.lhs.true509:                                 ; preds = %if.end507
  %hw_rev512 = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 0, i32 9
  %278 = ptrtoint ptr %hw_rev512 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %hw_rev512, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %279)
  %cmp514 = icmp ugt i8 %279, 1
  br i1 %cmp514, label %cond.true518, label %land.lhs.true509.cleanup571_crit_edge

land.lhs.true509.cleanup571_crit_edge:            ; preds = %land.lhs.true509
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

cond.true518:                                     ; preds = %land.lhs.true509
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %280 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %context, align 4
  %push_idx525 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 16
  %282 = ptrtoint ptr %push_idx525 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %push_idx525, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %283)
  %cmp526.not = icmp eq i32 %283, -1
  br i1 %cmp526.not, label %cond.true518.if.end536_crit_edge, label %land.lhs.true528

cond.true518.if.end536_crit_edge:                 ; preds = %cond.true518
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end536

land.lhs.true528:                                 ; preds = %cond.true518
  %push_wqe_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 7
  %284 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %push_wqe_mmap_entry, align 8
  %tobool529.not = icmp eq ptr %285, null
  br i1 %tobool529.not, label %land.lhs.true530, label %land.lhs.true528.if.end536_crit_edge

land.lhs.true528.if.end536_crit_edge:             ; preds = %land.lhs.true528
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end536

land.lhs.true530:                                 ; preds = %land.lhs.true528
  %push_db_mmap_key = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 1
  %call531 = call fastcc i32 @irdma_setup_push_mmap_entries(ptr noundef %281, ptr noundef %ibqp, ptr noundef nonnull %uresp, ptr noundef %push_db_mmap_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call531)
  %tobool532.not = icmp eq i32 %call531, 0
  br i1 %tobool532.not, label %if.then533, label %land.lhs.true530.if.end536_crit_edge

land.lhs.true530.if.end536_crit_edge:             ; preds = %land.lhs.true530
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end536

if.then533:                                       ; preds = %land.lhs.true530
  call void @__sanitizer_cov_trace_pc() #23
  %push_valid = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 3
  %286 = ptrtoint ptr %push_valid to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 1, ptr %push_valid, align 2
  %push_offset = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 18
  %287 = ptrtoint ptr %push_offset to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %push_offset, align 2
  %push_offset535 = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 2
  %289 = ptrtoint ptr %push_offset535 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %push_offset535, align 8
  br label %if.end536

if.end536:                                        ; preds = %if.then533, %land.lhs.true530.if.end536_crit_edge, %land.lhs.true528.if.end536_crit_edge, %cond.true518.if.end536_crit_edge
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %290 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %outlen, align 4
  %292 = call i32 @llvm.umin.i32(i32 %291, i32 24)
  %call544 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %uresp, i32 noundef %292)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call544)
  %tobool545.not = icmp eq i32 %call544, 0
  br i1 %tobool545.not, label %if.end536.cleanup571_crit_edge, label %if.then546

if.end536.cleanup571_crit_edge:                   ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup571

if.then546:                                       ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #23
  call fastcc void @irdma_remove_push_mmap_entries(ptr noundef %ibqp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_modify_qp_roce.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_modify_qp_roce, %if.then559)) #21
          to label %cleanup571 [label %if.then559], !srcloc !259

if.then559:                                       ; preds = %if.then546
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_modify_qp_roce.__UNIQUE_ID_ddebug706, ptr noundef %3, ptr noundef nonnull @.str.7) #21
  br label %cleanup571

exit:                                             ; preds = %if.then389, %sw.bb378.exit_crit_edge, %sw.bb327.exit_crit_edge, %sw.bb327.exit_crit_edge855, %sw.bb327.exit_crit_edge856, %sw.bb313.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end298.exit_crit_edge, %if.then292
  %ret.3 = phi i32 [ 0, %sw.bb378.exit_crit_edge ], [ -22, %if.then389 ], [ -22, %if.then292 ], [ -22, %sw.bb.exit_crit_edge ], [ -22, %sw.bb313.exit_crit_edge ], [ -22, %sw.bb327.exit_crit_edge ], [ -22, %if.end298.exit_crit_edge ], [ -22, %sw.bb327.exit_crit_edge855 ], [ -22, %sw.bb327.exit_crit_edge856 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call280) #21
  br label %cleanup571

cleanup571:                                       ; preds = %exit, %if.then559, %if.then546, %if.end536.cleanup571_crit_edge, %land.lhs.true509.cleanup571_crit_edge, %if.end507.cleanup571_crit_edge, %if.then454.cleanup571_crit_edge, %if.end444.cleanup571_crit_edge, %if.end430, %if.then423.cleanup571_crit_edge, %if.then420.cleanup571_crit_edge, %if.then199, %if.then176, %cleanup.thread, %if.then10.cleanup571_crit_edge, %entry.cleanup571_crit_edge
  %retval.3 = phi i32 [ -22, %if.then176 ], [ -22, %if.then199 ], [ %ret.3, %exit ], [ -95, %entry.cleanup571_crit_edge ], [ -22, %if.then423.cleanup571_crit_edge ], [ 0, %if.end430 ], [ 0, %if.then420.cleanup571_crit_edge ], [ -22, %if.then454.cleanup571_crit_edge ], [ -22, %if.then10.cleanup571_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %call544, %if.then559 ], [ %call544, %if.then546 ], [ 0, %if.end507.cleanup571_crit_edge ], [ 0, %land.lhs.true509.cleanup571_crit_edge ], [ 0, %if.end444.cleanup571_crit_edge ], [ 0, %if.end536.cleanup571_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ureq) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uresp) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #21
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @irdma_query_pkey(ptr nocapture noundef readnone %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %index)
  %cmp.not = icmp eq i16 %index, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pkey, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_rem_qos(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_add_qos(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_copy_ip_ntohl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_arp_table(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_add_arp(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ib_modify_qp_is_ok(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_alloc_push_page(ptr nocapture noundef %iwqp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 20, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info2 = getelementptr inbounds %struct.anon.260, ptr %in, i32 0, i32 1
  %6 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %info2, align 4
  %vsi = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 7
  %7 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsi, align 4
  %user_pri = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 31
  %9 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %user_pri, align 1
  %idxprom = zext i8 %10 to i32
  %qs_handle = getelementptr %struct.irdma_sc_vsi, ptr %8, i32 0, i32 15, i32 %idxprom, i32 4
  %11 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %qs_handle, align 4
  %qs_handle6 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %qs_handle6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %qs_handle6, align 4
  %free_page = getelementptr inbounds %struct.anon.260, ptr %in, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %free_page to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %free_page, align 2
  %push_page_type = getelementptr inbounds %struct.anon.260, ptr %in, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %push_page_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %push_page_type, align 1
  %16 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rf, align 8
  %cqp14 = getelementptr inbounds %struct.irdma_pci_f, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cqp14, ptr %in, align 8
  %19 = ptrtoint ptr %call to i32
  %conv = zext i32 %19 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %scratch, align 8
  %21 = load ptr, ptr %rf, align 8
  %call21 = tail call i32 @irdma_handle_cqp_op(ptr noundef %21, ptr noundef nonnull %call) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %compl_info, align 8
  %24 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rf, align 8
  %max_hw_device_pages = getelementptr inbounds %struct.irdma_pci_f, ptr %25, i32 0, i32 42, i32 25, i32 9
  %26 = ptrtoint ptr %max_hw_device_pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_hw_device_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp = icmp ult i32 %23, %27
  br i1 %cmp, label %if.then25, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %push_idx28 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 16
  %28 = ptrtoint ptr %push_idx28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %push_idx28, align 8
  %push_offset = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 18
  %29 = ptrtoint ptr %push_offset to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %push_offset, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %30 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rf, align 8
  %cqp31 = getelementptr inbounds %struct.irdma_pci_f, ptr %31, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp31, ptr noundef nonnull %call) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_hw_modify_qp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_from_udata(ptr noundef %dest, ptr nocapture noundef readonly %udata, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %0 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udata, align 4
  tail call void @__check_object_size(ptr noundef %dest, i32 noundef %len, i1 noundef zeroext false) #21
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #21
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #25, !srcloc !260
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !261

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dest, i32 noundef %len) #21
  %3 = tail call i32 @llvm.read_register.i32(metadata !249) #21
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !262
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #21, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !srcloc !264
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dest, ptr noundef %1, i32 noundef %len) #21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #21, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #21, !srcloc !264
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !261

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dest, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %7 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_flush_wqes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_qp_setctx_roce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_setup_push_mmap_entries(ptr noundef %ucontext, ptr nocapture noundef %iwqp, ptr nocapture noundef writeonly %push_wqe_mmap_key, ptr nocapture noundef writeonly %push_db_mmap_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_ucontext, ptr %ucontext, i32 0, i32 1
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %arrayidx = getelementptr %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 17, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  %conv = zext i32 %6 to i64
  %push_idx = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 16
  %7 = ptrtoint ptr %push_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %push_idx, align 8
  %mul = shl i32 %8, 12
  %conv2 = zext i32 %mul to i64
  %add3 = add nuw nsw i64 %conv2, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #26
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.irdma_user_mmap_entry_insert.exit.thread_crit_edge, label %if.end.i

entry.irdma_user_mmap_entry_insert.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_user_mmap_entry_insert.exit.thread

if.end.i:                                         ; preds = %entry
  %add4 = add nuw nsw i64 %add3, 65536
  %bar_offset2.i = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %bar_offset2.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add4, ptr %bar_offset2.i, align 8
  %mmap_flag3.i = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %mmap_flag3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mmap_flag3.i, align 8
  %call4.i = tail call i32 @rdma_user_mmap_entry_insert(ptr noundef %ucontext, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #21
  br label %irdma_user_mmap_entry_insert.exit.thread

irdma_user_mmap_entry_insert.exit.thread:         ; preds = %if.then6.i, %entry.irdma_user_mmap_entry_insert.exit.thread_crit_edge
  %push_wqe_mmap_entry41 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 7
  %12 = ptrtoint ptr %push_wqe_mmap_entry41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %push_wqe_mmap_entry41, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %start_pgoff.i.i = getelementptr inbounds %struct.rdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %start_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_pgoff.i.i, align 8
  %conv.i.i = zext i32 %14 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %15 = ptrtoint ptr %push_wqe_mmap_key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shl.i.i, ptr %push_wqe_mmap_key, align 8
  %push_wqe_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 7
  %16 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %push_wqe_mmap_entry, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 40) #26
  %tobool.not.i27 = icmp eq ptr %call7.i.i.i26, null
  br i1 %tobool.not.i27, label %if.end.if.then10_crit_edge, label %if.end.i32

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then10

if.end.i32:                                       ; preds = %if.end
  %add6 = add nuw nsw i64 %add3, 69632
  %bar_offset2.i28 = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i26, i32 0, i32 1
  %18 = ptrtoint ptr %bar_offset2.i28 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add6, ptr %bar_offset2.i28, align 8
  %mmap_flag3.i29 = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i26, i32 0, i32 2
  %19 = ptrtoint ptr %mmap_flag3.i29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mmap_flag3.i29, align 8
  %call4.i30 = tail call i32 @rdma_user_mmap_entry_insert(ptr noundef %ucontext, ptr noundef nonnull %call7.i.i.i26, i32 noundef 4096) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i30)
  %tobool5.not.i31 = icmp eq i32 %call4.i30, 0
  br i1 %tobool5.not.i31, label %irdma_user_mmap_entry_insert.exit39, label %if.then6.i33

if.then6.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i26) #21
  br label %if.then10

irdma_user_mmap_entry_insert.exit39:              ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #23
  %start_pgoff.i.i34 = getelementptr inbounds %struct.rdma_user_mmap_entry, ptr %call7.i.i.i26, i32 0, i32 2
  %20 = ptrtoint ptr %start_pgoff.i.i34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_pgoff.i.i34, align 8
  %conv.i.i35 = zext i32 %21 to i64
  %shl.i.i36 = shl nuw nsw i64 %conv.i.i35, 12
  %22 = ptrtoint ptr %push_db_mmap_key to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %shl.i.i36, ptr %push_db_mmap_key, align 8
  %push_db_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 8
  %23 = ptrtoint ptr %push_db_mmap_entry to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i26, ptr %push_db_mmap_entry, align 4
  br label %cleanup

if.then10:                                        ; preds = %if.then6.i33, %if.end.if.then10_crit_edge
  %push_db_mmap_entry44 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 8
  %24 = ptrtoint ptr %push_db_mmap_entry44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %push_db_mmap_entry44, align 4
  %25 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %push_wqe_mmap_entry, align 8
  tail call void @rdma_user_mmap_entry_remove(ptr noundef %26) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %irdma_user_mmap_entry_insert.exit39, %irdma_user_mmap_entry_insert.exit.thread
  %retval.0 = phi i32 [ -12, %if.then10 ], [ 0, %irdma_user_mmap_entry_insert.exit39 ], [ -12, %irdma_user_mmap_entry_insert.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #21
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #21
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #25, !srcloc !265
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #21
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #21
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_remove_push_mmap_entries(ptr nocapture noundef %iwqp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %push_db_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 8
  %0 = ptrtoint ptr %push_db_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push_db_mmap_entry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %1) #21
  %2 = ptrtoint ptr %push_db_mmap_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %push_db_mmap_entry, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %push_wqe_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 7
  %3 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %push_wqe_mmap_entry, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %4) #21
  %5 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %push_wqe_mmap_entry, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_modify_qp(ptr noundef %ibqp, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr noundef readonly %udata) #0 align 64 {
entry:
  %info = alloca %struct.irdma_modify_qp_info, align 8
  %uresp = alloca %struct.irdma_modify_qp_resp, align 8
  %ureq = alloca %struct.irdma_modify_qp_req, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #21
  %4 = call ptr @memset(ptr %info, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uresp) #21
  %5 = call ptr @memset(ptr %uresp, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ureq) #21
  %6 = ptrtoint ptr %ureq to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %ureq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %attr_mask)
  %tobool.not = icmp ult i32 %attr_mask, 2097152
  br i1 %tobool.not, label %if.end, label %entry.cleanup423_crit_edge

entry.cleanup423_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

if.end:                                           ; preds = %entry
  %ctx_info2 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1474) #21
  %hw_mod_qp_pend = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %7 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end.do.body20_crit_edge, label %if.end10

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body20

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #21
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #21
  %mod_qp_waitq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 44
  %call11580 = call i32 @prepare_to_wait_event(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #21
  %call.i.i568581 = call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %10 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not582 = icmp eq i32 %11, 0
  br i1 %tobool14.not582, label %if.end10.for.end_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  br label %cleanup

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  call void @schedule() #21
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #21
  %call.i.i568 = call zeroext i1 @__kasan_check_read(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #21
  %12 = ptrtoint ptr %hw_mod_qp_pend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %hw_mod_qp_pend, align 4
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end10.for.end_crit_edge
  call void @finish_wait(ptr noundef %mod_qp_waitq, ptr noundef nonnull %__wq_entry) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #21
  br label %do.body20

do.body20:                                        ; preds = %for.end, %if.end.do.body20_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_modify_qp.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_modify_qp, %if.then26)) #21
          to label %do.body33 [label %if.then26], !srcloc !259

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #23
  %14 = call ptr @llvm.returnaddress(i32 0)
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %15 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_num, align 4
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr, align 8
  %ibqp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %19 = ptrtoint ptr %ibqp_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ibqp_state, align 4
  %iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %21 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iwarp_state, align 1
  %conv = zext i8 %22 to i32
  %last_aeq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 21
  %23 = ptrtoint ptr %last_aeq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_aeq, align 4
  %hw_tcp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 35
  %25 = ptrtoint ptr %hw_tcp_state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hw_tcp_state, align 1
  %conv27 = zext i8 %26 to i32
  %hw_iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 34
  %27 = ptrtoint ptr %hw_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hw_iwarp_state, align 2
  %conv28 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_modify_qp.__UNIQUE_ID_ddebug707, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %conv, i32 noundef %24, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %attr_mask) #21
  br label %do.body33

do.body33:                                        ; preds = %if.then26, %do.body20
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 25
  %call37 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %and42 = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body33.if.end206_crit_edge, label %if.then44

do.body33.if.end206_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end206

if.then44:                                        ; preds = %do.body33
  %iwarp_state45 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %29 = ptrtoint ptr %iwarp_state45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iwarp_state45, align 1
  %curr_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 4
  %31 = ptrtoint ptr %curr_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %curr_iwarp_state, align 1
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %attr, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %33, label %if.then44.exit_crit_edge [
    i32 1, label %if.then44.sw.bb_crit_edge
    i32 2, label %if.then44.sw.bb_crit_edge583
    i32 3, label %sw.bb85
    i32 4, label %sw.bb107
    i32 5, label %sw.bb132
    i32 6, label %if.then44.sw.bb140_crit_edge
    i32 0, label %if.then44.sw.bb140_crit_edge584
  ]

if.then44.sw.bb140_crit_edge584:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb140

if.then44.sw.bb140_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb140

if.then44.sw.bb_crit_edge583:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb

if.then44.sw.bb_crit_edge:                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb

if.then44.exit_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

sw.bb:                                            ; preds = %if.then44.sw.bb_crit_edge, %if.then44.sw.bb_crit_edge583
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp49 = icmp ugt i8 %30, 1
  br i1 %cmp49, label %sw.bb.exit_crit_edge, label %if.end52

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end52:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp55 = icmp eq i8 %30, 0
  br i1 %cmp55, label %if.then57, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %35 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %next_iwarp_state, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end52.if.end58_crit_edge
  %issue_modify_qp.0 = phi i8 [ 1, %if.then57 ], [ 0, %if.end52.if.end58_crit_edge ]
  %push_mode = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %push_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %push_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool59.not = icmp eq i32 %37, 0
  %tobool60.not = icmp eq ptr %udata, null
  %or.cond = or i1 %tobool60.not, %tobool59.not
  br i1 %or.cond, label %if.end58.sw.epilog_crit_edge, label %land.lhs.true61

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

land.lhs.true61:                                  ; preds = %if.end58
  %push_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 16
  %38 = ptrtoint ptr %push_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %push_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp62 = icmp eq i32 %39, -1
  br i1 %cmp62, label %land.lhs.true64, label %land.lhs.true61.sw.epilog_crit_edge

land.lhs.true61.sw.epilog_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 0, i32 9
  %40 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp66 = icmp ugt i8 %41, 1
  br i1 %cmp66, label %if.then68, label %land.lhs.true64.sw.epilog_crit_edge

land.lhs.true64.sw.epilog_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #21
  call fastcc void @irdma_alloc_push_page(ptr noundef %ibqp)
  %call79 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp88 = icmp ugt i8 %30, 2
  br i1 %cmp88, label %sw.bb85.exit_crit_edge, label %lor.lhs.false

sw.bb85.exit_crit_edge:                           ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

lor.lhs.false:                                    ; preds = %sw.bb85
  %cm_id = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 15
  %42 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm_id, align 4
  %tobool90.not = icmp eq ptr %43, null
  br i1 %tobool90.not, label %lor.lhs.false.exit_crit_edge, label %if.end92

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end92:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %hw_tcp_state93 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 35
  %44 = ptrtoint ptr %hw_tcp_state93 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %hw_tcp_state93, align 1
  %hte_added = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %45 = ptrtoint ptr %hte_added to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %hte_added, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %hte_added, align 8
  %next_iwarp_state94 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %46 = ptrtoint ptr %next_iwarp_state94 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %next_iwarp_state94, align 2
  %tcp_ctx_valid = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %47 = ptrtoint ptr %tcp_ctx_valid to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %bf.load95 = load i16, ptr %tcp_ctx_valid, align 1
  %bf.set106 = or i16 %bf.load95, -10240
  store i16 %bf.set106, ptr %tcp_ctx_valid, align 1
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.then44
  %hw_iwarp_state108 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 34
  %48 = ptrtoint ptr %hw_iwarp_state108 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hw_iwarp_state108, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp110 = icmp ugt i8 %49, 2
  br i1 %cmp110, label %sw.bb107.exit_crit_edge, label %if.end113

sw.bb107.exit_crit_edge:                          ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end113:                                        ; preds = %sw.bb107
  %50 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %30, label %if.end124 [
    i8 3, label %if.end113.exit_crit_edge
    i8 1, label %if.end113.exit_crit_edge585
    i8 0, label %if.end113.exit_crit_edge586
  ]

if.end113.exit_crit_edge586:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end113.exit_crit_edge585:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end113.exit_crit_edge:                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end124:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp127 = icmp ugt i8 %30, 3
  br i1 %cmp127, label %if.end124.exit_crit_edge, label %if.end130

if.end124.exit_crit_edge:                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state131 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %51 = ptrtoint ptr %next_iwarp_state131 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %next_iwarp_state131, align 2
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp135 = icmp ugt i8 %30, 4
  br i1 %cmp135, label %sw.bb132.exit_crit_edge, label %if.end138

sw.bb132.exit_crit_edge:                          ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #23
  br label %exit

if.end138:                                        ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state139 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %52 = ptrtoint ptr %next_iwarp_state139 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %next_iwarp_state139, align 2
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.then44.sw.bb140_crit_edge, %if.then44.sw.bb140_crit_edge584
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp143 = icmp eq i8 %30, 6
  br i1 %cmp143, label %if.then145, label %if.end164

if.then145:                                       ; preds = %sw.bb140
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #21
  %tobool147.not = icmp eq ptr %udata, null
  br i1 %tobool147.not, label %if.then145.cleanup423_crit_edge, label %if.then148

if.then145.cleanup423_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

if.then148:                                       ; preds = %if.then145
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %53 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inlen, align 4
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 8)
  %call152 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %ureq, ptr noundef nonnull %udata, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.then148.cleanup423_crit_edge

if.then148.cleanup423_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

if.end155:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #23
  %56 = ptrtoint ptr %ureq to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ureq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool157.not = icmp ne i8 %57, 0
  %cond158 = zext i1 %tobool157.not to i32
  %rq_flush = getelementptr inbounds %struct.irdma_modify_qp_req, ptr %ureq, i32 0, i32 1
  %58 = ptrtoint ptr %rq_flush to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rq_flush, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool160.not = icmp eq i8 %59, 0
  %cond161 = select i1 %tobool160.not, i32 0, i32 2
  %or = or i32 %cond161, %cond158
  %or162 = or i32 %or, 4
  call void @irdma_flush_wqes(ptr noundef %ibqp, i32 noundef %or162) #21
  br label %cleanup423

if.end164:                                        ; preds = %sw.bb140
  %term_flags = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 30
  %60 = ptrtoint ptr %term_flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %term_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool166.not = icmp eq i8 %61, 0
  br i1 %tobool166.not, label %if.end164.if.end184_crit_edge, label %if.then167

if.end164.if.end184_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end184

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #23
  %sc_qp165 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #21
  call void @irdma_terminate_del_timer(ptr noundef %sc_qp165) #21
  %call179 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  br label %if.end184

if.end184:                                        ; preds = %if.then167, %if.end164.if.end184_crit_edge
  %flags.0 = phi i32 [ %call179, %if.then167 ], [ %call37, %if.end164.if.end184_crit_edge ]
  %next_iwarp_state185 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %hw_tcp_state186 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 35
  %62 = ptrtoint ptr %hw_tcp_state186 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %hw_tcp_state186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp188 = icmp ugt i8 %63, 1
  br i1 %cmp188, label %land.lhs.true190, label %if.end184.if.end202_crit_edge

if.end184.if.end202_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end202

land.lhs.true190:                                 ; preds = %if.end184
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 16
  %64 = ptrtoint ptr %iw_status to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %iw_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool192.not = icmp eq i8 %65, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %63)
  %cmp196.not = icmp eq i8 %63, 11
  %or.cond563 = select i1 %tobool192.not, i1 true, i1 %cmp196.not
  br i1 %or.cond563, label %land.lhs.true190.if.end202_crit_edge, label %if.then198

land.lhs.true190.if.end202_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end202

if.then198:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #23
  %reset_tcp_conn = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 6
  %66 = ptrtoint ptr %reset_tcp_conn to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load199 = load i16, ptr %reset_tcp_conn, align 1
  %bf.set201 = or i16 %bf.load199, 1024
  store i16 %bf.set201, ptr %reset_tcp_conn, align 1
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %land.lhs.true190.if.end202_crit_edge, %if.end184.if.end202_crit_edge
  %dont_wait.0 = phi i8 [ 0, %if.then198 ], [ 1, %land.lhs.true190.if.end202_crit_edge ], [ 1, %if.end184.if.end202_crit_edge ]
  %67 = ptrtoint ptr %next_iwarp_state185 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %next_iwarp_state185, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end202, %if.end138, %if.end130, %if.end92, %if.then68, %land.lhs.true64.sw.epilog_crit_edge, %land.lhs.true61.sw.epilog_crit_edge, %if.end58.sw.epilog_crit_edge
  %flags.1 = phi i32 [ %flags.0, %if.end202 ], [ %call37, %if.end138 ], [ %call37, %if.end130 ], [ %call37, %if.end92 ], [ %call79, %if.then68 ], [ %call37, %land.lhs.true64.sw.epilog_crit_edge ], [ %call37, %land.lhs.true61.sw.epilog_crit_edge ], [ %call37, %if.end58.sw.epilog_crit_edge ]
  %dont_wait.1 = phi i8 [ %dont_wait.0, %if.end202 ], [ 0, %if.end138 ], [ 0, %if.end130 ], [ 0, %if.end92 ], [ 0, %if.then68 ], [ 0, %land.lhs.true64.sw.epilog_crit_edge ], [ 0, %land.lhs.true61.sw.epilog_crit_edge ], [ 0, %if.end58.sw.epilog_crit_edge ]
  %issue_modify_qp.1 = phi i8 [ 1, %if.end202 ], [ 1, %if.end138 ], [ 1, %if.end130 ], [ 1, %if.end92 ], [ %issue_modify_qp.0, %if.then68 ], [ %issue_modify_qp.0, %land.lhs.true64.sw.epilog_crit_edge ], [ %issue_modify_qp.0, %land.lhs.true61.sw.epilog_crit_edge ], [ %issue_modify_qp.0, %if.end58.sw.epilog_crit_edge ]
  %68 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %attr, align 8
  %ibqp_state205 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %70 = ptrtoint ptr %ibqp_state205 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %ibqp_state205, align 4
  br label %if.end206

if.end206:                                        ; preds = %sw.epilog, %do.body33.if.end206_crit_edge
  %flags.2 = phi i32 [ %flags.1, %sw.epilog ], [ %call37, %do.body33.if.end206_crit_edge ]
  %dont_wait.2 = phi i8 [ %dont_wait.1, %sw.epilog ], [ 0, %do.body33.if.end206_crit_edge ]
  %issue_modify_qp.2 = phi i8 [ %issue_modify_qp.1, %sw.epilog ], [ 0, %do.body33.if.end206_crit_edge ]
  %and207 = and i32 %attr_mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.end206.if.end237_crit_edge, label %if.then209

if.end206.if.end237_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end237

if.then209:                                       ; preds = %if.end206
  %iwarp_info_valid = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 7
  %71 = ptrtoint ptr %iwarp_info_valid to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load210 = load i8, ptr %iwarp_info_valid, align 1
  %bf.set212 = or i8 %bf.load210, 32
  store i8 %bf.set212, ptr %iwarp_info_valid, align 1
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %72 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qp_access_flags, align 8
  %and213 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.then209.if.end219_crit_edge, label %if.then215

if.then209.if.end219_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end219

if.then215:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %74 = ptrtoint ptr %wr_rdresp_en to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load216 = load i16, ptr %wr_rdresp_en, align 4
  %bf.set218 = or i16 %bf.load216, 512
  store i16 %bf.set218, ptr %wr_rdresp_en, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %if.then209.if.end219_crit_edge
  %75 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qp_access_flags, align 8
  %and221 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end219.if.end228_crit_edge, label %if.then223

if.end219.if.end228_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end228

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en224 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %77 = ptrtoint ptr %wr_rdresp_en224 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load225 = load i16, ptr %wr_rdresp_en224, align 4
  %bf.set227 = or i16 %bf.load225, 512
  store i16 %bf.set227, ptr %wr_rdresp_en224, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %if.end219.if.end228_crit_edge
  %78 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %qp_access_flags, align 8
  %and230 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end228.if.end237_crit_edge, label %if.then232

if.end228.if.end237_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end237

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #23
  %rd_en = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %80 = ptrtoint ptr %rd_en to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load233 = load i16, ptr %rd_en, align 4
  %bf.set235 = or i16 %bf.load233, 32
  store i16 %bf.set235, ptr %rd_en, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then232, %if.end228.if.end237_crit_edge, %if.end206.if.end237_crit_edge
  %iwarp_info_valid238 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 7
  %81 = ptrtoint ptr %iwarp_info_valid238 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load239 = load i8, ptr %iwarp_info_valid238, align 1
  %82 = and i8 %bf.load239, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %bf.cast.not = icmp eq i8 %82, 0
  br i1 %bf.cast.not, label %if.end237.if.end246_crit_edge, label %if.then241

if.end237.if.end246_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end246

if.then241:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #23
  %iwscq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 4
  %83 = ptrtoint ptr %iwscq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iwscq, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq, ptr %84, i32 0, i32 1, i32 0, i32 4
  %85 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cq_id, align 8
  %send_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 3
  %87 = ptrtoint ptr %send_cq_num to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %send_cq_num, align 8
  %iwrcq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 5
  %88 = ptrtoint ptr %iwrcq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iwrcq, align 8
  %cq_id244 = getelementptr inbounds %struct.irdma_cq, ptr %89, i32 0, i32 1, i32 0, i32 4
  %90 = ptrtoint ptr %cq_id244 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cq_id244, align 8
  %rcv_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 4
  %92 = ptrtoint ptr %rcv_cq_num to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %rcv_cq_num, align 4
  %sc_qp245 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %host_ctx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 37
  %93 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %host_ctx, align 4
  call void @irdma_sc_qp_setctx(ptr noundef %sc_qp245, ptr noundef %94, ptr noundef %ctx_info2) #21
  br label %if.end246

if.end246:                                        ; preds = %if.then241, %if.end237.if.end246_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #21
  br i1 %tobool43.not, label %if.end246.if.end286_crit_edge, label %if.then250

if.end246.if.end286_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end286

if.then250:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %issue_modify_qp.2)
  %tobool251.not = icmp eq i8 %issue_modify_qp.2, 0
  br i1 %tobool251.not, label %if.then250.do.body260_crit_edge, label %if.then252

if.then250.do.body260_crit_edge:                  ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body260

if.then252:                                       ; preds = %if.then250
  %arp_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 12
  %95 = ptrtoint ptr %arp_idx to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arp_idx, align 4
  %conv253 = zext i16 %96 to i32
  %rem_endpoint_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 5
  %97 = ptrtoint ptr %rem_endpoint_idx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv253, ptr %rem_endpoint_idx, align 8
  %call254 = call i32 @irdma_hw_modify_qp(ptr noundef %1, ptr noundef %ibqp, ptr noundef nonnull %info, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.then252.do.body260_crit_edge, label %if.then252.cleanup423_crit_edge

if.then252.cleanup423_crit_edge:                  ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

if.then252.do.body260_crit_edge:                  ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body260

do.body260:                                       ; preds = %if.then252.do.body260_crit_edge, %if.then250.do.body260_crit_edge
  %call268 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %iwarp_state273 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %98 = ptrtoint ptr %iwarp_state273 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %iwarp_state273, align 1
  %curr_iwarp_state275 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 4
  %100 = ptrtoint ptr %curr_iwarp_state275 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %curr_iwarp_state275, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %101)
  %cmp277 = icmp eq i8 %99, %101
  br i1 %cmp277, label %if.then279, label %do.body260.if.end284_crit_edge

do.body260.if.end284_crit_edge:                   ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end284

if.then279:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #23
  %next_iwarp_state280 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 3
  %102 = ptrtoint ptr %next_iwarp_state280 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %next_iwarp_state280, align 2
  %104 = ptrtoint ptr %iwarp_state273 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %iwarp_state273, align 1
  %105 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %attr, align 8
  %ibqp_state283 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %107 = ptrtoint ptr %ibqp_state283 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %ibqp_state283, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %do.body260.if.end284_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call268) #21
  br label %if.end286

if.end286:                                        ; preds = %if.end284, %if.end246.if.end286_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %issue_modify_qp.2)
  %tobool288.not = icmp eq i8 %issue_modify_qp.2, 0
  br i1 %tobool288.not, label %if.end286.if.end357_crit_edge, label %land.lhs.true289

if.end286.if.end357_crit_edge:                    ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end357

land.lhs.true289:                                 ; preds = %if.end286
  %ibqp_state290 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %108 = ptrtoint ptr %ibqp_state290 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ibqp_state290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %109)
  %cmp291 = icmp ugt i32 %109, 3
  br i1 %cmp291, label %if.then293, label %land.lhs.true289.if.end357_crit_edge

land.lhs.true289.if.end357_crit_edge:             ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end357

if.then293:                                       ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dont_wait.2)
  %tobool294.not = icmp eq i8 %dont_wait.2, 0
  br i1 %tobool294.not, label %if.else321, label %if.then295

if.then295:                                       ; preds = %if.then293
  %cm_id296 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 15
  %110 = ptrtoint ptr %cm_id296 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cm_id296, align 4
  %tobool297.not = icmp eq ptr %111, null
  br i1 %tobool297.not, label %if.then295.if.end357_crit_edge, label %land.lhs.true298

if.then295.if.end357_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end357

land.lhs.true298:                                 ; preds = %if.then295
  %hw_tcp_state299 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 35
  %112 = ptrtoint ptr %hw_tcp_state299 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hw_tcp_state299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool301.not = icmp eq i8 %113, 0
  br i1 %tobool301.not, label %land.lhs.true298.if.end357_crit_edge, label %do.body304

land.lhs.true298.if.end357_crit_edge:             ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end357

do.body304:                                       ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #23
  %call312 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %114 = ptrtoint ptr %hw_tcp_state299 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %hw_tcp_state299, align 1
  %last_aeq318 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 21
  %115 = ptrtoint ptr %last_aeq318 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1537, ptr %last_aeq318, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call312) #21
  call void @irdma_cm_disconn(ptr noundef %ibqp) #21
  br label %if.end357

if.else321:                                       ; preds = %if.then293
  %ht_lock = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 5, i32 7
  %call330 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ht_lock) #21
  %cm_node = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 16
  %116 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cm_node, align 8
  %tobool335.not = icmp eq ptr %117, null
  br i1 %tobool335.not, label %if.else352, label %if.then336

if.then336:                                       ; preds = %if.else321
  %refcnt = getelementptr inbounds %struct.irdma_cm_node, ptr %117, i32 0, i32 22
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #21
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #21
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #21, !srcloc !266
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then336.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !267

if.then336.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then336
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %119 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %.not.i.i.i = icmp sgt i32 %119, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !261

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then336.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then336.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #21
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ht_lock, i32 noundef %call330) #21
  %close_timer_started340 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 24
  %call.i.i569 = call zeroext i1 @__kasan_check_write(ptr noundef %close_timer_started340, i32 noundef 4) #21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !268
  call void @llvm.prefetch.p0(ptr %close_timer_started340, i32 1, i32 3, i32 1) #21
  %120 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %close_timer_started340, ptr %close_timer_started340, i32 1, ptr elementtype(i32) %close_timer_started340) #21, !srcloc !269
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %120, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !270
  %cm_id342 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 15
  %121 = ptrtoint ptr %cm_id342 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cm_id342, align 4
  %tobool343.not = icmp ne ptr %122, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp345 = icmp eq i32 %asmresult.i.i.i.i, 1
  %or.cond564 = select i1 %tobool343.not, i1 %cmp345, i1 false
  br i1 %or.cond564, label %if.then347, label %refcount_inc.exit.if.end350_crit_edge

refcount_inc.exit.if.end350_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end350

if.then347:                                       ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #23
  %123 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cm_node, align 8
  %call349 = call i32 @irdma_schedule_cm_timer(ptr noundef %124, ptr noundef %ibqp, i32 noundef 1, i32 noundef 1, i32 noundef 0) #21
  br label %if.end350

if.end350:                                        ; preds = %if.then347, %refcount_inc.exit.if.end350_crit_edge
  %125 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cm_node, align 8
  call void @irdma_rem_ref_cm_node(ptr noundef %126) #21
  br label %if.end357

if.else352:                                       ; preds = %if.else321
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ht_lock, i32 noundef %call330) #21
  br label %if.end357

if.end357:                                        ; preds = %if.else352, %if.end350, %do.body304, %land.lhs.true298.if.end357_crit_edge, %if.then295.if.end357_crit_edge, %land.lhs.true289.if.end357_crit_edge, %if.end286.if.end357_crit_edge
  %tobool361.not = icmp eq ptr %udata, null
  %or.cond565 = or i1 %tobool43.not, %tobool361.not
  br i1 %or.cond565, label %if.end357.cleanup423_crit_edge, label %land.lhs.true362

if.end357.cleanup423_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

land.lhs.true362:                                 ; preds = %if.end357
  %hw_rev365 = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 0, i32 9
  %127 = ptrtoint ptr %hw_rev365 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %hw_rev365, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cmp367 = icmp ugt i8 %128, 1
  br i1 %cmp367, label %cond.true371, label %land.lhs.true362.cleanup423_crit_edge

land.lhs.true362.cleanup423_crit_edge:            ; preds = %land.lhs.true362
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

cond.true371:                                     ; preds = %land.lhs.true362
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %129 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %context, align 4
  %push_idx378 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 16
  %131 = ptrtoint ptr %push_idx378 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %push_idx378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %132)
  %cmp379.not = icmp eq i32 %132, -1
  br i1 %cmp379.not, label %cond.true371.if.end389_crit_edge, label %land.lhs.true381

cond.true371.if.end389_crit_edge:                 ; preds = %cond.true371
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end389

land.lhs.true381:                                 ; preds = %cond.true371
  %push_wqe_mmap_entry = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 7
  %133 = ptrtoint ptr %push_wqe_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %push_wqe_mmap_entry, align 8
  %tobool382.not = icmp eq ptr %134, null
  br i1 %tobool382.not, label %land.lhs.true383, label %land.lhs.true381.if.end389_crit_edge

land.lhs.true381.if.end389_crit_edge:             ; preds = %land.lhs.true381
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end389

land.lhs.true383:                                 ; preds = %land.lhs.true381
  %push_db_mmap_key = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 1
  %call384 = call fastcc i32 @irdma_setup_push_mmap_entries(ptr noundef %130, ptr noundef %ibqp, ptr noundef nonnull %uresp, ptr noundef %push_db_mmap_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call384)
  %tobool385.not = icmp eq i32 %call384, 0
  br i1 %tobool385.not, label %if.then386, label %land.lhs.true383.if.end389_crit_edge

land.lhs.true383.if.end389_crit_edge:             ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end389

if.then386:                                       ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #23
  %push_valid = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 3
  %135 = ptrtoint ptr %push_valid to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %push_valid, align 2
  %push_offset = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 18
  %136 = ptrtoint ptr %push_offset to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %push_offset, align 2
  %push_offset388 = getelementptr inbounds %struct.irdma_modify_qp_resp, ptr %uresp, i32 0, i32 2
  %138 = ptrtoint ptr %push_offset388 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %push_offset388, align 8
  br label %if.end389

if.end389:                                        ; preds = %if.then386, %land.lhs.true383.if.end389_crit_edge, %land.lhs.true381.if.end389_crit_edge, %cond.true371.if.end389_crit_edge
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %139 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %outlen, align 4
  %141 = call i32 @llvm.umin.i32(i32 %140, i32 24)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %142 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %outbuf.i, align 4
  call void @__check_object_size(ptr noundef nonnull %uresp, i32 noundef %141, i1 noundef zeroext true) #21
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #21
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i.i, label %if.end389.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end389.copy_to_user.exit.i_crit_edge:          ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end389
  %144 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %143, i32 %141, i32 -1226833920) #25, !srcloc !265
  %asmresult.i.i.i = extractvalue { i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef %141) #21
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %143, ptr noundef nonnull %uresp, i32 noundef %141) #21
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end389.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %141, %if.end389.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %141, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup423_crit_edge, label %if.then399

copy_to_user.exit.i.cleanup423_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup423

if.then399:                                       ; preds = %copy_to_user.exit.i
  %push_db_mmap_entry.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 8
  %145 = ptrtoint ptr %push_db_mmap_entry.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %push_db_mmap_entry.i, align 4
  %tobool.not.i574 = icmp eq ptr %146, null
  br i1 %tobool.not.i574, label %if.then399.if.end.i_crit_edge, label %if.then.i

if.then399.if.end.i_crit_edge:                    ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #23
  call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %146) #21
  %147 = ptrtoint ptr %push_db_mmap_entry.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %push_db_mmap_entry.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then399.if.end.i_crit_edge
  %push_wqe_mmap_entry.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 7
  %148 = ptrtoint ptr %push_wqe_mmap_entry.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %push_wqe_mmap_entry.i, align 8
  %tobool3.not.i = icmp eq ptr %149, null
  br i1 %tobool3.not.i, label %if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge, label %if.then4.i

if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_remove_push_mmap_entries.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %149) #21
  %150 = ptrtoint ptr %push_wqe_mmap_entry.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %push_wqe_mmap_entry.i, align 8
  br label %irdma_remove_push_mmap_entries.exit

irdma_remove_push_mmap_entries.exit:              ; preds = %if.then4.i, %if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_modify_qp.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_modify_qp, %if.then412)) #21
          to label %cleanup423 [label %if.then412], !srcloc !259

if.then412:                                       ; preds = %irdma_remove_push_mmap_entries.exit
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_modify_qp.__UNIQUE_ID_ddebug712, ptr noundef %1, ptr noundef nonnull @.str.7) #21
  br label %cleanup423

exit:                                             ; preds = %sw.bb132.exit_crit_edge, %if.end124.exit_crit_edge, %if.end113.exit_crit_edge, %if.end113.exit_crit_edge585, %if.end113.exit_crit_edge586, %sw.bb107.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %sw.bb85.exit_crit_edge, %sw.bb.exit_crit_edge, %if.then44.exit_crit_edge
  %err.0 = phi i32 [ -22, %sw.bb.exit_crit_edge ], [ -22, %lor.lhs.false.exit_crit_edge ], [ -22, %sw.bb85.exit_crit_edge ], [ 0, %sw.bb107.exit_crit_edge ], [ 0, %if.end113.exit_crit_edge ], [ -22, %if.end124.exit_crit_edge ], [ -22, %sw.bb132.exit_crit_edge ], [ -22, %if.then44.exit_crit_edge ], [ 0, %if.end113.exit_crit_edge585 ], [ 0, %if.end113.exit_crit_edge586 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call37) #21
  br label %cleanup423

cleanup423:                                       ; preds = %exit, %if.then412, %irdma_remove_push_mmap_entries.exit, %copy_to_user.exit.i.cleanup423_crit_edge, %land.lhs.true362.cleanup423_crit_edge, %if.end357.cleanup423_crit_edge, %if.then252.cleanup423_crit_edge, %if.end155, %if.then148.cleanup423_crit_edge, %if.then145.cleanup423_crit_edge, %entry.cleanup423_crit_edge
  %retval.1 = phi i32 [ %err.0, %exit ], [ -95, %entry.cleanup423_crit_edge ], [ -22, %if.then148.cleanup423_crit_edge ], [ 0, %if.end155 ], [ 0, %if.then145.cleanup423_crit_edge ], [ -22, %if.then252.cleanup423_crit_edge ], [ -14, %if.then412 ], [ 0, %land.lhs.true362.cleanup423_crit_edge ], [ 0, %if.end357.cleanup423_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup423_crit_edge ], [ -14, %irdma_remove_push_mmap_entries.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ureq) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uresp) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #21
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_terminate_del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_qp_setctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cm_disconn(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_schedule_cm_timer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rem_ref_cm_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_reg_phys_mr(ptr noundef %pd, i64 noundef %addr, i64 noundef %size, i32 noundef %access, ptr nocapture noundef readonly %iova_start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 328) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %pd3 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pd3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pd, ptr %pd3, align 4
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i, align 8
  %iwmr7 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %iwmr7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %iwmr7, align 8
  %type = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %type, align 4
  %9 = ptrtoint ptr %iova_start to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %iova_start, align 8
  %user_base = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %user_base to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %user_base, align 8
  %call8 = tail call fastcc i32 @irdma_create_stag(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.err_crit_edge, label %if.end11

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

if.end11:                                         ; preds = %if.end
  %stag12 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %stag12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8, ptr %stag12, align 4
  %13 = ptrtoint ptr %iova_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iova_start, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %iova, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %rkey, align 4
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8, ptr %lkey, align 8
  %page_cnt = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %page_cnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %page_cnt, align 8
  %pgaddrmem = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %pgaddrmem to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %addr, ptr %pgaddrmem, align 8
  %len = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %size, ptr %len, align 8
  %page_size = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %page_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4096, ptr %page_size, align 8
  %conv = trunc i32 %access to i16
  %call13 = tail call fastcc i32 @irdma_hwreg_mr(ptr noundef %1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.then15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rf.i, align 8
  %mr_stagmask.i = getelementptr inbounds %struct.irdma_pci_f, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %mr_stagmask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mr_stagmask.i, align 8
  %and.i = and i32 %25, %call8
  %shr.i = lshr i32 %and.i, 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %23, i32 0, i32 36
  %26 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %allocated_mrs.i, align 8
  %rsrc_lock.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %23, i32 0, i32 53
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i.i) #21
  %rem.i.i.i = and i32 %shr.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 13
  %add.ptr.i.i.i = getelementptr i32, ptr %27, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %29, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i.i, i32 noundef %call2.i.i) #21
  br label %err

err:                                              ; preds = %if.then15, %if.end.err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err ], [ %call7.i.i, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_create_stag(ptr nocapture noundef readonly %iwdev) unnamed_addr #0 align 64 {
entry:
  %random = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %random) #21
  %0 = ptrtoint ptr %random to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %random, align 4, !annotation !271
  call void @get_random_bytes(ptr noundef nonnull %random, i32 noundef 4) #21
  %1 = ptrtoint ptr %random to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %3 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rf, align 8
  %mr_stagmask = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %mr_stagmask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mr_stagmask, align 8
  %and3 = and i32 %6, %2
  %shr = lshr i32 %and3, 8
  %max_mr = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_mr, align 4
  %rem = urem i32 %shr, %8
  %allocated_mrs = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 36
  %9 = ptrtoint ptr %allocated_mrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %allocated_mrs, align 8
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 53
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %call5.i = call i32 @_find_next_zero_bit_be(ptr noundef %10, i32 noundef %8, i32 noundef %rem) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %8)
  %cmp6.not.i = icmp ult i32 %call5.i, %8
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call8.i = call i32 @_find_first_zero_bit_be(ptr noundef %10, i32 noundef %8) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %8)
  %cmp9.not.i = icmp ult i32 %call8.i, %8
  br i1 %cmp9.not.i, label %if.then.i.if.end_crit_edge, label %if.then11.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_stag, %if.then18.i)) #21
          to label %cleanup [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 71
  %11 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iwdev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end_crit_edge ], [ %call5.i, %entry.if.end_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 %div2.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %14
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  %neg = xor i32 %6, -1
  %and = and i32 %2, %neg
  %shl = shl i32 %rsrc_num.0.i, 8
  %or = or i32 %shl, %and
  %conv9 = and i32 %2, 255
  %add = add i32 %or, %conv9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then18.i, %if.then11.i
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %if.then11.i ], [ 0, %if.then18.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %random) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_hwreg_mr(ptr nocapture noundef readonly %iwdev, ptr nocapture noundef readonly %iwmr, i16 noundef zeroext %access) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_mr, ptr %iwmr, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 46
  %call2 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3
  %info3 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = call ptr @memset(ptr %info3, i32 0, i32 56)
  %user_base = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %user_base to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %user_base, align 8
  %va = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %va, align 8
  %stag = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 6
  %8 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stag, align 4
  %shr = lshr i32 %9, 8
  %stag_idx = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2
  %10 = ptrtoint ptr %stag_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %stag_idx, align 8
  %11 = load i32, ptr %stag, align 4
  %conv = trunc i32 %11 to i8
  %stag_key = getelementptr inbounds %struct.irdma_reg_ns_stag_info, ptr %info3, i32 0, i32 10
  %12 = ptrtoint ptr %stag_key to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %stag_key, align 4
  %len = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 7
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %len, align 8
  %total_len = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %total_len to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %total_len, align 8
  %16 = shl i16 %access, 1
  %conv1.i = and i16 %16, 2
  %17 = and i16 %access, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool3.not.i = icmp eq i16 %17, 0
  %cond4.i = select i1 %tobool3.not.i, i16 0, i16 10
  %or12.i = and i16 %access, 52
  %or18.i = or i16 %or12.i, %conv1.i
  %or24.i = or i16 %or18.i, %cond4.i
  %conv28.i = or i16 %or24.i, 1
  %access_rights = getelementptr inbounds %struct.irdma_reg_ns_stag_info, ptr %info3, i32 0, i32 8
  %18 = ptrtoint ptr %access_rights to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv28.i, ptr %access_rights, align 4
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pd_id, align 4
  %pd_id7 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1
  %21 = ptrtoint ptr %pd_id7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pd_id7, align 8
  %22 = lshr i16 %access, 5
  %.lobit = and i16 %22, 1
  %23 = xor i16 %.lobit, 1
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.irdma_reg_ns_stag_info, ptr %info3, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 4
  %page_size = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 4
  %27 = ptrtoint ptr %page_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %page_size, align 8
  %conv14 = trunc i64 %28 to i32
  %page_size15 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %page_size15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv14, ptr %page_size15, align 8
  %pbl_allocated = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %pbl_allocated, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else24, label %if.then16

if.then16:                                        ; preds = %if.end
  %level = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4, i32 1
  %31 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  %idx = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4, i32 2, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx, align 4
  %first_pm_pbl_index = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1, i32 1
  %35 = ptrtoint ptr %first_pm_pbl_index to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %first_pm_pbl_index, align 8
  %chunk_size = getelementptr inbounds %struct.irdma_reg_ns_stag_info, ptr %info3, i32 0, i32 4
  br i1 %cmp, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #23
  %36 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %chunk_size, align 4
  br label %if.end25

if.else19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #23
  %37 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %chunk_size, align 4
  br label %if.end25

if.else24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %pgaddrmem = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 8
  %38 = ptrtoint ptr %pgaddrmem to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pgaddrmem, align 8
  %40 = ptrtoint ptr %info3 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %info3, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.else19, %if.then18
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 1
  %41 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 2
  %42 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %post_sq, align 1
  %43 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %44, i32 0, i32 42
  %45 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %sc_dev, ptr %in, align 8
  %46 = ptrtoint ptr %call2 to i32
  %conv29 = zext i32 %46 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 3
  %47 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv29, ptr %scratch, align 8
  %48 = load ptr, ptr %rf, align 8
  %call33 = tail call i32 @irdma_handle_cqp_op(ptr noundef %48, ptr noundef nonnull %call2) #21
  %49 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rf, align 8
  %cqp35 = getelementptr inbounds %struct.irdma_pci_f, ptr %50, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp35, ptr noundef nonnull %call2) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool36.not = icmp eq i32 %call33, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_free_stag(ptr nocapture noundef readonly %iwdev, i32 noundef %stag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf, align 8
  %mr_stagmask = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mr_stagmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mr_stagmask, align 8
  %and = and i32 %3, %stag
  %shr = lshr i32 %and, 8
  %allocated_mrs = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %allocated_mrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allocated_mrs, align 8
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %rem.i.i = and i32 %shr, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %and, 13
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %7, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_mcast_mac(ptr nocapture noundef readonly %ip_addr, ptr nocapture noundef writeonly %mac, i1 noundef zeroext %ipv4) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %ipv4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx = getelementptr i8, ptr %ip_addr, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 127
  %arrayidx3 = getelementptr i8, ptr %ip_addr, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %mac4.sroa.5.4.insert.ext = zext i8 %4 to i16
  %mac4.sroa.5.4.insert.shift = shl nuw i16 %mac4.sroa.5.4.insert.ext, 8
  %5 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ip_addr, align 1
  %mac4.sroa.5.5.insert.ext = zext i8 %6 to i16
  %mac4.sroa.5.5.insert.insert = or i16 %mac4.sroa.5.4.insert.shift, %mac4.sroa.5.5.insert.ext
  %mac4.sroa.0.sroa.4.0.insert.ext = zext i8 %2 to i32
  %mac4.sroa.0.sroa.0.0.insert.insert = or i32 %mac4.sroa.0.sroa.4.0.insert.ext, 16801280
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %arrayidx7 = getelementptr i8, ptr %ip_addr, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr i8, ptr %ip_addr, i32 2
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr i8, ptr %ip_addr, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %mac6.sroa.6.4.insert.ext = zext i8 %12 to i16
  %mac6.sroa.6.4.insert.shift = shl nuw i16 %mac6.sroa.6.4.insert.ext, 8
  %13 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_addr, align 1
  %mac6.sroa.6.5.insert.ext = zext i8 %14 to i16
  %mac6.sroa.6.5.insert.insert = or i16 %mac6.sroa.6.4.insert.shift, %mac6.sroa.6.5.insert.ext
  %mac6.sroa.0.sroa.5.0.insert.ext = zext i8 %10 to i32
  %mac6.sroa.0.sroa.4.0.insert.ext = zext i8 %8 to i32
  %mac6.sroa.0.sroa.4.0.insert.shift = shl nuw nsw i32 %mac6.sroa.0.sroa.4.0.insert.ext, 8
  %mac6.sroa.0.sroa.4.0.insert.insert = or i32 %mac6.sroa.0.sroa.4.0.insert.shift, %mac6.sroa.0.sroa.5.0.insert.ext
  %mac6.sroa.0.sroa.0.0.insert.insert = or i32 %mac6.sroa.0.sroa.4.0.insert.insert, 858980352
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %mac6.sroa.0.sroa.0.0.insert.insert, %if.else ], [ %mac4.sroa.0.sroa.0.0.insert.insert, %if.then ]
  %mac6.sroa.6.5.insert.insert.sink = phi i16 [ %mac6.sroa.6.5.insert.insert, %if.else ], [ %mac4.sroa.5.5.insert.insert, %if.then ]
  %15 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %mac, align 4
  %16 = getelementptr i8, ptr %mac, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %mac6.sroa.6.5.insert.insert.sink, ptr %16, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_port_ibevent(ptr noundef %iwdev) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #21
  %0 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iwdev, ptr %event, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %0, align 4
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 16
  %4 = ptrtoint ptr %iw_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iw_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 10, i32 9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %1, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ib_unregister_device(ptr noundef %iwdev) local_unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 16
  %0 = ptrtoint ptr %iw_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %iw_status, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #21
  %1 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %3 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iwdev, ptr %event.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %2, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #21
  call void @ib_unregister_device(ptr noundef %iwdev) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_ib_register_device(ptr noundef %iwdev) local_unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf.i, align 8
  %pcidev1.i = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %pcidev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev1.i, align 8
  %roce_mode.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 17
  %4 = ptrtoint ptr %roce_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %roce_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %node_type.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 20
  %5 = ptrtoint ptr %node_type.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %node_type.i.i, align 1
  %node_guid.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 17
  %netdev.i.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %6 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr.i.i, align 64
  %10 = call ptr @memcpy(ptr %node_guid.i.i, ptr %9, i32 3)
  %arrayidx.i.i.i.i = getelementptr i8, ptr %node_guid.i.i, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx.i.i.i.i, align 1
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %node_guid.i.i, i32 4
  %12 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %arrayidx1.i.i.i.i, align 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %node_guid.i.i, i32 5
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %9, i32 3
  %13 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %add.ptr2.i.i.i.i, i32 3)
  %14 = ptrtoint ptr %node_guid.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %node_guid.i.i, align 1
  %16 = xor i8 %15, 2
  store i8 %16, ptr %node_guid.i.i, align 1
  br label %irdma_init_rdma_device.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %netdev1.i.i = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %17 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev1.i.i, align 4
  %node_type.i1.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 20
  %19 = ptrtoint ptr %node_type.i1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %node_type.i1.i, align 1
  %node_guid.i2.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 17
  %dev_addr.i3.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr.i3.i, align 64
  %22 = call ptr @memcpy(ptr %node_guid.i2.i, ptr %21, i32 3)
  %arrayidx.i.i.i4.i = getelementptr i8, ptr %node_guid.i2.i, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx.i.i.i4.i, align 1
  %arrayidx1.i.i.i5.i = getelementptr i8, ptr %node_guid.i2.i, i32 4
  %24 = ptrtoint ptr %arrayidx1.i.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -2, ptr %arrayidx1.i.i.i5.i, align 1
  %add.ptr.i.i.i6.i = getelementptr i8, ptr %node_guid.i2.i, i32 5
  %add.ptr2.i.i.i7.i = getelementptr i8, ptr %21, i32 3
  %25 = call ptr @memcpy(ptr %add.ptr.i.i.i6.i, ptr %add.ptr2.i.i.i7.i, i32 3)
  %26 = ptrtoint ptr %node_guid.i2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %node_guid.i2.i, align 1
  %28 = xor i8 %27, 2
  store i8 %28, ptr %node_guid.i2.i, align 1
  %iw_add_ref.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 105
  %29 = ptrtoint ptr %iw_add_ref.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @irdma_qp_add_ref, ptr %iw_add_ref.i.i, align 4
  %iw_rem_ref.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 106
  %30 = ptrtoint ptr %iw_rem_ref.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @irdma_qp_rem_ref, ptr %iw_rem_ref.i.i, align 4
  %iw_get_qp.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 107
  %31 = ptrtoint ptr %iw_get_qp.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @irdma_get_qp, ptr %iw_get_qp.i.i, align 4
  %iw_connect.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 108
  %32 = ptrtoint ptr %iw_connect.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @irdma_connect, ptr %iw_connect.i.i, align 4
  %iw_accept.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 109
  %33 = ptrtoint ptr %iw_accept.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @irdma_accept, ptr %iw_accept.i.i, align 4
  %iw_reject.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 110
  %34 = ptrtoint ptr %iw_reject.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @irdma_reject, ptr %iw_reject.i.i, align 4
  %iw_create_listen.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 111
  %35 = ptrtoint ptr %iw_create_listen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @irdma_create_listen, ptr %iw_create_listen.i.i, align 4
  %iw_destroy_listen.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 1, i32 112
  %36 = ptrtoint ptr %iw_destroy_listen.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @irdma_destroy_listen, ptr %iw_destroy_listen.i.i, align 4
  %iw_ifname.i.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 36
  %37 = call ptr @memcpy(ptr %iw_ifname.i.i, ptr %18, i32 16)
  br label %irdma_init_rdma_device.exit

irdma_init_rdma_device.exit:                      ; preds = %if.else.i, %if.then.i
  %irdma_iw_dev_ops.sink.i = phi ptr [ @irdma_iw_dev_ops, %if.else.i ], [ @irdma_roce_dev_ops, %if.then.i ]
  tail call void @ib_set_device_ops(ptr noundef %iwdev, ptr noundef nonnull %irdma_iw_dev_ops.sink.i) #21
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 21
  %38 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %phys_port_cnt.i, align 8
  %39 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rf.i, align 8
  %ceqs_count.i = getelementptr inbounds %struct.irdma_pci_f, ptr %40, i32 0, i32 29
  %41 = ptrtoint ptr %ceqs_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ceqs_count.i, align 4
  %num_comp_vectors.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 12
  %43 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %num_comp_vectors.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev.i, ptr %parent.i, align 8
  tail call void @ib_set_device_ops(ptr noundef %iwdev, ptr noundef nonnull @irdma_dev_ops) #21
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  %call1 = tail call i32 @ib_device_set_netdev(ptr noundef %iwdev, ptr noundef %46, i32 noundef 1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %irdma_init_rdma_device.exit.do.body_crit_edge

irdma_init_rdma_device.exit.do.body_crit_edge:    ; preds = %irdma_init_rdma_device.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.end4:                                          ; preds = %irdma_init_rdma_device.exit
  %47 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rf.i, align 8
  %device = getelementptr inbounds %struct.irdma_pci_f, ptr %48, i32 0, i32 45, i32 2
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 8
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 22
  %51 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end4.dma_set_max_seg_size.exit_crit_edge, label %if.then.i37

if.end4.dma_set_max_seg_size.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  br label %dma_set_max_seg_size.exit

if.then.i37:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %52, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i37, %if.end4.dma_set_max_seg_size.exit_crit_edge
  %54 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rf.i, align 8
  %device9 = getelementptr inbounds %struct.irdma_pci_f, ptr %55, i32 0, i32 45, i32 2
  %56 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device9, align 8
  %call10 = tail call i32 @ib_register_device(ptr noundef %iwdev, ptr noundef nonnull @.str.10, ptr noundef %57) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %dma_set_max_seg_size.exit.do.body_crit_edge

dma_set_max_seg_size.exit.do.body_crit_edge:      ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.end13:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #23
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 16
  %58 = ptrtoint ptr %iw_status to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %iw_status, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #21
  %59 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %61 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %iwdev, ptr %event.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %59, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9, ptr %60, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #21
  br label %cleanup

do.body:                                          ; preds = %dma_set_max_seg_size.exit.do.body_crit_edge, %irdma_init_rdma_device.exit.do.body_crit_edge
  %ret.0 = phi i32 [ %call1, %irdma_init_rdma_device.exit.do.body_crit_edge ], [ %call10, %dma_set_max_seg_size.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ib_register_device.__UNIQUE_ID_ddebug744, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ib_register_device, %if.then20)) #21
          to label %cleanup [label %if.then20], !srcloc !259

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ib_register_device.__UNIQUE_ID_ddebug744, ptr noundef %iwdev, ptr noundef nonnull @.str.12) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %ret.0, %if.then20 ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_device_set_netdev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ib_dealloc_device(ptr noundef %ibdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irdma_rt_deinit_hw(ptr noundef %ibdev) #21
  %rf = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf, align 8
  tail call void @irdma_ctrl_deinit_hw(ptr noundef %1) #21
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  tail call void @kfree(ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rt_deinit_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ctrl_deinit_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_alloc_and_get_cqp_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_handle_cqp_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_put_cqp_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_user_mmap_entry_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_user_mmap_entry_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_roce_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef writeonly %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #21
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %1 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8400901, ptr %core_cap_flags, align 4
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %max_mad_size = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 3
  %2 = ptrtoint ptr %max_mad_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %max_mad_size, align 4
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %3 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pkey_tbl_len, align 8
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %immutable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %immutable, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %6 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len2 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %8 = ptrtoint ptr %gid_tbl_len2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %gid_tbl_len2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #21
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_get_link_layer(ptr nocapture noundef readnone %ibdev, i32 noundef %port_num) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_create_ah(ptr noundef %ibah, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) #0 align 64 {
entry:
  %uresp = alloca %struct.irdma_create_ah_resp, align 8
  %sgid_addr = alloca %union.anon.297, align 4
  %dgid_addr = alloca %union.anon.297, align 4
  %dmac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd1 = getelementptr inbounds %struct.ib_ah, ptr %ibah, i32 0, i32 1
  %0 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd1, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %rf5 = getelementptr inbounds %struct.irdma_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rf5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uresp) #21
  %8 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %uresp, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sgid_addr) #21
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %sgid_addr, i32 16
  %12 = call ptr @memset(ptr %11, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dgid_addr) #21
  %13 = getelementptr inbounds %struct.sockaddr_in6, ptr %dgid_addr, i32 0, i32 2
  %14 = getelementptr inbounds %struct.sockaddr_in6, ptr %dgid_addr, i32 0, i32 3
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %dgid_addr, i32 0, i32 3, i32 0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.sockaddr_in6, ptr %dgid_addr, i32 0, i32 3, i32 0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.sockaddr_in6, ptr %dgid_addr, i32 0, i32 3, i32 0, i32 0, i32 3
  %18 = call ptr @memset(ptr %dgid_addr, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dmac) #21
  %19 = getelementptr inbounds [6 x i8], ptr %dmac, i32 0, i32 4
  %allocated_ahs = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 39
  %20 = call ptr @memset(ptr %dmac, i32 255, i32 6)
  %21 = ptrtoint ptr %allocated_ahs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %allocated_ahs, align 4
  %max_ah = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 12
  %23 = ptrtoint ptr %max_ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_ah, align 8
  %next_ah = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 13
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %25 = ptrtoint ptr %next_ah to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_ah, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %22, i32 noundef %24, i32 noundef %26) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %24)
  %cmp6.not.i = icmp ult i32 %call5.i, %24
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %22, i32 noundef %24) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %24)
  %cmp9.not.i = icmp ult i32 %call8.i, %24
  br i1 %cmp9.not.i, label %if.then.i.if.end_crit_edge, label %if.then11.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_ah, %if.then18.i)) #21
          to label %cleanup199 [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 71
  %27 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %28, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %cleanup199

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end_crit_edge ], [ %call5.i, %entry.if.end_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 %div2.i.i
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %30
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp23.i = icmp eq i32 %add.i, %24
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %31 = ptrtoint ptr %next_ah to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select.i, ptr %next_ah, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  %pd7 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 2
  %32 = ptrtoint ptr %pd7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %pd7, align 8
  %sc_ah8 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1
  %ah_info9 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1
  %ah_idx = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 6
  %33 = ptrtoint ptr %ah_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rsrc_num.0.i, ptr %ah_idx, align 4
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %ah_info9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vsi, ptr %ah_info9, align 4
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 42
  %35 = ptrtoint ptr %sc_ah8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sc_dev, ptr %sc_ah8, align 4
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sgid_index, align 4
  %sgid_index12 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 4
  %38 = ptrtoint ptr %sgid_index12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %sgid_index12, align 8
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %dgid = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 5
  %dgid16 = getelementptr inbounds %struct.ib_global_route, ptr %3, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %dgid, ptr %dgid16, i32 16)
  %gid = getelementptr inbounds %struct.ib_gid_attr, ptr %40, i32 0, i32 2
  %42 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %gid, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i303 = or i32 %45, %43
  %arrayidx4.i.i = getelementptr %struct.ib_gid_attr, ptr %40, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %47, 65535
  %or5.i.i = or i32 %or.i.i303, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.then.i304, label %if.else.i

if.then.i304:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %48 = call ptr @memset(ptr %sgid_addr, i32 0, i32 16)
  %49 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2, ptr %sgid_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %gid, i32 12
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i, align 1
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %9, align 4
  br label %rdma_gid2ip.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %53 = call ptr @memset(ptr %sgid_addr, i32 0, i32 28)
  %54 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 10, ptr %sgid_addr, align 4
  %55 = call ptr @memcpy(ptr %10, ptr %gid, i32 16)
  br label %rdma_gid2ip.exit

rdma_gid2ip.exit:                                 ; preds = %if.else.i, %if.then.i304
  %56 = ptrtoint ptr %dgid16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dgid16, align 4
  %arrayidx2.i.i305 = getelementptr [4 x i32], ptr %dgid16, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx2.i.i305 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i.i305, align 4
  %or.i.i306 = or i32 %59, %57
  %arrayidx4.i.i307 = getelementptr %struct.ib_global_route, ptr %3, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx4.i.i307 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx4.i.i307, align 4
  %xor.i.i308 = xor i32 %61, 65535
  %or5.i.i309 = or i32 %or.i.i306, %xor.i.i308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i309)
  %cmp.i.i310 = icmp eq i32 %or5.i.i309, 0
  br i1 %cmp.i.i310, label %if.then.i313, label %if.else.i315

if.then.i313:                                     ; preds = %rdma_gid2ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  %62 = call ptr @memset(ptr %dgid_addr, i32 0, i32 16)
  %63 = ptrtoint ptr %dgid_addr to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %dgid_addr, align 4
  %add.ptr.i312 = getelementptr i8, ptr %dgid16, i32 12
  %64 = ptrtoint ptr %add.ptr.i312 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %add.ptr.i312, align 1
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %13, align 4
  br label %rdma_gid2ip.exit316

if.else.i315:                                     ; preds = %rdma_gid2ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  %67 = call ptr @memset(ptr %dgid_addr, i32 0, i32 28)
  %68 = ptrtoint ptr %dgid_addr to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 10, ptr %dgid_addr, align 4
  %69 = call ptr @memcpy(ptr %14, ptr %dgid16, i32 16)
  br label %rdma_gid2ip.exit316

rdma_gid2ip.exit316:                              ; preds = %if.else.i315, %if.then.i313
  %attrs = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 3, i32 1
  %70 = call ptr @memcpy(ptr %attrs, ptr %3, i32 56)
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %40, i32 0, i32 3
  %71 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gid_type.i, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %72, label %if.end4.i [
    i32 0, label %rdma_gid2ip.exit316.rdma_gid_attr_network_type.exit_crit_edge
    i32 1, label %if.then3.i
  ]

rdma_gid2ip.exit316.rdma_gid_attr_network_type.exit_crit_edge: ; preds = %rdma_gid2ip.exit316
  call void @__sanitizer_cov_trace_pc() #23
  br label %rdma_gid_attr_network_type.exit

if.then3.i:                                       ; preds = %rdma_gid2ip.exit316
  call void @__sanitizer_cov_trace_pc() #23
  br label %rdma_gid_attr_network_type.exit

if.end4.i:                                        ; preds = %rdma_gid2ip.exit316
  call void @__sanitizer_cov_trace_pc() #23
  %74 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gid, align 4
  %76 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i318 = or i32 %77, %75
  %78 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i320 = xor i32 %79, 65535
  %or5.i.i321 = or i32 %or.i.i318, %xor.i.i320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i321)
  %cmp.i.i322 = icmp eq i32 %or5.i.i321, 0
  %phi.cast = select i1 %cmp.i.i322, i8 2, i8 3
  br label %rdma_gid_attr_network_type.exit

rdma_gid_attr_network_type.exit:                  ; preds = %if.end4.i, %if.then3.i, %rdma_gid2ip.exit316.rdma_gid_attr_network_type.exit_crit_edge
  %retval.0.i323 = phi i8 [ 1, %if.then3.i ], [ 0, %rdma_gid2ip.exit316.rdma_gid_attr_network_type.exit_crit_edge ], [ %phi.cast, %if.end4.i ]
  %net_type = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 3, i32 4
  %80 = ptrtoint ptr %net_type to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %retval.0.i323, ptr %net_type, align 8
  %sgid_addr22 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 3, i32 2
  %81 = call ptr @memcpy(ptr %sgid_addr22, ptr %sgid_addr, i32 16)
  %dgid_addr24 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 3, i32 3
  %82 = call ptr @memcpy(ptr %dgid_addr24, ptr %dgid_addr, i32 16)
  %83 = ptrtoint ptr %ah_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rsrc_num.0.i, ptr %ah_idx, align 4
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pd_id, align 4
  %pd_idx = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 1
  %86 = ptrtoint ptr %pd_idx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %pd_idx, align 4
  %ah_flags = getelementptr inbounds %struct.rdma_ah_attr, ptr %3, i32 0, i32 4
  %87 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ah_flags, align 8
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool28.not = icmp eq i8 %89, 0
  br i1 %tobool28.not, label %rdma_gid_attr_network_type.exit.if.end34_crit_edge, label %if.then29

rdma_gid_attr_network_type.exit.if.end34_crit_edge: ; preds = %rdma_gid_attr_network_type.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

if.then29:                                        ; preds = %rdma_gid_attr_network_type.exit
  call void @__sanitizer_cov_trace_pc() #23
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %3, i32 0, i32 2
  %90 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flow_label, align 8
  %flow_label31 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 5
  %92 = ptrtoint ptr %flow_label31 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %flow_label31, align 4
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %3, i32 0, i32 4
  %93 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %hop_limit, align 1
  %hop_ttl = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 10
  %95 = ptrtoint ptr %hop_ttl to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %hop_ttl, align 4
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %3, i32 0, i32 5
  %96 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %traffic_class, align 2
  %tc_tos = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 9
  %98 = ptrtoint ptr %tc_tos to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %tc_tos, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %rdma_gid_attr_network_type.exit.if.end34_crit_edge
  %99 = getelementptr inbounds %struct.rdma_ah_attr, ptr %3, i32 0, i32 6
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %102 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %dmac, align 4
  %add.ptr.i324 = getelementptr %struct.rdma_ah_attr, ptr %3, i32 0, i32 6, i32 0, i32 1
  %103 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr.i324, align 2
  %105 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %19, align 4
  %106 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %gid_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %switch = icmp ult i32 %107, 2
  br i1 %switch, label %if.end34.if.else_crit_edge, label %if.end4.i335

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.end4.i335:                                     ; preds = %if.end34
  %108 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %gid, align 4
  %110 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i329 = or i32 %111, %109
  %112 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i331 = xor i32 %113, 65535
  %or5.i.i332 = or i32 %or.i.i329, %xor.i.i331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i332)
  %cmp.i.i333 = icmp eq i32 %or5.i.i332, 0
  br i1 %cmp.i.i333, label %if.then39, label %if.end4.i335.if.else_crit_edge

if.end4.i335.if.else_crit_edge:                   ; preds = %if.end4.i335
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then39:                                        ; preds = %if.end4.i335
  %ipv4_valid = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 12
  %114 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load = load i8, ptr %ipv4_valid, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %ipv4_valid, align 1
  %115 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %13, align 4
  %dest_ip_addr = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 3
  %117 = ptrtoint ptr %dest_ip_addr to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %dest_ip_addr, align 4
  %118 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %9, align 4
  %src_ip_addr = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 4
  %120 = ptrtoint ptr %src_ip_addr to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %src_ip_addr, align 4
  %call47 = tail call zeroext i1 @irdma_ipv4_is_lpb(i32 noundef %119, i32 noundef %116) #21
  %121 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load48 = load i8, ptr %ipv4_valid, align 1
  %bf.shl = select i1 %call47, i8 32, i8 0
  %bf.clear49 = and i8 %bf.load48, -33
  %bf.set50 = or i8 %bf.clear49, %bf.shl
  store i8 %bf.set50, ptr %ipv4_valid, align 1
  %and.i = and i32 %116, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.then55, label %if.then39.if.end95_crit_edge

if.then39.if.end95_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end95

if.then55:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #23
  %bf.set59 = or i8 %bf.load48, 32
  %122 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %bf.set59, ptr %ipv4_valid, align 1
  %arrayidx.i = getelementptr i8, ptr %dest_ip_addr, i32 2
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i, align 1
  %125 = and i8 %124, 127
  %arrayidx3.i = getelementptr i8, ptr %dest_ip_addr, i32 1
  %126 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx3.i, align 1
  %mac4.sroa.5.4.insert.ext.i = zext i8 %127 to i16
  %mac4.sroa.5.4.insert.shift.i = shl nuw i16 %mac4.sroa.5.4.insert.ext.i, 8
  %128 = ptrtoint ptr %dest_ip_addr to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dest_ip_addr, align 1
  %mac4.sroa.5.5.insert.ext.i = zext i8 %129 to i16
  %mac4.sroa.5.5.insert.insert.i = or i16 %mac4.sroa.5.4.insert.shift.i, %mac4.sroa.5.5.insert.ext.i
  %mac4.sroa.0.sroa.4.0.insert.ext.i = zext i8 %125 to i32
  %mac4.sroa.0.sroa.0.0.insert.insert.i = or i32 %mac4.sroa.0.sroa.4.0.insert.ext.i, 16801280
  br label %if.end95.sink.split

if.else:                                          ; preds = %if.end4.i335.if.else_crit_edge, %if.end34.if.else_crit_edge
  %dest_ip_addr64 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 3
  call void @irdma_copy_ip_ntohl(ptr noundef %dest_ip_addr64, ptr noundef %14) #21
  %src_ip_addr67 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 4
  call void @irdma_copy_ip_ntohl(ptr noundef %src_ip_addr67, ptr noundef %10) #21
  %call76 = call zeroext i1 @irdma_ipv6_is_lpb(ptr noundef %src_ip_addr67, ptr noundef %dest_ip_addr64) #21
  %do_lpbk77 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 12
  %130 = ptrtoint ptr %do_lpbk77 to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load78 = load i8, ptr %do_lpbk77, align 1
  %bf.shl79 = select i1 %call76, i8 32, i8 0
  %bf.clear80 = and i8 %bf.load78, -33
  %bf.set81 = or i8 %bf.clear80, %bf.shl79
  store i8 %bf.set81, ptr %do_lpbk77, align 1
  %131 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp.i339 = icmp eq i8 %132, -1
  br i1 %cmp.i339, label %if.else.if.then86_crit_edge, label %if.end.i

if.else.if.then86_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then86

if.end.i:                                         ; preds = %if.else
  %133 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %14, align 4
  %135 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %15, align 4
  %or.i.i341 = or i32 %136, %134
  %137 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %16, align 4
  %xor.i.i343 = xor i32 %138, 65535
  %or5.i.i344 = or i32 %or.i.i341, %xor.i.i343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i344)
  %cmp.i.i345 = icmp eq i32 %or5.i.i344, 0
  br i1 %cmp.i.i345, label %rdma_is_multicast_addr.exit, label %if.end.i.if.end95_crit_edge

if.end.i.if.end95_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end95

rdma_is_multicast_addr.exit:                      ; preds = %if.end.i
  %139 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %17, align 4
  %and.i.i = and i32 %140, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i9.i.not = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i9.i.not, label %rdma_is_multicast_addr.exit.if.then86_crit_edge, label %rdma_is_multicast_addr.exit.if.end95_crit_edge

rdma_is_multicast_addr.exit.if.end95_crit_edge:   ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end95

rdma_is_multicast_addr.exit.if.then86_crit_edge:  ; preds = %rdma_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then86

if.then86:                                        ; preds = %rdma_is_multicast_addr.exit.if.then86_crit_edge, %if.else.if.then86_crit_edge
  %bf.set90 = or i8 %bf.load78, 32
  %141 = ptrtoint ptr %do_lpbk77 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %bf.set90, ptr %do_lpbk77, align 1
  %arrayidx7.i = getelementptr i8, ptr %dest_ip_addr64, i32 3
  %142 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %dest_ip_addr64, i32 2
  %144 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %dest_ip_addr64, i32 1
  %146 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx11.i, align 1
  %mac6.sroa.6.4.insert.ext.i = zext i8 %147 to i16
  %mac6.sroa.6.4.insert.shift.i = shl nuw i16 %mac6.sroa.6.4.insert.ext.i, 8
  %148 = ptrtoint ptr %dest_ip_addr64 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dest_ip_addr64, align 1
  %mac6.sroa.6.5.insert.ext.i = zext i8 %149 to i16
  %mac6.sroa.6.5.insert.insert.i = or i16 %mac6.sroa.6.4.insert.shift.i, %mac6.sroa.6.5.insert.ext.i
  %mac6.sroa.0.sroa.5.0.insert.ext.i = zext i8 %145 to i32
  %mac6.sroa.0.sroa.4.0.insert.ext.i = zext i8 %143 to i32
  %mac6.sroa.0.sroa.4.0.insert.shift.i = shl nuw nsw i32 %mac6.sroa.0.sroa.4.0.insert.ext.i, 8
  %mac6.sroa.0.sroa.4.0.insert.insert.i = or i32 %mac6.sroa.0.sroa.4.0.insert.shift.i, %mac6.sroa.0.sroa.5.0.insert.ext.i
  %mac6.sroa.0.sroa.0.0.insert.insert.i = or i32 %mac6.sroa.0.sroa.4.0.insert.insert.i, 858980352
  br label %if.end95.sink.split

if.end95.sink.split:                              ; preds = %if.then86, %if.then55
  %storemerge = phi i32 [ %mac6.sroa.0.sroa.0.0.insert.insert.i, %if.then86 ], [ %mac4.sroa.0.sroa.0.0.insert.insert.i, %if.then55 ]
  %mac6.sroa.6.5.insert.insert.i.sink = phi i16 [ %mac6.sroa.6.5.insert.insert.i, %if.then86 ], [ %mac4.sroa.5.5.insert.insert.i, %if.then55 ]
  %150 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %storemerge, ptr %dmac, align 4
  %151 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %mac6.sroa.6.5.insert.insert.i.sink, ptr %19, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end95.sink.split, %rdma_is_multicast_addr.exit.if.end95_crit_edge, %if.end.i.if.end95_crit_edge, %if.then39.if.end95_crit_edge
  %vlan_tag = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 7
  %mac_addr = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 11
  %call97 = call i32 @rdma_read_gid_l2_fields(ptr noundef %40, ptr noundef %vlan_tag, ptr noundef %mac_addr) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end95.error_crit_edge

if.end95.error_crit_edge:                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end100:                                        ; preds = %if.end95
  %152 = ptrtoint ptr %rf5 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rf5, align 8
  %dest_ip_addr102 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 3
  %ipv4_valid104 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 12
  %154 = ptrtoint ptr %ipv4_valid104 to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load105 = load i8, ptr %ipv4_valid104, align 1
  %155 = and i8 %bf.load105, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %bf.cast = icmp ne i8 %155, 0
  %call108 = call i32 @irdma_add_arp(ptr noundef %153, ptr noundef %dest_ip_addr102, i1 noundef zeroext %bf.cast, ptr noundef nonnull %dmac) #21
  %dst_arpindex = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 2
  %156 = ptrtoint ptr %dst_arpindex to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %call108, ptr %dst_arpindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call108)
  %cmp110 = icmp eq i32 %call108, -1
  br i1 %cmp110, label %if.end100.error_crit_edge, label %if.end113

if.end100.error_crit_edge:                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end113:                                        ; preds = %if.end100
  %157 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %vlan_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %158)
  %cmp116 = icmp ugt i16 %158, 4095
  br i1 %cmp116, label %land.lhs.true, label %if.end113.if.then130_crit_edge

if.end113.if.then130_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130

land.lhs.true:                                    ; preds = %if.end113
  %dcb = getelementptr inbounds %struct.irdma_device, ptr %5, i32 0, i32 17
  %159 = ptrtoint ptr %dcb to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load118 = load i8, ptr %dcb, align 2
  %160 = and i8 %bf.load118, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %bf.cast121.not = icmp eq i8 %160, 0
  br i1 %bf.cast121.not, label %if.end125, label %land.lhs.true.if.then130_crit_edge

land.lhs.true.if.then130_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130

if.end125:                                        ; preds = %land.lhs.true
  %161 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %161)
  %.pr = load i16, ptr %vlan_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %.pr)
  %cmp128 = icmp ult i16 %.pr, 4096
  br i1 %cmp128, label %if.end125.if.then130_crit_edge, label %if.end125.if.end137_crit_edge

if.end125.if.end137_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end137

if.end125.if.then130_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then130

if.then130:                                       ; preds = %if.end125.if.then130_crit_edge, %land.lhs.true.if.then130_crit_edge, %if.end113.if.then130_crit_edge
  %162 = phi i16 [ %.pr, %if.end125.if.then130_crit_edge ], [ %158, %if.end113.if.then130_crit_edge ], [ 0, %land.lhs.true.if.then130_crit_edge ]
  %insert_vlan_tag = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 8
  %163 = ptrtoint ptr %insert_vlan_tag to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %insert_vlan_tag, align 2
  %tc_tos131 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 9
  %164 = ptrtoint ptr %tc_tos131 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %tc_tos131, align 1
  %166 = lshr i8 %165, 1
  %167 = and i8 %166, 15
  %168 = zext i8 %167 to i32
  %arrayidx.i350 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %168
  %169 = ptrtoint ptr %arrayidx.i350 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i350, align 1
  %conv133 = zext i8 %170 to i16
  %shl = shl i16 %conv133, 13
  %or = or i16 %shl, %162
  %171 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %or, ptr %vlan_tag, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then130, %if.end125.if.end137_crit_edge
  %172 = ptrtoint ptr %rf5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rf5, align 8
  %flags = getelementptr inbounds %struct.rdma_ah_init_attr, ptr %attr, i32 0, i32 1
  %174 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags, align 4
  %and139 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140 = icmp ne i32 %and139, 0
  %call141 = call i32 @irdma_ah_cqp_op(ptr noundef %173, ptr noundef %sc_ah8, i8 noundef zeroext 30, i1 noundef zeroext %tobool140, ptr noundef nonnull @irdma_gsi_ud_qp_ah_cb, ptr noundef %sc_ah8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end151, label %do.body

do.body:                                          ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_ah.__UNIQUE_ID_ddebug740, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_ah, %if.then149)) #21
          to label %error [label %if.then149], !srcloc !259

if.then149:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_ah.__UNIQUE_ID_ddebug740, ptr noundef %5, ptr noundef nonnull @.str.20) #21
  br label %error

if.end151:                                        ; preds = %if.end137
  %176 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %flags, align 4
  %and153 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body156.preheader, label %if.end151.if.end184_crit_edge

if.end151.if.end184_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end184

do.body156.preheader:                             ; preds = %if.end151
  %ccq = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 47
  br label %do.body156

do.body156:                                       ; preds = %land.rhs.do.body156_crit_edge, %do.body156.preheader
  %cnt.0 = phi i32 [ %dec, %land.rhs.do.body156_crit_edge ], [ 5000, %do.body156.preheader ]
  call void @irdma_cqp_ce_handler(ptr noundef %7, ptr noundef %ccq) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %178(i32 noundef 214748000) #21
  %179 = ptrtoint ptr %ipv4_valid104 to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load159 = load i8, ptr %ipv4_valid104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load159)
  %bf.cast161.not = icmp sgt i8 %bf.load159, -1
  br i1 %bf.cast161.not, label %land.rhs, label %do.body156.if.end184_crit_edge

do.body156.if.end184_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end184

land.rhs:                                         ; preds = %do.body156
  %dec = add nsw i32 %cnt.0, -1
  %tobool162.not = icmp eq i32 %dec, 0
  br i1 %tobool162.not, label %do.body166, label %land.rhs.do.body156_crit_edge

land.rhs.do.body156_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body156

do.body166:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_ah.__UNIQUE_ID_ddebug741, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_ah, %if.then178)) #21
          to label %error [label %if.then178], !srcloc !259

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_ah.__UNIQUE_ID_ddebug741, ptr noundef %5, ptr noundef nonnull @.str.21) #21
  br label %error

if.end184:                                        ; preds = %do.body156.if.end184_crit_edge, %if.end151.if.end184_crit_edge
  %tobool185.not = icmp eq ptr %udata, null
  br i1 %tobool185.not, label %if.end184.cleanup199_crit_edge, label %if.then186

if.end184.cleanup199_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup199

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #23
  %180 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ah_idx, align 4
  %182 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %uresp, align 8
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %183 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %outlen, align 4
  %185 = call i32 @llvm.umin.i32(i32 %184, i32 8)
  %call194 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %uresp, i32 noundef %185)
  br label %cleanup199

error:                                            ; preds = %if.then178, %do.body166, %if.then149, %do.body, %if.end100.error_crit_edge, %if.end95.error_crit_edge
  %err.1 = phi i32 [ %call97, %if.end95.error_crit_edge ], [ %call141, %if.then149 ], [ -22, %if.end100.error_crit_edge ], [ %call141, %do.body ], [ -110, %if.then178 ], [ -110, %do.body166 ]
  %186 = ptrtoint ptr %rf5 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rf5, align 8
  %allocated_ahs198 = getelementptr inbounds %struct.irdma_pci_f, ptr %187, i32 0, i32 39
  %188 = ptrtoint ptr %allocated_ahs198 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %allocated_ahs198, align 4
  %rsrc_lock.i351 = getelementptr inbounds %struct.irdma_pci_f, ptr %187, i32 0, i32 53
  %call2.i352 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i351) #21
  %add.ptr.i.i356 = getelementptr i32, ptr %189, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %190 = ptrtoint ptr %add.ptr.i.i356 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr.i.i356, align 4
  %and.i.i357 = and i32 %191, %neg.i.i
  store i32 %and.i.i357, ptr %add.ptr.i.i356, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i351, i32 noundef %call2.i352) #21
  br label %cleanup199

cleanup199:                                       ; preds = %error, %if.then186, %if.end184.cleanup199_crit_edge, %if.then18.i, %if.then11.i
  %retval.0 = phi i32 [ %err.1, %error ], [ 0, %if.then186 ], [ 0, %if.end184.cleanup199_crit_edge ], [ -75, %if.then18.i ], [ -75, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dmac) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dgid_addr) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sgid_addr) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uresp) #21
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_query_ah(ptr nocapture noundef readonly %ibah, ptr nocapture noundef writeonly %ah_attr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ah_attr, i32 0, i32 56)
  %ah_flags = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 3, i32 1, i32 4
  %1 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ah_flags, align 8
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %ah_flags1 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 4
  %4 = ptrtoint ptr %ah_flags1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ah_flags1, align 8
  %flow_label = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flow_label, align 4
  %flow_label2 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 2
  %7 = ptrtoint ptr %flow_label2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flow_label2, align 8
  %tc_tos = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 9
  %8 = ptrtoint ptr %tc_tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tc_tos, align 1
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 5
  %10 = ptrtoint ptr %traffic_class to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %traffic_class, align 2
  %hop_ttl = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 10
  %11 = ptrtoint ptr %hop_ttl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hop_ttl, align 4
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 4
  %13 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hop_limit, align 1
  %sgid_index = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 4
  %14 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sgid_index, align 8
  %sgid_index10 = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 3
  %16 = ptrtoint ptr %sgid_index10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %sgid_index10, align 4
  %17 = load i8, ptr %sgid_index, align 8
  store i8 %17, ptr %sgid_index10, align 4
  %dgid = getelementptr inbounds %struct.ib_global_route, ptr %ah_attr, i32 0, i32 1
  %dgid15 = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 5
  %18 = call ptr @memcpy(ptr %dgid, ptr %dgid15, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_destroy_ah(ptr noundef %ibah, i32 noundef %ah_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibah, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %sc_ah = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1
  %call2 = tail call i32 @irdma_ah_cqp_op(ptr noundef %3, ptr noundef %sc_ah, i8 noundef zeroext 32, i1 noundef zeroext false, ptr noundef null, ptr noundef %ibah) #21
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf, align 8
  %allocated_ahs = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %allocated_ahs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %allocated_ahs, align 4
  %ah_idx = getelementptr inbounds %struct.irdma_ah, ptr %ibah, i32 0, i32 1, i32 1, i32 6
  %8 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ah_idx, align 4
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %rem.i.i = and i32 %9, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %9, 5
  %add.ptr.i.i = getelementptr i32, ptr %7, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %11, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_attach_mcast(ptr nocapture noundef readonly %ibqp, ptr nocapture noundef readonly %ibgid, i16 noundef zeroext %lid) #0 align 64 {
entry:
  %mcg_info = alloca %struct.irdma_mcast_grp_ctx_entry_info, align 4
  %ip_addr = alloca [4 x i32], align 4
  %vlan_id = alloca i16, align 2
  %sgid_addr = alloca %union.anon.298, align 4
  %dmac = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf2 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf2, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mcg_info) #21
  %4 = call ptr @memset(ptr %mcg_info, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip_addr) #21
  %5 = call ptr @memset(ptr %ip_addr, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #21
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vlan_id, align 2, !annotation !271
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sgid_addr) #21
  %7 = getelementptr inbounds i8, ptr %sgid_addr, i32 16
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dmac) #21
  %9 = getelementptr inbounds [6 x i8], ptr %dmac, i32 0, i32 4
  %10 = call ptr @memset(ptr %dmac, i32 255, i32 6)
  %11 = ptrtoint ptr %ibgid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ibgid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %ibgid, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %14, %12
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %ibgid, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %16, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %17 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 3
  %18 = call ptr @memset(ptr %sgid_addr, i32 0, i32 28)
  %19 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 10, ptr %sgid_addr, align 4
  %20 = call ptr @memcpy(ptr %17, ptr %ibgid, i32 16)
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %ip_addr, ptr noundef %17) #21
  %call6 = call ptr @irdma_netdev_vlan_ipv6(ptr noundef nonnull %ip_addr, ptr noundef nonnull %vlan_id, ptr noundef null) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_attach_mcast.__UNIQUE_ID_ddebug735, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_attach_mcast, %if.then10)) #21
          to label %do.end [label %if.then10], !srcloc !259

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %21 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qp_num, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_attach_mcast.__UNIQUE_ID_ddebug735, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %22, ptr noundef nonnull %ip_addr) #21
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then
  %arrayidx7.i = getelementptr inbounds i8, ptr %ip_addr, i32 3
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr inbounds i8, ptr %ip_addr, i32 2
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.i, align 2
  %arrayidx11.i = getelementptr inbounds i8, ptr %ip_addr, i32 1
  %27 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx11.i, align 1
  %mac6.sroa.6.4.insert.ext.i = zext i8 %28 to i16
  %mac6.sroa.6.4.insert.shift.i = shl nuw i16 %mac6.sroa.6.4.insert.ext.i, 8
  %29 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ip_addr, align 4
  %mac6.sroa.6.5.insert.ext.i = zext i8 %30 to i16
  %mac6.sroa.6.5.insert.insert.i = or i16 %mac6.sroa.6.4.insert.shift.i, %mac6.sroa.6.5.insert.ext.i
  %mac6.sroa.0.sroa.5.0.insert.ext.i = zext i8 %26 to i32
  %mac6.sroa.0.sroa.4.0.insert.ext.i = zext i8 %24 to i32
  %mac6.sroa.0.sroa.4.0.insert.shift.i = shl nuw nsw i32 %mac6.sroa.0.sroa.4.0.insert.ext.i, 8
  %mac6.sroa.0.sroa.4.0.insert.insert.i = or i32 %mac6.sroa.0.sroa.4.0.insert.shift.i, %mac6.sroa.0.sroa.5.0.insert.ext.i
  %mac6.sroa.0.sroa.0.0.insert.insert.i = or i32 %mac6.sroa.0.sroa.4.0.insert.insert.i, 858980352
  %31 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mac6.sroa.0.sroa.0.0.insert.insert.i, ptr %dmac, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %mac6.sroa.6.5.insert.insert.i, ptr %9, align 4
  br label %do.body40

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %33 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 2
  %34 = call ptr @memset(ptr %sgid_addr, i32 0, i32 16)
  %35 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %sgid_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %ibgid, i32 12
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr.i, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %33, align 4
  %39 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %ip_addr, align 4
  %call15 = call zeroext i16 @irdma_get_vlan_ipv4(ptr noundef nonnull %ip_addr) #21
  %40 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %call15, ptr %vlan_id, align 2
  %arrayidx.i = getelementptr inbounds i8, ptr %ip_addr, i32 2
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 2
  %43 = and i8 %42, 127
  %arrayidx3.i = getelementptr inbounds i8, ptr %ip_addr, i32 1
  %44 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.i, align 1
  %mac4.sroa.5.4.insert.ext.i = zext i8 %45 to i16
  %mac4.sroa.5.4.insert.shift.i = shl nuw i16 %mac4.sroa.5.4.insert.ext.i, 8
  %46 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ip_addr, align 4
  %mac4.sroa.5.5.insert.ext.i = zext i8 %47 to i16
  %mac4.sroa.5.5.insert.insert.i = or i16 %mac4.sroa.5.4.insert.shift.i, %mac4.sroa.5.5.insert.ext.i
  %mac4.sroa.0.sroa.4.0.insert.ext.i = zext i8 %43 to i32
  %mac4.sroa.0.sroa.0.0.insert.insert.i = or i32 %mac4.sroa.0.sroa.4.0.insert.ext.i, 16801280
  %48 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mac4.sroa.0.sroa.0.0.insert.insert.i, ptr %dmac, align 4
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %mac4.sroa.5.5.insert.insert.i, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_attach_mcast.__UNIQUE_ID_ddebug736, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_attach_mcast, %if.then30)) #21
          to label %do.body40 [label %if.then30], !srcloc !259

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %qp_num32 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %50 = ptrtoint ptr %qp_num32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qp_num32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_attach_mcast.__UNIQUE_ID_ddebug736, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %51, ptr noundef nonnull %ip_addr, ptr noundef nonnull %dmac) #21
  br label %do.body40

do.body40:                                        ; preds = %if.then30, %if.else, %do.end
  %qh_list_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 56
  %call43 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qh_list_lock) #21
  %mc_qht_list.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 57
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body40
  %pos.0.in.i = phi ptr [ %mc_qht_list.i, %do.body40 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %52 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %mc_qht_list.i
  br i1 %cmp.i.not.i, label %for.cond.i.if.then51_crit_edge, label %for.body.i

for.cond.i.if.then51_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then51

for.body.i:                                       ; preds = %for.cond.i
  %dest_ip.i = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 1, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %dest_ip.i, ptr noundef nonnull dereferenceable(16) %ip_addr, i32 16) #27
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %mcast_list_lookup_ip.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

mcast_list_lookup_ip.exit:                        ; preds = %for.body.i
  %tobool50.not = icmp eq ptr %pos.0.i, null
  br i1 %tobool50.not, label %mcast_list_lookup_ip.exit.if.then51_crit_edge, label %if.else123

mcast_list_lookup_ip.exit.if.then51_crit_edge:    ; preds = %mcast_list_lookup_ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then51

if.then51:                                        ; preds = %mcast_list_lookup_ip.exit.if.then51_crit_edge, %for.cond.i.if.then51_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call43) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 176) #26
  %tobool54.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool54.not, label %if.then51.cleanup181_crit_edge, label %if.end56

if.then51.cleanup181_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup181

if.end56:                                         ; preds = %if.then51
  %ipv4_valid = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load = load i8, ptr %ipv4_valid, align 4
  %bf.shl = select i1 %cmp.i.i, i8 64, i8 0
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ipv4_valid, align 4
  %dest_ip = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %55 = call ptr @memcpy(ptr %dest_ip, ptr %ip_addr, i32 16)
  %allocated_mcgs = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 38
  %56 = ptrtoint ptr %allocated_mcgs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %allocated_mcgs, align 8
  %max_mcg = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 14
  %58 = ptrtoint ptr %max_mcg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_mcg, align 8
  %next_mcg = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 15
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %60 = ptrtoint ptr %next_mcg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %next_mcg, align 4
  %call5.i = call i32 @_find_next_zero_bit_be(ptr noundef %57, i32 noundef %59, i32 noundef %61) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %59)
  %cmp6.not.i = icmp ult i32 %call5.i, %59
  br i1 %cmp6.not.i, label %if.end56.if.end65_crit_edge, label %if.then.i269

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end65

if.then.i269:                                     ; preds = %if.end56
  %call8.i = call i32 @_find_first_zero_bit_be(ptr noundef %57, i32 noundef %59) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %59)
  %cmp9.not.i = icmp ult i32 %call8.i, %59
  br i1 %cmp9.not.i, label %if.then.i269.if.end65_crit_edge, label %if.then11.i

if.then.i269.if.end65_crit_edge:                  ; preds = %if.then.i269
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end65

if.then11.i:                                      ; preds = %if.then.i269
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_attach_mcast, %if.then18.i)) #21
          to label %if.then64 [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 71
  %62 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iwdev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %63, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %if.then64

if.then64:                                        ; preds = %if.then18.i, %if.then11.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup181

if.end65:                                         ; preds = %if.then.i269.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i269.if.end65_crit_edge ], [ %call5.i, %if.end56.if.end65_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %57, i32 %div2.i.i
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i270 = or i32 %shl.i.i, %65
  store i32 %or.i.i270, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %59)
  %cmp23.i = icmp eq i32 %add.i, %59
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %66 = ptrtoint ptr %next_mcg to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %next_mcg, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  %mc_info = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %mc_info to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %rsrc_num.0.i, ptr %mc_info, align 8
  %mc_grp_ctx = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2
  %dma_mem_mc68 = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 8
  %size = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 2
  %68 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 4096, ptr %size, align 2
  %device = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 45, i32 2
  %69 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device, align 8
  %pa = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 1
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef 4096, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #21
  %71 = ptrtoint ptr %dma_mem_mc68 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store ptr %call.i, ptr %dma_mem_mc68, align 2
  %tobool72.not = icmp eq ptr %call.i, null
  br i1 %tobool72.not, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #23
  %72 = ptrtoint ptr %allocated_mcgs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %allocated_mcgs, align 8
  %call2.i273 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %add.ptr.i.i277 = getelementptr i32, ptr %73, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %74 = ptrtoint ptr %add.ptr.i.i277 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i.i277, align 4
  %and.i.i = and i32 %75, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i277, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i273) #21
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup181

if.end75:                                         ; preds = %if.end65
  %conv76 = trunc i32 %rsrc_num.0.i to i16
  %mg_id = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 4
  %76 = ptrtoint ptr %mg_id to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv76, ptr %mg_id, align 2
  %dest_ip_addr = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 6
  %77 = call ptr @memcpy(ptr %dest_ip_addr, ptr %ip_addr, i32 16)
  %ipv4_valid83 = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 3
  %78 = ptrtoint ptr %ipv4_valid83 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load84 = load i8, ptr %ipv4_valid83, align 1
  %bf.shl85 = select i1 %cmp.i.i, i8 -128, i8 0
  %bf.clear86 = and i8 %bf.load84, 127
  %bf.set87 = or i8 %bf.clear86, %bf.shl85
  store i8 %bf.set87, ptr %ipv4_valid83, align 1
  %79 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vlan_id, align 2
  %vlan_id90 = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %vlan_id90 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %vlan_id90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %80)
  %cmp92 = icmp ult i16 %80, 4096
  br i1 %cmp92, label %if.then94, label %if.end75.if.end99_crit_edge

if.end75.if.end99_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end99

if.then94:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  %bf.set98 = or i8 %bf.set87, 64
  %82 = ptrtoint ptr %ipv4_valid83 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bf.set98, ptr %ipv4_valid83, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end75.if.end99_crit_edge
  %fcn_id = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 12
  %83 = ptrtoint ptr %fcn_id to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fcn_id, align 4
  %hmc_fcn_id = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 2
  %85 = ptrtoint ptr %hmc_fcn_id to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %hmc_fcn_id, align 8
  %vsi101 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 7
  %86 = ptrtoint ptr %vsi101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vsi101, align 4
  %user_pri = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 31
  %88 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %user_pri, align 1
  %idxprom = zext i8 %89 to i32
  %qs_handle = getelementptr %struct.irdma_sc_vsi, ptr %87, i32 0, i32 15, i32 %idxprom, i32 4
  %90 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %qs_handle, align 4
  %qs_handle105 = getelementptr inbounds %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 7
  %92 = ptrtoint ptr %qs_handle105 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %qs_handle105, align 8
  %93 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dmac, align 4
  %95 = ptrtoint ptr %mc_grp_ctx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %mc_grp_ctx, align 8
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %9, align 4
  %add.ptr1.i = getelementptr %struct.mc_table_list, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 4
  %98 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %add.ptr1.i, align 4
  %call118 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qh_list_lock) #21
  %99 = ptrtoint ptr %mc_qht_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mc_qht_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %mc_qht_list.i, ptr noundef %100) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end99.if.end130_crit_edge

if.end99.if.end130_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130

if.end.i.i.i:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #23
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %100, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %mc_qht_list.i, ptr %prev3.i.i.i, align 4
  %104 = ptrtoint ptr %mc_qht_list.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call7.i.i, ptr %mc_qht_list.i, align 4
  br label %if.end130

if.else123:                                       ; preds = %mcast_list_lookup_ip.exit
  %no_of_mgs = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 5
  %105 = ptrtoint ptr %no_of_mgs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %no_of_mgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %106)
  %cmp125 = icmp eq i32 %106, 8
  br i1 %cmp125, label %if.then127, label %if.else123.if.end130_crit_edge

if.else123.if.end130_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end130

if.then127:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call43) #21
  br label %cleanup181

if.end130:                                        ; preds = %if.else123.if.end130_crit_edge, %if.end.i.i.i, %if.end99.if.end130_crit_edge
  %flags.1 = phi i32 [ %call43, %if.else123.if.end130_crit_edge ], [ %call118, %if.end99.if.end130_crit_edge ], [ %call118, %if.end.i.i.i ]
  %mc_qht_elem.0 = phi ptr [ %pos.0.i, %if.else123.if.end130_crit_edge ], [ %call7.i.i, %if.end99.if.end130_crit_edge ], [ %call7.i.i, %if.end.i.i.i ]
  %qp_num132 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %107 = ptrtoint ptr %qp_num132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %qp_num132, align 4
  %109 = ptrtoint ptr %mcg_info to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %mcg_info, align 4
  %mc_grp_ctx133 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2
  %no_of_mgs134 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2, i32 5
  %110 = ptrtoint ptr %no_of_mgs134 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %no_of_mgs134, align 4
  %call136 = call i32 @irdma_sc_add_mcast_grp(ptr noundef %mc_grp_ctx133, ptr noundef nonnull %mcg_info) #21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %flags.1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool138.not = icmp eq i32 %111, 0
  br i1 %tobool138.not, label %if.then139, label %if.else142

if.then139:                                       ; preds = %if.end130
  %112 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rf2, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %113, i32 0, i32 46
  %call.i280 = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #21
  %tobool.not.i = icmp eq ptr %call.i280, null
  br i1 %tobool.not.i, label %if.then139.error_crit_edge, label %if.end.i

if.then139.error_crit_edge:                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end.i:                                         ; preds = %if.then139
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i280, i32 0, i32 3
  %info1.i = getelementptr inbounds %struct.anon.277, ptr %in.i, i32 0, i32 1
  %114 = call ptr @memcpy(ptr %info1.i, ptr %mc_grp_ctx133, i32 144)
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i280, i32 0, i32 1
  %115 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 33, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i280, i32 0, i32 2
  %116 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %post_sq.i, align 1
  %117 = ptrtoint ptr %call.i280 to i32
  %conv.i = zext i32 %117 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i280, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 8, i32 1
  %118 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %conv.i, ptr %scratch.i, align 8
  %119 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rf2, align 8
  %cqp6.i = getelementptr inbounds %struct.irdma_pci_f, ptr %120, i32 0, i32 46
  %121 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %cqp6.i, ptr %in.i, align 8
  %122 = load ptr, ptr %rf2, align 8
  %call11.i = call i32 @irdma_handle_cqp_op(ptr noundef %122, ptr noundef nonnull %call.i280) #21
  %123 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rf2, align 8
  %cqp13.i = getelementptr inbounds %struct.irdma_pci_f, ptr %124, i32 0, i32 46
  call void @irdma_put_cqp_request(ptr noundef %cqp13.i, ptr noundef nonnull %call.i280) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool14.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool14.not.i, label %if.end.i.cleanup181_crit_edge, label %if.end.i.error_crit_edge

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end.i.cleanup181_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup181

if.else142:                                       ; preds = %if.end130
  %125 = ptrtoint ptr %no_of_mgs134 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %no_of_mgs134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %126)
  %cmp145.not = icmp eq i32 %111, %126
  br i1 %cmp145.not, label %if.else142.cleanup181_crit_edge, label %if.then147

if.else142.cleanup181_crit_edge:                  ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup181

if.then147:                                       ; preds = %if.else142
  %127 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rf2, align 8
  %cqp.i283 = getelementptr inbounds %struct.irdma_pci_f, ptr %128, i32 0, i32 46
  %call.i284 = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i283, i1 noundef zeroext true) #21
  %tobool.not.i285 = icmp eq ptr %call.i284, null
  br i1 %tobool.not.i285, label %if.then147.error_crit_edge, label %if.end.i297

if.then147.error_crit_edge:                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end.i297:                                      ; preds = %if.then147
  %in.i286 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i284, i32 0, i32 3
  %info1.i287 = getelementptr inbounds %struct.anon.277, ptr %in.i286, i32 0, i32 1
  %129 = call ptr @memcpy(ptr %info1.i287, ptr %mc_grp_ctx133, i32 144)
  %cqp_cmd.i288 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i284, i32 0, i32 1
  %130 = ptrtoint ptr %cqp_cmd.i288 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 35, ptr %cqp_cmd.i288, align 8
  %post_sq.i289 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i284, i32 0, i32 2
  %131 = ptrtoint ptr %post_sq.i289 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %post_sq.i289, align 1
  %132 = ptrtoint ptr %call.i284 to i32
  %conv.i290 = zext i32 %132 to i64
  %scratch.i291 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i284, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 8, i32 1
  %133 = ptrtoint ptr %scratch.i291 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv.i290, ptr %scratch.i291, align 8
  %134 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rf2, align 8
  %cqp6.i292 = getelementptr inbounds %struct.irdma_pci_f, ptr %135, i32 0, i32 46
  %136 = ptrtoint ptr %in.i286 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %cqp6.i292, ptr %in.i286, align 8
  %137 = load ptr, ptr %rf2, align 8
  %call11.i293 = call i32 @irdma_handle_cqp_op(ptr noundef %137, ptr noundef nonnull %call.i284) #21
  %138 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rf2, align 8
  %cqp13.i294 = getelementptr inbounds %struct.irdma_pci_f, ptr %139, i32 0, i32 46
  call void @irdma_put_cqp_request(ptr noundef %cqp13.i294, ptr noundef nonnull %call.i284) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i293)
  %tobool14.not.i295 = icmp eq i32 %call11.i293, 0
  br i1 %tobool14.not.i295, label %if.end.i297.cleanup181_crit_edge, label %if.end.i297.error_crit_edge

if.end.i297.error_crit_edge:                      ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end.i297.cleanup181_crit_edge:                 ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup181

error:                                            ; preds = %if.end.i297.error_crit_edge, %if.then147.error_crit_edge, %if.end.i.error_crit_edge, %if.then139.error_crit_edge
  %call157 = call i32 @irdma_sc_del_mcast_grp(ptr noundef %mc_grp_ctx133, ptr noundef nonnull %mcg_info) #21
  %140 = ptrtoint ptr %no_of_mgs134 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %no_of_mgs134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool160.not = icmp eq i32 %141, 0
  br i1 %tobool160.not, label %if.then.i302, label %error.cleanup181_crit_edge

error.cleanup181_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup181

if.then.i302:                                     ; preds = %error
  %call.i.i.i301 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mc_qht_elem.0) #21
  br i1 %call.i.i.i301, label %if.end.i.i.i303, label %if.then.i302.mcast_list_del.exit_crit_edge

if.then.i302.mcast_list_del.exit_crit_edge:       ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #23
  br label %mcast_list_del.exit

if.end.i.i.i303:                                  ; preds = %if.then.i302
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_qht_elem.0, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i.i, align 4
  %144 = ptrtoint ptr %mc_qht_elem.0 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mc_qht_elem.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev1.i.i.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %145, ptr %143, align 4
  br label %mcast_list_del.exit

mcast_list_del.exit:                              ; preds = %if.end.i.i.i303, %if.then.i302.mcast_list_del.exit_crit_edge
  %148 = ptrtoint ptr %mc_qht_elem.0 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_qht_elem.0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mc_qht_elem.0, i32 0, i32 1
  %149 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %device163 = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 45, i32 2
  %150 = ptrtoint ptr %device163 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device163, align 8
  %dma_mem_mc165 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2, i32 8
  %size166 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2, i32 8, i32 2
  %152 = ptrtoint ptr %size166 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %size166, align 2
  %154 = ptrtoint ptr %dma_mem_mc165 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load ptr, ptr %dma_mem_mc165, align 2
  %pa172 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2, i32 8, i32 1
  %156 = ptrtoint ptr %pa172 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %pa172, align 2
  call void @dma_free_attrs(ptr noundef %151, i32 noundef %153, ptr noundef %155, i32 noundef %157, i32 noundef 0) #21
  %158 = ptrtoint ptr %dma_mem_mc165 to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store ptr null, ptr %dma_mem_mc165, align 2
  %allocated_mcgs176 = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 38
  %159 = ptrtoint ptr %allocated_mcgs176 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %allocated_mcgs176, align 8
  %mg_id178 = getelementptr inbounds %struct.mc_table_list, ptr %mc_qht_elem.0, i32 0, i32 2, i32 4
  %161 = ptrtoint ptr %mg_id178 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %mg_id178, align 2
  %conv179 = zext i16 %162 to i32
  %rsrc_lock.i305 = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i306 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i305) #21
  %rem.i.i307 = and i32 %conv179, 31
  %shl.i.i308 = shl nuw i32 1, %rem.i.i307
  %div2.i.i309 = lshr i32 %conv179, 5
  %add.ptr.i.i310 = getelementptr i32, ptr %160, i32 %div2.i.i309
  %neg.i.i311 = xor i32 %shl.i.i308, -1
  %163 = ptrtoint ptr %add.ptr.i.i310 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr.i.i310, align 4
  %and.i.i312 = and i32 %164, %neg.i.i311
  store i32 %and.i.i312, ptr %add.ptr.i.i310, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i305, i32 noundef %call2.i306) #21
  call void @kfree(ptr noundef nonnull %mc_qht_elem.0) #21
  br label %cleanup181

cleanup181:                                       ; preds = %mcast_list_del.exit, %error.cleanup181_crit_edge, %if.end.i297.cleanup181_crit_edge, %if.else142.cleanup181_crit_edge, %if.end.i.cleanup181_crit_edge, %if.then127, %if.then73, %if.then64, %if.then51.cleanup181_crit_edge
  %retval.1 = phi i32 [ -12, %if.then127 ], [ 0, %if.else142.cleanup181_crit_edge ], [ -12, %mcast_list_del.exit ], [ -12, %error.cleanup181_crit_edge ], [ -12, %if.then64 ], [ -12, %if.then73 ], [ -12, %if.then51.cleanup181_crit_edge ], [ 0, %if.end.i.cleanup181_crit_edge ], [ 0, %if.end.i297.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dmac) #21
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sgid_addr) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip_addr) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mcg_info) #21
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_detach_mcast(ptr nocapture noundef readonly %ibqp, ptr nocapture noundef readonly %ibgid, i16 noundef zeroext %lid) #0 align 64 {
entry:
  %ip_addr = alloca [4 x i32], align 4
  %mcg_info = alloca %struct.irdma_mcast_grp_ctx_entry_info, align 4
  %sgid_addr = alloca %union.anon.299, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf2 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip_addr) #21
  %4 = call ptr @memset(ptr %ip_addr, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mcg_info) #21
  %5 = getelementptr inbounds i8, ptr %mcg_info, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sgid_addr) #21
  %7 = getelementptr inbounds i8, ptr %sgid_addr, i32 16
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  %9 = ptrtoint ptr %ibgid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ibgid, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %ibgid, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %12, %10
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %ibgid, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %14, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 3
  %16 = call ptr @memset(ptr %sgid_addr, i32 0, i32 28)
  %17 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 10, ptr %sgid_addr, align 4
  %18 = call ptr @memcpy(ptr %15, ptr %ibgid, i32 16)
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %ip_addr, ptr noundef %15) #21
  br label %do.body5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %19 = getelementptr inbounds %struct.sockaddr_in6, ptr %sgid_addr, i32 0, i32 2
  %20 = call ptr @memset(ptr %sgid_addr, i32 0, i32 16)
  %21 = ptrtoint ptr %sgid_addr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %sgid_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %ibgid, i32 12
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr.i, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %19, align 4
  %25 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %ip_addr, align 4
  br label %do.body5

do.body5:                                         ; preds = %if.else, %if.then
  %qh_list_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 56
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qh_list_lock) #21
  %mc_qht_list.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 57
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body5
  %pos.0.in.i = phi ptr [ %mc_qht_list.i, %do.body5 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %mc_qht_list.i
  br i1 %cmp.i.not.i, label %for.cond.i.if.then12_crit_edge, label %for.body.i

for.cond.i.if.then12_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then12

for.body.i:                                       ; preds = %for.cond.i
  %dest_ip.i = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 1, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %dest_ip.i, ptr noundef nonnull dereferenceable(16) %ip_addr, i32 16) #27
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %mcast_list_lookup_ip.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

mcast_list_lookup_ip.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pos.0.i, null
  br i1 %tobool.not, label %mcast_list_lookup_ip.exit.if.then12_crit_edge, label %if.end24

mcast_list_lookup_ip.exit.if.then12_crit_edge:    ; preds = %mcast_list_lookup_ip.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then12

if.then12:                                        ; preds = %mcast_list_lookup_ip.exit.if.then12_crit_edge, %for.cond.i.if.then12_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call7) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug737, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_detach_mcast, %if.then20)) #21
          to label %cleanup [label %if.then20], !srcloc !259

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_detach_mcast.__UNIQUE_ID_ddebug737, ptr noundef %1, ptr noundef nonnull @.str.26) #21
  br label %cleanup

if.end24:                                         ; preds = %mcast_list_lookup_ip.exit
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %27 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qp_num, align 4
  %29 = ptrtoint ptr %mcg_info to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mcg_info, align 4
  %mc_grp_ctx = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2
  %call26 = call i32 @irdma_sc_del_mcast_grp(ptr noundef %mc_grp_ctx, ptr noundef nonnull %mcg_info) #21
  %no_of_mgs = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %no_of_mgs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %no_of_mgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool28.not = icmp eq i32 %31, 0
  br i1 %tobool28.not, label %if.then.i152, label %if.else78

if.then.i152:                                     ; preds = %if.end24
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.0.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i152.mcast_list_del.exit_crit_edge

if.then.i152.mcast_list_del.exit_crit_edge:       ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #23
  br label %mcast_list_del.exit

if.end.i.i.i:                                     ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pos.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %mcast_list_del.exit

mcast_list_del.exit:                              ; preds = %if.end.i.i.i, %if.then.i152.mcast_list_del.exit_crit_edge
  %38 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call7) #21
  %40 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rf2, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %41, i32 0, i32 46
  %call.i = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #21
  %tobool.not.i153 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i153, label %mcast_list_del.exit.do.body35_crit_edge, label %if.end.i

mcast_list_del.exit.do.body35_crit_edge:          ; preds = %mcast_list_del.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35

if.end.i:                                         ; preds = %mcast_list_del.exit
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3
  %info1.i = getelementptr inbounds %struct.anon.277, ptr %in.i, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %info1.i, ptr %mc_grp_ctx, i32 144)
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 34, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %post_sq.i, align 1
  %45 = ptrtoint ptr %call.i to i32
  %conv.i = zext i32 %45 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 8, i32 1
  %46 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv.i, ptr %scratch.i, align 8
  %47 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rf2, align 8
  %cqp6.i = getelementptr inbounds %struct.irdma_pci_f, ptr %48, i32 0, i32 46
  %49 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %cqp6.i, ptr %in.i, align 8
  %50 = load ptr, ptr %rf2, align 8
  %call11.i = call i32 @irdma_handle_cqp_op(ptr noundef %50, ptr noundef nonnull %call.i) #21
  %51 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rf2, align 8
  %cqp13.i = getelementptr inbounds %struct.irdma_pci_f, ptr %52, i32 0, i32 46
  call void @irdma_put_cqp_request(ptr noundef %cqp13.i, ptr noundef nonnull %call.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool14.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool14.not.i, label %if.end67, label %if.end.i.do.body35_crit_edge

if.end.i.do.body35_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body35

do.body35:                                        ; preds = %if.end.i.do.body35_crit_edge, %mcast_list_del.exit.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug738, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_detach_mcast, %if.then47)) #21
          to label %do.body53 [label %if.then47], !srcloc !259

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_detach_mcast.__UNIQUE_ID_ddebug738, ptr noundef %1, ptr noundef nonnull @.str.27) #21
  br label %do.body53

do.body53:                                        ; preds = %if.then47, %do.body35
  %call61 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qh_list_lock) #21
  %53 = ptrtoint ptr %mc_qht_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mc_qht_list.i, align 4
  %call.i.i.i156 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %pos.0.i, ptr noundef %mc_qht_list.i, ptr noundef %54) #21
  br i1 %call.i.i.i156, label %if.end.i.i.i157, label %do.body53.mcast_list_add.exit_crit_edge

do.body53.mcast_list_add.exit_crit_edge:          ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #23
  br label %mcast_list_add.exit

if.end.i.i.i157:                                  ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #23
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %pos.0.i, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %pos.0.i, align 4
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %mc_qht_list.i, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %mc_qht_list.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %pos.0.i, ptr %mc_qht_list.i, align 4
  br label %mcast_list_add.exit

mcast_list_add.exit:                              ; preds = %if.end.i.i.i157, %do.body53.mcast_list_add.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call61) #21
  br label %cleanup

if.end67:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %device = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 45, i32 2
  %59 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device, align 8
  %dma_mem_mc = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 8
  %size = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 8, i32 2
  %61 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %size, align 2
  %63 = ptrtoint ptr %dma_mem_mc to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load ptr, ptr %dma_mem_mc, align 2
  %pa = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 8, i32 1
  %65 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %pa, align 2
  call void @dma_free_attrs(ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef 0) #21
  %67 = ptrtoint ptr %dma_mem_mc to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store ptr null, ptr %dma_mem_mc, align 2
  %allocated_mcgs = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 38
  %68 = ptrtoint ptr %allocated_mcgs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %allocated_mcgs, align 8
  %mg_id = getelementptr inbounds %struct.mc_table_list, ptr %pos.0.i, i32 0, i32 2, i32 4
  %70 = ptrtoint ptr %mg_id to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mg_id, align 2
  %conv77 = zext i16 %71 to i32
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %rem.i.i = and i32 %conv77, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv77, 5
  %add.ptr.i.i = getelementptr i32, ptr %69, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %73, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  call void @kfree(ptr noundef nonnull %pos.0.i) #21
  br label %cleanup

if.else78:                                        ; preds = %if.end24
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qh_list_lock, i32 noundef %call7) #21
  %74 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rf2, align 8
  %cqp.i159 = getelementptr inbounds %struct.irdma_pci_f, ptr %75, i32 0, i32 46
  %call.i160 = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i159, i1 noundef zeroext true) #21
  %tobool.not.i161 = icmp eq ptr %call.i160, null
  br i1 %tobool.not.i161, label %if.else78.do.body84_crit_edge, label %if.end.i173

if.else78.do.body84_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body84

if.end.i173:                                      ; preds = %if.else78
  %in.i162 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i160, i32 0, i32 3
  %info1.i163 = getelementptr inbounds %struct.anon.277, ptr %in.i162, i32 0, i32 1
  %76 = call ptr @memcpy(ptr %info1.i163, ptr %mc_grp_ctx, i32 144)
  %cqp_cmd.i164 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i160, i32 0, i32 1
  %77 = ptrtoint ptr %cqp_cmd.i164 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 35, ptr %cqp_cmd.i164, align 8
  %post_sq.i165 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i160, i32 0, i32 2
  %78 = ptrtoint ptr %post_sq.i165 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %post_sq.i165, align 1
  %79 = ptrtoint ptr %call.i160 to i32
  %conv.i166 = zext i32 %79 to i64
  %scratch.i167 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i160, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 8, i32 1
  %80 = ptrtoint ptr %scratch.i167 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv.i166, ptr %scratch.i167, align 8
  %81 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rf2, align 8
  %cqp6.i168 = getelementptr inbounds %struct.irdma_pci_f, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %in.i162 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %cqp6.i168, ptr %in.i162, align 8
  %84 = load ptr, ptr %rf2, align 8
  %call11.i169 = call i32 @irdma_handle_cqp_op(ptr noundef %84, ptr noundef nonnull %call.i160) #21
  %85 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rf2, align 8
  %cqp13.i170 = getelementptr inbounds %struct.irdma_pci_f, ptr %86, i32 0, i32 46
  call void @irdma_put_cqp_request(ptr noundef %cqp13.i170, ptr noundef nonnull %call.i160) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i169)
  %tobool14.not.i171 = icmp eq i32 %call11.i169, 0
  br i1 %tobool14.not.i171, label %if.end.i173.cleanup_crit_edge, label %if.end.i173.do.body84_crit_edge

if.end.i173.do.body84_crit_edge:                  ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body84

if.end.i173.cleanup_crit_edge:                    ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.body84:                                        ; preds = %if.end.i173.do.body84_crit_edge, %if.else78.do.body84_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug739, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_detach_mcast, %if.then96)) #21
          to label %cleanup [label %if.then96], !srcloc !259

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_detach_mcast.__UNIQUE_ID_ddebug739, ptr noundef %1, ptr noundef nonnull @.str.28) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %if.end.i173.cleanup_crit_edge, %if.end67, %mcast_list_add.exit, %if.then20, %if.then12
  %retval.0 = phi i32 [ -11, %mcast_list_add.exit ], [ 0, %if.then20 ], [ -12, %if.then96 ], [ 0, %if.end67 ], [ 0, %if.then12 ], [ 0, %if.end.i173.cleanup_crit_edge ], [ -12, %do.body84 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sgid_addr) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mcg_info) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip_addr) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irdma_ipv4_is_lpb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irdma_ipv6_is_lpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_ah_cqp_op(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_gsi_ud_qp_ah_cb(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cqp_ce_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_netdev_vlan_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @irdma_get_vlan_ipv4(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_add_mcast_grp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_del_mcast_grp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_add_ref(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_rem_ref(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_get_qp(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_connect(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_accept(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_create_listen(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_destroy_listen(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_iw_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef writeonly %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #21
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %1 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4194312, ptr %core_cap_flags, align 4
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %2 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len1 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %4 = ptrtoint ptr %gid_tbl_len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gid_tbl_len1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #21
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_query_gid(ptr nocapture noundef readonly %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %gid, i32 0, i32 16)
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 2
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gid, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %gid, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_post_send(ptr noundef %ibqp, ptr noundef %ib_wr, ptr nocapture noundef writeonly %bad_wr) #0 align 64 {
entry:
  %info = alloca %struct.irdma_post_sq_info, align 8
  %stag_info = alloca %struct.irdma_fast_reg_stag_info, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info) #21
  %0 = call ptr @memset(ptr %info, i32 255, i32 64)
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %1 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iwdev, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rf, align 8
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 25
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %flush_issued = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %5 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %flush_issued, align 8
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %sq_flush_complete = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 27
  %7 = ptrtoint ptr %sq_flush_complete to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load7 = load i8, ptr %sq_flush_complete, align 4
  %8 = and i8 %bf.load7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not = icmp ne i8 %8, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reflush.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %bf.cast.not, %land.lhs.true ]
  %tobool11.not482 = icmp eq ptr %ib_wr, null
  br i1 %tobool11.not482, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %signaled = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 3
  %signaled251 = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 13
  %access_rights = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 10
  %stag_key = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 12
  %stag_idx = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 9
  %page_size276 = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 5
  %addr_type = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 8
  %va = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 3
  %total_len = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 4
  %reg_addr_pa = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 1
  %first_pm_pbl_index = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 7
  %chunk_size = getelementptr inbounds %struct.irdma_fast_reg_stag_info, ptr %stag_info, i32 0, i32 6
  %op_type237 = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 1
  %op239 = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6
  %max_hw_read_sges = getelementptr inbounds %struct.irdma_pci_f, ptr %4, i32 0, i32 42, i32 25, i32 0, i32 2
  %rem_addr213 = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 1
  %lkey219 = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 3
  %num_lo_sges225 = getelementptr inbounds %struct.irdma_rdma_read, ptr %op239, i32 0, i32 1
  %qp_caps134 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 13
  %imm_data143 = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 4
  %stag_to_inv = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 5
  %qp_type = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 22
  %ah_id = getelementptr inbounds %struct.irdma_post_sq_info, ptr %info, i32 0, i32 6, i32 0, i32 2
  %dest_qp = getelementptr inbounds %struct.irdma_post_inline_send, ptr %op239, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end312.while.body_crit_edge, %while.body.lr.ph
  %ib_wr.addr.0483 = phi ptr [ %ib_wr, %while.body.lr.ph ], [ %197, %if.end312.while.body_crit_edge ]
  %9 = call ptr @memset(ptr %info, i32 0, i32 64)
  %10 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %info, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 5
  %14 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %while.body.if.then18_crit_edge

while.body.if.then18_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then18

lor.lhs.false:                                    ; preds = %while.body
  %16 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load13 = load i8, ptr %flush_issued, align 8
  %17 = and i8 %bf.load13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then18

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %while.body.if.then18_crit_edge
  %18 = ptrtoint ptr %signaled to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load19 = load i16, ptr %signaled, align 2
  %bf.set = or i16 %bf.load19, -32768
  store i16 %bf.set, ptr %signaled, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %lor.lhs.false.if.end21_crit_edge
  %19 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %send_flags, align 4
  %and23 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %if.then25

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %signaled to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load26 = load i16, ptr %signaled, align 2
  %bf.set28 = or i16 %bf.load26, 16384
  store i16 %bf.set28, ptr %signaled, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end21.if.end29_crit_edge
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 4
  %22 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opcode, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %23, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %if.end29.sw.bb37_crit_edge
    i32 9, label %if.end29.sw.bb37_crit_edge528
    i32 1, label %sw.bb133
    i32 0, label %if.end29.sw.bb146_crit_edge
    i32 11, label %sw.bb202
    i32 4, label %if.end29.sw.bb203_crit_edge
    i32 7, label %sw.bb236
    i32 32, label %sw.bb244
  ]

if.end29.sw.bb203_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb203

if.end29.sw.bb146_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb146

if.end29.sw.bb37_crit_edge528:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb37

if.end29.sw.bb37_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb37

sw.bb:                                            ; preds = %if.end29
  %25 = ptrtoint ptr %qp_caps134 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qp_caps134, align 4
  %and30 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %sw.bb.while.end_crit_edge, label %if.then32

sw.bb.while.end_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %27 = ptrtoint ptr %signaled to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load33 = load i16, ptr %signaled, align 2
  %bf.set35 = or i16 %bf.load33, 2048
  store i16 %bf.set35, ptr %signaled, align 2
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %28 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ex, align 8
  %30 = ptrtoint ptr %imm_data143 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %imm_data143, align 4
  br label %sw.bb37

sw.bb37:                                          ; preds = %if.then32, %if.end29.sw.bb37_crit_edge, %if.end29.sw.bb37_crit_edge528
  %31 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %opcode, align 8
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch = icmp eq i32 %33, 2
  %34 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %send_flags, align 4
  %and47 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %switch, label %if.then45, label %if.else53

if.then45:                                        ; preds = %sw.bb37
  br i1 %tobool48.not, label %if.else50, label %if.then49

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #23
  %36 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %op_type237, align 8
  br label %if.end63

if.else50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #23
  %37 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %op_type237, align 8
  br label %if.end63

if.else53:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #23
  %spec.select = select i1 %tobool48.not, i8 4, i8 6
  %38 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select, ptr %op_type237, align 8
  %ex62 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %39 = ptrtoint ptr %ex62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ex62, align 8
  %41 = ptrtoint ptr %stag_to_inv to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %stag_to_inv, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.else53, %if.else50, %if.then49
  %42 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %send_flags, align 4
  %and65 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else91, label %if.then67

if.then67:                                        ; preds = %if.end63
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %44 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg_list, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %45, align 8
  %conv68 = trunc i64 %47 to i32
  %48 = inttoptr i32 %conv68 to ptr
  %49 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %op239, align 8
  %50 = load ptr, ptr %sg_list, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 8
  %53 = ptrtoint ptr %num_lo_sges225 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_lo_sges225, align 4
  %54 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qp_type, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %55, label %if.then67.if.end89_crit_edge [
    i32 4, label %if.then67.if.then80_crit_edge
    i32 1, label %if.then67.if.then80_crit_edge529
  ]

if.then67.if.then80_crit_edge529:                 ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then80

if.then67.if.then80_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then80

if.then67.if.end89_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end89

if.then80:                                        ; preds = %if.then67.if.then80_crit_edge, %if.then67.if.then80_crit_edge529
  %ah82 = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %57 = ptrtoint ptr %ah82 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ah82, align 8
  %ah_idx = getelementptr inbounds %struct.irdma_ah, ptr %58, i32 0, i32 1, i32 1, i32 6
  %59 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ah_idx, align 4
  %61 = ptrtoint ptr %ah_id to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %ah_id, align 8
  %remote_qkey = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %62 = ptrtoint ptr %remote_qkey to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %remote_qkey, align 4
  %64 = ptrtoint ptr %rem_addr213 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rem_addr213, align 8
  %remote_qpn = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 5
  %65 = ptrtoint ptr %remote_qpn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %remote_qpn, align 8
  %67 = ptrtoint ptr %dest_qp to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dest_qp, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then80, %if.then67.if.end89_crit_edge
  %call90 = call i32 @irdma_uk_inline_send(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext false) #21
  br label %if.end124

if.else91:                                        ; preds = %if.end63
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 3
  %68 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_sge, align 4
  %70 = ptrtoint ptr %num_lo_sges225 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %num_lo_sges225, align 4
  %sg_list93 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %71 = ptrtoint ptr %sg_list93 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sg_list93, align 8
  %73 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %op239, align 8
  %74 = ptrtoint ptr %qp_type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qp_type, align 8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %75, label %if.else91.if.end122_crit_edge [
    i32 4, label %if.else91.if.then105_crit_edge
    i32 1, label %if.else91.if.then105_crit_edge530
  ]

if.else91.if.then105_crit_edge530:                ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then105

if.else91.if.then105_crit_edge:                   ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then105

if.else91.if.end122_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end122

if.then105:                                       ; preds = %if.else91.if.then105_crit_edge, %if.else91.if.then105_crit_edge530
  %ah107 = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %77 = ptrtoint ptr %ah107 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ah107, align 8
  %ah_idx111 = getelementptr inbounds %struct.irdma_ah, ptr %78, i32 0, i32 1, i32 1, i32 6
  %79 = ptrtoint ptr %ah_idx111 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ah_idx111, align 4
  %81 = ptrtoint ptr %ah_id to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ah_id, align 8
  %remote_qkey115 = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %82 = ptrtoint ptr %remote_qkey115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %remote_qkey115, align 4
  %84 = ptrtoint ptr %rem_addr213 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %rem_addr213, align 8
  %remote_qpn119 = getelementptr inbounds %struct.ib_ud_wr, ptr %ib_wr.addr.0483, i32 0, i32 5
  %85 = ptrtoint ptr %remote_qpn119 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %remote_qpn119, align 8
  %87 = ptrtoint ptr %dest_qp to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dest_qp, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then105, %if.else91.if.end122_crit_edge
  %call123 = call i32 @irdma_uk_send(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext false) #21
  br label %if.end124

if.end124:                                        ; preds = %if.end122, %if.end89
  %ret.0 = phi i32 [ %call90, %if.end89 ], [ %call123, %if.end122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %switch.selectcmp435 = icmp eq i32 %ret.0, 0
  br i1 %switch.selectcmp435, label %if.end124.if.end312_crit_edge, label %while.end.loopexit.split.loop.exit473

if.end124.if.end312_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end312

sw.bb133:                                         ; preds = %if.end29
  %88 = ptrtoint ptr %qp_caps134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qp_caps134, align 4
  %and135 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %sw.bb133.while.end_crit_edge, label %if.then137

sw.bb133.while.end_crit_edge:                     ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.then137:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #23
  %90 = ptrtoint ptr %signaled to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load139 = load i16, ptr %signaled, align 2
  %bf.set141 = or i16 %bf.load139, 2048
  store i16 %bf.set141, ptr %signaled, align 2
  %ex142 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %91 = ptrtoint ptr %ex142 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ex142, align 8
  %93 = ptrtoint ptr %imm_data143 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %imm_data143, align 4
  br label %sw.bb146

sw.bb146:                                         ; preds = %if.then137, %if.end29.sw.bb146_crit_edge
  %94 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %send_flags, align 4
  %and148 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %spec.select503 = select i1 %tobool149.not, i8 0, i8 13
  %96 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select503, ptr %op_type237, align 8
  %and156 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  %sg_list178 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %97 = ptrtoint ptr %sg_list178 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sg_list178, align 8
  br i1 %tobool157.not, label %if.else177, label %if.then158

if.then158:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #23
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %98, align 8
  %conv162 = trunc i64 %100 to i32
  %101 = inttoptr i32 %conv162 to ptr
  %102 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %op239, align 8
  %103 = ptrtoint ptr %sg_list178 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sg_list178, align 8
  %length167 = getelementptr inbounds %struct.ib_sge, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %length167 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length167, align 8
  %107 = ptrtoint ptr %num_lo_sges225 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %num_lo_sges225, align 4
  %remote_addr = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %108 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %remote_addr, align 8
  %110 = ptrtoint ptr %rem_addr213 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %rem_addr213, align 8
  %rkey = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %111 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rkey, align 8
  %113 = ptrtoint ptr %lkey219 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %lkey219, align 4
  %call176 = call i32 @irdma_uk_inline_rdma_write(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext false) #21
  br label %if.end193

if.else177:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #23
  %114 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %98, ptr %op239, align 8
  %num_sge180 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 3
  %115 = ptrtoint ptr %num_sge180 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_sge180, align 4
  %117 = ptrtoint ptr %num_lo_sges225 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %num_lo_sges225, align 4
  %remote_addr183 = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %118 = ptrtoint ptr %remote_addr183 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %remote_addr183, align 8
  %120 = ptrtoint ptr %rem_addr213 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %rem_addr213, align 8
  %rkey188 = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %121 = ptrtoint ptr %rkey188 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rkey188, align 8
  %123 = ptrtoint ptr %lkey219 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %lkey219, align 4
  %call192 = call i32 @irdma_uk_rdma_write(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext false) #21
  br label %if.end193

if.end193:                                        ; preds = %if.else177, %if.then158
  %ret.1 = phi i32 [ %call176, %if.then158 ], [ %call192, %if.else177 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %switch.selectcmp439 = icmp eq i32 %ret.1, 0
  br i1 %switch.selectcmp439, label %if.end193.if.end312_crit_edge, label %while.end.loopexit.split.loop.exit476

if.end193.if.end312_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end312

sw.bb202:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb203

sw.bb203:                                         ; preds = %sw.bb202, %if.end29.sw.bb203_crit_edge
  %inv_stag.0.off0 = phi i1 [ false, %if.end29.sw.bb203_crit_edge ], [ true, %sw.bb202 ]
  %num_sge204 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 3
  %124 = ptrtoint ptr %num_sge204 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_sge204, align 4
  %126 = ptrtoint ptr %max_hw_read_sges to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_hw_read_sges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp205 = icmp ugt i32 %125, %127
  br i1 %cmp205, label %sw.bb203.while.end_crit_edge, label %if.end208

sw.bb203.while.end_crit_edge:                     ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end208:                                        ; preds = %sw.bb203
  %128 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %op_type237, align 8
  %remote_addr211 = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %129 = ptrtoint ptr %remote_addr211 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %remote_addr211, align 8
  %131 = ptrtoint ptr %rem_addr213 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %rem_addr213, align 8
  %rkey216 = getelementptr inbounds %struct.ib_rdma_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %132 = ptrtoint ptr %rkey216 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rkey216, align 8
  %134 = ptrtoint ptr %lkey219 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %lkey219, align 4
  %sg_list220 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %135 = ptrtoint ptr %sg_list220 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sg_list220, align 8
  %137 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %op239, align 8
  %138 = ptrtoint ptr %num_sge204 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_sge204, align 4
  %140 = ptrtoint ptr %num_lo_sges225 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %num_lo_sges225, align 4
  %call227 = call i32 @irdma_uk_rdma_read(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext %inv_stag.0.off0, i1 noundef zeroext false) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %switch.selectcmp443 = icmp eq i32 %call227, 0
  br i1 %switch.selectcmp443, label %if.end208.if.end312_crit_edge, label %while.end.loopexit.split.loop.exit479

if.end208.if.end312_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end312

sw.bb236:                                         ; preds = %if.end29
  %141 = ptrtoint ptr %op_type237 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 10, ptr %op_type237, align 8
  %ex238 = getelementptr inbounds %struct.ib_send_wr, ptr %ib_wr.addr.0483, i32 0, i32 6
  %142 = ptrtoint ptr %ex238 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ex238, align 8
  %144 = ptrtoint ptr %op239 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %op239, align 8
  %call240 = call i32 @irdma_uk_stag_local_invalidate(ptr noundef %sc_qp, ptr noundef nonnull %info, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %sw.bb236.if.end312_crit_edge, label %sw.bb236.while.end_crit_edge

sw.bb236.while.end_crit_edge:                     ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

sw.bb236.if.end312_crit_edge:                     ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end312

sw.bb244:                                         ; preds = %if.end29
  %mr = getelementptr inbounds %struct.ib_reg_wr, ptr %ib_wr.addr.0483, i32 0, i32 1
  %145 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mr, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stag_info) #21
  %147 = call ptr @memset(ptr %stag_info, i32 0, i32 72)
  %148 = ptrtoint ptr %signaled to i32
  call void @__asan_load2_noabort(i32 %148)
  %bf.load248 = load i16, ptr %signaled, align 2
  %sh.diff = lshr i16 %bf.load248, 10
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 32
  %sh.diff431 = lshr i16 %bf.load248, 8
  %tr.sh.diff432 = trunc i16 %sh.diff431 to i8
  %bf.shl263 = and i8 %tr.sh.diff432, 64
  %bf.set265 = or i8 %bf.shl, %bf.shl263
  %149 = ptrtoint ptr %signaled251 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %bf.set265, ptr %signaled251, align 1
  %access = getelementptr inbounds %struct.ib_reg_wr, ptr %ib_wr.addr.0483, i32 0, i32 3
  %150 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %access, align 8
  %152 = shl i32 %151, 1
  %conv1.i = and i32 %152, 2
  %and2.i = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond4.i = select i1 %tobool3.not.i, i32 0, i32 10
  %or12.i = and i32 %151, 52
  %or18.i = or i32 %conv1.i, %or12.i
  %or24.i = or i32 %or18.i, %cond4.i
  %153 = trunc i32 %or24.i to i16
  %conv28.i = or i16 %153, 1
  %154 = ptrtoint ptr %access_rights to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv28.i, ptr %access_rights, align 4
  %key = getelementptr inbounds %struct.ib_reg_wr, ptr %ib_wr.addr.0483, i32 0, i32 2
  %155 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %key, align 4
  %conv271 = trunc i32 %156 to i8
  %157 = ptrtoint ptr %stag_key to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv271, ptr %stag_key, align 4
  %158 = load i32, ptr %key, align 4
  %shr = lshr i32 %158, 8
  %159 = ptrtoint ptr %stag_idx to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %shr, ptr %stag_idx, align 8
  %160 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mr, align 8
  %page_size = getelementptr inbounds %struct.ib_mr, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %page_size, align 8
  %164 = ptrtoint ptr %page_size276 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %page_size276, align 8
  %165 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %10, align 8
  %167 = ptrtoint ptr %stag_info to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %stag_info, align 8
  %168 = ptrtoint ptr %addr_type to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %addr_type, align 4
  %iova = getelementptr inbounds %struct.ib_mr, ptr %146, i32 0, i32 4
  %169 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %iova, align 8
  %conv278 = trunc i64 %170 to i32
  %171 = inttoptr i32 %conv278 to ptr
  %172 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %va, align 8
  %length279 = getelementptr inbounds %struct.ib_mr, ptr %146, i32 0, i32 5
  %173 = ptrtoint ptr %length279 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %length279, align 8
  %175 = ptrtoint ptr %total_len to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %total_len, align 8
  %176 = getelementptr inbounds %struct.irdma_mr, ptr %146, i32 0, i32 9, i32 4, i32 2
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %178, align 8
  %181 = ptrtoint ptr %reg_addr_pa to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %reg_addr_pa, align 8
  %idx = getelementptr inbounds %struct.irdma_mr, ptr %146, i32 0, i32 9, i32 4, i32 2, i32 0, i32 0, i32 1
  %182 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %idx, align 4
  %184 = ptrtoint ptr %first_pm_pbl_index to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %first_pm_pbl_index, align 8
  %185 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %send_flags, align 4
  %187 = trunc i32 %186 to i8
  %bf.shl285 = shl i8 %187, 7
  %bf.set287 = or i8 %bf.shl285, %bf.set265
  %188 = ptrtoint ptr %signaled251 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %bf.set287, ptr %signaled251, align 1
  %npages = getelementptr inbounds %struct.irdma_mr, ptr %146, i32 0, i32 5
  %189 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %npages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %190)
  %cmp289 = icmp ugt i32 %190, 1
  br i1 %cmp289, label %if.then291, label %sw.bb244.if.end292_crit_edge

sw.bb244.if.end292_crit_edge:                     ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end292

if.then291:                                       ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #23
  %191 = ptrtoint ptr %chunk_size to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %chunk_size, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then291, %sw.bb244.if.end292_crit_edge
  %call294 = call i32 @irdma_sc_mr_fast_register(ptr noundef %sc_qp, ptr noundef nonnull %stag_info, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stag_info) #21
  br i1 %tobool295.not, label %if.end292.if.end312_crit_edge, label %if.end292.while.end_crit_edge

if.end292.while.end_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end292.if.end312_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end312

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_post_send.__UNIQUE_ID_ddebug731, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_post_send, %if.then304)) #21
          to label %while.end [label %if.then304], !srcloc !259

if.then304:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #23
  %192 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %iwdev, align 8
  %194 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %opcode, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_post_send.__UNIQUE_ID_ddebug731, ptr noundef %193, ptr noundef nonnull @.str.30, i32 noundef %195) #21
  br label %while.end

if.end312:                                        ; preds = %if.end292.if.end312_crit_edge, %sw.bb236.if.end312_crit_edge, %if.end208.if.end312_crit_edge, %if.end193.if.end312_crit_edge, %if.end124.if.end312_crit_edge
  %196 = ptrtoint ptr %ib_wr.addr.0483 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ib_wr.addr.0483, align 8
  %tobool11.not = icmp eq ptr %197, null
  br i1 %tobool11.not, label %if.end312.while.end_crit_edge, label %if.end312.while.body_crit_edge

if.end312.while.body_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

if.end312.while.end_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end.loopexit.split.loop.exit473:            ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %ret.0)
  %switch.selectcmp.le = icmp eq i32 %ret.0, -20
  %switch.select.le = select i1 %switch.selectcmp.le, i32 -12, i32 -22
  br label %while.end

while.end.loopexit.split.loop.exit476:            ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %ret.1)
  %switch.selectcmp437.le = icmp eq i32 %ret.1, -20
  %switch.select438.le = select i1 %switch.selectcmp437.le, i32 -12, i32 -22
  br label %while.end

while.end.loopexit.split.loop.exit479:            ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %call227)
  %switch.selectcmp441.le = icmp eq i32 %call227, -20
  %switch.select442.le = select i1 %switch.selectcmp441.le, i32 -12, i32 -22
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit479, %while.end.loopexit.split.loop.exit476, %while.end.loopexit.split.loop.exit473, %if.end312.while.end_crit_edge, %if.then304, %sw.default, %if.end292.while.end_crit_edge, %sw.bb236.while.end_crit_edge, %sw.bb203.while.end_crit_edge, %sw.bb133.while.end_crit_edge, %sw.bb.while.end_crit_edge, %if.end.while.end_crit_edge
  %ib_wr.addr.0457 = phi ptr [ %ib_wr.addr.0483, %sw.default ], [ %ib_wr.addr.0483, %if.then304 ], [ %ib_wr.addr.0483, %while.end.loopexit.split.loop.exit473 ], [ %ib_wr.addr.0483, %while.end.loopexit.split.loop.exit476 ], [ %ib_wr.addr.0483, %while.end.loopexit.split.loop.exit479 ], [ null, %if.end.while.end_crit_edge ], [ null, %if.end312.while.end_crit_edge ], [ %ib_wr.addr.0483, %if.end292.while.end_crit_edge ], [ %ib_wr.addr.0483, %sw.bb.while.end_crit_edge ], [ %ib_wr.addr.0483, %sw.bb133.while.end_crit_edge ], [ %ib_wr.addr.0483, %sw.bb203.while.end_crit_edge ], [ %ib_wr.addr.0483, %sw.bb236.while.end_crit_edge ]
  %err.3 = phi i32 [ -22, %sw.default ], [ -22, %if.then304 ], [ %switch.select.le, %while.end.loopexit.split.loop.exit473 ], [ %switch.select438.le, %while.end.loopexit.split.loop.exit476 ], [ %switch.select442.le, %while.end.loopexit.split.loop.exit479 ], [ 0, %if.end.while.end_crit_edge ], [ 0, %if.end312.while.end_crit_edge ], [ -12, %if.end292.while.end_crit_edge ], [ -22, %sw.bb.while.end_crit_edge ], [ -22, %sw.bb133.while.end_crit_edge ], [ -22, %sw.bb203.while.end_crit_edge ], [ -12, %sw.bb236.while.end_crit_edge ]
  %198 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %198)
  %bf.load314 = load i8, ptr %flush_issued, align 8
  %199 = and i8 %bf.load314, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool317.not = icmp eq i8 %199, 0
  br i1 %tobool317.not, label %land.lhs.true318, label %while.end.if.else324_crit_edge

while.end.if.else324_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else324

land.lhs.true318:                                 ; preds = %while.end
  %hw_iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 34
  %200 = ptrtoint ptr %hw_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %hw_iwarp_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %201)
  %cmp320 = icmp ult i8 %201, 3
  br i1 %cmp320, label %if.then322, label %land.lhs.true318.if.else324_crit_edge

land.lhs.true318.if.else324_crit_edge:            ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else324

if.then322:                                       ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #23
  call void @irdma_uk_qp_post_wr(ptr noundef %sc_qp) #21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #21
  br label %if.end335

if.else324:                                       ; preds = %land.lhs.true318.if.else324_crit_edge, %while.end.if.else324_crit_edge
  br i1 %reflush.0.off0, label %if.then326, label %if.else332

if.then326:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #23
  %sq_flush_complete327 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 27
  %202 = ptrtoint ptr %sq_flush_complete327 to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load328 = load i8, ptr %sq_flush_complete327, align 4
  %bf.clear329 = and i8 %bf.load328, -9
  store i8 %bf.clear329, ptr %sq_flush_complete327, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #21
  call void @irdma_flush_wqes(ptr noundef %ibqp, i32 noundef 5) #21
  br label %if.end335

if.else332:                                       ; preds = %if.else324
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #21
  br label %if.end335

if.end335:                                        ; preds = %if.else332, %if.then326, %if.then322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool336.not = icmp eq i32 %err.3, 0
  br i1 %tobool336.not, label %if.end335.if.end338_crit_edge, label %if.then337

if.end335.if.end338_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end338

if.then337:                                       ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #23
  %203 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %ib_wr.addr.0457, ptr %bad_wr, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then337, %if.end335.if.end338_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info) #21
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_post_recv(ptr noundef %ibqp, ptr noundef %ib_wr, ptr nocapture noundef writeonly %bad_wr) #0 align 64 {
entry:
  %post_recv = alloca %struct.irdma_post_rq_info, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %post_recv) #21
  %0 = call ptr @memset(ptr %post_recv, i32 0, i32 16)
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 25
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %flush_issued = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %1 = ptrtoint ptr %flush_issued to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %flush_issued, align 8
  %2 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %rq_flush_complete = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 27
  %3 = ptrtoint ptr %rq_flush_complete to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load7 = load i8, ptr %rq_flush_complete, align 4
  %4 = and i8 %bf.load7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp ne i8 %4, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reflush.0.off0 = phi i1 [ false, %entry.if.end_crit_edge ], [ %bf.cast.not, %land.lhs.true ]
  %tobool11.not65 = icmp eq ptr %ib_wr, null
  br i1 %tobool11.not65, label %if.end.out_crit_edge, label %while.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

while.body.lr.ph:                                 ; preds = %if.end
  %num_sges = getelementptr inbounds %struct.irdma_post_rq_info, ptr %post_recv, i32 0, i32 2
  %sg_list12 = getelementptr inbounds %struct.irdma_post_rq_info, ptr %post_recv, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %ib_wr.addr.066 = phi ptr [ %ib_wr, %while.body.lr.ph ], [ %18, %if.end30.while.body_crit_edge ]
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %ib_wr.addr.066, i32 0, i32 3
  %5 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sge, align 4
  %7 = ptrtoint ptr %num_sges to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num_sges, align 4
  %8 = getelementptr inbounds %struct.ib_recv_wr, ptr %ib_wr.addr.066, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %11 = ptrtoint ptr %post_recv to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %post_recv, align 8
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %ib_wr.addr.066, i32 0, i32 2
  %12 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_list, align 8
  %14 = ptrtoint ptr %sg_list12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sg_list12, align 8
  %call13 = call i32 @irdma_uk_post_receive(ptr noundef %sc_qp, ptr noundef nonnull %post_recv) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end30, label %do.body16

do.body16:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_post_recv.__UNIQUE_ID_ddebug732, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_post_recv, %if.then22)) #21
          to label %do.end25 [label %if.then22], !srcloc !259

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %15 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iwdev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_post_recv.__UNIQUE_ID_ddebug732, ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %call13) #21
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %call13)
  %cmp26 = icmp eq i32 %call13, -20
  %. = select i1 %cmp26, i32 -12, i32 -22
  br label %out

if.end30:                                         ; preds = %while.body
  %17 = ptrtoint ptr %ib_wr.addr.066 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ib_wr.addr.066, align 8
  %tobool11.not = icmp eq ptr %18, null
  br i1 %tobool11.not, label %if.end30.out_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

out:                                              ; preds = %if.end30.out_crit_edge, %do.end25, %if.end.out_crit_edge
  %ib_wr.addr.064 = phi ptr [ %ib_wr.addr.066, %do.end25 ], [ null, %if.end.out_crit_edge ], [ null, %if.end30.out_crit_edge ]
  %tobool11.not62 = phi i1 [ false, %do.end25 ], [ true, %if.end.out_crit_edge ], [ true, %if.end30.out_crit_edge ]
  %err.0 = phi i32 [ %., %do.end25 ], [ 0, %if.end.out_crit_edge ], [ 0, %if.end30.out_crit_edge ]
  br i1 %reflush.0.off0, label %if.then32, label %if.else37

if.then32:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  %rq_flush_complete33 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 27
  %19 = ptrtoint ptr %rq_flush_complete33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load34 = load i8, ptr %rq_flush_complete33, align 4
  %bf.clear35 = and i8 %bf.load34, -5
  store i8 %bf.clear35, ptr %rq_flush_complete33, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #21
  call void @irdma_flush_wqes(ptr noundef %ibqp, i32 noundef 6) #21
  br label %if.end39

if.else37:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #21
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then32
  br i1 %tobool11.not62, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #23
  %20 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ib_wr.addr.064, ptr %bad_wr, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %post_recv) #21
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %call7 = tail call fastcc i32 @__irdma_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %entry1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #21
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_req_notify_cq(ptr noundef %ibcq, i32 noundef %notify_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notify_flags)
  %cmp = icmp eq i32 %notify_flags, 1
  %lock = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %last_notify = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 7
  %0 = ptrtoint ptr %last_notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp7 = icmp ne i32 %1, 1
  %or.cond = or i1 %cmp, %cmp7
  %armed = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 6
  %2 = ptrtoint ptr %armed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %armed, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %4 = and i1 %or.cond, %tobool.not
  br i1 %4, label %entry.if.end16_crit_edge, label %if.then13

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1
  %cond = zext i1 %cmp to i32
  %5 = ptrtoint ptr %armed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %armed, align 1
  %6 = ptrtoint ptr %last_notify to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %last_notify, align 8
  tail call void @irdma_uk_cq_request_notification(ptr noundef %sc_cq, i32 noundef %cond) #21
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  %and = and i32 %notify_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %land.lhs.true18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21

land.lhs.true18:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  %call19 = tail call zeroext i1 @irdma_cq_empty(ptr noundef %ibcq) #21
  %not.call19 = xor i1 %call19, true
  %spec.select = zext i1 %not.call19 to i32
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true18, %if.end16.if.end21_crit_edge
  %ret.0 = phi i32 [ 0, %if.end16.if.end21_crit_edge ], [ %spec.select, %land.lhs.true18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #21
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_query_device(ptr nocapture noundef readonly %ibdev, ptr noundef %props, ptr nocapture noundef readonly %udata) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf1, align 8
  %pcidev3 = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %pcidev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev3, align 8
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %4 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %6 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = call ptr @memset(ptr %props, i32 0, i32 296)
  %sys_image_guid = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 1
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 2
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %13 = call ptr @memcpy(ptr %sys_image_guid, ptr %12, i32 3)
  %arrayidx.i.i = getelementptr i8, ptr %sys_image_guid, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %sys_image_guid, i32 4
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -2, ptr %arrayidx1.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %sys_image_guid, i32 5
  %add.ptr2.i.i = getelementptr i8, ptr %12, i32 3
  %16 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr2.i.i, i32 3)
  %17 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sys_image_guid, align 1
  %19 = xor i8 %18, 2
  store i8 %19, ptr %sys_image_guid, align 1
  %feature_info.i = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 23
  %20 = ptrtoint ptr %feature_info.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %feature_info.i, align 8
  %22 = shl i64 %21, 16
  %shl = and i64 %22, 281470681743360
  %conv10 = and i64 %21, 65535
  %or = or i64 %shl, %conv10
  %23 = ptrtoint ptr %props to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or, ptr %props, align 8
  %device_cap_flags = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 10
  %24 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device_cap_flags, align 8
  %conv11 = zext i32 %25 to i64
  %device_cap_flags12 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 9
  %26 = ptrtoint ptr %device_cap_flags12 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv11, ptr %device_cap_flags12, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vendor, align 8
  %conv13 = zext i16 %28 to i32
  %vendor_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 4
  %29 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv13, ptr %vendor_id, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %device, align 2
  %conv14 = zext i16 %31 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 5
  %32 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv14, ptr %vendor_part_id, align 4
  %33 = ptrtoint ptr %pcidev3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcidev3, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision, align 4
  %conv16 = zext i8 %36 to i32
  %hw_ver = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 6
  %37 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv16, ptr %hw_ver, align 8
  %page_size_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 3
  %38 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1075843072, ptr %page_size_cap, align 8
  %max_mr_size = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 3
  %39 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %max_mr_size, align 8
  %max_mr_size17 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 2
  %41 = ptrtoint ptr %max_mr_size17 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %max_mr_size17, align 8
  %max_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_qp, align 8
  %used_qps = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 26
  %44 = ptrtoint ptr %used_qps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used_qps, align 8
  %sub = sub i32 %43, %45
  %max_qp18 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 7
  %46 = ptrtoint ptr %max_qp18 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %max_qp18, align 4
  %max_qp_wr = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 17
  %47 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_qp_wr, align 4
  %max_qp_wr19 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 8
  %49 = ptrtoint ptr %max_qp_wr19 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %max_qp_wr19, align 8
  %max_hw_wq_frags = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 0, i32 1
  %50 = ptrtoint ptr %max_hw_wq_frags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_hw_wq_frags, align 8
  %max_send_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 10
  %52 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_send_sge, align 8
  %53 = load i32, ptr %max_hw_wq_frags, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 11
  %54 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_recv_sge, align 4
  %max_cq = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 11
  %55 = ptrtoint ptr %max_cq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_cq, align 4
  %used_cqs = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %used_cqs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used_cqs, align 8
  %sub22 = sub i32 %56, %58
  %max_cq23 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 13
  %59 = ptrtoint ptr %max_cq23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub22, ptr %max_cq23, align 4
  %max_cqe = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 21
  %60 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_cqe, align 4
  %max_cqe24 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 14
  %62 = ptrtoint ptr %max_cqe24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_cqe24, align 8
  %max_mr = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %max_mr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_mr, align 4
  %used_mrs = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 25
  %65 = ptrtoint ptr %used_mrs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used_mrs, align 4
  %sub25 = sub i32 %64, %66
  %max_mr26 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 15
  %67 = ptrtoint ptr %max_mr26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub25, ptr %max_mr26, align 4
  %max_mw = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 26
  %68 = ptrtoint ptr %max_mw to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub25, ptr %max_mw, align 8
  %max_pd = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 16
  %69 = ptrtoint ptr %max_pd to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_pd, align 8
  %used_pds = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 23
  %71 = ptrtoint ptr %used_pds to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used_pds, align 4
  %sub28 = sub i32 %70, %72
  %max_pd29 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 16
  %73 = ptrtoint ptr %max_pd29 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub28, ptr %max_pd29, align 8
  %max_hw_read_sges = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 0, i32 2
  %74 = ptrtoint ptr %max_hw_read_sges to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_hw_read_sges, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 12
  %76 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_sge_rd, align 8
  %max_hw_ird = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 12
  %77 = ptrtoint ptr %max_hw_ird to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_hw_ird, align 8
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 17
  %79 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %max_qp_rd_atom, align 4
  %max_hw_ord = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 13
  %80 = ptrtoint ptr %max_hw_ord to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_hw_ord, align 4
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 20
  %82 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %max_qp_init_rd_atom, align 8
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %83 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %84, i32 1, i32 1, i32 2
  %85 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %core_cap_flags.i, align 4
  %and.i102 = and i32 %86, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.i.not = icmp eq i32 %and.i102, 0
  br i1 %tobool.i.not, label %if.end.if.end33_crit_edge, label %if.then32

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end33

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %max_pkeys = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 38
  %87 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %max_pkeys, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end.if.end33_crit_edge
  %max_ah = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 12
  %88 = ptrtoint ptr %max_ah to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_ah, align 8
  %max_ah34 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 32
  %90 = ptrtoint ptr %max_ah34 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %max_ah34, align 8
  %max_mcg = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 14
  %91 = ptrtoint ptr %max_mcg to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_mcg, align 8
  %max_mcast_grp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 29
  %93 = ptrtoint ptr %max_mcast_grp to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %max_mcast_grp, align 4
  %max_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 30
  %94 = ptrtoint ptr %max_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8, ptr %max_mcast_qp_attach, align 8
  %95 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_qp, align 8
  %mul = shl i32 %96, 3
  %max_total_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 31
  %97 = ptrtoint ptr %max_total_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul, ptr %max_total_mcast_qp_attach, align 4
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 36
  %98 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 512, ptr %max_fast_reg_page_list_len, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 25, i32 0, i32 9
  %99 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp = icmp ugt i8 %100, 1
  br i1 %cmp, label %if.then39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #23
  %timestamp_mask = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 43
  %101 = ptrtoint ptr %timestamp_mask to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 131071, ptr %timestamp_mask, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_get_dev_fw_str(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %str) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = getelementptr inbounds %struct.irdma_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf, align 8
  %feature_info.i = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 42, i32 23
  %2 = ptrtoint ptr %feature_info.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %feature_info.i, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %conv5 = and i32 %4, 65535
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %5, i32 noundef %conv5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_query_port(ptr nocapture noundef readonly %ibdev, i32 noundef %port, ptr nocapture noundef %props) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 2
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %max_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %2 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %max_mtu, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %4)
  %cmp.i = icmp sgt i32 %4, 4095
  br i1 %cmp.i, label %entry.ib_mtu_int_to_enum.exit_crit_edge, label %if.else.i

entry.ib_mtu_int_to_enum.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 2047
  br i1 %cmp1.i, label %if.else.i.ib_mtu_int_to_enum.exit_crit_edge, label %if.else3.i

if.else.i.ib_mtu_int_to_enum.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %4)
  %cmp4.i = icmp sgt i32 %4, 1023
  br i1 %cmp4.i, label %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge, label %if.else6.i

if.else3.i.ib_mtu_int_to_enum.exit_crit_edge:     ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %4)
  %cmp7.i = icmp sgt i32 %4, 511
  %..i = select i1 %cmp7.i, i32 2, i32 1
  br label %ib_mtu_int_to_enum.exit

ib_mtu_int_to_enum.exit:                          ; preds = %if.else6.i, %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge, %if.else.i.ib_mtu_int_to_enum.exit_crit_edge, %entry.ib_mtu_int_to_enum.exit_crit_edge
  %retval.0.i = phi i32 [ 5, %entry.ib_mtu_int_to_enum.exit_crit_edge ], [ 4, %if.else.i.ib_mtu_int_to_enum.exit_crit_edge ], [ 3, %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge ], [ %..i, %if.else6.i ]
  %active_mtu = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %5 = ptrtoint ptr %active_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %active_mtu, align 8
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %6 = ptrtoint ptr %lid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lid, align 8
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %7 = ptrtoint ptr %lmc to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %lmc, align 4
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %8 = ptrtoint ptr %sm_lid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sm_lid, align 4
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %9 = ptrtoint ptr %sm_sl to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sm_sl, align 2
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %ib_mtu_int_to_enum.exit.if.else_crit_edge

ib_mtu_int_to_enum.exit.if.else_crit_edge:        ; preds = %ib_mtu_int_to_enum.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true:                                    ; preds = %ib_mtu_int_to_enum.exit
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ib_mtu_int_to_enum.exit.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink37 = phi i32 [ 1, %if.else ], [ 4, %land.lhs.true.if.end_crit_edge ]
  %.sink36 = phi i8 [ 3, %if.else ], [ 5, %land.lhs.true.if.end_crit_edge ]
  %state5 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %15 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink37, ptr %state5, align 8
  %phys_state6 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %16 = ptrtoint ptr %phys_state6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink36, ptr %phys_state6, align 4
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %17 = ptrtoint ptr %active_width to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %active_width, align 1
  %18 = ptrtoint ptr %active_speed to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 32, ptr %active_speed, align 2
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %19 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %20, i32 1, i32 1, i32 2
  %21 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %22, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i35.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i35.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %ip_gids = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 6
  %23 = ptrtoint ptr %ip_gids to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %ip_gids, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ip_gids, align 4
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %24 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %pkey_tbl_len, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %.sink = phi i32 [ 32, %if.then8 ], [ 1, %if.end.if.end11_crit_edge ]
  %25 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %25, align 8
  %qkey_viol_cntr = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %27 = ptrtoint ptr %qkey_viol_cntr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %qkey_viol_cntr, align 4
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %28 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_cap_flags, align 8
  %or = or i32 %29, 327680
  store i32 %or, ptr %port_cap_flags, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 1
  %30 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rf, align 8
  %max_hw_outbound_msg_size = getelementptr inbounds %struct.irdma_pci_f, ptr %31, i32 0, i32 42, i32 25, i32 1
  %32 = ptrtoint ptr %max_hw_outbound_msg_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %max_hw_outbound_msg_size, align 8
  %conv = trunc i64 %33 to i32
  %max_msg_sz = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %34 = ptrtoint ptr %max_msg_sz to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %max_msg_sz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_alloc_ucontext(ptr noundef %uctx, ptr nocapture noundef readonly %udata) #0 align 64 {
entry:
  %req = alloca %struct.irdma_alloc_ucontext_req, align 8
  %uresp = alloca %struct.irdma_alloc_ucontext_resp, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #21
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %uresp) #21
  %3 = call ptr @memset(ptr %uresp, i32 0, i32 64)
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %4 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inlen, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %call2 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %req, ptr noundef %udata, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup85_crit_edge

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup85

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.irdma_alloc_ucontext_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %10 = add i8 %9, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %10)
  %11 = icmp ult i8 %10, -2
  br i1 %11, label %ver_error, label %if.end10

if.end10:                                         ; preds = %if.end
  %iwdev11 = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 1
  %12 = ptrtoint ptr %iwdev11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %iwdev11, align 4
  %conv13 = zext i8 %9 to i32
  %abi_ver = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 7
  %13 = ptrtoint ptr %abi_ver to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv13, ptr %abi_ver, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rf, align 8
  %hw_attrs = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %16 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp15 = icmp ult i32 %17, 64
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end10
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 9
  %18 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp19.not = icmp eq i8 %19, 1
  br i1 %cmp19.not, label %if.end22, label %if.then17.cleanup85_crit_edge

if.then17.cleanup85_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup85

if.end22:                                         ; preds = %if.then17
  %legacy_mode = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 8
  %20 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %legacy_mode, align 4
  %21 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rf, align 8
  %max_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_qp, align 8
  %max_qps = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 1
  %25 = ptrtoint ptr %max_qps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_qps, align 4
  %max_hw_pds = getelementptr inbounds %struct.irdma_pci_f, ptr %22, i32 0, i32 42, i32 25, i32 15
  %26 = ptrtoint ptr %max_hw_pds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_hw_pds, align 4
  %28 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %uresp, align 8
  %max_qp_wr = getelementptr inbounds %struct.irdma_pci_f, ptr %22, i32 0, i32 42, i32 25, i32 17
  %29 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_qp_wr, align 4
  %mul = shl i32 %30, 1
  %wq_size = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 2
  %31 = ptrtoint ptr %wq_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %wq_size, align 8
  %kernel_ver = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 3
  %32 = ptrtoint ptr %kernel_ver to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %9, ptr %kernel_ver, align 4
  %33 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %outlen, align 4
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 64)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %36 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %outbuf.i, align 4
  call void @__check_object_size(ptr noundef nonnull %uresp, i32 noundef %35, i1 noundef zeroext true) #21
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #21
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i.i, label %if.end22.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end22.copy_to_user.exit.i_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end22
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 %35, i32 -1226833920) #25, !srcloc !265
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef %35) #21
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %37, ptr noundef nonnull %uresp, i32 noundef %35) #21
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end22.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %35, %if.end22.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %35, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.if.end76_crit_edge, label %copy_to_user.exit.i.cleanup85_crit_edge

copy_to_user.exit.i.cleanup85_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup85

copy_to_user.exit.i.if.end76_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end76

if.else:                                          ; preds = %if.end10
  %arrayidx = getelementptr %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 17, i32 11
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %db_mmap_key = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 40) #26
  %tobool.not.i135 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i135, label %if.else.irdma_user_mmap_entry_insert.exit.thread_crit_edge, label %if.end.i

if.else.irdma_user_mmap_entry_insert.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_user_mmap_entry_insert.exit.thread

if.end.i:                                         ; preds = %if.else
  %42 = ptrtoint ptr %40 to i32
  %conv45 = zext i32 %42 to i64
  %bar_offset2.i = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %bar_offset2.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv45, ptr %bar_offset2.i, align 8
  %mmap_flag3.i = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mmap_flag3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %mmap_flag3.i, align 8
  %call4.i = call i32 @rdma_user_mmap_entry_insert(ptr noundef %uctx, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end50, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #21
  br label %irdma_user_mmap_entry_insert.exit.thread

irdma_user_mmap_entry_insert.exit.thread:         ; preds = %if.then6.i, %if.else.irdma_user_mmap_entry_insert.exit.thread_crit_edge
  %db_mmap_entry161 = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 2
  %45 = ptrtoint ptr %db_mmap_entry161 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %db_mmap_entry161, align 4
  br label %cleanup85

if.end50:                                         ; preds = %if.end.i
  %start_pgoff.i.i = getelementptr inbounds %struct.rdma_user_mmap_entry, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %start_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start_pgoff.i.i, align 8
  %conv.i.i = zext i32 %47 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %48 = ptrtoint ptr %db_mmap_key to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shl.i.i, ptr %db_mmap_key, align 8
  %db_mmap_entry = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 2
  %49 = ptrtoint ptr %db_mmap_entry to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %db_mmap_entry, align 4
  %kernel_ver51 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 3
  %50 = ptrtoint ptr %kernel_ver51 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %kernel_ver51, align 4
  %51 = ptrtoint ptr %hw_attrs to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %hw_attrs, align 8
  %feature_flags52 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 5
  %53 = ptrtoint ptr %feature_flags52 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %feature_flags52, align 8
  %max_hw_wq_frags = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 1
  %54 = ptrtoint ptr %max_hw_wq_frags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_hw_wq_frags, align 8
  %max_hw_wq_frags53 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 7
  %56 = ptrtoint ptr %max_hw_wq_frags53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %max_hw_wq_frags53, align 8
  %max_hw_read_sges = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 2
  %57 = ptrtoint ptr %max_hw_read_sges to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_hw_read_sges, align 4
  %max_hw_read_sges54 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 8
  %59 = ptrtoint ptr %max_hw_read_sges54 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %max_hw_read_sges54, align 4
  %max_hw_inline = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 3
  %60 = ptrtoint ptr %max_hw_inline to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_hw_inline, align 8
  %max_hw_inline55 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 9
  %62 = ptrtoint ptr %max_hw_inline55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_hw_inline55, align 8
  %max_hw_rq_quanta = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 4
  %63 = ptrtoint ptr %max_hw_rq_quanta to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_hw_rq_quanta, align 4
  %max_hw_rq_quanta56 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 10
  %65 = ptrtoint ptr %max_hw_rq_quanta56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %max_hw_rq_quanta56, align 4
  %max_hw_wq_quanta = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 5
  %66 = ptrtoint ptr %max_hw_wq_quanta to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_hw_wq_quanta, align 8
  %max_hw_wq_quanta57 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 11
  %68 = ptrtoint ptr %max_hw_wq_quanta57 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_hw_wq_quanta57, align 8
  %max_hw_sq_chunk = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 8
  %69 = ptrtoint ptr %max_hw_sq_chunk to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %max_hw_sq_chunk, align 4
  %max_hw_sq_chunk58 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 14
  %71 = ptrtoint ptr %max_hw_sq_chunk58 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %max_hw_sq_chunk58, align 4
  %max_hw_cq_size = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 7
  %72 = ptrtoint ptr %max_hw_cq_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_hw_cq_size, align 8
  %max_hw_cq_size59 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 13
  %74 = ptrtoint ptr %max_hw_cq_size59 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %max_hw_cq_size59, align 8
  %min_hw_cq_size = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 6
  %75 = ptrtoint ptr %min_hw_cq_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %min_hw_cq_size, align 4
  %min_hw_cq_size60 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 12
  %77 = ptrtoint ptr %min_hw_cq_size60 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %min_hw_cq_size60, align 4
  %hw_rev61 = getelementptr inbounds %struct.irdma_pci_f, ptr %15, i32 0, i32 42, i32 25, i32 0, i32 9
  %78 = ptrtoint ptr %hw_rev61 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hw_rev61, align 2
  %hw_rev62 = getelementptr inbounds %struct.irdma_alloc_ucontext_resp, ptr %uresp, i32 0, i32 15
  %80 = ptrtoint ptr %hw_rev62 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %hw_rev62, align 2
  %81 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %outlen, align 4
  %83 = call i32 @llvm.umin.i32(i32 %82, i32 64)
  %outbuf.i136 = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %84 = ptrtoint ptr %outbuf.i136 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %outbuf.i136, align 4
  call void @__check_object_size(ptr noundef nonnull %uresp, i32 noundef %83, i1 noundef zeroext true) #21
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #21
  %call.i.i.i145 = call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i.i145, label %if.end50.copy_to_user.exit.i156_crit_edge, label %if.end.i.i.i149

if.end50.copy_to_user.exit.i156_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i156

if.end.i.i.i149:                                  ; preds = %if.end50
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %85, i32 %83, i32 -1226833920) #25, !srcloc !265
  %asmresult.i.i.i147 = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i147)
  %cmp.i6.i.i148 = icmp eq i32 %asmresult.i.i.i147, 0
  br i1 %cmp.i6.i.i148, label %if.then2.i.i.i152, label %if.end.i.i.i149.copy_to_user.exit.i156_crit_edge

if.end.i.i.i149.copy_to_user.exit.i156_crit_edge: ; preds = %if.end.i.i.i149
  call void @__sanitizer_cov_trace_pc() #23
  br label %copy_to_user.exit.i156

if.then2.i.i.i152:                                ; preds = %if.end.i.i.i149
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i.i150 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef %83) #21
  %call.i12.i.i.i151 = call i32 @arm_copy_to_user(ptr noundef %85, ptr noundef nonnull %uresp, i32 noundef %83) #21
  br label %copy_to_user.exit.i156

copy_to_user.exit.i156:                           ; preds = %if.then2.i.i.i152, %if.end.i.i.i149.copy_to_user.exit.i156_crit_edge, %if.end50.copy_to_user.exit.i156_crit_edge
  %n.addr.0.i.i153 = phi i32 [ %83, %if.end50.copy_to_user.exit.i156_crit_edge ], [ %call.i12.i.i.i151, %if.then2.i.i.i152 ], [ %83, %if.end.i.i.i149.copy_to_user.exit.i156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i153)
  %tobool.not.i154 = icmp eq i32 %n.addr.0.i.i153, 0
  br i1 %tobool.not.i154, label %copy_to_user.exit.i156.if.end76_crit_edge, label %if.then73

copy_to_user.exit.i156.if.end76_crit_edge:        ; preds = %copy_to_user.exit.i156
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end76

if.then73:                                        ; preds = %copy_to_user.exit.i156
  call void @__sanitizer_cov_trace_pc() #23
  %87 = ptrtoint ptr %db_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %db_mmap_entry, align 4
  call void @rdma_user_mmap_entry_remove(ptr noundef %88) #21
  br label %cleanup85

if.end76:                                         ; preds = %copy_to_user.exit.i156.if.end76_crit_edge, %copy_to_user.exit.i.if.end76_crit_edge
  %cq_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 3
  %89 = ptrtoint ptr %cq_reg_mem_list to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %cq_reg_mem_list, ptr %cq_reg_mem_list, align 4
  %prev.i = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %cq_reg_mem_list, ptr %prev.i, align 4
  %cq_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %cq_reg_mem_list_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @irdma_alloc_ucontext.__key, i16 noundef signext 3) #21
  %qp_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 5
  %91 = ptrtoint ptr %qp_reg_mem_list to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %qp_reg_mem_list, ptr %qp_reg_mem_list, align 4
  %prev.i158 = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 5, i32 1
  %92 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %qp_reg_mem_list, ptr %prev.i158, align 4
  %qp_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %uctx, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %qp_reg_mem_list_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @irdma_alloc_ucontext.__key.38, i16 noundef signext 3) #21
  br label %cleanup85

ver_error:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %conv84 = zext i8 %9 to i32
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %conv84, i32 noundef 5) #24
  br label %cleanup85

cleanup85:                                        ; preds = %ver_error, %if.end76, %if.then73, %irdma_user_mmap_entry_insert.exit.thread, %copy_to_user.exit.i.cleanup85_crit_edge, %if.then17.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.1 = phi i32 [ -22, %ver_error ], [ 0, %if.end76 ], [ -22, %entry.cleanup85_crit_edge ], [ -95, %if.then17.cleanup85_crit_edge ], [ -14, %copy_to_user.exit.i.cleanup85_crit_edge ], [ -12, %irdma_user_mmap_entry_insert.exit.thread ], [ -14, %if.then73 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %uresp) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #21
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_dealloc_ucontext(ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %db_mmap_entry = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %db_mmap_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_mmap_entry, align 4
  tail call void @rdma_user_mmap_entry_remove(ptr noundef %1) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_mmap(ptr noundef %context, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy_mode = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy_mode, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end.i, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp.not.i = icmp eq i32 %sub.i, 4096
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %8 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %context, ptr %vm_private_data.i, align 4
  %iwdev.i = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 1
  %9 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iwdev.i, align 4
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rf.i, align 8
  %arrayidx.i = getelementptr %struct.irdma_pci_f, ptr %12, i32 0, i32 42, i32 17, i32 11
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %pcidev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %12, i32 0, i32 43
  %16 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcidev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %19, %15
  %shr.i = lshr i32 %add.i, 12
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %20 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_page_prot.i, align 4
  %and.i = and i32 %21, -61
  %call.i = tail call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %shr.i, i32 noundef 4096, i32 noundef %and.i, ptr noundef null) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @rdma_user_mmap_entry_get(ptr noundef %context, ptr noundef %vma) #21
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_mmap.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_mmap, %if.then10)) #21
          to label %cleanup [label %if.then10], !srcloc !259

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 1
  %22 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iwdev, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %24 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_pgoff, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_mmap.__UNIQUE_ID_ddebug681, ptr noundef %23, ptr noundef nonnull @.str.42, i32 noundef %25) #21
  br label %cleanup

if.end12:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_mmap.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_mmap, %if.then26)) #21
          to label %do.end31 [label %if.then26], !srcloc !259

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev27 = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 1
  %26 = ptrtoint ptr %iwdev27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iwdev27, align 4
  %bar_offset = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call3, i32 0, i32 1
  %28 = ptrtoint ptr %bar_offset to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bar_offset, align 8
  %mmap_flag = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call3, i32 0, i32 2
  %30 = ptrtoint ptr %mmap_flag to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mmap_flag, align 8
  %conv = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_mmap.__UNIQUE_ID_ddebug682, ptr noundef %27, ptr noundef nonnull @.str.43, i64 noundef %29, i32 noundef %conv) #21
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end12
  %bar_offset32 = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call3, i32 0, i32 1
  %32 = ptrtoint ptr %bar_offset32 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bar_offset32, align 8
  %iwdev33 = getelementptr inbounds %struct.irdma_ucontext, ptr %context, i32 0, i32 1
  %34 = ptrtoint ptr %iwdev33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iwdev33, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rf, align 8
  %pcidev = getelementptr inbounds %struct.irdma_pci_f, ptr %37, i32 0, i32 43
  %38 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcidev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47
  %40 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resource, align 8
  %conv34 = zext i32 %41 to i64
  %add = add i64 %33, %conv34
  %shr = lshr i64 %add, 12
  %mmap_flag35 = getelementptr inbounds %struct.irdma_user_mmap_entry, ptr %call3, i32 0, i32 2
  %42 = ptrtoint ptr %mmap_flag35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mmap_flag35, align 8
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %43, label %do.end31.do.body47_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb39
  ]

do.end31.do.body47_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body47

sw.bb:                                            ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #23
  %conv37 = trunc i64 %shr to i32
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %45 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %46, -61
  %call38 = tail call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %conv37, i32 noundef 4096, i32 noundef %and, ptr noundef nonnull %call3) #21
  br label %sw.epilog

sw.bb39:                                          ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #23
  %conv40 = trunc i64 %shr to i32
  %vm_page_prot41 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %47 = ptrtoint ptr %vm_page_prot41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_page_prot41, align 4
  %and42 = and i32 %48, -61
  %or43 = or i32 %and42, 4
  %call44 = tail call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %conv40, i32 noundef 4096, i32 noundef %or43, ptr noundef nonnull %call3) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %sw.bb
  %ret.0 = phi i32 [ %call44, %sw.bb39 ], [ %call38, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool45.not = icmp eq i32 %ret.0, 0
  br i1 %tobool45.not, label %sw.epilog.if.end68_crit_edge, label %sw.epilog.do.body47_crit_edge

sw.epilog.do.body47_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body47

sw.epilog.if.end68_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end68

do.body47:                                        ; preds = %sw.epilog.do.body47_crit_edge, %do.end31.do.body47_crit_edge
  %ret.0110 = phi i32 [ %ret.0, %sw.epilog.do.body47_crit_edge ], [ -22, %do.end31.do.body47_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_mmap.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_mmap, %if.then59)) #21
          to label %if.end68 [label %if.then59], !srcloc !259

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #23
  %49 = ptrtoint ptr %iwdev33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iwdev33, align 4
  %51 = ptrtoint ptr %bar_offset32 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %bar_offset32, align 8
  %53 = ptrtoint ptr %mmap_flag35 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mmap_flag35, align 8
  %conv64 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_mmap.__UNIQUE_ID_ddebug683, ptr noundef %50, ptr noundef nonnull @.str.44, i64 noundef %52, i32 noundef %conv64, i32 noundef %ret.0110) #21
  br label %if.end68

if.end68:                                         ; preds = %if.then59, %do.body47, %sw.epilog.if.end68_crit_edge
  %ret.0111 = phi i32 [ %ret.0110, %if.then59 ], [ 0, %sw.epilog.if.end68_crit_edge ], [ %ret.0110, %do.body47 ]
  tail call void @rdma_user_mmap_entry_put(ptr noundef nonnull %call3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then10, %do.body, %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0111, %if.end68 ], [ -22, %if.then10 ], [ %call.i, %if.end.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_mmap_free(ptr noundef %rdma_entry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %rdma_entry) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @irdma_disassociate_ucontext(ptr nocapture noundef %context) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_alloc_pd(ptr noundef %pd, ptr noundef readonly %udata) #0 align 64 {
entry:
  %uresp = alloca %struct.irdma_alloc_pd_resp, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uresp) #21
  %4 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %uresp, align 8
  %allocated_pds = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 37
  %5 = ptrtoint ptr %allocated_pds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %allocated_pds, align 4
  %max_pd = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 16
  %7 = ptrtoint ptr %max_pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_pd, align 8
  %next_pd = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 19
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %9 = ptrtoint ptr %next_pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_pd, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %6, i32 noundef %8, i32 noundef %10) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %8)
  %cmp6.not.i = icmp ult i32 %call5.i, %8
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %6, i32 noundef %8) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %8)
  %cmp9.not.i = icmp ult i32 %call8.i, %8
  br i1 %cmp9.not.i, label %if.then.i.if.end_crit_edge, label %if.then11.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_alloc_pd, %if.then18.i)) #21
          to label %cleanup22 [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 71
  %11 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %cleanup22

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end_crit_edge ], [ %call5.i, %entry.if.end_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %6, i32 %div2.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %14
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %8)
  %cmp23.i = icmp eq i32 %add.i, %8
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %15 = ptrtoint ptr %next_pd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %next_pd, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  %sc_pd5 = getelementptr inbounds %struct.irdma_pd, ptr %pd, i32 0, i32 1
  %tobool6.not = icmp eq ptr %udata, null
  br i1 %tobool6.not, label %if.else, label %cond.true

cond.true:                                        ; preds = %if.end
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %abi_ver = getelementptr inbounds %struct.irdma_ucontext, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %abi_ver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %abi_ver, align 4
  tail call void @irdma_sc_pd_init(ptr noundef %sc_dev, ptr noundef %sc_pd5, i32 noundef %rsrc_num.0.i, i32 noundef %19) #21
  %20 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rsrc_num.0.i, ptr %uresp, align 8
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %21 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %outlen, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 8)
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %24 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %outbuf.i, align 4
  call void @__check_object_size(ptr noundef nonnull %uresp, i32 noundef %23, i1 noundef zeroext true) #21
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #21
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #21
  br i1 %call.i.i.i, label %cond.true.ib_copy_to_udata.exit_crit_edge, label %if.end.i.i.i

cond.true.ib_copy_to_udata.exit_crit_edge:        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_copy_to_udata.exit

if.end.i.i.i:                                     ; preds = %cond.true
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %23, i32 -1226833920) #25, !srcloc !265
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.ib_copy_to_udata.exit_crit_edge

if.end.i.i.i.ib_copy_to_udata.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_copy_to_udata.exit

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %uresp, i32 noundef %23) #21
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull %uresp, i32 noundef %23) #21
  br label %ib_copy_to_udata.exit

ib_copy_to_udata.exit:                            ; preds = %if.then2.i.i.i, %if.end.i.i.i.ib_copy_to_udata.exit_crit_edge, %cond.true.ib_copy_to_udata.exit_crit_edge
  %n.addr.0.i.i = phi i32 [ %23, %cond.true.ib_copy_to_udata.exit_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %23, %if.end.i.i.i.ib_copy_to_udata.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool.not.i, label %ib_copy_to_udata.exit.cleanup22_crit_edge, label %error

ib_copy_to_udata.exit.cleanup22_crit_edge:        ; preds = %ib_copy_to_udata.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @irdma_sc_pd_init(ptr noundef %sc_dev, ptr noundef %sc_pd5, i32 noundef %rsrc_num.0.i, i32 noundef 5) #21
  br label %cleanup22

error:                                            ; preds = %ib_copy_to_udata.exit
  call void @__sanitizer_cov_trace_pc() #23
  %27 = ptrtoint ptr %allocated_pds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %allocated_pds, align 4
  %call2.i49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %add.ptr.i.i53 = getelementptr i32, ptr %28, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %29 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i53, align 4
  %and.i.i = and i32 %30, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i53, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i49) #21
  br label %cleanup22

cleanup22:                                        ; preds = %error, %if.else, %ib_copy_to_udata.exit.cleanup22_crit_edge, %if.then18.i, %if.then11.i
  %retval.0 = phi i32 [ -14, %error ], [ 0, %ib_copy_to_udata.exit.cleanup22_crit_edge ], [ 0, %if.else ], [ -75, %if.then18.i ], [ -75, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uresp) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_dealloc_pd(ptr nocapture noundef readonly %ibpd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %allocated_pds = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %allocated_pds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allocated_pds, align 4
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %ibpd, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pd_id, align 4
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %rem.i.i = and i32 %7, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %7, 5
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %9, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_create_qp(ptr noundef %ibqp, ptr nocapture noundef %init_attr, ptr noundef readonly %udata) #0 align 64 {
entry:
  %sqdepth.i = alloca i32, align 4
  %rqdepth.i = alloca i32, align 4
  %sqshift.i = alloca i8, align 1
  %rqshift.i = alloca i8, align 1
  %req = alloca %struct.irdma_create_qp_req, align 8
  %uresp = alloca %struct.irdma_create_qp_resp, align 4
  %init_info = alloca %struct.irdma_qp_init_info, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %rf2 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #21
  %6 = getelementptr inbounds %struct.irdma_create_qp_req, ptr %req, i32 0, i32 1
  %7 = call ptr @memset(ptr %req, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %uresp) #21
  %8 = call ptr @memset(ptr %uresp, i32 0, i32 24)
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %init_info) #21
  %9 = call ptr @memset(ptr %init_info, i32 0, i32 136)
  %create_flags.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 9
  %10 = ptrtoint ptr %create_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %create_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup320_crit_edge

entry.cleanup320_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

if.end.i:                                         ; preds = %entry
  %max_inline_data.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 4
  %12 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_inline_data.i, align 4
  %max_hw_inline.i = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 0, i32 3
  %14 = ptrtoint ptr %max_hw_inline.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_hw_inline.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp ugt i32 %13, %15
  br i1 %cmp.i, label %if.end.i.cleanup320_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup320_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_send_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_send_sge.i, align 4
  %max_hw_wq_frags.i = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 0, i32 1
  %18 = ptrtoint ptr %max_hw_wq_frags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_hw_wq_frags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp3.i = icmp ugt i32 %17, %19
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup320_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.cleanup320_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %max_recv_sge.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_recv_sge.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp7.i = icmp ugt i32 %21, %19
  br i1 %cmp7.i, label %lor.lhs.false4.i.cleanup320_crit_edge, label %if.end9.i

lor.lhs.false4.i.cleanup320_crit_edge:            ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

if.end9.i:                                        ; preds = %lor.lhs.false4.i
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %23, i32 1, i32 1, i32 2
  %24 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %25, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %qp_type19.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 8
  %26 = ptrtoint ptr %qp_type19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qp_type19.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end9.i
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %27, label %if.then10.i.cleanup320_crit_edge [
    i32 2, label %if.then10.i.if.end_crit_edge
    i32 4, label %if.then10.i.if.end_crit_edge527
    i32 1, label %if.then10.i.if.end_crit_edge528
  ]

if.then10.i.if.end_crit_edge528:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then10.i.if.end_crit_edge527:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then10.i.cleanup320_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp20.not.i = icmp eq i32 %27, 2
  br i1 %cmp20.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.cleanup320_crit_edge

if.else.i.cleanup320_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then10.i.if.end_crit_edge, %if.then10.i.if.end_crit_edge527, %if.then10.i.if.end_crit_edge528
  %hw_attrs = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %29 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_recv_wr, align 4
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 4
  %vsi7 = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 2
  %33 = ptrtoint ptr %vsi7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vsi, ptr %vsi7, align 8
  %uk_attrs8 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 2
  %34 = ptrtoint ptr %uk_attrs8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hw_attrs, ptr %uk_attrs8, align 8
  %sq_size10 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 9
  %35 = ptrtoint ptr %sq_size10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %sq_size10, align 4
  %rq_size12 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 10
  %36 = ptrtoint ptr %rq_size12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %32, ptr %rq_size12, align 8
  %37 = ptrtoint ptr %max_send_sge.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_send_sge.i, align 4
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 11
  %39 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_sq_frag_cnt, align 4
  %40 = ptrtoint ptr %max_recv_sge.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_recv_sge.i, align 4
  %max_rq_frag_cnt = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 12
  %42 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %max_rq_frag_cnt, align 8
  %43 = ptrtoint ptr %max_inline_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_inline_data.i, align 4
  %max_inline_data19 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 13
  %45 = ptrtoint ptr %max_inline_data19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %max_inline_data19, align 4
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %back_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 28
  %46 = ptrtoint ptr %back_qp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ibqp, ptr %back_qp, align 8
  %push_idx = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 16
  %47 = ptrtoint ptr %push_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %push_idx, align 8
  %iwdev20 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %48 = ptrtoint ptr %iwdev20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %3, ptr %iwdev20, align 8
  %q2_ctx_mem = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 40
  %size = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 40, i32 2
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 512, ptr %size, align 4
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 8
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 8
  %device21 = getelementptr inbounds %struct.irdma_hw, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device21, align 4
  %pa = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 40, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %53, i32 noundef 512, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #21
  %54 = ptrtoint ptr %q2_ctx_mem to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %q2_ctx_mem, align 4
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.end.cleanup320_crit_edge, label %if.end31

if.end.cleanup320_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup320

if.end31:                                         ; preds = %if.end
  %q2 = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 4
  %55 = ptrtoint ptr %q2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %q2, align 8
  %56 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pa, align 4
  %conv = zext i32 %57 to i64
  %q2_pa = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 8
  %58 = ptrtoint ptr %q2_pa to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv, ptr %q2_pa, align 8
  %add.ptr = getelementptr i8, ptr %call.i, i32 256
  %host_ctx = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 3
  %59 = ptrtoint ptr %host_ctx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr, ptr %host_ctx, align 4
  %add = add nuw nsw i64 %conv, 256
  %host_ctx_pa = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 7
  %60 = ptrtoint ptr %host_ctx_pa to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add, ptr %host_ctx_pa, align 8
  %61 = ptrtoint ptr %qp_type19.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qp_type19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp = icmp eq i32 %62, 1
  br i1 %cmp, label %if.end31.if.end44_crit_edge, label %if.else

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end44

if.else:                                          ; preds = %if.end31
  %allocated_qps = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 34
  %63 = ptrtoint ptr %allocated_qps to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %allocated_qps, align 8
  %max_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 10
  %65 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_qp, align 8
  %next_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 17
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %67 = ptrtoint ptr %next_qp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next_qp, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %64, i32 noundef %66, i32 noundef %68) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %66)
  %cmp6.not.i = icmp ult i32 %call5.i, %66
  br i1 %cmp6.not.i, label %if.else.if.end22.i_crit_edge, label %if.then.i

if.else.if.end22.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22.i

if.then.i:                                        ; preds = %if.else
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %64, i32 noundef %66) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %66)
  %cmp9.not.i = icmp ult i32 %call8.i, %66
  br i1 %cmp9.not.i, label %if.then.i.if.end22.i_crit_edge, label %if.then11.i

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then18.i)) #21
          to label %error [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 71
  %69 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %70, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %error

if.end22.i:                                       ; preds = %if.then.i.if.end22.i_crit_edge, %if.else.if.end22.i_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end22.i_crit_edge ], [ %call5.i, %if.else.if.end22.i_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %64, i32 %div2.i.i
  %71 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %72
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %66)
  %cmp23.i = icmp eq i32 %add.i, %66
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %73 = ptrtoint ptr %next_qp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.select.i, ptr %next_qp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  br label %if.end44

if.end44:                                         ; preds = %if.end22.i, %if.end31.if.end44_crit_edge
  %qp_num.1.ph = phi i32 [ %rsrc_num.0.i, %if.end22.i ], [ 1, %if.end31.if.end44_crit_edge ]
  %iwpd45 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 6
  %74 = ptrtoint ptr %iwpd45 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %1, ptr %iwpd45, align 4
  %qp_num47 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %75 = ptrtoint ptr %qp_num47 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %qp_num.1.ph, ptr %qp_num47, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %76 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %send_cq, align 4
  %iwscq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 4
  %78 = ptrtoint ptr %iwscq to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %iwscq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %79 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %recv_cq, align 4
  %iwrcq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 5
  %81 = ptrtoint ptr %iwrcq to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %iwrcq, align 8
  %82 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host_ctx, align 4
  %host_ctx52 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 37
  %84 = ptrtoint ptr %host_ctx52 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %host_ctx52, align 4
  %85 = ptrtoint ptr %host_ctx_pa to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %host_ctx_pa, align 8
  %conv55 = trunc i64 %86 to i32
  %pa57 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 37, i32 1
  %87 = ptrtoint ptr %pa57 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv55, ptr %pa57, align 4
  %size59 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 37, i32 2
  %88 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 256, ptr %size59, align 4
  %sc_pd = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1
  %pd60 = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 1
  %89 = ptrtoint ptr %pd60 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %sc_pd, ptr %pd60, align 4
  %qp_id = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 7
  %90 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %qp_num.1.ph, ptr %qp_id, align 4
  %91 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %92, i32 1, i32 1, i32 2
  %93 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %94, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then65, label %if.end44.if.end67_crit_edge

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end67

if.then65:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #23
  %first_sq_wq = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 14
  %95 = ptrtoint ptr %first_sq_wq to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %first_sq_wq, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end44.if.end67_crit_edge
  %96 = ptrtoint ptr %sc_qp to i32
  %conv68 = zext i32 %96 to i64
  %ctx_info69 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9
  %97 = ptrtoint ptr %ctx_info69 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv68, ptr %ctx_info69, align 8
  %waitq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 43
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.45, ptr noundef nonnull @irdma_create_qp.__key) #21
  %mod_qp_waitq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 44
  tail call void @__init_waitqueue_head(ptr noundef %mod_qp_waitq, ptr noundef nonnull @.str.47, ptr noundef nonnull @irdma_create_qp.__key.46) #21
  %tobool73.not = icmp eq ptr %udata, null
  br i1 %tobool73.not, label %if.else148, label %if.then74

if.then74:                                        ; preds = %if.end67
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %98 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %inlen, align 4
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 16)
  %call77 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %req, ptr noundef nonnull %udata, i32 noundef %100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end91, label %do.body80

do.body80:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_qp.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then86)) #21
          to label %error [label %if.then86], !srcloc !259

if.then86:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_qp.__UNIQUE_ID_ddebug694, ptr noundef %3, ptr noundef nonnull @.str.49) #21
  br label %error

if.end91:                                         ; preds = %if.then74
  %101 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %6, align 8
  %103 = ptrtoint ptr %ctx_info69 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %ctx_info69, align 8
  %user_mode = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %104 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load = load i8, ptr %user_mode, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %user_mode, align 8
  %105 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %req, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %tobool94.not = icmp eq i64 %106, 0
  br i1 %tobool94.not, label %if.end91.if.end144_crit_edge, label %cond.true97

if.end91.if.end144_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end144

cond.true97:                                      ; preds = %if.end91
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %107 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %context, align 4
  %legacy_mode = getelementptr inbounds %struct.irdma_ucontext, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %legacy_mode, align 4, !range !272
  %legacy_mode106 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 17
  %111 = ptrtoint ptr %legacy_mode106 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %legacy_mode106, align 8
  %qp_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %108, i32 0, i32 6
  %call114 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_reg_mem_list_lock) #21
  %112 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %req, align 8
  %conv120 = trunc i64 %113 to i32
  %qp_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %108, i32 0, i32 5
  %call121 = call fastcc ptr @irdma_get_pbl(i32 noundef %conv120, ptr noundef %qp_reg_mem_list)
  %iwpbl = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 39
  %114 = ptrtoint ptr %iwpbl to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call121, ptr %iwpbl, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_reg_mem_list_lock, i32 noundef %call114) #21
  %115 = ptrtoint ptr %iwpbl to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iwpbl, align 8
  %tobool124.not = icmp eq ptr %116, null
  br i1 %tobool124.not, label %if.then125, label %cond.true97.if.end144_crit_edge

cond.true97.if.end144_crit_edge:                  ; preds = %cond.true97
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end144

if.then125:                                       ; preds = %cond.true97
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_qp.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then138)) #21
          to label %error [label %if.then138], !srcloc !259

if.then138:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_qp.__UNIQUE_ID_ddebug695, ptr noundef %3, ptr noundef nonnull @.str.50) #21
  br label %error

if.end144:                                        ; preds = %cond.true97.if.end144_crit_edge, %if.end91.if.end144_crit_edge
  %abi_ver = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 2
  %117 = ptrtoint ptr %abi_ver to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %abi_ver, align 4
  %abi_ver147 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 16
  %119 = ptrtoint ptr %abi_ver147 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %abi_ver147, align 4
  %iwpbl1.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 39
  %120 = ptrtoint ptr %iwpbl1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iwpbl1.i, align 8
  %sq_page.i = getelementptr inbounds %struct.irdma_pbl, ptr %121, i32 0, i32 1, i32 0, i32 3
  %122 = ptrtoint ptr %sq_page.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sq_page.i, align 4
  %page.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 29
  %124 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %page.i, align 4
  %shadow.i = getelementptr inbounds %struct.irdma_pbl, ptr %121, i32 0, i32 1, i32 0, i32 2
  %125 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %shadow.i, align 4
  %conv.i = zext i32 %126 to i64
  %shadow_area_pa.i = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 9
  %127 = ptrtoint ptr %shadow_area_pa.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %conv.i, ptr %shadow_area_pa.i, align 8
  %pbl_allocated.i = getelementptr inbounds %struct.irdma_pbl, ptr %121, i32 0, i32 2
  %128 = ptrtoint ptr %pbl_allocated.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i = load i8, ptr %pbl_allocated.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end144.if.end152.thread_crit_edge, label %if.then.i475

if.end144.if.end152.thread_crit_edge:             ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end152.thread

if.then.i475:                                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #23
  %virtual_map.i = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 12
  %129 = ptrtoint ptr %virtual_map.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load2.i = load i8, ptr %virtual_map.i, align 2
  %bf.set.i = or i8 %bf.load2.i, 8
  store i8 %bf.set.i, ptr %virtual_map.i, align 2
  br label %if.end152.thread

if.end152.thread:                                 ; preds = %if.then.i475, %if.end144.if.end152.thread_crit_edge
  %130 = getelementptr inbounds %struct.irdma_pbl, ptr %121, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %conv6.i = zext i32 %132 to i64
  %sq_pa7.i = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 5
  %133 = ptrtoint ptr %sq_pa7.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %conv6.i, ptr %sq_pa7.i, align 8
  %conv4.sink.in.in.i = getelementptr inbounds %struct.irdma_pbl, ptr %121, i32 0, i32 1, i32 0, i32 1
  %134 = ptrtoint ptr %conv4.sink.in.in.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %conv4.sink.in.i = load i32, ptr %conv4.sink.in.in.i, align 4
  %conv4.sink.i = zext i32 %conv4.sink.in.i to i64
  %135 = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 6
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv4.sink.i, ptr %135, align 8
  br label %if.end172

if.else148:                                       ; preds = %if.end67
  %abi_ver150 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 16
  %137 = ptrtoint ptr %abi_ver150 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 5, ptr %abi_ver150, align 4
  %kqp.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sqdepth.i) #21
  %138 = ptrtoint ptr %sqdepth.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %sqdepth.i, align 4, !annotation !271
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rqdepth.i) #21
  %139 = ptrtoint ptr %rqdepth.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %rqdepth.i, align 4, !annotation !271
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sqshift.i) #21
  %140 = ptrtoint ptr %sqshift.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -1, ptr %sqshift.i, align 1, !annotation !271
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rqshift.i) #21
  %141 = ptrtoint ptr %rqshift.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %rqshift.i, align 1, !annotation !271
  %142 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rf2, align 8
  %hw_attrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %143, i32 0, i32 42, i32 25
  %hw_rev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %143, i32 0, i32 42, i32 25, i32 0, i32 9
  %144 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %145)
  %cmp.i478 = icmp ugt i8 %145, 1
  %146 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_sq_frag_cnt, align 4
  %add.i479 = zext i1 %cmp.i478 to i32
  %cond.i = add i32 %147, %add.i479
  %148 = ptrtoint ptr %max_inline_data19 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %max_inline_data19, align 4
  call void @irdma_get_wqe_shift(ptr noundef %hw_attrs.i, i32 noundef %cond.i, i32 noundef %149, ptr noundef nonnull %sqshift.i) #21
  %150 = ptrtoint ptr %sq_size10 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sq_size10, align 4
  %152 = ptrtoint ptr %sqshift.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %sqshift.i, align 1
  %call.i481 = call i32 @irdma_get_sqdepth(ptr noundef %hw_attrs.i, i32 noundef %151, i8 noundef zeroext %153, ptr noundef nonnull %sqdepth.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i481)
  %tobool.not.i482 = icmp eq i32 %call.i481, 0
  br i1 %tobool.not.i482, label %if.end.i483, label %if.else148.do.body155_crit_edge

if.else148.do.body155_crit_edge:                  ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body155

if.end.i483:                                      ; preds = %if.else148
  %154 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %hw_rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp6.i = icmp eq i8 %155, 1
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i484

if.then8.i:                                       ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #23
  %156 = ptrtoint ptr %rqshift.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 2, ptr %rqshift.i, align 1
  br label %if.end9.i485

if.else.i484:                                     ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #23
  %157 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max_rq_frag_cnt, align 8
  call void @irdma_get_wqe_shift(ptr noundef %hw_attrs.i, i32 noundef %158, i32 noundef 0, ptr noundef nonnull %rqshift.i) #21
  br label %if.end9.i485

if.end9.i485:                                     ; preds = %if.else.i484, %if.then8.i
  %159 = ptrtoint ptr %rq_size12 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rq_size12, align 8
  %161 = ptrtoint ptr %rqshift.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %rqshift.i, align 1
  %call10.i = call i32 @irdma_get_rqdepth(ptr noundef %hw_attrs.i, i32 noundef %160, i8 noundef zeroext %162, ptr noundef nonnull %rqdepth.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i485.do.body155_crit_edge

if.end9.i485.do.body155_crit_edge:                ; preds = %if.end9.i485
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body155

if.end13.i:                                       ; preds = %if.end9.i485
  %163 = ptrtoint ptr %sqdepth.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sqdepth.i, align 4
  %165 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %164, i32 16) #21
  %166 = extractvalue { i32, i1 } %165, 1
  br i1 %166, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !267

kcalloc.exit.thread.i:                            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #23
  %sq_wrid_mem170.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 1
  %167 = ptrtoint ptr %sq_wrid_mem170.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %sq_wrid_mem170.i, align 4
  br label %do.body155

if.end7.i.i.i:                                    ; preds = %if.end13.i
  %168 = extractvalue { i32, i1 } %165, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %168, i32 noundef 3520) #28
  %sq_wrid_mem.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 1
  %169 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call8.i.i.i, ptr %sq_wrid_mem.i, align 4
  %tobool18.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool18.not.i, label %if.end7.i.i.i.do.body155_crit_edge, label %if.end20.i

if.end7.i.i.i.do.body155_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body155

if.end20.i:                                       ; preds = %if.end7.i.i.i
  %170 = ptrtoint ptr %rqdepth.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rqdepth.i, align 4
  %172 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %171, i32 8) #21
  %173 = extractvalue { i32, i1 } %172, 1
  br i1 %173, label %kcalloc.exit168.thread.i, label %if.end7.i.i166.i, !prof !267

kcalloc.exit168.thread.i:                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #23
  %rq_wrid_mem178.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 2
  %174 = ptrtoint ptr %rq_wrid_mem178.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %rq_wrid_mem178.i, align 8
  br label %if.then26.i

if.end7.i.i166.i:                                 ; preds = %if.end20.i
  %175 = extractvalue { i32, i1 } %172, 0
  %call8.i.i165.i = call noalias align 128 ptr @__kmalloc(i32 noundef %175, i32 noundef 3520) #28
  %rq_wrid_mem.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 2
  %176 = ptrtoint ptr %rq_wrid_mem.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call8.i.i165.i, ptr %rq_wrid_mem.i, align 8
  %tobool25.not.i = icmp eq ptr %call8.i.i165.i, null
  br i1 %tobool25.not.i, label %if.end7.i.i166.i.if.then26.i_crit_edge, label %if.end31.i

if.end7.i.i166.i.if.then26.i_crit_edge:           ; preds = %if.end7.i.i166.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end7.i.i166.i.if.then26.i_crit_edge, %kcalloc.exit168.thread.i
  %177 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sq_wrid_mem.i, align 4
  call void @kfree(ptr noundef %178) #21
  %179 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %sq_wrid_mem.i, align 4
  br label %do.body155

if.end31.i:                                       ; preds = %if.end7.i.i166.i
  %180 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sq_wrid_mem.i, align 4
  %sq_wrtrk_array.i = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 5
  %182 = ptrtoint ptr %sq_wrtrk_array.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %sq_wrtrk_array.i, align 4
  %183 = ptrtoint ptr %rq_wrid_mem.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rq_wrid_mem.i, align 8
  %rq_wrid_array.i = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 6
  %185 = ptrtoint ptr %rq_wrid_array.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %rq_wrid_array.i, align 8
  %186 = ptrtoint ptr %sqdepth.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sqdepth.i, align 4
  %188 = ptrtoint ptr %rqdepth.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rqdepth.i, align 4
  %add36.i = add i32 %189, %187
  %mul.i = shl i32 %add36.i, 5
  %add38.i = add i32 %mul.i, 319
  %and.i486 = and i32 %add38.i, -256
  %size39.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 0, i32 2
  %190 = ptrtoint ptr %size39.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %and.i486, ptr %size39.i, align 1
  %191 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rf2, align 8
  %device.i = getelementptr inbounds %struct.irdma_pci_f, ptr %192, i32 0, i32 45, i32 2
  %193 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %device.i, align 8
  %pa.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 36, i32 0, i32 1
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %194, i32 noundef %and.i486, ptr noundef %pa.i, i32 noundef 3264, i32 noundef 0) #21
  %195 = ptrtoint ptr %kqp.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 4)
  store ptr %call.i.i, ptr %kqp.i, align 1
  %tobool44.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end152

if.then45.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #23
  %196 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sq_wrid_mem.i, align 4
  call void @kfree(ptr noundef %197) #21
  %198 = ptrtoint ptr %sq_wrid_mem.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %sq_wrid_mem.i, align 4
  %199 = ptrtoint ptr %rq_wrid_mem.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rq_wrid_mem.i, align 8
  call void @kfree(ptr noundef %200) #21
  %201 = ptrtoint ptr %rq_wrid_mem.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %rq_wrid_mem.i, align 8
  br label %do.body155

if.end152:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #23
  %202 = ptrtoint ptr %init_info to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call.i.i, ptr %init_info, align 8
  %203 = ptrtoint ptr %pa.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %pa.i, align 1
  %conv57.i = zext i32 %204 to i64
  %sq_pa.i = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 5
  %205 = ptrtoint ptr %sq_pa.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %conv57.i, ptr %sq_pa.i, align 8
  %206 = ptrtoint ptr %sqdepth.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sqdepth.i, align 4
  %arrayidx.i = getelementptr %struct.irdma_qp_quanta, ptr %call.i.i, i32 %207
  %rq.i = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 1
  %208 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %arrayidx.i, ptr %rq.i, align 4
  %mul60.i = shl i32 %207, 5
  %conv61.i = zext i32 %mul60.i to i64
  %add62.i = add nuw nsw i64 %conv61.i, %conv57.i
  %rq_pa.i = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 6
  %209 = ptrtoint ptr %rq_pa.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %add62.i, ptr %rq_pa.i, align 8
  %210 = ptrtoint ptr %rqdepth.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rqdepth.i, align 4
  %arrayidx64.i = getelementptr %struct.irdma_qp_quanta, ptr %arrayidx.i, i32 %211
  %shadow_area.i = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 4
  %212 = ptrtoint ptr %shadow_area.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %arrayidx64.i, ptr %shadow_area.i, align 8
  %mul66.i = shl i32 %211, 5
  %conv67.i = zext i32 %mul66.i to i64
  %add68.i = add nuw nsw i64 %add62.i, %conv67.i
  %shadow_area_pa.i487 = getelementptr inbounds %struct.irdma_qp_init_info, ptr %init_info, i32 0, i32 9
  %213 = ptrtoint ptr %shadow_area_pa.i487 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %add68.i, ptr %shadow_area_pa.i487, align 8
  %214 = ptrtoint ptr %sqshift.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %sqshift.i, align 1
  %conv69.i = zext i8 %215 to i32
  %shr.i = lshr i32 %207, %conv69.i
  %216 = ptrtoint ptr %sq_size10 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %shr.i, ptr %sq_size10, align 4
  %217 = ptrtoint ptr %rqshift.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rqshift.i, align 1
  %conv71.i = zext i8 %218 to i32
  %shr72.i = lshr i32 %211, %conv71.i
  %219 = ptrtoint ptr %rq_size12 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %shr72.i, ptr %rq_size12, align 8
  %220 = ptrtoint ptr %qp_num47 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %qp_num47, align 4
  %222 = ptrtoint ptr %qp_id to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %qp_id, align 4
  %sub.i = add i32 %207, -258
  %shr75.i = lshr i32 %sub.i, %conv69.i
  %223 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %shr75.i, ptr %cap, align 4
  %sub76.i = add i32 %211, -1
  %shr78.i = lshr i32 %sub76.i, %conv71.i
  %224 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %shr78.i, ptr %max_recv_wr, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rqshift.i) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sqshift.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqdepth.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sqdepth.i) #21
  br label %if.end172

do.body155:                                       ; preds = %if.then45.i, %if.then26.i, %if.end7.i.i.i.do.body155_crit_edge, %kcalloc.exit.thread.i, %if.end9.i485.do.body155_crit_edge, %if.else148.do.body155_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rqshift.i) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sqshift.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rqdepth.i) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sqdepth.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_qp.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then167)) #21
          to label %error [label %if.then167], !srcloc !259

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_qp.__UNIQUE_ID_ddebug696, ptr noundef %3, ptr noundef nonnull @.str.51) #21
  br label %error

if.end172:                                        ; preds = %if.end152, %if.end152.thread
  %225 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i490 = getelementptr %struct.ib_port_data, ptr %226, i32 1, i32 1, i32 2
  %227 = ptrtoint ptr %core_cap_flags.i490 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %core_cap_flags.i490, align 4
  %and.i491 = and i32 %228, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i491)
  %tobool.i492.not = icmp eq i32 %and.i491, 0
  br i1 %tobool.i492.not, label %if.else188, label %if.then175

if.then175:                                       ; preds = %if.end172
  %229 = ptrtoint ptr %qp_type19.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %qp_type19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %230)
  %cmp177 = icmp eq i32 %230, 2
  %type = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 15
  br i1 %cmp177, label %if.then179, label %if.else182

if.then179:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #23
  %231 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 3, ptr %type, align 1
  br label %if.end193

if.else182:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #23
  %232 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 4, ptr %type, align 1
  br label %if.end193

if.else188:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #23
  %type190 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 15
  %233 = ptrtoint ptr %type190 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %type190, align 1
  br label %if.end193

if.end193:                                        ; preds = %if.else188, %if.else182, %if.then179
  %.sink = phi i32 [ 7, %if.then179 ], [ 6, %if.else182 ], [ 1, %if.else188 ]
  %qp_caps = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 8
  %234 = ptrtoint ptr %qp_caps to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %.sink, ptr %qp_caps, align 8
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 25, i32 0, i32 9
  %235 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %236)
  %cmp197 = icmp ugt i8 %236, 1
  br i1 %cmp197, label %if.then199, label %if.end193.if.end202_crit_edge

if.end193.if.end202_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end202

if.then199:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #23
  %qp_caps201 = getelementptr inbounds %struct.irdma_qp_uk_init_info, ptr %init_info, i32 0, i32 8
  %237 = ptrtoint ptr %qp_caps201 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %qp_caps201, align 8
  %or = or i32 %238, 8
  store i32 %or, ptr %qp_caps201, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %if.end193.if.end202_crit_edge
  %call203 = call i32 @irdma_sc_qp_init(ptr noundef %sc_qp, ptr noundef nonnull %init_info) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end223, label %if.then205

if.then205:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_qp.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then218)) #21
          to label %error [label %if.then218], !srcloc !259

if.then218:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_qp.__UNIQUE_ID_ddebug697, ptr noundef %3, ptr noundef nonnull @.str.52) #21
  br label %error

if.end223:                                        ; preds = %if.end202
  %239 = ptrtoint ptr %iwscq to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %iwscq, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq, ptr %240, i32 0, i32 1, i32 0, i32 4
  %241 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %cq_id, align 8
  %send_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 3
  %243 = ptrtoint ptr %send_cq_num to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %send_cq_num, align 8
  %244 = ptrtoint ptr %iwrcq to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %iwrcq, align 8
  %cq_id229 = getelementptr inbounds %struct.irdma_cq, ptr %245, i32 0, i32 1, i32 0, i32 4
  %246 = ptrtoint ptr %cq_id229 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %cq_id229, align 8
  %rcv_cq_num = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 9, i32 4
  %248 = ptrtoint ptr %rcv_cq_num to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %rcv_cq_num, align 4
  %249 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i494 = getelementptr %struct.ib_port_data, ptr %250, i32 1, i32 1, i32 2
  %251 = ptrtoint ptr %core_cap_flags.i494 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %core_cap_flags.i494, align 4
  %and.i495 = and i32 %252, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i495)
  %tobool.i496.not = icmp eq i32 %and.i495, 0
  br i1 %tobool.i496.not, label %if.else233, label %if.then232

if.then232:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #23
  call fastcc void @irdma_roce_fill_and_set_qpctx_info(ptr noundef %ibqp, ptr noundef %ctx_info69)
  br label %if.end234

if.else233:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #23
  call fastcc void @irdma_iw_fill_and_set_qpctx_info(ptr noundef %ibqp, ptr noundef %ctx_info69)
  br label %if.end234

if.end234:                                        ; preds = %if.else233, %if.then232
  %call235 = call fastcc i32 @irdma_cqp_create_qp_cmd(ptr noundef %ibqp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end238, label %if.end234.error_crit_edge

if.end234.error_crit_edge:                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end238:                                        ; preds = %if.end234
  %refcnt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #21
  %253 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile i32 1, ptr %refcnt, align 4
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 25
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.54, ptr noundef nonnull @irdma_create_qp.__key.53, i16 noundef signext 3) #21
  %lock245 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 12, i32 18
  call void @__raw_spin_lock_init(ptr noundef %lock245, ptr noundef nonnull @.str.56, ptr noundef nonnull @irdma_create_qp.__key.55, i16 noundef signext 3) #21
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %254 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %sq_sig_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp249 = icmp eq i32 %255, 0
  %sig_all = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %256 = ptrtoint ptr %sig_all to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load253 = load i8, ptr %sig_all, align 8
  %bf.shl = select i1 %cmp249, i8 8, i8 0
  %bf.clear254 = and i8 %bf.load253, -9
  %bf.set255 = or i8 %bf.clear254, %bf.shl
  store i8 %bf.set255, ptr %sig_all, align 8
  %qp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 55
  %257 = ptrtoint ptr %qp_table to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %qp_table, align 8
  %arrayidx = getelementptr ptr, ptr %258, i32 %qp_num.1.ph
  %259 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %ibqp, ptr %arrayidx, align 4
  %max_send_wr256 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 22
  %260 = ptrtoint ptr %max_send_wr256 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %30, ptr %max_send_wr256, align 8
  %max_recv_wr257 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 23
  %261 = ptrtoint ptr %max_recv_wr257 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %32, ptr %max_recv_wr257, align 4
  %262 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i498 = getelementptr %struct.ib_port_data, ptr %263, i32 1, i32 1, i32 2
  %264 = ptrtoint ptr %core_cap_flags.i498 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %core_cap_flags.i498, align 4
  %and.i499 = and i32 %265, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i499)
  %tobool.i500.not = icmp eq i32 %and.i499, 0
  br i1 %tobool.i500.not, label %if.end238.if.end270_crit_edge, label %if.then260

if.end238.if.end270_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end270

if.then260:                                       ; preds = %if.end238
  %ws_add = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 42, i32 40
  %266 = ptrtoint ptr %ws_add to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ws_add, align 4
  %call262 = call i32 %267(ptr noundef %vsi, i8 noundef zeroext 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end268, label %if.then264

if.then264:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #23
  %call267 = call i32 @irdma_cqp_qp_destroy_cmd(ptr noundef %sc_dev, ptr noundef %sc_qp) #21
  br label %error

if.end268:                                        ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #23
  call void @irdma_qp_add_qos(ptr noundef %sc_qp) #21
  br label %if.end270

if.end270:                                        ; preds = %if.end268, %if.end238.if.end270_crit_edge
  br i1 %tobool73.not, label %if.end270.if.end319_crit_edge, label %if.then272

if.end270.if.end319_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end319

if.then272:                                       ; preds = %if.end270
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %268 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %outlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %269)
  %cmp273 = icmp ult i32 %269, 24
  br i1 %cmp273, label %if.then275, label %if.else277

if.then275:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #23
  %lsmm = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 5
  %270 = ptrtoint ptr %lsmm to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 1, ptr %lsmm, align 2
  %push_idx276 = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 4
  %271 = ptrtoint ptr %push_idx276 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 -1, ptr %push_idx276, align 4
  br label %if.end283

if.else277:                                       ; preds = %if.then272
  %272 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i502 = getelementptr %struct.ib_port_data, ptr %273, i32 1, i32 1, i32 2
  %274 = ptrtoint ptr %core_cap_flags.i502 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %core_cap_flags.i502, align 4
  %and.i503 = and i32 %275, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i503)
  %tobool.i504.not = icmp eq i32 %and.i503, 0
  br i1 %tobool.i504.not, label %if.else277.if.end283_crit_edge, label %if.then280

if.else277.if.end283_crit_edge:                   ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end283

if.then280:                                       ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #23
  %lsmm281 = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 5
  %276 = ptrtoint ptr %lsmm281 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 1, ptr %lsmm281, align 2
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %if.else277.if.end283_crit_edge, %if.then275
  %actual_sq_size = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 1
  %277 = ptrtoint ptr %actual_sq_size to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %30, ptr %actual_sq_size, align 4
  %actual_rq_size = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 2
  %278 = ptrtoint ptr %actual_rq_size to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %32, ptr %actual_rq_size, align 4
  %279 = ptrtoint ptr %uresp to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %qp_num.1.ph, ptr %uresp, align 4
  %qp_caps286 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 13
  %280 = ptrtoint ptr %qp_caps286 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %qp_caps286, align 4
  %qp_caps287 = getelementptr inbounds %struct.irdma_create_qp_resp, ptr %uresp, i32 0, i32 7
  %282 = ptrtoint ptr %qp_caps287 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %qp_caps287, align 4
  %283 = call i32 @llvm.umin.i32(i32 %269, i32 24)
  %call296 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %uresp, i32 noundef %283)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %if.end283.if.end319_crit_edge, label %do.body299

if.end283.if.end319_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end319

do.body299:                                       ; preds = %if.end283
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_qp.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_qp, %if.then311)) #21
          to label %do.end315 [label %if.then311], !srcloc !259

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_qp.__UNIQUE_ID_ddebug700, ptr noundef %3, ptr noundef nonnull @.str.7) #21
  br label %do.end315

do.end315:                                        ; preds = %if.then311, %do.body299
  %call317 = call i32 @irdma_destroy_qp(ptr noundef %ibqp, ptr noundef nonnull %udata)
  br label %cleanup320

if.end319:                                        ; preds = %if.end283.if.end319_crit_edge, %if.end270.if.end319_crit_edge
  %free_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 42
  %284 = ptrtoint ptr %free_qp to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %free_qp, align 4
  %wait.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 42, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @init_completion.__key) #21
  br label %cleanup320

error:                                            ; preds = %if.then264, %if.end234.error_crit_edge, %if.then218, %if.then205, %if.then167, %do.body155, %if.then138, %if.then125, %if.then86, %do.body80, %if.then18.i, %if.then11.i
  %err_code.4 = phi i32 [ %call77, %if.then86 ], [ -12, %if.then167 ], [ -71, %if.then218 ], [ %call235, %if.end234.error_crit_edge ], [ -22, %if.then264 ], [ -75, %if.then18.i ], [ -75, %if.then11.i ], [ %call77, %do.body80 ], [ -61, %if.then138 ], [ -61, %if.then125 ], [ -12, %do.body155 ], [ -71, %if.then205 ]
  call void @irdma_free_qp_rsrc(ptr noundef %ibqp) #21
  br label %cleanup320

cleanup320:                                       ; preds = %error, %if.end319, %do.end315, %if.end.cleanup320_crit_edge, %if.else.i.cleanup320_crit_edge, %if.then10.i.cleanup320_crit_edge, %lor.lhs.false4.i.cleanup320_crit_edge, %lor.lhs.false.i.cleanup320_crit_edge, %if.end.i.cleanup320_crit_edge, %entry.cleanup320_crit_edge
  %retval.0 = phi i32 [ %err_code.4, %error ], [ %call296, %do.end315 ], [ 0, %if.end319 ], [ -12, %if.end.cleanup320_crit_edge ], [ -95, %if.else.i.cleanup320_crit_edge ], [ -95, %if.then10.i.cleanup320_crit_edge ], [ -22, %if.end.i.cleanup320_crit_edge ], [ -22, %lor.lhs.false.i.cleanup320_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup320_crit_edge ], [ -95, %entry.cleanup320_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %init_info) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %uresp) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #21
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_query_qp(ptr noundef readonly %ibqp, ptr nocapture noundef %attr, i32 noundef %attr_mask, ptr nocapture noundef writeonly %init_attr) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %attr, i32 0, i32 216)
  %1 = call ptr @memset(ptr %init_attr, i32 0, i32 72)
  %ibqp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 19
  %2 = ptrtoint ptr %ibqp_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibqp_state, align 4
  %4 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %attr, align 8
  %5 = load i32, ptr %ibqp_state, align 4
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cur_qp_state, align 4
  %max_send_wr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 22
  %7 = ptrtoint ptr %max_send_wr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_send_wr, align 8
  %cap = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9
  %9 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 23
  %10 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr4 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %max_recv_wr4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_recv_wr4, align 4
  %max_inline_data = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 18
  %13 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_inline_data, align 8
  %max_inline_data6 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %max_inline_data6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_inline_data6, align 4
  %max_sq_frag_cnt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 16
  %16 = ptrtoint ptr %max_sq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_sq_frag_cnt, align 8
  %max_send_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_send_sge, align 4
  %max_rq_frag_cnt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 17
  %19 = ptrtoint ptr %max_rq_frag_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_rq_frag_cnt, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_recv_sge, align 4
  %22 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ibqp, align 8
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %25, i32 1, i32 1, i32 2
  %26 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %27, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 10
  %28 = ptrtoint ptr %wr_rdresp_en.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %wr_rdresp_en.i, align 8
  %29 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.not.i = icmp eq i16 %29, 0
  %spec.select.i = select i1 %bf.cast.not.i, i32 0, i32 3
  %30 = lshr i16 %bf.load.i, 5
  %31 = and i16 %30, 4
  %32 = zext i16 %31 to i32
  %33 = or i32 %spec.select.i, %32
  %34 = lshr i16 %bf.load.i, 6
  br label %irdma_get_ib_acc_flags.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %wr_rdresp_en17.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %35 = ptrtoint ptr %wr_rdresp_en17.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load18.i = load i16, ptr %wr_rdresp_en17.i, align 4
  %36 = and i16 %bf.load18.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %bf.cast21.not.i = icmp eq i16 %36, 0
  %spec.select57.i = select i1 %bf.cast21.not.i, i32 0, i32 3
  %37 = lshr i16 %bf.load18.i, 3
  %38 = and i16 %37, 4
  %39 = zext i16 %38 to i32
  %40 = or i32 %spec.select57.i, %39
  %41 = lshr i16 %bf.load18.i, 4
  br label %irdma_get_ib_acc_flags.exit

irdma_get_ib_acc_flags.exit:                      ; preds = %if.else.i, %if.then.i
  %.sink62.i = phi i16 [ %41, %if.else.i ], [ %34, %if.then.i ]
  %.sink.i = phi i32 [ %40, %if.else.i ], [ %33, %if.then.i ]
  %42 = and i16 %.sink62.i, 16
  %43 = zext i16 %42 to i32
  %44 = or i32 %.sink.i, %43
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 8
  %45 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %qp_access_flags, align 8
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 19
  %46 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %port_num, align 4
  %47 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ibqp, align 4
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %50, i32 1, i32 1, i32 2
  %51 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %52, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %irdma_get_ib_acc_flags.exit.if.end_crit_edge, label %if.then

irdma_get_ib_acc_flags.exit.if.end_crit_edge:     ; preds = %irdma_get_ib_acc_flags.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %irdma_get_ib_acc_flags.exit
  %53 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11
  %snd_mss = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %snd_mss to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %snd_mss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %55)
  %cmp.i = icmp sgt i32 %55, 4095
  br i1 %cmp.i, label %if.then.ib_mtu_int_to_enum.exit_crit_edge, label %if.else.i73

if.then.ib_mtu_int_to_enum.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else.i73:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %55)
  %cmp1.i = icmp sgt i32 %55, 2047
  br i1 %cmp1.i, label %if.else.i73.ib_mtu_int_to_enum.exit_crit_edge, label %if.else3.i

if.else.i73.ib_mtu_int_to_enum.exit_crit_edge:    ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else3.i:                                       ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %55)
  %cmp4.i = icmp sgt i32 %55, 1023
  br i1 %cmp4.i, label %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge, label %if.else6.i

if.else3.i.ib_mtu_int_to_enum.exit_crit_edge:     ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_int_to_enum.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %55)
  %cmp7.i = icmp sgt i32 %55, 511
  %..i = select i1 %cmp7.i, i32 2, i32 1
  br label %ib_mtu_int_to_enum.exit

ib_mtu_int_to_enum.exit:                          ; preds = %if.else6.i, %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge, %if.else.i73.ib_mtu_int_to_enum.exit_crit_edge, %if.then.ib_mtu_int_to_enum.exit_crit_edge
  %retval.0.i = phi i32 [ 5, %if.then.ib_mtu_int_to_enum.exit_crit_edge ], [ 4, %if.else.i73.ib_mtu_int_to_enum.exit_crit_edge ], [ 3, %if.else3.i.ib_mtu_int_to_enum.exit_crit_edge ], [ %..i, %if.else6.i ]
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 2
  %56 = ptrtoint ptr %path_mtu to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i, ptr %path_mtu, align 8
  %57 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10
  %qkey = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 2
  %58 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qkey, align 4
  %qkey14 = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 4
  %60 = ptrtoint ptr %qkey14 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %qkey14, align 8
  %epsn = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 17
  %61 = ptrtoint ptr %epsn to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %epsn, align 8
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 5
  %63 = ptrtoint ptr %rq_psn to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rq_psn, align 4
  %psn_nxt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 13
  %64 = ptrtoint ptr %psn_nxt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %psn_nxt, align 8
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 6
  %66 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %sq_psn, align 8
  %dest_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 3
  %67 = ptrtoint ptr %dest_qp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dest_qp, align 8
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 7
  %69 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dest_qp_num, align 4
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %57, align 8
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 12
  %72 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %pkey_index, align 8
  %rexmit_thresh = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 11, i32 0, i32 25
  %73 = ptrtoint ptr %rexmit_thresh to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rexmit_thresh, align 8
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 21
  %75 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %retry_cnt, align 1
  %rnr_nak_thresh = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %53, i32 0, i32 19
  %76 = ptrtoint ptr %rnr_nak_thresh to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rnr_nak_thresh, align 1
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 22
  %78 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %rnr_retry, align 2
  %ord_size = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 8
  %79 = ptrtoint ptr %ord_size to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ord_size, align 4
  %conv = trunc i16 %80 to i8
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 16
  %81 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv, ptr %max_rd_atomic, align 2
  %ird_size = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 10, i32 0, i32 9
  %82 = ptrtoint ptr %ird_size to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ird_size, align 2
  %conv15 = trunc i16 %83 to i8
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %attr, i32 0, i32 17
  %84 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv15, ptr %max_dest_rd_atomic, align 1
  br label %if.end

if.end:                                           ; preds = %ib_mtu_int_to_enum.exit, %irdma_get_ib_acc_flags.exit.if.end_crit_edge
  %event_handler = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 15
  %85 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %event_handler, align 4
  %87 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %init_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 16
  %88 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %qp_context, align 8
  %qp_context19 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 1
  %90 = ptrtoint ptr %qp_context19 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %qp_context19, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 2
  %91 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %send_cq, align 8
  %send_cq21 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %93 = ptrtoint ptr %send_cq21 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %send_cq21, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 3
  %94 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %recv_cq, align 4
  %recv_cq23 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %96 = ptrtoint ptr %recv_cq23 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %recv_cq23, align 4
  %cap24 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %97 = call ptr @memcpy(ptr %cap24, ptr %cap, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_destroy_qp(ptr noundef %ibqp, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2
  %destroy_pending = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 2, i32 0, i32 27
  %2 = ptrtoint ptr %destroy_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %destroy_pending, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, ptr %destroy_pending, align 4
  %iwarp_state = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 31
  %3 = ptrtoint ptr %iwarp_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iwarp_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @irdma_modify_qp_to_err(ptr noundef %sc_qp) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @irdma_qp_rem_ref(ptr noundef %ibqp) #21
  %free_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 42
  tail call void @wait_for_completion(ptr noundef %free_qp) #21
  tail call void @irdma_free_lsmm_rsrc(ptr noundef %ibqp) #21
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %6, i32 0, i32 42
  %call6 = tail call i32 @irdma_cqp_qp_destroy_cmd(ptr noundef %sc_dev, ptr noundef %sc_qp) #21
  %user_mode = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 30
  %7 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load7 = load i8, ptr %user_mode, align 8
  %8 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20

if.then9:                                         ; preds = %if.end
  %iwscq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 4
  %9 = ptrtoint ptr %iwscq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iwscq, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.then9.if.end20_crit_edge, label %if.then11

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20

if.then11:                                        ; preds = %if.then9
  %sc_cq.i = getelementptr inbounds %struct.irdma_cq, ptr %10, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.irdma_cq, ptr %10, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #21
  tail call void @irdma_uk_clean_cq(ptr noundef %sc_qp, ptr noundef %sc_cq.i) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #21
  %iwrcq = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 5
  %11 = ptrtoint ptr %iwrcq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iwrcq, align 8
  %13 = ptrtoint ptr %iwscq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iwscq, align 4
  %cmp14.not = icmp eq ptr %12, %14
  br i1 %cmp14.not, label %if.then11.if.end20_crit_edge, label %if.then16

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end20

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  %sc_cq.i39 = getelementptr inbounds %struct.irdma_cq, ptr %12, i32 0, i32 1
  %lock.i40 = getelementptr inbounds %struct.irdma_cq, ptr %12, i32 0, i32 12
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i40) #21
  tail call void @irdma_uk_clean_cq(ptr noundef %sc_qp, ptr noundef %sc_cq.i39) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i40, i32 noundef %call2.i41) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then11.if.end20_crit_edge, %if.then9.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %push_db_mmap_entry.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 8
  %15 = ptrtoint ptr %push_db_mmap_entry.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %push_db_mmap_entry.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end20.if.end.i_crit_edge, label %if.then.i

if.end20.if.end.i_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %16) #21
  %17 = ptrtoint ptr %push_db_mmap_entry.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %push_db_mmap_entry.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end20.if.end.i_crit_edge
  %push_wqe_mmap_entry.i = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 7
  %18 = ptrtoint ptr %push_wqe_mmap_entry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %push_wqe_mmap_entry.i, align 8
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge, label %if.then4.i

if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_remove_push_mmap_entries.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @rdma_user_mmap_entry_remove(ptr noundef nonnull %19) #21
  %20 = ptrtoint ptr %push_wqe_mmap_entry.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %push_wqe_mmap_entry.i, align 8
  br label %irdma_remove_push_mmap_entries.exit

irdma_remove_push_mmap_entries.exit:              ; preds = %if.then4.i, %if.end.i.irdma_remove_push_mmap_entries.exit_crit_edge
  tail call void @irdma_free_qp_rsrc(ptr noundef %ibqp) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) #0 align 64 {
entry:
  %info = alloca %struct.irdma_cq_init_info, align 8
  %req = alloca %struct.irdma_create_cq_req, align 8
  %resp = alloca %struct.irdma_create_cq_resp, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf1, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %info) #21
  %4 = call ptr @memset(ptr %info, i32 0, i32 80)
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 4
  %flags3 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags3, align 4
  %hw_attrs = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 0, i32 9
  %9 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %tobool2.not.i = icmp ult i32 %8, 2
  %cond3.i = select i1 %tobool2.not.i, i32 0, i32 -95
  %retval.0.i386 = select i1 %cmp.i, i32 %cond.i, i32 %cond3.i
  %tobool.not = select i1 %cmp.i, i1 %tobool.not.i, i1 %tobool2.not.i
  br i1 %tobool.not, label %if.end, label %entry.cleanup257_crit_edge

entry.cleanup257_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup257

if.end:                                           ; preds = %entry
  %allocated_cqs = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 35
  %11 = ptrtoint ptr %allocated_cqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %allocated_cqs, align 4
  %max_cq = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %max_cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_cq, align 4
  %next_cq = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 18
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %15 = ptrtoint ptr %next_cq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_cq, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %12, i32 noundef %14, i32 noundef %16) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %14)
  %cmp6.not.i = icmp ult i32 %call5.i, %14
  br i1 %cmp6.not.i, label %if.end.if.end8_crit_edge, label %if.then.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %12, i32 noundef %14) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %14)
  %cmp9.not.i = icmp ult i32 %call8.i, %14
  br i1 %cmp9.not.i, label %if.then.i.if.end8_crit_edge, label %if.then11.i

if.then.i.if.end8_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_cq, %if.then18.i)) #21
          to label %cleanup257 [label %if.then18.i], !srcloc !259

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #23
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 71
  %17 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %18, ptr noundef nonnull @.str.18, i32 noundef %call8.i) #21
  br label %cleanup257

if.end8:                                          ; preds = %if.then.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end8_crit_edge ], [ %call5.i, %if.end.if.end8_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %12, i32 %div2.i.i
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %20
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp23.i = icmp eq i32 %add.i, %14
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %21 = ptrtoint ptr %next_cq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.i, ptr %next_cq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1
  %back_cq = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %back_cq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ibcq, ptr %back_cq, align 4
  %lock = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.58, ptr noundef nonnull @irdma_create_cq.__key, i16 noundef signext 3) #21
  %resize_list = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 15
  %23 = ptrtoint ptr %resize_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resize_list, ptr %resize_list, align 4
  %prev.i = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resize_list, ptr %prev.i, align 4
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sc_dev, ptr %info, align 8
  %26 = tail call i32 @llvm.smax.i32(i32 %6, i32 4)
  %cq_size = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 10, i32 4
  %27 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cq_size, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 10, i32 5
  %28 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rsrc_num.0.i, ptr %cq_id, align 8
  %cqe14 = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %29 = ptrtoint ptr %cqe14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %cqe14, align 4
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %30 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %comp_vector, align 4
  %ceqs_count = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 29
  %32 = ptrtoint ptr %ceqs_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ceqs_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp15 = icmp ult i32 %31, %33
  br i1 %cmp15, label %if.then16, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end18

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %ceq_id = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 3
  %34 = ptrtoint ptr %ceq_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %ceq_id, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end8.if.end18_crit_edge
  %ceq_id_valid = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 7
  %35 = ptrtoint ptr %ceq_id_valid to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %ceq_id_valid, align 8
  %bf.set21 = or i8 %bf.load, 96
  store i8 %bf.set21, ptr %ceq_id_valid, align 8
  %type = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 9
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %type, align 2
  %vsi = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4
  %vsi22 = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 11
  %37 = ptrtoint ptr %vsi22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vsi, ptr %vsi22, align 8
  %tobool23.not = icmp eq ptr %udata, null
  br i1 %tobool23.not, label %if.else106, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #21
  %38 = call ptr @memset(ptr %req, i32 0, i32 16)
  %user_mode = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 5
  %39 = ptrtoint ptr %user_mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %user_mode, align 2
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %40 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %context, align 4
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %42 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inlen, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 16)
  %call38 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %req, ptr noundef nonnull %udata, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body43, label %if.then24.cleanup.thread_crit_edge

if.then24.cleanup.thread_crit_edge:               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

do.body43:                                        ; preds = %if.then24
  %cq_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %41, i32 0, i32 4
  %call47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_reg_mem_list_lock) #21
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %req, align 8
  %cq_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %41, i32 0, i32 3
  %conv.i = and i64 %46, 4294967295
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body43
  %iwpbl.0.in.i = phi ptr [ %cq_reg_mem_list, %do.body43 ], [ %iwpbl.0.i, %for.body.i.for.cond.i_crit_edge ]
  %47 = ptrtoint ptr %iwpbl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %iwpbl.0.i = load ptr, ptr %iwpbl.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %iwpbl.0.i, %cq_reg_mem_list
  br i1 %cmp.not.i, label %irdma_get_pbl.exit.thread, label %for.body.i

irdma_get_pbl.exit.thread:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock, i32 noundef %call47) #21
  br label %cleanup.thread

for.body.i:                                       ; preds = %for.cond.i
  %user_base.i = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %user_base.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %user_base.i, align 8
  %cmp1.i = icmp eq i64 %49, %conv.i
  br i1 %cmp1.i, label %if.then.i388, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

if.then.i388:                                     ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %iwpbl.0.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i388.irdma_get_pbl.exit_crit_edge

if.then.i388.irdma_get_pbl.exit_crit_edge:        ; preds = %if.then.i388
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_get_pbl.exit

if.end.i.i.i:                                     ; preds = %if.then.i388
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %iwpbl.0.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %iwpbl.0.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iwpbl.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %irdma_get_pbl.exit

irdma_get_pbl.exit:                               ; preds = %if.end.i.i.i, %if.then.i388.irdma_get_pbl.exit_crit_edge
  %56 = ptrtoint ptr %iwpbl.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %iwpbl.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iwpbl.0.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %on_list.i = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0.i, i32 0, i32 2
  %58 = ptrtoint ptr %on_list.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %on_list.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %on_list.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock, i32 noundef %call47) #21
  %tobool55.not = icmp eq ptr %iwpbl.0.i, null
  br i1 %tobool55.not, label %irdma_get_pbl.exit.cleanup.thread_crit_edge, label %if.end57

irdma_get_pbl.exit.cleanup.thread_crit_edge:      ; preds = %irdma_get_pbl.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end57:                                         ; preds = %irdma_get_pbl.exit
  %iwpbl58 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 13
  %59 = ptrtoint ptr %iwpbl58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %iwpbl.0.i, ptr %iwpbl58, align 8
  %cq_mem_size = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 9
  %60 = ptrtoint ptr %cq_mem_size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cq_mem_size, align 8
  %61 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0.i, i32 0, i32 1
  %62 = ptrtoint ptr %hw_attrs to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %hw_attrs, align 8
  %and = and i64 %63, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool62.not = icmp eq i64 %and, 0
  br i1 %tobool62.not, label %if.end57.if.else_crit_edge, label %land.lhs.true

if.end57.if.else_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true:                                    ; preds = %if.end57
  %legacy_mode = getelementptr inbounds %struct.irdma_ucontext, ptr %41, i32 0, i32 8
  %64 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %legacy_mode, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool63.not = icmp eq i8 %65, 0
  br i1 %tobool63.not, label %do.body66, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

do.body66:                                        ; preds = %land.lhs.true
  %call74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_reg_mem_list_lock) #21
  %user_shadow_area = getelementptr inbounds %struct.irdma_create_cq_req, ptr %req, i32 0, i32 1
  %66 = ptrtoint ptr %user_shadow_area to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %user_shadow_area, align 8
  %conv79 = trunc i64 %67 to i32
  %call81 = call fastcc ptr @irdma_get_pbl(i32 noundef %conv79, ptr noundef %cq_reg_mem_list)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock, i32 noundef %call74) #21
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %do.body66.cleanup.thread_crit_edge, label %if.end85

do.body66.cleanup.thread_crit_edge:               ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end85:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #23
  %iwpbl_shadow86 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 14
  %68 = ptrtoint ptr %iwpbl_shadow86 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call81, ptr %iwpbl_shadow86, align 4
  %69 = getelementptr inbounds %struct.irdma_pbl, ptr %call81, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %conv87 = zext i32 %71 to i64
  %shadow_area_pa = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 2
  %72 = ptrtoint ptr %shadow_area_pa to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv87, ptr %shadow_area_pa, align 8
  %split = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0.i, i32 0, i32 1, i32 0, i32 2
  %73 = ptrtoint ptr %split to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %split, align 4
  br label %if.end90

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end57.if.else_crit_edge
  %shadow = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0.i, i32 0, i32 1, i32 0, i32 1
  %74 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %shadow, align 4
  %conv88 = zext i32 %75 to i64
  %shadow_area_pa89 = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 2
  %76 = ptrtoint ptr %shadow_area_pa89 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv88, ptr %shadow_area_pa89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.end85
  %77 = ptrtoint ptr %on_list.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load91 = load i8, ptr %on_list.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load91)
  %bf.cast.not = icmp sgt i8 %bf.load91, -1
  br i1 %bf.cast.not, label %if.else97, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  %78 = ptrtoint ptr %ceq_id_valid to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load93 = load i8, ptr %ceq_id_valid, align 8
  %bf.set95 = or i8 %bf.load93, -128
  store i8 %bf.set95, ptr %ceq_id_valid, align 8
  %pbl_chunk_size = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 5
  %79 = ptrtoint ptr %pbl_chunk_size to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %pbl_chunk_size, align 8
  %80 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %61, align 4
  %first_pm_pbl_idx = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 6
  %82 = ptrtoint ptr %first_pm_pbl_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %first_pm_pbl_idx, align 4
  br label %cleanup

if.else97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #23
  %83 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %61, align 4
  %conv99 = zext i32 %84 to i64
  %cq_base_pa = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 1
  %85 = ptrtoint ptr %cq_base_pa to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv99, ptr %cq_base_pa, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %do.body66.cleanup.thread_crit_edge, %irdma_get_pbl.exit.cleanup.thread_crit_edge, %irdma_get_pbl.exit.thread, %if.then24.cleanup.thread_crit_edge
  %err_code.0.ph = phi i32 [ -71, %irdma_get_pbl.exit.thread ], [ -71, %do.body66.cleanup.thread_crit_edge ], [ -71, %irdma_get_pbl.exit.cleanup.thread_crit_edge ], [ -14, %if.then24.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #21
  br label %cq_free_rsrc

cleanup:                                          ; preds = %if.else97, %if.then92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #21
  br label %if.end168

if.else106:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp107 = icmp slt i32 %6, 1
  br i1 %cmp107, label %if.else106.cq_free_rsrc_crit_edge, label %lor.lhs.false

if.else106.cq_free_rsrc_crit_edge:                ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

lor.lhs.false:                                    ; preds = %if.else106
  %max_cqe = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 21
  %86 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_cqe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %87)
  %cmp109 = icmp ugt i32 %6, %87
  br i1 %cmp109, label %lor.lhs.false.cq_free_rsrc_crit_edge, label %if.end112

lor.lhs.false.cq_free_rsrc_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

if.end112:                                        ; preds = %lor.lhs.false
  %inc = add nuw i32 %6, 1
  %88 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp117 = icmp ugt i8 %89, 1
  %mul = zext i1 %cmp117 to i32
  %spec.select = shl i32 %inc, %mul
  %90 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %spec.select, ptr %cq_size, align 4
  %mul124 = shl i32 %spec.select, 5
  %sub = add i32 %mul124, -1
  %or = or i32 %sub, 255
  %add125 = add i32 %or, 256
  %and126 = and i32 %add125, -256
  %kmem = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 10
  %size = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 10, i32 2
  %91 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and126, ptr %size, align 4
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 8
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 8
  %device127 = getelementptr inbounds %struct.irdma_hw, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %device127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device127, align 4
  %pa = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 10, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %95, i32 noundef %and126, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #21
  %96 = ptrtoint ptr %kmem to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %kmem, align 4
  %tobool135.not = icmp eq ptr %call.i, null
  br i1 %tobool135.not, label %if.end112.cq_free_rsrc_crit_edge, label %if.end137

if.end112.cq_free_rsrc_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

if.end137:                                        ; preds = %if.end112
  %kmem_shadow = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 11
  %size138 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 11, i32 2
  %97 = ptrtoint ptr %size138 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 64, ptr %size138, align 8
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 8
  %device140 = getelementptr inbounds %struct.irdma_hw, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %device140 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device140, align 4
  %pa144 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 11, i32 1
  %call.i390 = tail call ptr @dma_alloc_attrs(ptr noundef %101, i32 noundef 64, ptr noundef %pa144, i32 noundef 3264, i32 noundef 0) #21
  %102 = ptrtoint ptr %kmem_shadow to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i390, ptr %kmem_shadow, align 8
  %tobool150.not = icmp eq ptr %call.i390, null
  br i1 %tobool150.not, label %if.end137.cq_free_rsrc_crit_edge, label %cleanup165

if.end137.cq_free_rsrc_crit_edge:                 ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

cleanup165:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #23
  %103 = ptrtoint ptr %pa144 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pa144, align 4
  %conv155 = zext i32 %104 to i64
  %shadow_area_pa156 = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 2
  %105 = ptrtoint ptr %shadow_area_pa156 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv155, ptr %shadow_area_pa156, align 8
  %shadow_area = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 10, i32 3
  %106 = ptrtoint ptr %shadow_area to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i390, ptr %shadow_area, align 8
  %107 = ptrtoint ptr %kmem to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %kmem, align 4
  %cq_base = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 10, i32 2
  %109 = ptrtoint ptr %cq_base to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %cq_base, align 4
  %110 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pa, align 4
  %conv163 = zext i32 %111 to i64
  %cq_base_pa164 = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 1
  %112 = ptrtoint ptr %cq_base_pa164 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv163, ptr %cq_base_pa164, align 8
  br label %if.end168

if.end168:                                        ; preds = %cleanup165, %cleanup
  %113 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp173 = icmp ugt i8 %114, 1
  br i1 %cmp173, label %if.then175, label %if.end168.if.end185_crit_edge

if.end168.if.end185_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end185

if.then175:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #23
  %115 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524286, i32 %116)
  %cmp179 = icmp ult i32 %116, 524286
  %div378 = lshr i32 %116, 1
  %cond184 = select i1 %cmp179, i32 %div378, i32 262143
  %shadow_read_threshold = getelementptr inbounds %struct.irdma_cq_init_info, ptr %info, i32 0, i32 4
  %117 = ptrtoint ptr %shadow_read_threshold to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %cond184, ptr %shadow_read_threshold, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then175, %if.end168.if.end185_crit_edge
  %call186 = call i32 @irdma_sc_cq_init(ptr noundef %sc_cq, ptr noundef nonnull %info) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end200, label %do.body189

do.body189:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_cq.__UNIQUE_ID_ddebug723, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_cq, %if.then195)) #21
          to label %cq_free_rsrc [label %if.then195], !srcloc !259

if.then195:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_cq.__UNIQUE_ID_ddebug723, ptr noundef %1, ptr noundef nonnull @.str.60) #21
  br label %cq_free_rsrc

if.end200:                                        ; preds = %if.end185
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 46
  %call201 = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool202.not = icmp eq ptr %call201, null
  br i1 %tobool202.not, label %if.end200.cq_free_rsrc_crit_edge, label %if.end204

if.end200.cq_free_rsrc_crit_edge:                 ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

if.end204:                                        ; preds = %if.end200
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call201, i32 0, i32 1
  %118 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 10, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call201, i32 0, i32 2
  %119 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call201, i32 0, i32 3
  %120 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %sc_cq, ptr %in, align 8
  %check_overflow = getelementptr inbounds %struct.cqp_cmds_info, ptr %call201, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %121 = ptrtoint ptr %check_overflow to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %check_overflow, align 8
  %122 = ptrtoint ptr %call201 to i32
  %conv209 = zext i32 %122 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call201, i32 0, i32 3, i32 0, i32 0, i32 1
  %123 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv209, ptr %scratch, align 8
  %call212 = call i32 @irdma_handle_cqp_op(ptr noundef %3, ptr noundef nonnull %call201) #21
  call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call201) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool214.not = icmp eq i32 %call212, 0
  br i1 %tobool214.not, label %if.end216, label %if.end204.cq_free_rsrc_crit_edge

if.end204.cq_free_rsrc_crit_edge:                 ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #23
  br label %cq_free_rsrc

if.end216:                                        ; preds = %if.end204
  br i1 %tobool23.not, label %if.end216.cleanup257_crit_edge, label %if.then218

if.end216.cleanup257_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup257

if.then218:                                       ; preds = %if.end216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp) #21
  %124 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cq_id, align 8
  %126 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %resp, align 8
  %127 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cq_size, align 4
  %cq_size224 = getelementptr inbounds %struct.irdma_create_cq_resp, ptr %resp, i32 0, i32 1
  %129 = ptrtoint ptr %cq_size224 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %cq_size224, align 4
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 3
  %130 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %outlen, align 4
  %132 = call i32 @llvm.umin.i32(i32 %131, i32 8)
  %call232 = call fastcc i32 @ib_copy_to_udata(ptr noundef nonnull %udata, ptr noundef nonnull %resp, i32 noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %cleanup253.thread411, label %do.body235

cleanup253.thread411:                             ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #21
  br label %cleanup257

do.body235:                                       ; preds = %if.then218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_create_cq.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_create_cq, %cleanup253.thread)) #21
          to label %cleanup253 [label %cleanup253.thread], !srcloc !259

cleanup253.thread:                                ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_create_cq.__UNIQUE_ID_ddebug726, ptr noundef %1, ptr noundef nonnull @.str.61) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #21
  br label %cq_destroy

cleanup253:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp) #21
  br label %cq_destroy

cq_destroy:                                       ; preds = %cleanup253, %cleanup253.thread
  call void @irdma_cq_wq_destroy(ptr noundef %3, ptr noundef %sc_cq) #21
  br label %cq_free_rsrc

cq_free_rsrc:                                     ; preds = %cq_destroy, %if.end204.cq_free_rsrc_crit_edge, %if.end200.cq_free_rsrc_crit_edge, %if.then195, %do.body189, %if.end137.cq_free_rsrc_crit_edge, %if.end112.cq_free_rsrc_crit_edge, %lor.lhs.false.cq_free_rsrc_crit_edge, %if.else106.cq_free_rsrc_crit_edge, %cleanup.thread
  %err_code.4 = phi i32 [ -71, %cq_destroy ], [ -71, %if.then195 ], [ -12, %if.end200.cq_free_rsrc_crit_edge ], [ -12, %if.end204.cq_free_rsrc_crit_edge ], [ %err_code.0.ph, %cleanup.thread ], [ -71, %do.body189 ], [ -12, %if.end137.cq_free_rsrc_crit_edge ], [ -12, %if.end112.cq_free_rsrc_crit_edge ], [ -22, %if.else106.cq_free_rsrc_crit_edge ], [ -22, %lor.lhs.false.cq_free_rsrc_crit_edge ]
  call fastcc void @irdma_cq_free_rsrc(ptr noundef %3, ptr noundef %ibcq)
  br label %cleanup257

cleanup257:                                       ; preds = %cq_free_rsrc, %cleanup253.thread411, %if.end216.cleanup257_crit_edge, %if.then18.i, %if.then11.i, %entry.cleanup257_crit_edge
  %retval.0 = phi i32 [ %err_code.4, %cq_free_rsrc ], [ %retval.0.i386, %entry.cleanup257_crit_edge ], [ 0, %if.end216.cleanup257_crit_edge ], [ -75, %if.then18.i ], [ -75, %if.then11.i ], [ 0, %cleanup253.thread411 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %info) #21
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_destroy_cq(ptr noundef %ib_cq, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_cq, align 8
  %dev2 = getelementptr inbounds %struct.irdma_cq, ptr %ib_cq, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %ceq_id = getelementptr inbounds %struct.irdma_cq, ptr %ib_cq, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %ceq_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ceq_id, align 8
  %arrayidx = getelementptr %struct.irdma_sc_dev, ptr %3, i32 0, i32 29, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.irdma_cq, ptr %ib_cq, i32 0, i32 12
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %resize_list = getelementptr inbounds %struct.irdma_cq, ptr %ib_cq, i32 0, i32 15
  %8 = ptrtoint ptr %resize_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %resize_list, align 4
  %cmp.i = icmp eq ptr %9, %resize_list
  %add.ptr18.i = getelementptr i8, ptr %9, i32 -56
  %cmp19.i = icmp eq ptr %add.ptr18.i, null
  %or.cond = or i1 %cmp.i, %cmp19.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.end.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.end.lr.ph.i:                                   ; preds = %entry
  %cleanup_wq.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %list_node.021.i = phi ptr [ %9, %if.end.lr.ph.i ], [ %tmp_node.024.i, %list_del.exit.i.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_node.024.i = load ptr, ptr %list_node.021.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.021.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.021.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list_node.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.021.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %cleanup_wq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cleanup_wq.i, align 8
  %work.i = getelementptr i8, ptr %list_node.021.i, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work.i) #21
  %cmp.i.i = icmp eq ptr %tmp_node.024.i, %resize_list
  %add.ptr.i = getelementptr i8, ptr %tmp_node.024.i, i32 -56
  %cmp.i42 = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %cmp.i.i, %cmp.i42
  br i1 %or.cond.i, label %list_del.exit.i.if.end_crit_edge, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

list_del.exit.i.if.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %ib_cq, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #21
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rf, align 8
  tail call void @irdma_cq_wq_destroy(ptr noundef %22, ptr noundef %sc_cq) #21
  %23 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rf, align 8
  tail call fastcc void @irdma_cq_free_rsrc(ptr noundef %24, ptr noundef %ib_cq)
  %ce_lock = getelementptr inbounds %struct.irdma_ceq, ptr %7, i32 0, i32 6
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ce_lock) #21
  tail call void @irdma_sc_cleanup_ceqes(ptr noundef %sc_cq, ptr noundef %7) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ce_lock, i32 noundef %call22) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_resize_cq(ptr noundef %ibcq, i32 noundef %entries, ptr noundef readonly %udata) #0 align 64 {
entry:
  %info = alloca %struct.irdma_modify_cq_info, align 8
  %kmem_buf = alloca %struct.irdma_dma_mem, align 4
  %req = alloca %struct.irdma_resize_cq_req, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #21
  %2 = call ptr @memset(ptr %info, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %kmem_buf) #21
  %3 = ptrtoint ptr %kmem_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %kmem_buf, align 4, !annotation !271
  %4 = getelementptr inbounds %struct.irdma_dma_mem, ptr %kmem_buf, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !271
  %6 = getelementptr inbounds %struct.irdma_dma_mem, ptr %kmem_buf, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !271
  %8 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibcq, align 8
  %rf3 = getelementptr inbounds %struct.irdma_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rf3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rf3, align 8
  %hw_attrs = getelementptr inbounds %struct.irdma_pci_f, ptr %11, i32 0, i32 42, i32 25
  %12 = ptrtoint ptr %hw_attrs to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hw_attrs, align 8
  %and = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup159_crit_edge, label %if.end

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup159

if.end:                                           ; preds = %entry
  %max_cqe = getelementptr inbounds %struct.irdma_pci_f, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cqe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %entries)
  %cmp = icmp ult i32 %15, %entries
  br i1 %cmp, label %if.end.cleanup159_crit_edge, label %if.end5

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup159

if.end5:                                          ; preds = %if.end
  %user_mode = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 5
  %16 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %user_mode, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  %inc = add i32 %entries, 1
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %11, i32 0, i32 42, i32 25, i32 0, i32 9
  %18 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp11 = icmp ugt i8 %19, 1
  %mul = zext i1 %cmp11 to i32
  %spec.select = shl i32 %inc, %mul
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.end5.if.end15_crit_edge
  %entries.addr.0 = phi i32 [ %entries, %if.end5.if.end15_crit_edge ], [ %spec.select, %if.then7 ]
  %20 = tail call i32 @llvm.smax.i32(i32 %entries.addr.0, i32 4)
  %cq_size = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %cq_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cq_size, align 4
  %cq_size20 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %cq_size20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cq_size20, align 4
  %sub = add i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub)
  %cmp21 = icmp eq i32 %20, %sub
  br i1 %cmp21, label %if.end15.cleanup159_crit_edge, label %if.end24

if.end15.cleanup159_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup159

if.end24:                                         ; preds = %if.end15
  %tobool25.not = icmp eq ptr %udata, null
  br i1 %tobool25.not, label %if.else68, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #21
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %req, align 8
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %25 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %context, align 4
  %legacy_mode = getelementptr inbounds %struct.irdma_ucontext, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %legacy_mode, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not = icmp eq i8 %28, 0
  br i1 %tobool34.not, label %if.end36, label %if.then26.cleanup.thread_crit_edge

if.then26.cleanup.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end36:                                         ; preds = %if.then26
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %29 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inlen, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 8)
  %call44 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %req, ptr noundef nonnull %udata, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body48, label %if.end36.cleanup.thread_crit_edge

if.end36.cleanup.thread_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

do.body48:                                        ; preds = %if.end36
  %cq_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %26, i32 0, i32 4
  %call53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_reg_mem_list_lock) #21
  %32 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %req, align 8
  %conv56 = trunc i64 %33 to i32
  %cq_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %26, i32 0, i32 3
  %call57 = call fastcc ptr @irdma_get_pbl(i32 noundef %conv56, ptr noundef %cq_reg_mem_list)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock, i32 noundef %call53) #21
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %do.body48.cleanup.thread_crit_edge, label %if.end61

do.body48.cleanup.thread_crit_edge:               ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.thread

if.end61:                                         ; preds = %do.body48
  %34 = getelementptr inbounds %struct.irdma_pbl, ptr %call57, i32 0, i32 1
  %pbl_allocated = getelementptr inbounds %struct.irdma_pbl, ptr %call57, i32 0, i32 2
  %35 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %pbl_allocated, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %virtual_map = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 6
  %36 = ptrtoint ptr %virtual_map to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load63 = load i8, ptr %virtual_map, align 4
  %bf.set = or i8 %bf.load63, -128
  store i8 %bf.set, ptr %virtual_map, align 4
  %pbl_chunk_size = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 4
  %37 = ptrtoint ptr %pbl_chunk_size to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %pbl_chunk_size, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 4
  %first_pm_pbl_idx = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 5
  %40 = ptrtoint ptr %first_pm_pbl_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %first_pm_pbl_idx, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %34, align 4
  %conv65 = zext i32 %42 to i64
  %43 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv65, ptr %info, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %do.body48.cleanup.thread_crit_edge, %if.end36.cleanup.thread_crit_edge, %if.then26.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -12, %do.body48.cleanup.thread_crit_edge ], [ -22, %if.end36.cleanup.thread_crit_edge ], [ -95, %if.then26.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #21
  br label %cleanup159

cleanup:                                          ; preds = %if.else, %if.then62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #21
  br label %if.end92

if.else68:                                        ; preds = %if.end24
  %mul70 = shl i32 %20, 5
  %sub71 = add i32 %mul70, -1
  %or = or i32 %sub71, 255
  %add72 = add i32 %or, 256
  %and73 = and i32 %add72, -256
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and73, ptr %6, align 4
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 8
  %device74 = getelementptr inbounds %struct.irdma_hw, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device74, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %48, i32 noundef %and73, ptr noundef %4, i32 noundef 3264, i32 noundef 0) #21
  %49 = ptrtoint ptr %kmem_buf to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %kmem_buf, align 4
  %tobool78.not = icmp eq ptr %call.i, null
  br i1 %tobool78.not, label %if.else68.cleanup159_crit_edge, label %if.end80

if.else68.cleanup159_crit_edge:                   ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup159

if.end80:                                         ; preds = %if.else68
  %cq_base = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 1
  %50 = ptrtoint ptr %cq_base to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %cq_base, align 8
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %4, align 4
  %conv83 = zext i32 %52 to i64
  %53 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv83, ptr %info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 108) #26
  %tobool86.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool86.not, label %if.end80.if.then151_crit_edge, label %if.end80.if.end92_crit_edge

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end92

if.end80.if.then151_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then151

if.end92:                                         ; preds = %if.end80.if.end92_crit_edge, %cleanup
  %cq_buf.1 = phi ptr [ null, %cleanup ], [ %call7.i.i, %if.end80.if.end92_crit_edge ]
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %11, i32 0, i32 46
  %call93 = call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.end92.error_crit_edge, label %if.end96

if.end92.error_crit_edge:                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end96:                                         ; preds = %if.end92
  %shadow_read_threshold = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 1, i32 8
  %55 = ptrtoint ptr %shadow_read_threshold to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %shadow_read_threshold, align 4
  %shadow_read_threshold98 = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 3
  %57 = ptrtoint ptr %shadow_read_threshold98 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %shadow_read_threshold98, align 8
  %cq_resize = getelementptr inbounds %struct.irdma_modify_cq_info, ptr %info, i32 0, i32 8
  %58 = ptrtoint ptr %cq_resize to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load99 = load i8, ptr %cq_resize, align 2
  %bf.set101 = or i8 %bf.load99, -128
  store i8 %bf.set101, ptr %cq_resize, align 2
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call93, i32 0, i32 3
  %info103 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call93, i32 0, i32 3, i32 0, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %info103, ptr %info, i32 32)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call93, i32 0, i32 1
  %60 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 50, ptr %cqp_cmd, align 8
  %61 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sc_cq, ptr %in, align 8
  %62 = ptrtoint ptr %call93 to i32
  %conv107 = zext i32 %62 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call93, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1, i32 1
  %63 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv107, ptr %scratch, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call93, i32 0, i32 2
  %64 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %post_sq, align 1
  %call110 = call i32 @irdma_handle_cqp_op(ptr noundef %11, ptr noundef nonnull %call93) #21
  call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call93) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool112.not = icmp eq i32 %call110, 0
  br i1 %tobool112.not, label %do.body116, label %if.end96.error_crit_edge

if.end96.error_crit_edge:                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

do.body116:                                       ; preds = %if.end96
  %lock = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 12
  %call123 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #21
  %tobool128.not = icmp eq ptr %cq_buf.1, null
  br i1 %tobool128.not, label %do.body116.if.end145_crit_edge, label %if.then129

do.body116.if.end145_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end145

if.then129:                                       ; preds = %do.body116
  %kmem = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 10
  %65 = call ptr @memcpy(ptr %cq_buf.1, ptr %kmem, i32 12)
  %hw131 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %hw131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw131, align 8
  %hw132 = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 2
  %68 = ptrtoint ptr %hw132 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %hw132, align 4
  %cq_uk133 = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 1
  %69 = call ptr @memcpy(ptr %cq_uk133, ptr %sc_cq, i32 40)
  %work = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 4
  call void @__init_work(ptr noundef %work, i32 noundef 0) #21
  %70 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.62, ptr noundef nonnull @irdma_resize_cq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #21
  %entry140 = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %entry140 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %entry140, ptr %entry140, align 4
  %prev.i = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 4, i32 1, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %entry140, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @irdma_free_cqbuf, ptr %func, align 4
  %list = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 3
  %resize_list = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 15
  %prev.i236 = getelementptr inbounds %struct.irdma_cq, ptr %ibcq, i32 0, i32 15, i32 1
  %74 = ptrtoint ptr %prev.i236 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i236, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %75, ptr noundef %resize_list) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.then129.list_add_tail.exit_crit_edge

if.then129.list_add_tail.exit_crit_edge:          ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #23
  %76 = ptrtoint ptr %prev.i236 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %list, ptr %prev.i236, align 4
  %77 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resize_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.irdma_cq_buf, ptr %cq_buf.1, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %list, ptr %75, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then129.list_add_tail.exit_crit_edge
  %80 = call ptr @memcpy(ptr %kmem, ptr %kmem_buf, i32 12)
  br label %if.end145

if.end145:                                        ; preds = %list_add_tail.exit, %do.body116.if.end145_crit_edge
  call void @irdma_sc_cq_resize(ptr noundef %sc_cq, ptr noundef nonnull %info) #21
  %81 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cq_size, align 4
  %sub148 = add i32 %82, -1
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %83 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub148, ptr %cqe, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call123) #21
  br label %cleanup159

error:                                            ; preds = %if.end96.error_crit_edge, %if.end92.error_crit_edge
  %ret.1 = phi i32 [ -12, %if.end92.error_crit_edge ], [ -71, %if.end96.error_crit_edge ]
  br i1 %tobool25.not, label %error.if.then151_crit_edge, label %error.if.end158_crit_edge

error.if.end158_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end158

error.if.then151_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then151

if.then151:                                       ; preds = %error.if.then151_crit_edge, %if.end80.if.then151_crit_edge
  %ret.1251 = phi i32 [ %ret.1, %error.if.then151_crit_edge ], [ -12, %if.end80.if.then151_crit_edge ]
  %cq_buf.2249 = phi ptr [ %cq_buf.1, %error.if.then151_crit_edge ], [ null, %if.end80.if.then151_crit_edge ]
  %hw152 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 8
  %84 = ptrtoint ptr %hw152 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw152, align 8
  %device153 = getelementptr inbounds %struct.irdma_hw, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %device153 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device153, align 4
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %6, align 4
  %90 = ptrtoint ptr %kmem_buf to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kmem_buf, align 4
  %92 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %4, align 4
  call void @dma_free_attrs(ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %93, i32 noundef 0) #21
  %94 = ptrtoint ptr %kmem_buf to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %kmem_buf, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then151, %error.if.end158_crit_edge
  %ret.1250 = phi i32 [ %ret.1251, %if.then151 ], [ %ret.1, %error.if.end158_crit_edge ]
  %cq_buf.2248 = phi ptr [ %cq_buf.2249, %if.then151 ], [ %cq_buf.1, %error.if.end158_crit_edge ]
  call void @kfree(ptr noundef %cq_buf.2248) #21
  br label %cleanup159

cleanup159:                                       ; preds = %if.end158, %if.end145, %if.else68.cleanup159_crit_edge, %cleanup.thread, %if.end15.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.2 = phi i32 [ %ret.1250, %if.end158 ], [ 0, %if.end145 ], [ -95, %entry.cleanup159_crit_edge ], [ -22, %if.end.cleanup159_crit_edge ], [ 0, %if.end15.cleanup159_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -12, %if.else68.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %kmem_buf) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #21
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @irdma_get_dma_mr(ptr noundef %pd, i32 noundef %acc) #0 align 64 {
entry:
  %kva = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kva) #21
  %0 = ptrtoint ptr %kva to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %kva, align 8
  %call = call ptr @irdma_reg_phys_mr(ptr noundef %pd, i64 noundef 0, i64 noundef 0, i32 noundef %acc, ptr noundef nonnull %kva)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kva) #21
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @irdma_reg_user_mr(ptr noundef %pd, i64 noundef %start, i64 noundef %len, i64 noundef %virt, i32 noundef %access, ptr noundef readonly %udata) #0 align 64 {
entry:
  %req = alloca %struct.irdma_mem_reg_req, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #21
  %2 = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 2
  %4 = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 3
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %req, align 8
  %6 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf, align 8
  %max_mr_size = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 42, i32 25, i32 3
  %8 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_mr_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %len)
  %cmp = icmp ult i64 %9, %len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %start to i32
  %conv3 = trunc i64 %len to i32
  %call4 = tail call ptr @ib_umem_get(ptr noundef %1, i32 noundef %conv, i32 noundef %conv3, i32 noundef %access) #21
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_reg_user_mr.__UNIQUE_ID_ddebug728, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_reg_user_mr, %if.then10)) #21
          to label %cleanup [label %if.then10], !srcloc !259

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_reg_user_mr.__UNIQUE_ID_ddebug728, ptr noundef %1, ptr noundef nonnull @.str.64) #21
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %10 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inlen, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 8)
  %call16 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %req, ptr noundef %udata, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #23
  call void @ib_umem_release(ptr noundef %call4) #21
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 328) #26
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  call void @ib_umem_release(ptr noundef %call4) #21
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %iwpbl26 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9
  %iwmr27 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 5
  %14 = ptrtoint ptr %iwmr27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %iwmr27, align 8
  %region28 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %region28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %region28, align 8
  %pd29 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %pd29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pd, ptr %pd29, align 4
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call7.i.i, align 8
  %iova = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %virt, ptr %iova, align 8
  %page_size = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %page_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 4096, ptr %page_size, align 8
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %req, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp33 = icmp eq i16 %23, 0
  br i1 %cmp33, label %if.then35, label %if.end25.if.end53_crit_edge

if.end25.if.end53_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then35:                                        ; preds = %if.end25
  %conv36 = trunc i64 %virt to i32
  %call37 = call i32 @ib_umem_find_best_pgsz(ptr noundef %call4, i32 noundef 1075843072, i32 noundef %conv36) #21
  %conv38 = zext i32 %call37 to i64
  %24 = ptrtoint ptr %page_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv38, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool41.not = icmp eq i32 %call37, 0
  br i1 %tobool41.not, label %if.then50, label %if.then35.if.end53_crit_edge, !prof !267

if.then35.if.end53_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then50:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #23
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  call void @ib_umem_release(ptr noundef %call4) #21
  br label %cleanup

if.end53:                                         ; preds = %if.then35.if.end53_crit_edge, %if.end25.if.end53_crit_edge
  %length = getelementptr inbounds %struct.ib_umem, ptr %call4, i32 0, i32 3
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 8
  %conv54 = zext i32 %26 to i64
  %len55 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %len55 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv54, ptr %len55, align 8
  %user_base = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %user_base to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %virt, ptr %user_base, align 8
  %pble_alloc = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 4
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %req, align 8
  %type = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %type, align 4
  %32 = ptrtoint ptr %page_size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %page_size, align 8
  %conv58 = trunc i64 %33 to i32
  %iova.i = getelementptr inbounds %struct.ib_umem, ptr %call4, i32 0, i32 2
  %34 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %iova.i, align 8
  %36 = load i32, ptr %length, align 8
  %conv.i = zext i32 %36 to i64
  %conv1.i = and i64 %33, 4294967295
  %sub.i = add nsw i64 %conv1.i, -1
  %add.i = add i64 %sub.i, %35
  %add2.i = add i64 %add.i, %conv.i
  %neg.i = sub nsw i64 0, %conv1.i
  %and.i = and i64 %add2.i, %neg.i
  %sub6.i = add i32 %conv58, -1
  %conv7.i = zext i32 %sub6.i to i64
  %add11.i = sub i64 %add.i, %conv7.i
  %and15.i = and i64 %add11.i, %neg.i
  %sub16.i = sub i64 %and.i, %and15.i
  %conv17.i = trunc i64 %sub16.i to i32
  %div.i = udiv i32 %conv17.i, %conv58
  %page_cnt = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %page_cnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i, ptr %page_cnt, align 8
  %38 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %30, label %if.end53.error_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb103
    i16 0, label %sw.bb157
  ]

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

sw.bb:                                            ; preds = %if.end53
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %4, align 2
  %conv62 = zext i16 %40 to i32
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 4
  %conv63 = zext i16 %42 to i32
  %add = add nuw nsw i32 %conv63, %conv62
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div.i)
  %cmp67.not = icmp ult i32 %add, %div.i
  br i1 %cmp67.not, label %if.end70, label %sw.bb.error_crit_edge

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end70:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp76 = icmp ugt i32 %add, 2
  %call80 = call fastcc i32 @irdma_handle_q_mem(ptr noundef %1, ptr noundef nonnull %req, ptr noundef %iwpbl26, i1 noundef zeroext %cmp76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end70.error_crit_edge

if.end70.error_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end83:                                         ; preds = %if.end70
  %tobool84.not = icmp eq ptr %udata, null
  br i1 %tobool84.not, label %if.end83.cond.end89_crit_edge, label %cond.true85

if.end83.cond.end89_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end89

cond.true85:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #23
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %43 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %context, align 4
  br label %cond.end89

cond.end89:                                       ; preds = %cond.true85, %if.end83.cond.end89_crit_edge
  %cond90 = phi ptr [ %44, %cond.true85 ], [ null, %if.end83.cond.end89_crit_edge ]
  %qp_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %cond90, i32 0, i32 6
  %call97 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_reg_mem_list_lock) #21
  %qp_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %cond90, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.irdma_ucontext, ptr %cond90, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %iwpbl26, ptr noundef %46, ptr noundef %qp_reg_mem_list) #21
  br i1 %call.i.i, label %if.end.i.i, label %cond.end89.list_add_tail.exit_crit_edge

cond.end89.list_add_tail.exit_crit_edge:          ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #23
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %iwpbl26, ptr %prev.i, align 4
  %48 = ptrtoint ptr %iwpbl26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %qp_reg_mem_list, ptr %iwpbl26, align 8
  %prev3.i.i = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %iwpbl26, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end89.list_add_tail.exit_crit_edge
  %on_list = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %on_list to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %on_list, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %on_list, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_reg_mem_list_lock, i32 noundef %call97) #21
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end53
  %52 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rf, align 8
  %hw_attrs106 = getelementptr inbounds %struct.irdma_pci_f, ptr %53, i32 0, i32 42, i32 25
  %54 = ptrtoint ptr %hw_attrs106 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %hw_attrs106, align 8
  %56 = trunc i64 %55 to i32
  %57 = lshr i32 %56, 1
  %58 = and i32 %57, 1
  %59 = xor i32 %58, 1
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %2, align 2
  %conv110 = zext i16 %61 to i32
  %add112 = add nuw nsw i32 %59, %conv110
  call void @__sanitizer_cov_trace_cmp4(i32 %add112, i32 %div.i)
  %cmp114 = icmp ugt i32 %add112, %div.i
  br i1 %cmp114, label %sw.bb103.error_crit_edge, label %if.end117

sw.bb103.error_crit_edge:                         ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end117:                                        ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %61)
  %cmp120 = icmp ugt i16 %61, 1
  %call124 = call fastcc i32 @irdma_handle_q_mem(ptr noundef %1, ptr noundef nonnull %req, ptr noundef %iwpbl26, i1 noundef zeroext %cmp120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end117.error_crit_edge

if.end117.error_crit_edge:                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end127:                                        ; preds = %if.end117
  %tobool128.not = icmp eq ptr %udata, null
  br i1 %tobool128.not, label %if.end127.cond.end136_crit_edge, label %cond.true129

if.end127.cond.end136_crit_edge:                  ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end136

cond.true129:                                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #23
  %context132 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %62 = ptrtoint ptr %context132 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %context132, align 4
  br label %cond.end136

cond.end136:                                      ; preds = %cond.true129, %if.end127.cond.end136_crit_edge
  %cond137 = phi ptr [ %63, %cond.true129 ], [ null, %if.end127.cond.end136_crit_edge ]
  %cq_reg_mem_list_lock = getelementptr inbounds %struct.irdma_ucontext, ptr %cond137, i32 0, i32 4
  %call146 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_reg_mem_list_lock) #21
  %cq_reg_mem_list = getelementptr inbounds %struct.irdma_ucontext, ptr %cond137, i32 0, i32 3
  %prev.i309 = getelementptr inbounds %struct.irdma_ucontext, ptr %cond137, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i309, align 4
  %call.i.i310 = call zeroext i1 @__list_add_valid(ptr noundef %iwpbl26, ptr noundef %65, ptr noundef %cq_reg_mem_list) #21
  br i1 %call.i.i310, label %if.end.i.i312, label %cond.end136.list_add_tail.exit313_crit_edge

cond.end136.list_add_tail.exit313_crit_edge:      ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add_tail.exit313

if.end.i.i312:                                    ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #23
  %66 = ptrtoint ptr %prev.i309 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %iwpbl26, ptr %prev.i309, align 4
  %67 = ptrtoint ptr %iwpbl26 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cq_reg_mem_list, ptr %iwpbl26, align 8
  %prev3.i.i311 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i311 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i311, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %iwpbl26, ptr %65, align 4
  br label %list_add_tail.exit313

list_add_tail.exit313:                            ; preds = %if.end.i.i312, %cond.end136.list_add_tail.exit313_crit_edge
  %on_list152 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %on_list152 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load153 = load i8, ptr %on_list152, align 8
  %bf.set155 = or i8 %bf.load153, 64
  store i8 %bf.set155, ptr %on_list152, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock, i32 noundef %call146) #21
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i)
  %cmp159 = icmp ne i32 %div.i, 1
  %71 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rf, align 8
  %call164 = call fastcc i32 @irdma_setup_pbles(ptr noundef %72, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %cmp159)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %sw.bb157.error_crit_edge

sw.bb157.error_crit_edge:                         ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end167:                                        ; preds = %sw.bb157
  br i1 %cmp159, label %if.then169, label %if.end167.if.end181_crit_edge

if.end167.if.end181_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end181

if.then169:                                       ; preds = %if.end167
  %73 = ptrtoint ptr %page_size to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %page_size, align 8
  %conv171 = trunc i64 %74 to i32
  %call172 = call fastcc zeroext i1 @irdma_check_mr_contiguous(ptr noundef %pble_alloc, i32 noundef %conv171)
  br i1 %call172, label %if.then175, label %if.then169.if.end181_crit_edge

if.then169.if.end181_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end181

if.then175:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #23
  %75 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rf, align 8
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %76, i32 0, i32 50
  %77 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pble_rsrc, align 4
  call void @irdma_free_pble(ptr noundef %78, ptr noundef %pble_alloc) #21
  %pbl_allocated = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 2
  %79 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load177 = load i8, ptr %pbl_allocated, align 8
  %bf.clear178 = and i8 %bf.load177, 127
  store i8 %bf.clear178, ptr %pbl_allocated, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %if.then169.if.end181_crit_edge, %if.end167.if.end181_crit_edge
  %call182 = call fastcc i32 @irdma_create_stag(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end181.error_crit_edge, label %if.end185

if.end181.error_crit_edge:                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #23
  br label %error

if.end185:                                        ; preds = %if.end181
  %stag186 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %stag186 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call182, ptr %stag186, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %81 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %call182, ptr %rkey, align 4
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call182, ptr %lkey, align 8
  %conv187 = trunc i32 %access to i16
  %call188 = call fastcc i32 @irdma_hwreg_mr(ptr noundef %1, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end185.sw.epilog_crit_edge, label %if.then190

if.end185.sw.epilog_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then190:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #23
  call fastcc void @irdma_free_stag(ptr noundef %1, i32 noundef %call182)
  br label %error

sw.epilog:                                        ; preds = %if.end185.sw.epilog_crit_edge, %list_add_tail.exit313, %list_add_tail.exit
  %83 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %req, align 8
  %85 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %type, align 4
  br label %cleanup

error:                                            ; preds = %if.then190, %if.end181.error_crit_edge, %sw.bb157.error_crit_edge, %if.end117.error_crit_edge, %sw.bb103.error_crit_edge, %if.end70.error_crit_edge, %sw.bb.error_crit_edge, %if.end53.error_crit_edge
  %err.0 = phi i32 [ -22, %if.end53.error_crit_edge ], [ %call164, %sw.bb157.error_crit_edge ], [ %call188, %if.then190 ], [ %call124, %if.end117.error_crit_edge ], [ %call80, %if.end70.error_crit_edge ], [ -22, %sw.bb.error_crit_edge ], [ -22, %sw.bb103.error_crit_edge ], [ -12, %if.end181.error_crit_edge ]
  %level = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 4, i32 1
  %86 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp194.not = icmp eq i32 %87, 0
  br i1 %cmp194.not, label %error.if.end202_crit_edge, label %land.lhs.true

error.if.end202_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end202

land.lhs.true:                                    ; preds = %error
  %pbl_allocated196 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 2
  %88 = ptrtoint ptr %pbl_allocated196 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load197 = load i8, ptr %pbl_allocated196, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load197)
  %bf.cast.not = icmp sgt i8 %bf.load197, -1
  br i1 %bf.cast.not, label %land.lhs.true.if.end202_crit_edge, label %if.then199

land.lhs.true.if.end202_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end202

if.then199:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %89 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rf, align 8
  %pble_rsrc201 = getelementptr inbounds %struct.irdma_pci_f, ptr %90, i32 0, i32 50
  %91 = ptrtoint ptr %pble_rsrc201 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pble_rsrc201, align 4
  call void @irdma_free_pble(ptr noundef %92, ptr noundef %pble_alloc) #21
  br label %if.end202

if.end202:                                        ; preds = %if.then199, %land.lhs.true.if.end202_crit_edge, %error.if.end202_crit_edge
  call void @ib_umem_release(ptr noundef %call4) #21
  call void @kfree(ptr noundef nonnull %call7.i.i) #21
  %93 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %sw.epilog, %if.then50, %if.then23, %if.then18, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then18 ], [ inttoptr (i32 -95 to ptr), %if.then50 ], [ %93, %if.end202 ], [ %call7.i.i, %sw.epilog ], [ inttoptr (i32 -12 to ptr), %if.then23 ], [ %call4, %if.then10 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call4, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #21
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_dereg_mr(ptr noundef %ib_mr, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_mr, ptr %ib_mr, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %2 = ptrtoint ptr %ib_mr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_mr, align 8
  %pble_alloc = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 4
  %type = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %region = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 1
  %6 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %region, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.done_crit_edge, label %if.then5

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

if.then5:                                         ; preds = %if.then
  %tobool6.not = icmp eq ptr %udata, null
  br i1 %tobool6.not, label %if.then5.cond.end_crit_edge, label %cond.true

if.then5.cond.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end

cond.true:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #23
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then5.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %if.then5.cond.end_crit_edge ]
  %iwpbl1.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9
  %10 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %5, label %cond.end.done_crit_edge [
    i16 2, label %do.body2.i
    i16 1, label %do.body13.i
  ]

cond.end.done_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

do.body2.i:                                       ; preds = %cond.end
  %cq_reg_mem_list_lock.i = getelementptr inbounds %struct.irdma_ucontext, ptr %cond, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cq_reg_mem_list_lock.i) #21
  %on_list.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %on_list.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %on_list.i, align 8
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast.not.i = icmp eq i8 %12, 0
  br i1 %bf.cast.not.i, label %do.body2.i.if.end.i_crit_edge, label %if.then.i

do.body2.i.if.end.i_crit_edge:                    ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %do.body2.i
  %bf.clear9.i = and i8 %bf.load.i, -65
  %13 = ptrtoint ptr %on_list.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear9.i, ptr %on_list.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iwpbl1.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %iwpbl1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iwpbl1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %iwpbl1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %iwpbl1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %do.body2.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cq_reg_mem_list_lock.i, i32 noundef %call4.i) #21
  br label %done

do.body13.i:                                      ; preds = %cond.end
  %qp_reg_mem_list_lock.i = getelementptr inbounds %struct.irdma_ucontext, ptr %cond, i32 0, i32 6
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qp_reg_mem_list_lock.i) #21
  %on_list25.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %on_list25.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load26.i = load i8, ptr %on_list25.i, align 8
  %23 = and i8 %bf.load26.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %bf.cast29.not.i = icmp eq i8 %23, 0
  br i1 %bf.cast29.not.i, label %do.body13.i.if.end36.i_crit_edge, label %if.then30.i

do.body13.i.if.end36.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end36.i

if.then30.i:                                      ; preds = %do.body13.i
  %bf.clear33.i = and i8 %bf.load26.i, -65
  %24 = ptrtoint ptr %on_list25.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.clear33.i, ptr %on_list25.i, align 8
  %call.i.i48.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iwpbl1.i) #21
  br i1 %call.i.i48.i, label %if.end.i.i51.i, label %if.then30.i.list_del.exit53.i_crit_edge

if.then30.i.list_del.exit53.i_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit53.i

if.end.i.i51.i:                                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i49.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i49.i, align 4
  %27 = ptrtoint ptr %iwpbl1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iwpbl1.i, align 4
  %prev1.i.i.i50.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i50.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit53.i

list_del.exit53.i:                                ; preds = %if.end.i.i51.i, %if.then30.i.list_del.exit53.i_crit_edge
  %31 = ptrtoint ptr %iwpbl1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %iwpbl1.i, align 4
  %prev.i52.i = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i52.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i52.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %list_del.exit53.i, %do.body13.i.if.end36.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qp_reg_mem_list_lock.i, i32 noundef %call20.i) #21
  br label %done

if.end8:                                          ; preds = %entry
  %rf = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rf, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %34, i32 0, i32 46
  %call9 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 3
  %info14 = getelementptr inbounds %struct.anon.254, ptr %in, i32 0, i32 1
  %35 = call ptr @memset(ptr %info14, i32 0, i32 12)
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pd_id, align 4
  %and = and i32 %37, 32767
  %pd_id15 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 3, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %pd_id15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and, ptr %pd_id15, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %ib_mr, i32 0, i32 3
  %39 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rkey, align 4
  %shr = lshr i32 %40, 8
  %41 = ptrtoint ptr %info14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr, ptr %info14, align 4
  %mr = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %mr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -128, ptr %mr, align 4
  %pbl_allocated = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load16 = load i8, ptr %pbl_allocated, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %bf.cast.not = icmp sgt i8 %bf.load16, -1
  %spec.store.select = select i1 %bf.cast.not, i8 -128, i8 -64
  %44 = ptrtoint ptr %mr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.store.select, ptr %mr, align 4
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 1
  %45 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 2
  %46 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %post_sq, align 1
  %47 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %48, i32 0, i32 42
  %49 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sc_dev, ptr %in, align 8
  %50 = ptrtoint ptr %call9 to i32
  %conv25 = zext i32 %50 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call9, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv25, ptr %scratch, align 8
  %52 = load ptr, ptr %rf, align 8
  %call29 = tail call i32 @irdma_handle_cqp_op(ptr noundef %52, ptr noundef nonnull %call9) #21
  %53 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rf, align 8
  %cqp31 = getelementptr inbounds %struct.irdma_pci_f, ptr %54, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp31, ptr noundef nonnull %call9) #21
  %stag = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 6
  %55 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stag, align 4
  %57 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rf, align 8
  %mr_stagmask.i = getelementptr inbounds %struct.irdma_pci_f, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %mr_stagmask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mr_stagmask.i, align 8
  %and.i = and i32 %60, %56
  %shr.i = lshr i32 %and.i, 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %58, i32 0, i32 36
  %61 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %allocated_mrs.i, align 8
  %rsrc_lock.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %58, i32 0, i32 53
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i.i) #21
  %rem.i.i.i = and i32 %shr.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 13
  %add.ptr.i.i.i = getelementptr i32, ptr %62, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %63 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %64, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i.i, i32 noundef %call2.i.i) #21
  br label %done

done:                                             ; preds = %if.end12, %if.end36.i, %if.end.i, %cond.end.done_crit_edge, %if.then.done_crit_edge
  %pbl_allocated32 = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 9, i32 2
  %65 = ptrtoint ptr %pbl_allocated32 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load33 = load i8, ptr %pbl_allocated32, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %bf.cast35.not = icmp sgt i8 %bf.load33, -1
  br i1 %bf.cast35.not, label %done.if.end38_crit_edge, label %if.then36

done.if.end38_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end38

if.then36:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #23
  %rf37 = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %66 = ptrtoint ptr %rf37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rf37, align 8
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %67, i32 0, i32 50
  %68 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pble_rsrc, align 4
  tail call void @irdma_free_pble(ptr noundef %69, ptr noundef %pble_alloc) #21
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %done.if.end38_crit_edge
  %region39 = getelementptr inbounds %struct.irdma_mr, ptr %ib_mr, i32 0, i32 1
  %70 = ptrtoint ptr %region39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %region39, align 8
  tail call void @ib_umem_release(ptr noundef %71) #21
  tail call void @kfree(ptr noundef %ib_mr) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @irdma_alloc_mr(ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 328) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @irdma_create_stag(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %err

if.end6:                                          ; preds = %if.end
  %stag7 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %stag7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %stag7, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %rkey, align 4
  %lkey = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %lkey, align 8
  %pd8 = getelementptr inbounds %struct.ib_mr, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pd8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pd, ptr %pd8, align 4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %iwmr12 = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 5
  %10 = ptrtoint ptr %iwmr12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %iwmr12, align 8
  %type = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %type, align 4
  %pble_alloc = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 4
  %page_cnt = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %page_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %max_num_sg, ptr %page_cnt, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rf, align 8
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pble_rsrc, align 4
  %call14 = tail call i32 @irdma_get_pble(ptr noundef %16, ptr noundef %pble_alloc, i32 noundef %max_num_sg, i1 noundef zeroext true) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end6.err_get_pble_crit_edge

if.end6.err_get_pble_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #23
  br label %err_get_pble

if.end17:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %pd8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd8, align 4
  %19 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %20, i32 0, i32 46
  %call1.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #21
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end17.err_alloc_stag_crit_edge, label %if.end.i

if.end17.err_alloc_stag_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %err_alloc_stag

if.end.i:                                         ; preds = %if.end17
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3
  %info3.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %21 = call ptr @memset(ptr %info3.i, i32 0, i32 40)
  %page_size.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %page_size.i, align 8
  %23 = ptrtoint ptr %stag7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stag7, align 4
  %shr.i = lshr i32 %24, 8
  %stag_idx.i = getelementptr inbounds %struct.irdma_allocate_stag_info, ptr %info3.i, i32 0, i32 3
  %25 = ptrtoint ptr %stag_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %stag_idx.i, align 4
  %pd_id.i = getelementptr inbounds %struct.irdma_pd, ptr %18, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %pd_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pd_id.i, align 4
  %pd_id4.i = getelementptr inbounds %struct.irdma_allocate_stag_info, ptr %info3.i, i32 0, i32 5
  %28 = ptrtoint ptr %pd_id4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pd_id4.i, align 4
  %len.i = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %len.i, align 8
  %31 = ptrtoint ptr %info3.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %info3.i, align 8
  %remote_access.i = getelementptr inbounds %struct.irdma_allocate_stag_info, ptr %info3.i, i32 0, i32 7
  %32 = ptrtoint ptr %remote_access.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %remote_access.i, align 2
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 1
  %33 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 14, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 2
  %34 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %post_sq.i, align 1
  %35 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rf, align 8
  %sc_dev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %36, i32 0, i32 42
  %37 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sc_dev.i, ptr %in.i, align 8
  %38 = ptrtoint ptr %call1.i to i32
  %conv.i = zext i32 %38 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %scratch.i, align 8
  %40 = load ptr, ptr %rf, align 8
  %call11.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %40, ptr noundef nonnull %call1.i) #21
  %41 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rf, align 8
  %cqp13.i = getelementptr inbounds %struct.irdma_pci_f, ptr %42, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp13.i, ptr noundef nonnull %call1.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool14.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool14.not.i, label %if.end21, label %if.end.i.err_alloc_stag_crit_edge

if.end.i.err_alloc_stag_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %err_alloc_stag

if.end21:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %pbl_allocated = getelementptr inbounds %struct.irdma_mr, ptr %call7.i.i, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load = load i8, ptr %pbl_allocated, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pbl_allocated, align 8
  br label %cleanup

err_alloc_stag:                                   ; preds = %if.end.i.err_alloc_stag_crit_edge, %if.end17.err_alloc_stag_crit_edge
  %44 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rf, align 8
  %pble_rsrc23 = getelementptr inbounds %struct.irdma_pci_f, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %pble_rsrc23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pble_rsrc23, align 4
  tail call void @irdma_free_pble(ptr noundef %47, ptr noundef %pble_alloc) #21
  br label %err_get_pble

err_get_pble:                                     ; preds = %err_alloc_stag, %if.end6.err_get_pble_crit_edge
  %48 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rf, align 8
  %mr_stagmask.i = getelementptr inbounds %struct.irdma_pci_f, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %mr_stagmask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mr_stagmask.i, align 8
  %and.i = and i32 %51, %call3
  %shr.i59 = lshr i32 %and.i, 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %49, i32 0, i32 36
  %52 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %allocated_mrs.i, align 8
  %rsrc_lock.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %49, i32 0, i32 53
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i.i) #21
  %rem.i.i.i = and i32 %shr.i59, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 13
  %add.ptr.i.i.i = getelementptr i32, ptr %53, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %55, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i.i, i32 noundef %call2.i.i) #21
  br label %err

err:                                              ; preds = %err_get_pble, %if.end.err_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err ], [ %call7.i.i, %if.end21 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_map_mr_sg(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.irdma_mr, ptr %ibmr, i32 0, i32 5
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %npages, align 8
  %call1 = tail call i32 @ib_sg_to_pages(ptr noundef %ibmr, ptr noundef %sg, i32 noundef %sg_nents, ptr noundef %sg_offset, ptr noundef nonnull @irdma_set_page) #21
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_alloc_mw(ptr nocapture noundef %ibmw, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibmw, align 4
  %call2 = tail call fastcc i32 @irdma_create_stag(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %stag3 = getelementptr inbounds %struct.irdma_mr, ptr %ibmw, i32 0, i32 6
  %2 = ptrtoint ptr %stag3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %stag3, align 4
  %rkey = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 3
  %3 = ptrtoint ptr %rkey to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2, ptr %rkey, align 4
  %pd.i = getelementptr inbounds %struct.ib_mr, ptr %ibmw, i32 0, i32 1
  %4 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd.i, align 4
  %rf.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rf.i, align 8
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %7, i32 0, i32 46
  %call1.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext true) #21
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %if.end.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3
  %info3.i = getelementptr inbounds %struct.anon.252, ptr %in.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %info3.i, i32 0, i32 16)
  %type.i = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 4
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %mw_wide.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %mw_wide.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %mw_wide.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %mw_wide.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %page_size.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %page_size.i, align 4
  %13 = ptrtoint ptr %stag3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stag3, align 4
  %shr.i = lshr i32 %14, 8
  %15 = ptrtoint ptr %info3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i, ptr %info3.i, align 4
  %pd_id.i = getelementptr inbounds %struct.irdma_pd, ptr %5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %pd_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pd_id.i, align 4
  %pd_id6.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %pd_id6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pd_id6.i, align 4
  %remote_access.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %remote_access.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load7.i = load i8, ptr %remote_access.i, align 4
  %bf.set9.i = or i8 %bf.load7.i, -128
  store i8 %bf.set9.i, ptr %remote_access.i, align 4
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 1
  %20 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 17, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 2
  %21 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %post_sq.i, align 1
  %22 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rf.i, align 8
  %sc_dev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %23, i32 0, i32 42
  %24 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sc_dev.i, ptr %in.i, align 8
  %25 = ptrtoint ptr %call1.i to i32
  %conv.i = zext i32 %25 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv.i, ptr %scratch.i, align 8
  %27 = load ptr, ptr %rf.i, align 8
  %call16.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %27, ptr noundef nonnull %call1.i) #21
  %28 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rf.i, align 8
  %cqp18.i = getelementptr inbounds %struct.irdma_pci_f, ptr %29, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp18.i, ptr noundef nonnull %call1.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool19.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool19.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.if.then6_crit_edge

if.end5.i.if.then6_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then6

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then6:                                         ; preds = %if.end5.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %30 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rf.i, align 8
  %mr_stagmask.i = getelementptr inbounds %struct.irdma_pci_f, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %mr_stagmask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mr_stagmask.i, align 8
  %and.i = and i32 %33, %call2
  %shr.i21 = lshr i32 %and.i, 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %31, i32 0, i32 36
  %34 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %allocated_mrs.i, align 8
  %rsrc_lock.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %31, i32 0, i32 53
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i.i) #21
  %rem.i.i.i = and i32 %shr.i21, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 13
  %add.ptr.i.i.i = getelementptr i32, ptr %35, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %37, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i.i, i32 noundef %call2.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_dealloc_mw(ptr nocapture noundef readonly %ibmw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %2 = ptrtoint ptr %ibmw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibmw, align 4
  %rf = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %5, i32 0, i32 46
  %call3 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 3
  %info5 = getelementptr inbounds %struct.anon.254, ptr %in, i32 0, i32 1
  %6 = call ptr @memset(ptr %info5, i32 0, i32 12)
  %pd_id = getelementptr inbounds %struct.irdma_pd, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pd_id, align 4
  %and = and i32 %8, 32767
  %pd_id6 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %pd_id6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %pd_id6, align 4
  %rkey = getelementptr inbounds %struct.ib_mw, ptr %ibmw, i32 0, i32 3
  %10 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rkey, align 4
  %shr = lshr i32 %11, 8
  %12 = ptrtoint ptr %info5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %info5, align 4
  %mr = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %mr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mr, align 4
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 1
  %14 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 2
  %15 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %post_sq, align 1
  %16 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rf, align 8
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %17, i32 0, i32 42
  %18 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sc_dev, ptr %in, align 8
  %19 = ptrtoint ptr %call3 to i32
  %conv = zext i32 %19 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call3, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %scratch, align 8
  %21 = load ptr, ptr %rf, align 8
  %call13 = tail call i32 @irdma_handle_cqp_op(ptr noundef %21, ptr noundef nonnull %call3) #21
  %22 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rf, align 8
  %cqp15 = getelementptr inbounds %struct.irdma_pci_f, ptr %23, i32 0, i32 46
  tail call void @irdma_put_cqp_request(ptr noundef %cqp15, ptr noundef nonnull %call3) #21
  %stag = getelementptr inbounds %struct.irdma_mr, ptr %ibmw, i32 0, i32 6
  %24 = ptrtoint ptr %stag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stag, align 4
  %26 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rf, align 8
  %mr_stagmask.i = getelementptr inbounds %struct.irdma_pci_f, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %mr_stagmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mr_stagmask.i, align 8
  %and.i = and i32 %29, %25
  %shr.i = lshr i32 %and.i, 8
  %allocated_mrs.i = getelementptr inbounds %struct.irdma_pci_f, ptr %27, i32 0, i32 36
  %30 = ptrtoint ptr %allocated_mrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %allocated_mrs.i, align 8
  %rsrc_lock.i.i = getelementptr inbounds %struct.irdma_pci_f, ptr %27, i32 0, i32 53
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i.i) #21
  %rem.i.i.i = and i32 %shr.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %and.i, 13
  %add.ptr.i.i.i = getelementptr i32, ptr %31, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %33, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i.i, i32 noundef %call2.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @irdma_alloc_hw_port_stats(ptr nocapture noundef readnone %ibdev, i32 noundef %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef nonnull @irdma_hw_stat_descs, i32 noundef 46, i32 noundef 10) #21
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irdma_get_hw_stats(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef %stats, i32 noundef %port_num, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pestat = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 4, i32 16
  %0 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pestat, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %ibdev, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %rdma_ver = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rdma_ver to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rdma_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = tail call i32 @irdma_cqp_gather_stats_cmd(ptr noundef %sc_dev, ptr noundef %1, i1 noundef zeroext true) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @irdma_cqp_gather_stats_gen1(ptr noundef %sc_dev, ptr noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw_stats1 = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %1, i32 0, i32 1
  %value = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %value, ptr %hw_stats1, i32 368)
  %num_counters = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 5
  %7 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_counters, align 4
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_inline_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_inline_rdma_write(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_rdma_write(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_rdma_read(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_stag_local_invalidate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_mr_fast_register(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_uk_qp_post_wr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_post_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__irdma_poll_cq(ptr noundef %iwcq, i32 noundef %num_entries, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cqe2 = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 16
  %0 = ptrtoint ptr %iwcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwcq, align 8
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 1
  %resize_list = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 15
  %2 = ptrtoint ptr %resize_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resize_list, align 8
  %cmp.i.not151 = icmp eq ptr %3, %resize_list
  br i1 %cmp.i.not151, label %entry.while.cond20.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.while.cond20.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %while.end.thread188.while.cond20.preheader_crit_edge, %entry.while.cond20.preheader_crit_edge
  %npolled.0.lcssa = phi i32 [ 0, %entry.while.cond20.preheader_crit_edge ], [ %npolled.1.ph.lcssa135186, %while.end.thread188.while.cond20.preheader_crit_edge ]
  %last_buf.0.lcssa = phi ptr [ null, %entry.while.cond20.preheader_crit_edge ], [ %6, %while.end.thread188.while.cond20.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %npolled.0.lcssa, i32 %num_entries)
  %cmp21165 = icmp slt i32 %npolled.0.lcssa, %num_entries
  br i1 %cmp21165, label %while.cond20.preheader.while.body22.lr.ph_crit_edge, label %while.cond20.preheader.if.else_crit_edge

while.cond20.preheader.if.else_crit_edge:         ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

while.cond20.preheader.while.body22.lr.ph_crit_edge: ; preds = %while.cond20.preheader
  br label %while.body22.lr.ph

for.body:                                         ; preds = %while.end.thread188.for.body_crit_edge, %entry.for.body_crit_edge
  %list_node.0154 = phi ptr [ %tmp_node.0155, %while.end.thread188.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %last_buf.0153 = phi ptr [ %6, %while.end.thread188.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %npolled.0152 = phi i32 [ %npolled.1.ph.lcssa135186, %while.end.thread188.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %list_node.0154 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_node.0155 = load ptr, ptr %list_node.0154, align 4
  %add.ptr = getelementptr i8, ptr %list_node.0154, i32 -56
  call void @__sanitizer_cov_trace_cmp4(i32 %npolled.0152, i32 %num_entries)
  %cmp144 = icmp slt i32 %npolled.0152, %num_entries
  br i1 %cmp144, label %while.body.lr.ph.lr.ph, label %for.body.while.end.thread188_crit_edge

for.body.while.end.thread188_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.thread188

while.body.lr.ph.lr.ph:                           ; preds = %for.body
  %cq_uk6 = getelementptr i8, ptr %list_node.0154, i32 -44
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %cmp147 = phi i1 [ true, %while.body.lr.ph.lr.ph ], [ %cmp, %if.then.while.body.lr.ph_crit_edge ]
  %npolled.1.ph146 = phi i32 [ %npolled.0152, %while.body.lr.ph.lr.ph ], [ %inc, %if.then.while.body.lr.ph_crit_edge ]
  %cq_new_cqe.1.off0.ph145 = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ true, %if.then.while.body.lr.ph_crit_edge ]
  %add.ptr7 = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1.ph146
  br label %while.body

while.cond:                                       ; preds = %while.body
  br i1 %cmp147, label %while.cond.while.body_crit_edge, label %while.cond.while.end.thread_crit_edge

while.cond.while.end.thread_crit_edge:            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.thread

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %cq_new_cqe.1.off0138 = phi i1 [ %cq_new_cqe.1.off0.ph145, %while.body.lr.ph ], [ true, %while.cond.while.body_crit_edge ]
  %call8 = tail call fastcc i32 @irdma_poll_one(ptr noundef %cq_uk6, ptr noundef %cur_cqe2, ptr noundef %add.ptr7)
  %5 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call8, label %while.body.do.body_crit_edge [
    i32 0, label %if.then
    i32 -22, label %while.end
    i32 -68, label %while.cond
  ]

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.then:                                          ; preds = %while.body
  %inc = add i32 %npolled.1.ph146, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num_entries)
  %cmp = icmp slt i32 %inc, %num_entries
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %if.then.while.end.thread_crit_edge, label %if.then.while.body.lr.ph_crit_edge

if.then.while.body.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.lr.ph

if.then.while.end.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.thread

while.end:                                        ; preds = %while.body
  br i1 %cq_new_cqe.1.off0138, label %while.end.while.end.thread_crit_edge, label %while.end.while.end.thread188_crit_edge

while.end.while.end.thread188_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.thread188

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.then.while.end.thread_crit_edge, %while.cond.while.end.thread_crit_edge
  %npolled.1.ph.lcssa135187 = phi i32 [ %npolled.1.ph146, %while.end.while.end.thread_crit_edge ], [ %npolled.1.ph146, %while.cond.while.end.thread_crit_edge ], [ %num_entries, %if.then.while.end.thread_crit_edge ]
  br label %while.end.thread188

while.end.thread188:                              ; preds = %while.end.thread, %while.end.while.end.thread188_crit_edge, %for.body.while.end.thread188_crit_edge
  %npolled.1.ph.lcssa135186 = phi i32 [ %npolled.1.ph.lcssa135187, %while.end.thread ], [ %npolled.1.ph146, %while.end.while.end.thread188_crit_edge ], [ %npolled.0152, %for.body.while.end.thread188_crit_edge ]
  %6 = phi ptr [ %add.ptr, %while.end.thread ], [ %last_buf.0153, %while.end.while.end.thread188_crit_edge ], [ %last_buf.0153, %for.body.while.end.thread188_crit_edge ]
  %cmp.i.not = icmp eq ptr %tmp_node.0155, %resize_list
  br i1 %cmp.i.not, label %while.end.thread188.while.cond20.preheader_crit_edge, label %while.end.thread188.for.body_crit_edge

while.end.thread188.for.body_crit_edge:           ; preds = %while.end.thread188
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

while.end.thread188.while.cond20.preheader_crit_edge: ; preds = %while.end.thread188
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond20.preheader

while.cond20:                                     ; preds = %while.body22
  br i1 %cmp21168, label %while.cond20.while.body22_crit_edge, label %while.cond20.if.then37_crit_edge

while.cond20.if.then37_crit_edge:                 ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then37

while.cond20.while.body22_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body22

while.body22:                                     ; preds = %while.body22.lr.ph, %while.cond20.while.body22_crit_edge
  %cq_new_cqe.2.off0158 = phi i1 [ %cq_new_cqe.2.off0.ph166, %while.body22.lr.ph ], [ true, %while.cond20.while.body22_crit_edge ]
  %call24 = tail call fastcc i32 @irdma_poll_one(ptr noundef %sc_cq, ptr noundef %cur_cqe2, ptr noundef %add.ptr23)
  %7 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call24, label %while.body22.do.body_crit_edge [
    i32 0, label %if.then26
    i32 -22, label %while.end35
    i32 -68, label %while.cond20
  ]

while.body22.do.body_crit_edge:                   ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body

if.then26:                                        ; preds = %while.body22
  %inc27 = add i32 %npolled.2.ph167, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc27, i32 %num_entries)
  %cmp21 = icmp slt i32 %inc27, %num_entries
  %exitcond183.not = icmp eq i32 %inc27, %num_entries
  br i1 %exitcond183.not, label %if.then26.if.then37_crit_edge, label %if.then26.while.body22.lr.ph_crit_edge

if.then26.while.body22.lr.ph_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body22.lr.ph

if.then26.if.then37_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then37

while.body22.lr.ph:                               ; preds = %if.then26.while.body22.lr.ph_crit_edge, %while.cond20.preheader.while.body22.lr.ph_crit_edge
  %cmp21168 = phi i1 [ %cmp21, %if.then26.while.body22.lr.ph_crit_edge ], [ true, %while.cond20.preheader.while.body22.lr.ph_crit_edge ]
  %npolled.2.ph167 = phi i32 [ %inc27, %if.then26.while.body22.lr.ph_crit_edge ], [ %npolled.0.lcssa, %while.cond20.preheader.while.body22.lr.ph_crit_edge ]
  %cq_new_cqe.2.off0.ph166 = phi i1 [ true, %if.then26.while.body22.lr.ph_crit_edge ], [ false, %while.cond20.preheader.while.body22.lr.ph_crit_edge ]
  %add.ptr23 = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.2.ph167
  br label %while.body22

while.end35:                                      ; preds = %while.body22
  br i1 %cq_new_cqe.2.off0158, label %while.end35.if.then37_crit_edge, label %while.end35.if.else_crit_edge

while.end35.if.else_crit_edge:                    ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

while.end35.if.then37_crit_edge:                  ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then37

if.then37:                                        ; preds = %while.end35.if.then37_crit_edge, %if.then26.if.then37_crit_edge, %while.cond20.if.then37_crit_edge
  %npolled.2.ph.lcssa131194 = phi i32 [ %npolled.2.ph167, %while.end35.if.then37_crit_edge ], [ %npolled.2.ph167, %while.cond20.if.then37_crit_edge ], [ %num_entries, %if.then26.if.then37_crit_edge ]
  %8 = ptrtoint ptr %resize_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resize_list, align 8
  %cmp.i17.i = icmp eq ptr %9, %resize_list
  %add.ptr18.i = getelementptr i8, ptr %9, i32 -56
  %cmp19.i = icmp eq ptr %add.ptr18.i, null
  %or.cond20.i = or i1 %cmp.i17.i, %cmp19.i
  br i1 %or.cond20.i, label %if.then37.cleanup_crit_edge, label %if.end.lr.ph.i

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.lr.ph.i:                                   ; preds = %if.then37
  %cleanup_wq.i = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 3
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %cnt.023.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %list_del.exit.i.if.end.i_crit_edge ]
  %list_node.021.i = phi ptr [ %9, %if.end.lr.ph.i ], [ %tmp_node.024.i, %list_del.exit.i.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp_node.024.i = load ptr, ptr %list_node.021.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.021.i) #21
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.021.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list_node.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %list_node.021.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list_node.021.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %cleanup_wq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cleanup_wq.i, align 8
  %work.i = getelementptr i8, ptr %list_node.021.i, i32 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work.i) #21
  %inc.i = add i32 %cnt.023.i, 1
  %cmp.i.i = icmp eq ptr %tmp_node.024.i, %resize_list
  %add.ptr.i = getelementptr i8, ptr %tmp_node.024.i, i32 -56
  %cmp.i96 = icmp eq ptr %add.ptr.i, null
  %or.cond.i = or i1 %cmp.i.i, %cmp.i96
  br i1 %or.cond.i, label %list_del.exit.i.if.end43_crit_edge, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

list_del.exit.i.if.end43_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43

if.else:                                          ; preds = %while.end35.if.else_crit_edge, %while.cond20.preheader.if.else_crit_edge
  %npolled.2.ph.lcssa131198 = phi i32 [ %npolled.2.ph167, %while.end35.if.else_crit_edge ], [ %npolled.0.lcssa, %while.cond20.preheader.if.else_crit_edge ]
  %tobool39.not = icmp eq ptr %last_buf.0.lcssa, null
  br i1 %tobool39.not, label %if.else.cleanup_crit_edge, label %if.then40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then40:                                        ; preds = %if.else
  %21 = ptrtoint ptr %resize_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resize_list, align 8
  %cmp.i17.i98 = icmp eq ptr %22, %resize_list
  %add.ptr18.i99 = getelementptr i8, ptr %22, i32 -56
  %cmp19.i100 = icmp eq ptr %add.ptr18.i99, %last_buf.0.lcssa
  %or.cond20.i101 = or i1 %cmp.i17.i98, %cmp19.i100
  br i1 %or.cond20.i101, label %if.then40.cleanup_crit_edge, label %if.end.lr.ph.i103

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.lr.ph.i103:                                ; preds = %if.then40
  %cleanup_wq.i102 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 3
  br label %if.end.i108

if.end.i108:                                      ; preds = %list_del.exit.i120.if.end.i108_crit_edge, %if.end.lr.ph.i103
  %cnt.023.i104 = phi i32 [ 0, %if.end.lr.ph.i103 ], [ %inc.i115, %list_del.exit.i120.if.end.i108_crit_edge ]
  %list_node.021.i105 = phi ptr [ %22, %if.end.lr.ph.i103 ], [ %tmp_node.024.i106, %list_del.exit.i120.if.end.i108_crit_edge ]
  %23 = ptrtoint ptr %list_node.021.i105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp_node.024.i106 = load ptr, ptr %list_node.021.i105, align 4
  %call.i.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node.021.i105) #21
  br i1 %call.i.i.i107, label %if.end.i.i.i111, label %if.end.i108.list_del.exit.i120_crit_edge

if.end.i108.list_del.exit.i120_crit_edge:         ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit.i120

if.end.i.i.i111:                                  ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %list_node.021.i105, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i109, align 4
  %26 = ptrtoint ptr %list_node.021.i105 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list_node.021.i105, align 4
  %prev1.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i110, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i120

list_del.exit.i120:                               ; preds = %if.end.i.i.i111, %if.end.i108.list_del.exit.i120_crit_edge
  %30 = ptrtoint ptr %list_node.021.i105 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %list_node.021.i105, align 4
  %prev.i.i112 = getelementptr inbounds %struct.list_head, ptr %list_node.021.i105, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i112, align 4
  %32 = ptrtoint ptr %cleanup_wq.i102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cleanup_wq.i102, align 8
  %work.i113 = getelementptr i8, ptr %list_node.021.i105, i32 8
  %call.i.i114 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work.i113) #21
  %inc.i115 = add i32 %cnt.023.i104, 1
  %cmp.i.i116 = icmp eq ptr %tmp_node.024.i106, %resize_list
  %add.ptr.i117 = getelementptr i8, ptr %tmp_node.024.i106, i32 -56
  %cmp.i118 = icmp eq ptr %add.ptr.i117, %last_buf.0.lcssa
  %or.cond.i119 = or i1 %cmp.i.i116, %cmp.i118
  br i1 %or.cond.i119, label %list_del.exit.i120.if.end43_crit_edge, label %list_del.exit.i120.if.end.i108_crit_edge

list_del.exit.i120.if.end.i108_crit_edge:         ; preds = %list_del.exit.i120
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i108

list_del.exit.i120.if.end43_crit_edge:            ; preds = %list_del.exit.i120
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end43

if.end43:                                         ; preds = %list_del.exit.i120.if.end43_crit_edge, %list_del.exit.i.if.end43_crit_edge
  %npolled.2.ph.lcssa131193 = phi i32 [ %npolled.2.ph.lcssa131194, %list_del.exit.i.if.end43_crit_edge ], [ %npolled.2.ph.lcssa131198, %list_del.exit.i120.if.end43_crit_edge ]
  %resized_bufs.0 = phi i32 [ %inc.i, %list_del.exit.i.if.end43_crit_edge ], [ %inc.i115, %list_del.exit.i120.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resized_bufs.0)
  %tobool44.not = icmp eq i32 %resized_bufs.0, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #23
  %conv = trunc i32 %resized_bufs.0 to i16
  tail call void @irdma_uk_cq_set_resized_cnt(ptr noundef %sc_cq, i16 noundef zeroext %conv) #21
  br label %cleanup

do.body:                                          ; preds = %while.body22.do.body_crit_edge, %while.body.do.body_crit_edge
  %ret.0 = phi i32 [ %call24, %while.body22.do.body_crit_edge ], [ %call8, %while.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__irdma_poll_cq.__UNIQUE_ID_ddebug733, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__irdma_poll_cq, %if.then53)) #21
          to label %cleanup [label %if.then53], !srcloc !259

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @__irdma_poll_cq.__UNIQUE_ID_ddebug733, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %ret.0) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body, %if.then45, %if.end43.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %retval.0 = phi i32 [ %npolled.2.ph.lcssa131193, %if.then45 ], [ %npolled.2.ph.lcssa131193, %if.end43.cleanup_crit_edge ], [ -22, %if.then53 ], [ -22, %do.body ], [ %npolled.2.ph.lcssa131198, %if.else.cleanup_crit_edge ], [ %npolled.2.ph.lcssa131194, %if.then37.cleanup_crit_edge ], [ %npolled.2.ph.lcssa131198, %if.then40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_poll_one(ptr noundef %ukcq, ptr noundef %cur_cqe, ptr noundef %entry1) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 @irdma_uk_cq_poll_cmpl(ptr noundef %ukcq, ptr noundef %cur_cqe) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %wc_flags.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 9
  %0 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wc_flags.i, align 8
  %pkey_index.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 10
  %1 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %pkey_index.i, align 4
  %2 = ptrtoint ptr %cur_cqe to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cur_cqe, align 8
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %entry1, align 8
  %qp_handle.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 1
  %5 = ptrtoint ptr %qp_handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qp_handle.i, align 8
  %back_qp.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %back_qp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %back_qp.i, align 8
  %qp4.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 5
  %9 = ptrtoint ptr %qp4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %qp4.i, align 8
  %error.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 14
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %error.i, align 1
  %11 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not.i = icmp eq i8 %11, 0
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %comp_status.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 8
  %12 = ptrtoint ptr %comp_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %comp_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %cond.true.i, label %if.then.i.cond.end.i_crit_edge

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  %minor_err.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 10
  %14 = ptrtoint ptr %minor_err.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %minor_err.i, align 2
  %switch.tableidx = add i16 %15, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %16 = icmp ult i16 %switch.tableidx, 9
  br i1 %16, label %switch.lookup, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cond.end.i

switch.lookup:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %17 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.irdma_poll_one, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %switch.lookup, %cond.true.i.cond.end.i_crit_edge, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ 21, %if.then.i.cond.end.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 19, %cond.true.i.cond.end.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 1
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %status.i, align 8
  %major_err.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 9
  %20 = ptrtoint ptr %major_err.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %major_err.i, align 8
  %conv5.i = zext i16 %21 to i32
  %shl.i = shl nuw i32 %conv5.i, 16
  %minor_err6.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 10
  %22 = ptrtoint ptr %minor_err6.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %minor_err6.i, align 2
  %conv7.i = zext i16 %23 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %vendor_err.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 3
  %24 = ptrtoint ptr %vendor_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i, ptr %vendor_err.i, align 8
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end
  %status8.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 1
  %25 = ptrtoint ptr %status8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %status8.i, align 8
  %26 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load9.i = load i8, ptr %error.i, align 1
  %27 = and i8 %bf.load9.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %bf.cast11.not.i = icmp eq i8 %27, 0
  br i1 %bf.cast11.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then12.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  %imm_data.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 6
  %28 = ptrtoint ptr %imm_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %imm_data.i, align 4
  %ex.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 6
  %30 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ex.i, align 4
  %31 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %wc_flags.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i, %if.else.i.if.end.i_crit_edge
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load15.i = load i8, ptr %error.i, align 1
  %33 = and i8 %bf.load15.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %bf.cast18.not.i = icmp eq i8 %33, 0
  br i1 %bf.cast18.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then19.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %smac.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 14
  %ud_smac.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 12
  %34 = ptrtoint ptr %ud_smac.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ud_smac.i, align 4
  %36 = ptrtoint ptr %smac.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %smac.i, align 4
  %add.ptr.i.i = getelementptr %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 12, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ib_wc, ptr %entry1, i32 0, i32 14, i32 4
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i.i, align 2
  %40 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wc_flags.i, align 8
  %or22.i = or i32 %41, 16
  store i32 %or22.i, ptr %wc_flags.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end.i.if.end23.i_crit_edge
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load24.i = load i8, ptr %error.i, align 1
  %43 = and i8 %bf.load24.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %bf.cast27.not.i = icmp eq i8 %43, 0
  br i1 %bf.cast27.not.i, label %if.else38.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end23.i
  %ud_vlan.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 11
  %44 = ptrtoint ptr %ud_vlan.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ud_vlan.i, align 4
  %and.i = and i16 %45, 4095
  %46 = lshr i16 %45, 13
  %conv33.i = trunc i16 %46 to i8
  %sl.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 11
  %47 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv33.i, ptr %sl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %tobool.not.i = icmp eq i16 %and.i, 0
  br i1 %tobool.not.i, label %if.then28.i.if.end41.i_crit_edge, label %if.then34.i

if.then28.i.if.end41.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #23
  %vlan_id.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 15
  %48 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %and.i, ptr %vlan_id.i, align 2
  %49 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wc_flags.i, align 8
  %or36.i = or i32 %50, 32
  store i32 %or36.i, ptr %wc_flags.i, align 8
  br label %if.end41.i

if.else38.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #23
  %sl39.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 11
  %51 = ptrtoint ptr %sl39.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %sl39.i, align 2
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %if.then34.i, %if.then28.i.if.end41.i_crit_edge, %cond.end.i
  %op_type.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 13
  %52 = ptrtoint ptr %op_type.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %op_type.i, align 4
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %53, label %sw.default.i [
    i8 0, label %if.end41.i.sw.bb.i_crit_edge
    i8 13, label %if.end41.i.sw.bb.i_crit_edge4
    i8 11, label %if.end41.i.sw.bb43.i_crit_edge
    i8 1, label %if.end41.i.sw.bb43.i_crit_edge5
    i8 4, label %if.end41.i.sw.bb45.i_crit_edge
    i8 5, label %if.end41.i.sw.bb45.i_crit_edge6
    i8 6, label %if.end41.i.sw.bb45.i_crit_edge7
    i8 3, label %if.end41.i.sw.bb45.i_crit_edge8
    i8 9, label %sw.bb47.i
    i8 10, label %sw.bb49.i
    i8 63, label %if.end41.i.sw.bb51.i_crit_edge
    i8 62, label %if.end41.i.sw.bb51.i_crit_edge9
  ]

if.end41.i.sw.bb51.i_crit_edge9:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb51.i

if.end41.i.sw.bb51.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb51.i

if.end41.i.sw.bb45.i_crit_edge8:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb45.i

if.end41.i.sw.bb45.i_crit_edge7:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb45.i

if.end41.i.sw.bb45.i_crit_edge6:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb45.i

if.end41.i.sw.bb45.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb45.i

if.end41.i.sw.bb43.i_crit_edge5:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb43.i

if.end41.i.sw.bb43.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb43.i

if.end41.i.sw.bb.i_crit_edge4:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i

if.end41.i.sw.bb.i_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end41.i.sw.bb.i_crit_edge, %if.end41.i.sw.bb.i_crit_edge4
  %opcode.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %55 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %opcode.i, align 4
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.end41.i.sw.bb43.i_crit_edge, %if.end41.i.sw.bb43.i_crit_edge5
  %opcode44.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %56 = ptrtoint ptr %opcode44.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %opcode44.i, align 4
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %if.end41.i.sw.bb45.i_crit_edge, %if.end41.i.sw.bb45.i_crit_edge6, %if.end41.i.sw.bb45.i_crit_edge7, %if.end41.i.sw.bb45.i_crit_edge8
  %opcode46.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %57 = ptrtoint ptr %opcode46.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %opcode46.i, align 4
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  %opcode48.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %58 = ptrtoint ptr %opcode48.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %opcode48.i, align 4
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  %opcode50.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %59 = ptrtoint ptr %opcode50.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %opcode50.i, align 4
  br label %sw.epilog.i

sw.bb51.i:                                        ; preds = %if.end41.i.sw.bb51.i_crit_edge, %if.end41.i.sw.bb51.i_crit_edge9
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %53)
  %cmp54.i = icmp eq i8 %53, 63
  %cond56.i = select i1 %cmp54.i, i32 129, i32 128
  %opcode57.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 2
  %60 = ptrtoint ptr %opcode57.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond56.i, ptr %opcode57.i, align 4
  %qp_type.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %6, i32 0, i32 21
  %61 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %qp_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %62)
  %cmp60.not.i = icmp eq i8 %62, 4
  br i1 %cmp60.not.i, label %sw.bb51.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb51.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb51.i
  %63 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load62.i = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load62.i)
  %bf.cast64.not.i = icmp sgt i8 %bf.load62.i, -1
  br i1 %bf.cast64.not.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %if.then66.i

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog.i

if.then66.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  %inv_stag.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 7
  %64 = ptrtoint ptr %inv_stag.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %inv_stag.i, align 8
  %ex67.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 6
  %66 = ptrtoint ptr %ex67.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ex67.i, align 4
  %67 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wc_flags.i, align 8
  %or69.i = or i32 %68, 4
  store i32 %or69.i, ptr %wc_flags.i, align 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv42.i = zext i8 %53 to i32
  %iwdev.i = getelementptr inbounds %struct.irdma_qp, ptr %8, i32 0, i32 3
  %69 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ...) @ibdev_err(ptr noundef %70, ptr noundef nonnull @.str.35, i32 noundef %conv42.i) #24
  %status73.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 1
  %71 = ptrtoint ptr %status73.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 21, ptr %status73.i, align 8
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then66.i, %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb51.i.sw.epilog.i_crit_edge, %sw.bb49.i, %sw.bb47.i, %sw.bb45.i, %sw.bb43.i, %sw.bb.i
  %qp_type75.i = getelementptr inbounds %struct.irdma_qp_uk, ptr %6, i32 0, i32 21
  %72 = ptrtoint ptr %qp_type75.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %qp_type75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %73)
  %cmp77.i = icmp eq i8 %73, 4
  br i1 %cmp77.i, label %if.then79.i, label %if.else89.i

if.then79.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %ud_src_qpn.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 5
  %74 = ptrtoint ptr %ud_src_qpn.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ud_src_qpn.i, align 8
  %src_qp.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 7
  %76 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %src_qp.i, align 8
  %slid.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 8
  %77 = ptrtoint ptr %slid.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %slid.i, align 4
  %78 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wc_flags.i, align 8
  %or81.i = or i32 %79, 65
  store i32 %or81.i, ptr %wc_flags.i, align 8
  %80 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load82.i = load i8, ptr %error.i, align 1
  %81 = and i8 %bf.load82.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %bf.cast85.not.i = icmp eq i8 %81, 0
  %conv88.i = select i1 %bf.cast85.not.i, i8 3, i8 2
  %network_hdr_type.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 16
  %82 = ptrtoint ptr %network_hdr_type.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv88.i, ptr %network_hdr_type.i, align 4
  br label %if.end91.i

if.else89.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %qp_id.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 4
  %83 = ptrtoint ptr %qp_id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qp_id.i, align 4
  %src_qp90.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 7
  %85 = ptrtoint ptr %src_qp90.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %src_qp90.i, align 8
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else89.i, %if.then79.i
  %bytes_xfered.i = getelementptr inbounds %struct.irdma_cq_poll_info, ptr %cur_cqe, i32 0, i32 2
  %86 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bytes_xfered.i, align 4
  %byte_len.i = getelementptr inbounds %struct.ib_wc, ptr %entry1, i32 0, i32 4
  %88 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %byte_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91.i, %sw.default.i, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_uk_cq_set_resized_cnt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_uk_cq_poll_cmpl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_uk_cq_request_notification(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irdma_cq_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_user_mmap_entry_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_user_mmap_io(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_user_mmap_entry_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_pd_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @irdma_get_pbl(i32 noundef %va, ptr noundef readonly %pbl_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %va to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %iwpbl.0.in = phi ptr [ %pbl_list, %entry ], [ %iwpbl.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %iwpbl.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %iwpbl.0 = load ptr, ptr %iwpbl.0.in, align 4
  %cmp.not = icmp eq ptr %iwpbl.0, %pbl_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %user_base = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0, i32 0, i32 3
  %1 = ptrtoint ptr %user_base to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %user_base, align 8
  %cmp1 = icmp eq i64 %2, %conv
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iwpbl.0) #21
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iwpbl.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %iwpbl.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iwpbl.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %iwpbl.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %iwpbl.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iwpbl.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %on_list = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl.0, i32 0, i32 2
  %11 = ptrtoint ptr %on_list to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %on_list, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %on_list, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %iwpbl.0, %list_del.exit ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_qp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_roce_fill_and_set_qpctx_info(ptr noundef %iwqp, ptr noundef %ctx_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %4 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11
  %mtu = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 10
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %6)
  %cmp.i = icmp ugt i16 %6, 4095
  br i1 %cmp.i, label %entry.ib_mtu_enum_to_int.exit_crit_edge, label %if.else.i

entry.ib_mtu_enum_to_int.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_enum_to_int.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %6)
  %cmp1.i = icmp ugt i16 %6, 2047
  br i1 %cmp1.i, label %if.else.i.ib_mtu_enum_to_int.exit_crit_edge, label %if.else3.i

if.else.i.ib_mtu_enum_to_int.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_enum_to_int.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %6)
  %cmp4.i = icmp ugt i16 %6, 1023
  br i1 %cmp4.i, label %if.else3.i.ib_mtu_enum_to_int.exit_crit_edge, label %if.else6.i

if.else3.i.ib_mtu_enum_to_int.exit_crit_edge:     ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %ib_mtu_enum_to_int.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %6)
  %cmp7.i = icmp ugt i16 %6, 511
  %spec.select = select i1 %cmp7.i, i32 512, i32 256
  br label %ib_mtu_enum_to_int.exit

ib_mtu_enum_to_int.exit:                          ; preds = %if.else6.i, %if.else3.i.ib_mtu_enum_to_int.exit_crit_edge, %if.else.i.ib_mtu_enum_to_int.exit_crit_edge, %entry.ib_mtu_enum_to_int.exit_crit_edge
  %retval.0.i58 = phi i32 [ 1024, %if.else3.i.ib_mtu_enum_to_int.exit_crit_edge ], [ 2048, %if.else.i.ib_mtu_enum_to_int.exit_crit_edge ], [ 4096, %entry.ib_mtu_enum_to_int.exit_crit_edge ], [ %spec.select, %if.else6.i ]
  %snd_mss = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %snd_mss to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i58, ptr %snd_mss, align 4
  %roce_cwnd = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %roce_cwnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %roce_cwnd, align 8
  %cwnd = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11, i32 0, i32 24
  %10 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cwnd, align 4
  %rexmit_thresh = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11, i32 0, i32 25
  %11 = ptrtoint ptr %rexmit_thresh to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %rexmit_thresh, align 4
  %rnr_nak_thresh = getelementptr inbounds %struct.irdma_udp_offload_info, ptr %4, i32 0, i32 19
  %12 = ptrtoint ptr %rnr_nak_thresh to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %rnr_nak_thresh, align 1
  %src_port = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11, i32 0, i32 3
  %13 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -16384, ptr %src_port, align 4
  %dst_port = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 11, i32 0, i32 5
  %14 = ptrtoint ptr %dst_port to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4791, ptr %dst_port, align 2
  %mac_addr = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 14
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 14, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %add.ptr1.i, align 2
  %rd_en = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 10
  %25 = ptrtoint ptr %rd_en to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %rd_en, align 4
  %bf.set8 = and i16 %bf.load, -11393
  %bf.clear10 = or i16 %bf.set8, 3200
  store i16 %bf.clear10, ptr %rd_en, align 4
  %rtomin = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 15
  %26 = ptrtoint ptr %rtomin to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %rtomin, align 1
  %roce_ackcreds = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %roce_ackcreds to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %roce_ackcreds, align 4
  %conv12 = trunc i32 %28 to i8
  %ack_credits = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 5
  %29 = ptrtoint ptr %ack_credits to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12, ptr %ack_credits, align 1
  %max_hw_ird = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 12
  %30 = ptrtoint ptr %max_hw_ird to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_hw_ird, align 8
  %conv13 = trunc i32 %31 to i16
  %ird_size = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 9
  %32 = ptrtoint ptr %ird_size to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv13, ptr %ird_size, align 2
  %max_hw_ord = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 13
  %33 = ptrtoint ptr %max_hw_ord to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_hw_ord, align 4
  %conv15 = trunc i32 %34 to i16
  %ord_size = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 8
  %35 = ptrtoint ptr %ord_size to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv15, ptr %ord_size, align 4
  %user_mode = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 30
  %36 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load16 = load i8, ptr %user_mode, align 8
  %37 = and i8 %bf.load16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.then, label %ib_mtu_enum_to_int.exit.if.end_crit_edge

ib_mtu_enum_to_int.exit.if.end_crit_edge:         ; preds = %ib_mtu_enum_to_int.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %ib_mtu_enum_to_int.exit
  call void @__sanitizer_cov_trace_pc() #23
  %bf.set26 = or i16 %bf.set8, 20352
  %38 = ptrtoint ptr %rd_en to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.set26, ptr %rd_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ib_mtu_enum_to_int.exit.if.end_crit_edge
  %39 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10
  %roce_tver = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 4
  %40 = ptrtoint ptr %roce_tver to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %roce_tver, align 4
  %41 = getelementptr inbounds %struct.irdma_qp_host_ctx_info, ptr %ctx_info, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irdma_qp_host_ctx_info, ptr %ctx_info, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %4, ptr %43, align 8
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  %host_ctx = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 37
  %45 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_ctx, align 4
  tail call void @irdma_sc_qp_setctx_roce(ptr noundef %sc_qp, ptr noundef %46, ptr noundef %ctx_info) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_iw_fill_and_set_qpctx_info(ptr noundef %iwqp, ptr noundef %ctx_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %4 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10
  %mac_addr = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %4, i32 0, i32 13
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 14
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 2
  %rd_en = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 8
  %15 = ptrtoint ptr %rd_en to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %rd_en, align 4
  %bf.set10 = or i16 %bf.load, 804
  store i16 %bf.set10, ptr %rd_en, align 4
  %rtomin = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 14, i32 2
  %16 = ptrtoint ptr %rtomin to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %rtomin, align 1
  %hw_rev = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 25, i32 0, i32 9
  %17 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp = icmp ugt i8 %18, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %bf.set14 = or i16 %bf.load, -31964
  %19 = ptrtoint ptr %rd_en to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set14, ptr %rd_en, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %user_mode = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 30
  %20 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load15 = load i8, ptr %user_mode, align 8
  %21 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.then17, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end24

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %22 = ptrtoint ptr %rd_en to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load18 = load i16, ptr %rd_en, align 4
  %bf.set23 = or i16 %bf.load18, 192
  store i16 %bf.set23, ptr %rd_en, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end.if.end24_crit_edge
  %ddp_ver = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 10, i32 0, i32 2
  %23 = ptrtoint ptr %ddp_ver to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ddp_ver, align 4
  %rdmap_ver = getelementptr inbounds %struct.irdma_iwarp_offload_info, ptr %4, i32 0, i32 3
  %24 = ptrtoint ptr %rdmap_ver to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rdmap_ver, align 1
  %25 = getelementptr inbounds %struct.irdma_qp_host_ctx_info, ptr %ctx_info, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %4, ptr %25, align 4
  %iwarp_info_valid = getelementptr inbounds %struct.irdma_qp_host_ctx_info, ptr %ctx_info, i32 0, i32 7
  %27 = ptrtoint ptr %iwarp_info_valid to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load25 = load i8, ptr %iwarp_info_valid, align 1
  %bf.set27 = or i8 %bf.load25, 32
  store i8 %bf.set27, ptr %iwarp_info_valid, align 1
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  %host_ctx = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 37
  %28 = ptrtoint ptr %host_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_ctx, align 4
  tail call void @irdma_sc_qp_setctx(ptr noundef %sc_qp, ptr noundef %29, ptr noundef %ctx_info) #21
  %30 = ptrtoint ptr %iwarp_info_valid to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load29 = load i8, ptr %iwarp_info_valid, align 1
  %bf.clear30 = and i8 %bf.load29, -33
  store i8 %bf.clear30, ptr %iwarp_info_valid, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_cqp_create_qp_cmd(ptr noundef %iwqp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev, align 8
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf1, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info3 = getelementptr inbounds %struct.anon.245, ptr %in, i32 0, i32 1
  %4 = getelementptr inbounds %struct.anon.245, ptr %in, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 1
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 40, ptr %info3, align 1
  %next_iwarp_state = getelementptr inbounds %struct.anon.245, ptr %in, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %next_iwarp_state, align 1
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %post_sq, align 1
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  %10 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sc_qp, ptr %in, align 8
  %11 = ptrtoint ptr %call to i32
  %conv = zext i32 %11 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %scratch, align 8
  %call11 = tail call i32 @irdma_handle_cqp_op(ptr noundef %3, ptr noundef nonnull %call) #21
  tail call void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  %cond = select i1 %tobool13.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_qp_destroy_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_qp_rsrc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_get_wqe_shift(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_get_sqdepth(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_get_rqdepth(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_modify_qp_to_err(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_lsmm_rsrc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_uk_clean_cq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_cq_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cq_wq_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_cq_free_rsrc(ptr noundef %rf, ptr nocapture noundef %iwcq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %user_mode = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 5
  %0 = ptrtoint ptr %user_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %user_mode, align 2, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 8
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %kmem = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 10
  %size = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %kmem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kmem, align 4
  %pa = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #21
  %12 = ptrtoint ptr %kmem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %kmem, align 4
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 8
  %device7 = getelementptr inbounds %struct.irdma_hw, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device7, align 4
  %kmem_shadow = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 11
  %size8 = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 11, i32 2
  %17 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size8, align 8
  %19 = ptrtoint ptr %kmem_shadow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kmem_shadow, align 8
  %pa12 = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %pa12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pa12, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #21
  %23 = ptrtoint ptr %kmem_shadow to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %kmem_shadow, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %allocated_cqs = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 35
  %24 = ptrtoint ptr %allocated_cqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %allocated_cqs, align 4
  %cq_id = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cq_id, align 8
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #21
  %rem.i.i = and i32 %27, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %27, 5
  %add.ptr.i.i = getelementptr i32, ptr %25, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %29, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_cleanup_ceqes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_free_cqbuf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %hw = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.irdma_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %size = getelementptr i8, ptr %work, i32 -56
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %pa = getelementptr i8, ptr %work, i32 -60
  %8 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #21
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %add.ptr) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_cq_resize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_umem_find_best_pgsz(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_handle_q_mem(ptr noundef %iwdev, ptr nocapture noundef readonly %req, ptr noundef %iwpbl, i1 noundef zeroext %use_pbles) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %pble_alloc = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 4
  %iwmr1 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 5
  %0 = ptrtoint ptr %iwmr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwmr1, align 8
  %2 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1
  %page_size = getelementptr inbounds %struct.irdma_mr, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %page_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %page_size, align 8
  %conv = trunc i64 %4 to i32
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf, align 8
  %call = tail call fastcc i32 @irdma_setup_pbles(ptr noundef %6, ptr noundef %1, i1 noundef zeroext %use_pbles)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %pgaddrmem = getelementptr inbounds %struct.irdma_mr, ptr %1, i32 0, i32 8
  br i1 %use_pbles, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %level = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.then10.critedge, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rf, align 8
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pble_rsrc, align 4
  tail call void @irdma_free_pble(ptr noundef %12, ptr noundef %pble_alloc) #21
  %pbl_allocated = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 2
  %13 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %pbl_allocated, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %pbl_allocated, align 8
  br label %cleanup

if.then10.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %14 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10.critedge, %if.end.if.end11_crit_edge
  %arr.0 = phi ptr [ %16, %if.then10.critedge ], [ %pgaddrmem, %if.end.if.end11_crit_edge ]
  %type = getelementptr inbounds %struct.irdma_mr, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %18, label %do.body [
    i16 1, label %sw.bb
    i16 2, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end11
  %sq_pages = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %sq_pages to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sq_pages, align 2
  %conv13 = zext i16 %21 to i32
  %rq_pages = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rq_pages, align 2
  %conv14 = zext i16 %23 to i32
  %add = add nuw nsw i32 %conv14, %conv13
  %arrayidx = getelementptr i64, ptr %arr.0, i32 %add
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx, align 8
  %conv15 = trunc i64 %25 to i32
  %shadow = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv15, ptr %shadow, align 4
  br i1 %use_pbles, label %if.then17, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then17:                                        ; preds = %sw.bb
  %27 = ptrtoint ptr %sq_pages to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sq_pages, align 2
  %conv19 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp7.not.i = icmp eq i16 %28, 0
  br i1 %cmp7.not.i, label %if.then17.if.then23_crit_edge, label %for.cond.i.preheader

if.then17.if.then23_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then23

for.cond.i.preheader:                             ; preds = %if.then17
  %29 = ptrtoint ptr %arr.0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arr.0, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %pg_idx.08.i210 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %inc.i = add nuw nsw i32 %pg_idx.08.i210, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv19)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv19
  br i1 %exitcond.not.i, label %for.cond.i.irdma_check_mem_contiguous.exit_crit_edge, label %for.body.i

for.cond.i.irdma_check_mem_contiguous.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_check_mem_contiguous.exit

for.body.i:                                       ; preds = %for.cond.i
  %mul.i = mul i32 %inc.i, %conv
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %30, %conv.i
  %arrayidx.i = getelementptr i64, ptr %arr.0, i32 %inc.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i, align 8
  %cmp1.not.i = icmp eq i64 %add.i, %32
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.irdma_check_mem_contiguous.exit_crit_edge

for.body.i.irdma_check_mem_contiguous.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_check_mem_contiguous.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

irdma_check_mem_contiguous.exit:                  ; preds = %for.body.i.irdma_check_mem_contiguous.exit_crit_edge, %for.cond.i.irdma_check_mem_contiguous.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv19)
  %cmp.i.le = icmp ult i32 %inc.i, %conv19
  br i1 %cmp.i.le, label %irdma_check_mem_contiguous.exit.if.then33_crit_edge, label %irdma_check_mem_contiguous.exit.if.then23_crit_edge

irdma_check_mem_contiguous.exit.if.then23_crit_edge: ; preds = %irdma_check_mem_contiguous.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then23

irdma_check_mem_contiguous.exit.if.then33_crit_edge: ; preds = %irdma_check_mem_contiguous.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then33

if.then23:                                        ; preds = %irdma_check_mem_contiguous.exit.if.then23_crit_edge, %if.then17.if.then23_crit_edge
  %arrayidx25 = getelementptr i64, ptr %arr.0, i32 %conv19
  %33 = ptrtoint ptr %rq_pages to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rq_pages, align 2
  %conv27 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp7.not.i155 = icmp eq i16 %34, 0
  br i1 %cmp7.not.i155, label %if.then23.if.else_crit_edge, label %for.cond.i160.preheader

if.then23.if.else_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

for.cond.i160.preheader:                          ; preds = %if.then23
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx25, align 8
  br label %for.cond.i160

for.cond.i160:                                    ; preds = %for.body.i168.for.cond.i160_crit_edge, %for.cond.i160.preheader
  %pg_idx.08.i162214 = phi i32 [ %inc.i157, %for.body.i168.for.cond.i160_crit_edge ], [ 0, %for.cond.i160.preheader ]
  %inc.i157 = add nuw nsw i32 %pg_idx.08.i162214, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i157, i32 %conv27)
  %exitcond.not.i159 = icmp eq i32 %inc.i157, %conv27
  br i1 %exitcond.not.i159, label %for.cond.i160.if.end31_crit_edge, label %for.body.i168

for.cond.i160.if.end31_crit_edge:                 ; preds = %for.cond.i160
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

for.body.i168:                                    ; preds = %for.cond.i160
  %mul.i163 = mul i32 %inc.i157, %conv
  %conv.i164 = zext i32 %mul.i163 to i64
  %add.i165 = add i64 %36, %conv.i164
  %arrayidx.i166 = getelementptr i64, ptr %arrayidx25, i32 %inc.i157
  %37 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i166, align 8
  %cmp1.not.i167 = icmp eq i64 %add.i165, %38
  br i1 %cmp1.not.i167, label %for.body.i168.for.cond.i160_crit_edge, label %for.body.i168.if.end31_crit_edge

for.body.i168.if.end31_crit_edge:                 ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

for.body.i168.for.cond.i160_crit_edge:            ; preds = %for.body.i168
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i160

if.end31:                                         ; preds = %for.body.i168.if.end31_crit_edge, %for.cond.i160.if.end31_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i157, i32 %conv27)
  %cmp.i158.le = icmp ult i32 %inc.i157, %conv27
  br i1 %cmp.i158.le, label %if.end31.if.then33_crit_edge, label %if.end31.if.else_crit_edge

if.end31.if.else_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then33

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %irdma_check_mem_contiguous.exit.if.then33_crit_edge
  %idx = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 4, i32 2, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %2, align 4
  %rq_pbl = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %sq_pages to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sq_pages, align 2
  %conv36 = zext i16 %43 to i32
  %add37 = add i32 %40, %conv36
  %44 = ptrtoint ptr %rq_pbl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add37, ptr %rq_pbl, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end31.if.else_crit_edge, %if.then23.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %45 = ptrtoint ptr %arr.0 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arr.0, align 8
  %conv39 = trunc i64 %46 to i32
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv39, ptr %2, align 4
  %rq_pbl40 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %sq_pages to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sq_pages, align 2
  %idxprom42 = zext i16 %49 to i32
  %arrayidx43 = getelementptr i64, ptr %arr.0, i32 %idxprom42
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx43, align 8
  %conv44 = trunc i64 %51 to i32
  %52 = ptrtoint ptr %rq_pbl40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv44, ptr %rq_pbl40, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end11
  %split = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1, i32 0, i32 2
  %53 = ptrtoint ptr %split to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %split, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool47.not = icmp eq i8 %54, 0
  br i1 %tobool47.not, label %if.then48, label %sw.bb46.if.end53_crit_edge

sw.bb46.if.end53_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end53

if.then48:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #23
  %cq_pages = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %cq_pages to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cq_pages, align 2
  %idxprom49 = zext i16 %56 to i32
  %arrayidx50 = getelementptr i64, ptr %arr.0, i32 %idxprom49
  %57 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx50, align 8
  %conv51 = trunc i64 %58 to i32
  %shadow52 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %shadow52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv51, ptr %shadow52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %sw.bb46.if.end53_crit_edge
  br i1 %use_pbles, label %if.then55, label %if.end53.if.else64_crit_edge

if.end53.if.else64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else64

if.then55:                                        ; preds = %if.end53
  %cq_pages56 = getelementptr inbounds %struct.irdma_mem_reg_req, ptr %req, i32 0, i32 1
  %60 = ptrtoint ptr %cq_pages56 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cq_pages56, align 2
  %conv57 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp7.not.i171 = icmp eq i16 %61, 0
  br i1 %cmp7.not.i171, label %if.then55.if.else64_crit_edge, label %for.cond.i176.preheader

if.then55.if.else64_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else64

for.cond.i176.preheader:                          ; preds = %if.then55
  %62 = ptrtoint ptr %arr.0 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arr.0, align 8
  br label %for.cond.i176

for.cond.i176:                                    ; preds = %for.body.i184.for.cond.i176_crit_edge, %for.cond.i176.preheader
  %pg_idx.08.i178206 = phi i32 [ %inc.i173, %for.body.i184.for.cond.i176_crit_edge ], [ 0, %for.cond.i176.preheader ]
  %inc.i173 = add nuw nsw i32 %pg_idx.08.i178206, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i173, i32 %conv57)
  %exitcond.not.i175 = icmp eq i32 %inc.i173, %conv57
  br i1 %exitcond.not.i175, label %for.cond.i176.if.end60_crit_edge, label %for.body.i184

for.cond.i176.if.end60_crit_edge:                 ; preds = %for.cond.i176
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

for.body.i184:                                    ; preds = %for.cond.i176
  %mul.i179 = mul i32 %inc.i173, %conv
  %conv.i180 = zext i32 %mul.i179 to i64
  %add.i181 = add i64 %63, %conv.i180
  %arrayidx.i182 = getelementptr i64, ptr %arr.0, i32 %inc.i173
  %64 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx.i182, align 8
  %cmp1.not.i183 = icmp eq i64 %add.i181, %65
  br i1 %cmp1.not.i183, label %for.body.i184.for.cond.i176_crit_edge, label %for.body.i184.if.end60_crit_edge

for.body.i184.if.end60_crit_edge:                 ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end60

for.body.i184.for.cond.i176_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i176

if.end60:                                         ; preds = %for.body.i184.if.end60_crit_edge, %for.cond.i176.if.end60_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i173, i32 %conv57)
  %cmp.i174.le = icmp ult i32 %inc.i173, %conv57
  br i1 %cmp.i174.le, label %if.then62, label %if.end60.if.else64_crit_edge

if.end60.if.else64_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #23
  %idx63 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 4, i32 2, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %idx63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %idx63, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %2, align 4
  br label %cleanup

if.else64:                                        ; preds = %if.end60.if.else64_crit_edge, %if.then55.if.else64_crit_edge, %if.end53.if.else64_crit_edge
  %69 = ptrtoint ptr %arr.0 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arr.0, align 8
  %conv66 = trunc i64 %70 to i32
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv66, ptr %2, align 4
  br label %sw.epilog

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_handle_q_mem.__UNIQUE_ID_ddebug727, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_handle_q_mem, %if.then73)) #21
          to label %sw.epilog [label %if.then73], !srcloc !259

if.then73:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_handle_q_mem.__UNIQUE_ID_ddebug727, ptr noundef %iwdev, ptr noundef nonnull @.str.66) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then73, %do.body, %if.else64, %if.else
  %err.0 = phi i32 [ 0, %if.else64 ], [ 0, %if.else ], [ -22, %if.then73 ], [ -22, %do.body ]
  br i1 %use_pbles, label %if.then80, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then80:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %72 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rf, align 8
  %pble_rsrc82 = getelementptr inbounds %struct.irdma_pci_f, ptr %73, i32 0, i32 50
  %74 = ptrtoint ptr %pble_rsrc82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pble_rsrc82, align 4
  tail call void @irdma_free_pble(ptr noundef %75, ptr noundef %pble_alloc) #21
  %pbl_allocated83 = getelementptr inbounds %struct.irdma_pbl, ptr %iwpbl, i32 0, i32 2
  %76 = ptrtoint ptr %pbl_allocated83 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load84 = load i8, ptr %pbl_allocated83, align 8
  %bf.clear85 = and i8 %bf.load84, 127
  store i8 %bf.clear85, ptr %pbl_allocated83, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %sw.epilog.cleanup_crit_edge, %if.then62, %if.then33, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ], [ %err.0, %if.then80 ], [ 0, %if.then62 ], [ 0, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_setup_pbles(ptr nocapture noundef readonly %rf, ptr noundef %iwmr, i1 noundef zeroext %use_pbles) unnamed_addr #0 align 64 {
entry:
  %biter.i = alloca %struct.ib_block_iter, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %use_pbles, label %if.then, label %if.end5.thread

if.then:                                          ; preds = %entry
  %pble_alloc = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4
  %pble_rsrc = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 50
  %0 = ptrtoint ptr %pble_rsrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pble_rsrc, align 4
  %page_cnt = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 3
  %2 = ptrtoint ptr %page_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_cnt, align 8
  %call = tail call i32 @irdma_get_pble(ptr noundef %1, ptr noundef %pble_alloc, i32 noundef %3, i1 noundef zeroext false) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pbl_allocated = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %pbl_allocated to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pbl_allocated, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pbl_allocated, align 8
  %level4 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4, i32 1
  %5 = ptrtoint ptr %level4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.end5.thread33, label %cond.false.i

if.end5.thread33:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %7 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %region1.i35 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 1
  %10 = ptrtoint ptr %region1.i35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %region1.i35, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter.i) #21
  br label %cond.end.i

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %pgaddrmem = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 8
  %region1.i28 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 1
  %12 = ptrtoint ptr %region1.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %region1.i28, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter.i) #21
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %leaf = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %leaf, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %region1.i = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 1
  %18 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %region1.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %biter.i) #21
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end5.thread, %if.end5.thread33
  %20 = phi ptr [ %19, %cond.false.i ], [ %13, %if.end5.thread ], [ %11, %if.end5.thread33 ]
  %pbl.031 = phi ptr [ %17, %cond.false.i ], [ %pgaddrmem, %if.end5.thread ], [ %9, %if.end5.thread33 ]
  %cond.i = phi ptr [ %15, %cond.false.i ], [ null, %if.end5.thread ], [ null, %if.end5.thread33 ]
  %21 = getelementptr inbounds %struct.ib_block_iter, ptr %biter.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ib_block_iter, ptr %biter.i, i32 0, i32 4
  %23 = call ptr @memset(ptr %biter.i, i32 255, i32 20)
  %pble_alloc.i32 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 4
  %type.i = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 2
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp3.i = icmp eq i16 %25, 1
  br i1 %cmp3.i, label %if.then.i, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end.i
  %sgt_append.i = getelementptr inbounds %struct.ib_umem, ptr %20, i32 0, i32 7
  %26 = ptrtoint ptr %sgt_append.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgt_append.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !261

do.body2.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #21, !srcloc !273
  unreachable

sg_page.exit.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %and.i.i = and i32 %29, -4
  %30 = inttoptr i32 %and.i.i to ptr
  %sq_page.i = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 9, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %sq_page.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %sq_page.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sg_page.exit.i, %cond.end.i.if.end.i_crit_edge
  %page_size.i = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 4
  %32 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %page_size.i, align 8
  %conv5.i = trunc i64 %33 to i32
  %sgt_append.i.i = getelementptr inbounds %struct.ib_umem, ptr %20, i32 0, i32 7
  %34 = ptrtoint ptr %sgt_append.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgt_append.i.i, align 8
  %nents.i.i = getelementptr inbounds %struct.ib_umem, ptr %20, i32 0, i32 7, i32 0, i32 1
  %36 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nents.i.i, align 4
  call void @__rdma_block_iter_start(ptr noundef nonnull %biter.i, ptr noundef %35, i32 noundef %37, i32 noundef %conv5.i) #21
  %call622.i = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter.i) #21
  br i1 %call622.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.irdma_copy_user_pgaddrs.exit_crit_edge

if.end.i.irdma_copy_user_pgaddrs.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_copy_user_pgaddrs.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %pbl_cnt.027.i = phi i32 [ %inc.i, %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %pbl.addr.026.i = phi ptr [ %retval.0.i.i, %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge ], [ %pbl.031, %if.end.i.for.body.i_crit_edge ]
  %idx.025.i = phi i32 [ %idx.1.i, %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %pinfo.023.i = phi ptr [ %pinfo.1.i, %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge ], [ %cond.i, %if.end.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %21, align 4
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %22, align 4
  %sh_prom.i.i = zext i32 %41 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom.i.i
  %42 = trunc i64 %notmask.i.i to i32
  %conv1.i.i = and i32 %39, %42
  %conv8.i = zext i32 %conv1.i.i to i64
  %43 = ptrtoint ptr %pbl.addr.026.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv8.i, ptr %pbl.addr.026.i, align 8
  %inc.i = add i32 %pbl_cnt.027.i, 1
  %44 = ptrtoint ptr %pble_alloc.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pble_alloc.i32, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %45)
  %cmp9.i = icmp eq i32 %inc.i, %45
  br i1 %cmp9.i, label %for.body.i.irdma_copy_user_pgaddrs.exit_crit_edge, label %if.end12.i

for.body.i.irdma_copy_user_pgaddrs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_copy_user_pgaddrs.exit

if.end12.i:                                       ; preds = %for.body.i
  %add.i.i = add i32 %idx.025.i, 1
  %tobool.not.i.i = icmp eq ptr %pinfo.023.i, null
  br i1 %tobool.not.i.i, label %if.end12.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end12.i.if.then.i.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i
  %cnt.i.i = getelementptr inbounds %struct.irdma_pble_info, ptr %pinfo.023.i, i32 0, i32 2
  %46 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cnt.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %47)
  %cmp.not.i.i = icmp eq i32 %add.i.i, %47
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end12.i.if.then.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i64, ptr %pbl.addr.026.i, i32 1
  br label %irdma_next_pbl_addr.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %incdec.ptr1.i.i = getelementptr %struct.irdma_pble_info, ptr %pinfo.023.i, i32 1
  %48 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %incdec.ptr1.i.i, align 8
  br label %irdma_next_pbl_addr.exit.i

irdma_next_pbl_addr.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %pinfo.1.i = phi ptr [ %pinfo.023.i, %if.then.i.i ], [ %incdec.ptr1.i.i, %if.end.i.i ]
  %idx.1.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %if.end.i.i ]
  %retval.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.then.i.i ], [ %49, %if.end.i.i ]
  %call6.i = call zeroext i1 @__rdma_block_iter_next(ptr noundef nonnull %biter.i) #21
  br i1 %call6.i, label %irdma_next_pbl_addr.exit.i.for.body.i_crit_edge, label %irdma_next_pbl_addr.exit.i.irdma_copy_user_pgaddrs.exit_crit_edge

irdma_next_pbl_addr.exit.i.irdma_copy_user_pgaddrs.exit_crit_edge: ; preds = %irdma_next_pbl_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_copy_user_pgaddrs.exit

irdma_next_pbl_addr.exit.i.for.body.i_crit_edge:  ; preds = %irdma_next_pbl_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

irdma_copy_user_pgaddrs.exit:                     ; preds = %irdma_next_pbl_addr.exit.i.irdma_copy_user_pgaddrs.exit_crit_edge, %for.body.i.irdma_copy_user_pgaddrs.exit_crit_edge, %if.end.i.irdma_copy_user_pgaddrs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %biter.i) #21
  br i1 %use_pbles, label %if.then7, label %irdma_copy_user_pgaddrs.exit.cleanup_crit_edge

irdma_copy_user_pgaddrs.exit.cleanup_crit_edge:   ; preds = %irdma_copy_user_pgaddrs.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then7:                                         ; preds = %irdma_copy_user_pgaddrs.exit
  call void @__sanitizer_cov_trace_pc() #23
  %50 = ptrtoint ptr %pbl.031 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pbl.031, align 8
  %pgaddrmem8 = getelementptr inbounds %struct.irdma_mr, ptr %iwmr, i32 0, i32 8
  %52 = ptrtoint ptr %pgaddrmem8 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %pgaddrmem8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %irdma_copy_user_pgaddrs.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %irdma_copy_user_pgaddrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @irdma_check_mr_contiguous(ptr nocapture noundef readonly %palloc, i32 noundef %pg_size) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %level = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 1
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %palloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %palloc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.not.i = icmp eq i32 %6, 0
  br i1 %cmp7.not.i, label %if.then.cleanup_crit_edge, label %for.cond.i.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.cond.i.preheader:                             ; preds = %if.then
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %4, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %pg_idx.08.i63 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %inc.i = add nuw i32 %pg_idx.08.i63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.cond.i.cleanup.loopexit_crit_edge, label %for.body.i

for.cond.i.cleanup.loopexit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.loopexit

for.body.i:                                       ; preds = %for.cond.i
  %mul.i = mul i32 %inc.i, %pg_size
  %conv.i = zext i32 %mul.i to i64
  %add.i = add i64 %8, %conv.i
  %arrayidx.i = getelementptr i64, ptr %4, i32 %inc.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  %cmp1.not.i = icmp eq i64 %add.i, %10
  br i1 %cmp1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup.loopexit_crit_edge

for.body.i.cleanup.loopexit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.loopexit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i

if.end:                                           ; preds = %entry
  %leaf_cnt = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %leaf_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %leaf_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp356.not = icmp eq i32 %12, 0
  br i1 %cmp356.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %leaf1 = getelementptr inbounds %struct.irdma_pble_alloc, ptr %palloc, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %leaf1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %leaf1, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %mul = shl i32 %pg_size, 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %leaf.057 = phi ptr [ %14, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %leaf.057 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %leaf.057, align 8
  %mul5 = mul i32 %mul, %i.058
  %conv = zext i32 %mul5 to i64
  %add = add i64 %18, %conv
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %22)
  %cmp6.not = icmp eq i64 %add, %22
  br i1 %cmp6.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %cnt = getelementptr inbounds %struct.irdma_pble_info, ptr %leaf.057, i32 0, i32 2
  %23 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp7.not.i34 = icmp eq i32 %24, 0
  br i1 %cmp7.not.i34, label %if.end9.for.inc_crit_edge, label %for.body.i47.preheader

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

for.body.i47.preheader:                           ; preds = %if.end9
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %26)
  %cmp1.not.i4653 = icmp eq i64 %add, %26
  br i1 %cmp1.not.i4653, label %for.body.i47.preheader.for.cond.i39_crit_edge, label %for.body.i47.preheader.cleanup_crit_edge

for.body.i47.preheader.cleanup_crit_edge:         ; preds = %for.body.i47.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.body.i47.preheader.for.cond.i39_crit_edge:    ; preds = %for.body.i47.preheader
  br label %for.cond.i39

for.cond.i39:                                     ; preds = %for.body.i47.for.cond.i39_crit_edge, %for.body.i47.preheader.for.cond.i39_crit_edge
  %pg_idx.08.i4154 = phi i32 [ %inc.i36, %for.body.i47.for.cond.i39_crit_edge ], [ 0, %for.body.i47.preheader.for.cond.i39_crit_edge ]
  %inc.i36 = add nuw i32 %pg_idx.08.i4154, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i36, i32 %24)
  %exitcond.not.i38 = icmp eq i32 %inc.i36, %24
  br i1 %exitcond.not.i38, label %for.cond.i39.irdma_check_mem_contiguous.exit49_crit_edge, label %for.body.i47

for.cond.i39.irdma_check_mem_contiguous.exit49_crit_edge: ; preds = %for.cond.i39
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_check_mem_contiguous.exit49

for.body.i47:                                     ; preds = %for.cond.i39
  %mul.i42 = mul i32 %inc.i36, %pg_size
  %conv.i43 = zext i32 %mul.i42 to i64
  %add.i44 = add i64 %add, %conv.i43
  %arrayidx.i45 = getelementptr i64, ptr %20, i32 %inc.i36
  %27 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i45, align 8
  %cmp1.not.i46 = icmp eq i64 %add.i44, %28
  br i1 %cmp1.not.i46, label %for.body.i47.for.cond.i39_crit_edge, label %for.body.i47.irdma_check_mem_contiguous.exit49_crit_edge

for.body.i47.irdma_check_mem_contiguous.exit49_crit_edge: ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #23
  br label %irdma_check_mem_contiguous.exit49

for.body.i47.for.cond.i39_crit_edge:              ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.cond.i39

irdma_check_mem_contiguous.exit49:                ; preds = %for.body.i47.irdma_check_mem_contiguous.exit49_crit_edge, %for.cond.i39.irdma_check_mem_contiguous.exit49_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i36, i32 %24)
  %cmp.i37.le = icmp ult i32 %inc.i36, %24
  br i1 %cmp.i37.le, label %irdma_check_mem_contiguous.exit49.cleanup_crit_edge, label %irdma_check_mem_contiguous.exit49.for.inc_crit_edge

irdma_check_mem_contiguous.exit49.for.inc_crit_edge: ; preds = %irdma_check_mem_contiguous.exit49
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc

irdma_check_mem_contiguous.exit49.cleanup_crit_edge: ; preds = %irdma_check_mem_contiguous.exit49
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.inc:                                          ; preds = %irdma_check_mem_contiguous.exit49.for.inc_crit_edge, %if.end9.for.inc_crit_edge
  %inc = add nuw i32 %i.058, 1
  %incdec.ptr = getelementptr %struct.irdma_pble_info, ptr %leaf.057, i32 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body.i.cleanup.loopexit_crit_edge, %for.cond.i.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %6)
  %cmp.i.le = icmp uge i32 %inc.i, %6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.inc.cleanup_crit_edge, %irdma_check_mem_contiguous.exit49.cleanup_crit_edge, %for.body.i47.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ true, %if.then.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ], [ false, %for.body.cleanup_crit_edge ], [ false, %irdma_check_mem_contiguous.exit49.cleanup_crit_edge ], [ false, %for.body.i47.preheader.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_free_pble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_get_pble(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rdma_block_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rdma_block_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sg_to_pages(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irdma_set_page(ptr nocapture noundef %ibmr, i64 noundef %addr) #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %npages = getelementptr inbounds %struct.irdma_mr, ptr %ibmr, i32 0, i32 5
  %0 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npages, align 8
  %page_cnt = getelementptr inbounds %struct.irdma_mr, ptr %ibmr, i32 0, i32 3
  %2 = ptrtoint ptr %page_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !267

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %4 = getelementptr inbounds %struct.irdma_mr, ptr %ibmr, i32 0, i32 9, i32 4, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %inc = add i32 %1, 1
  %7 = ptrtoint ptr %npages to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %npages, align 8
  %arrayidx = getelementptr i64, ptr %6, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %addr, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_hw_stats_struct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_cqp_gather_stats_cmd(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cqp_gather_stats_gen1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nobuiltin nounwind }
attributes #28 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247}
!llvm.named.register.sp = !{!249}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1246, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1259, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1277, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1279, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @irdma_modify_qp_roce.__UNIQUE_ID_ddebug701, !7, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1288, i32 30}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1430, i32 5}
!15 = !{ptr @irdma_modify_qp_roce.__UNIQUE_ID_ddebug706, !14, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1475, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @irdma_modify_qp.__UNIQUE_ID_ddebug707, !17, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!20 = !{ptr @irdma_modify_qp.__UNIQUE_ID_ddebug712, !21, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1668, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4496, i32 42}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4507, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @irdma_ib_register_device.__UNIQUE_ID_ddebug744, !25, !"__UNIQUE_ID_ddebug744", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/irdma/main.h", i32 428, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, !36, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!40 = !{ptr @irdma_roce_dev_ops, !41, !"irdma_roce_dev_ops", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4329, i32 35}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4246, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @irdma_create_ah.__UNIQUE_ID_ddebug740, !43, !"__UNIQUE_ID_ddebug740", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4260, i32 4}
!48 = !{ptr @irdma_create_ah.__UNIQUE_ID_ddebug741, !47, !"__UNIQUE_ID_ddebug741", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3949, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @irdma_attach_mcast.__UNIQUE_ID_ddebug735, !50, !"__UNIQUE_ID_ddebug735", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3958, i32 3}
!55 = !{ptr @irdma_attach_mcast.__UNIQUE_ID_ddebug736, !54, !"__UNIQUE_ID_ddebug736", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4092, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug737, !57, !"__UNIQUE_ID_ddebug737", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4105, i32 4}
!62 = !{ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug738, !61, !"__UNIQUE_ID_ddebug738", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4126, i32 4}
!65 = !{ptr @irdma_detach_mcast.__UNIQUE_ID_ddebug739, !64, !"__UNIQUE_ID_ddebug739", i1 false, i1 false}
!66 = !{ptr @irdma_iw_dev_ops, !67, !"irdma_iw_dev_ops", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4342, i32 35}
!68 = !{ptr @irdma_dev_ops, !69, !"irdma_dev_ops", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 4348, i32 35}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3237, i32 4}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @irdma_post_send.__UNIQUE_ID_ddebug731, !71, !"__UNIQUE_ID_ddebug731", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3294, i32 4}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @irdma_post_recv.__UNIQUE_ID_ddebug732, !75, !"__UNIQUE_ID_ddebug732", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3553, i32 2}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__irdma_poll_cq.__UNIQUE_ID_ddebug733, !79, !"__UNIQUE_ID_ddebug733", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3432, i32 6}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3741, i32 40}
!86 = !{ptr @irdma_alloc_ucontext.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 356, i32 2}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @irdma_alloc_ucontext.__key.38, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 358, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 364, i32 5}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 211, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @irdma_mmap.__UNIQUE_ID_ddebug681, !95, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 218, i32 2}
!100 = !{ptr @irdma_mmap.__UNIQUE_ID_ddebug682, !99, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 241, i32 3}
!103 = !{ptr @irdma_mmap.__UNIQUE_ID_ddebug683, !102, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!104 = !{ptr @irdma_create_qp.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 876, i32 2}
!106 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @irdma_create_qp.__key.46, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 877, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 883, i32 4}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @irdma_create_qp.__UNIQUE_ID_ddebug694, !111, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 904, i32 5}
!116 = !{ptr @irdma_create_qp.__UNIQUE_ID_ddebug695, !115, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 916, i32 3}
!119 = !{ptr @irdma_create_qp.__UNIQUE_ID_ddebug696, !118, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 942, i32 3}
!122 = !{ptr @irdma_create_qp.__UNIQUE_ID_ddebug697, !121, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!123 = !{ptr @irdma_create_qp.__key.53, !124, !"__key", i1 false, i1 false}
!124 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 960, i32 2}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @irdma_create_qp.__key.55, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 961, i32 2}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @irdma_create_qp.__UNIQUE_ID_ddebug700, !130, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 994, i32 4}
!131 = !{ptr @init_completion.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../include/linux/completion.h", i32 87, i32 2}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @irdma_create_cq.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1966, i32 2}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 2081, i32 3}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @irdma_create_cq.__UNIQUE_ID_ddebug723, !138, !"__UNIQUE_ID_ddebug723", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 2112, i32 4}
!143 = !{ptr @irdma_create_cq.__UNIQUE_ID_ddebug726, !142, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!144 = !{ptr @irdma_resize_cq.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 1900, i32 3}
!146 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 2756, i32 3}
!149 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @irdma_reg_user_mr.__UNIQUE_ID_ddebug728, !148, !"__UNIQUE_ID_ddebug728", i1 false, i1 false}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 2414, i32 3}
!153 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @irdma_handle_q_mem.__UNIQUE_ID_ddebug727, !152, !"__UNIQUE_ID_ddebug727", i1 false, i1 false}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3655, i32 44}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3656, i32 42}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3657, i32 44}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3658, i32 44}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3659, i32 42}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3660, i32 44}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3661, i32 41}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3662, i32 43}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3663, i32 45}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3654, i32 41}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3664, i32 46}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3665, i32 46}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3666, i32 43}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3670, i32 3}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3672, i32 3}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3674, i32 3}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3678, i32 3}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3680, i32 3}
!191 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3682, i32 3}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3684, i32 3}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3688, i32 3}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3690, i32 3}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3692, i32 3}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3694, i32 3}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3698, i32 3}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3700, i32 3}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3702, i32 3}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3704, i32 3}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3708, i32 3}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3710, i32 3}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3712, i32 3}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3714, i32 3}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3716, i32 3}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3718, i32 3}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3720, i32 3}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3722, i32 3}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3724, i32 3}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3726, i32 3}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3728, i32 3}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3676, i32 3}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3686, i32 3}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3696, i32 3}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3706, i32 3}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3730, i32 3}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3732, i32 3}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3734, i32 11}
!247 = !{ptr @irdma_hw_stat_descs, !248, !"irdma_hw_stat_descs", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/hw/irdma/verbs.c", i32 3652, i32 36}
!249 = !{!"sp"}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{i64 2148971856, i64 2148971861, i64 2148971874, i64 2148971918, i64 2148971952, i64 2148971973}
!260 = !{i64 2152463060, i64 2152463085}
!261 = !{!"branch_weights", i32 2000, i32 1}
!262 = !{i64 4958615}
!263 = !{i64 4958812}
!264 = !{i64 2152444045}
!265 = !{i64 2152463741, i64 2152463766}
!266 = !{i64 2148491571, i64 2148491603, i64 2148491632, i64 2148491666, i64 2148491697, i64 2148491720}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{i64 2148575452}
!269 = !{i64 2148490761, i64 2148490793, i64 2148490822, i64 2148490856, i64 2148490887, i64 2148490910}
!270 = !{i64 2148575681}
!271 = !{!"auto-init"}
!272 = !{i8 0, i8 2}
!273 = !{i64 2154472778, i64 2154473270, i64 2154472815, i64 2154472871, i64 2154472905, i64 2154472929, i64 2154472970, i64 2154472991, i64 2154473019, i64 2154473053}
