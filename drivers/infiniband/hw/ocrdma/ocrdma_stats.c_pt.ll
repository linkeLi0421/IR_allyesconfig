; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/ocrdma/ocrdma_stats.c_pt.bc'
source_filename = "../drivers/infiniband/hw/ocrdma/ocrdma_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.ocrdma_rdma_stats_resp = type { %struct.ocrdma_mbx_hdr, %struct.ocrdma_rsrc_stats, %struct.ocrdma_rsrc_stats, %struct.ocrdma_db_err_stats, %struct.ocrdma_wqe_stats, %struct.ocrdma_tx_stats, %struct.ocrdma_tx_qp_err_stats, %struct.ocrdma_rx_stats, %struct.ocrdma_rx_qp_err_stats, %struct.ocrdma_tx_dbg_stats, %struct.ocrdma_rx_dbg_stats }
%struct.ocrdma_rsrc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32] }
%struct.ocrdma_db_err_stats = type { i32, i32, i32, i32, [4 x i32] }
%struct.ocrdma_wqe_stats = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [5 x i32] }
%struct.ocrdma_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.ocrdma_tx_qp_err_stats = type { i32, i32, i32, i32, i32, [3 x i32] }
%struct.ocrdma_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_rx_qp_err_stats = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ocrdma_tx_dbg_stats = type { [100 x i32] }
%struct.ocrdma_rx_dbg_stats = type { [200 x i32] }
%struct.ocrdma_pd_resource_mgr = type { i32, i16, i16, i16, i32, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ib_mad = type { %struct.ib_mad_hdr, [232 x i8] }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ocrdma_alloc_stats_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->stats_lock\00", [47 x i8] zeroinitializer }, align 32
@ocrdma_alloc_stats_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: stats mbox allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ocrdma_alloc_stats_resources\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/infiniband/hw/ocrdma/ocrdma_stats.c\00", [52 x i8] zeroinitializer }, align 32
@ocrdma_alloc_stats_resources._entry_ptr = internal global ptr @ocrdma_alloc_stats_resources._entry, section ".printk_index", align 4
@ocrdma_dbgfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resource_stats\00", [17 x i8] zeroinitializer }, align 32
@ocrdma_dbg_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ocrdma_dbgfs_ops_read, ptr @ocrdma_dbgfs_ops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wqe_stats\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"db_err_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_qp_err_stats\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_qp_err_stats\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_dbg_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_dbg_stats\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"driver_dbg_stats\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_stats\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ocrdma\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ocrdma_update_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: stats mbox failed with status = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ocrdma_update_stats\00", [44 x i8] zeroinitializer }, align 32
@ocrdma_update_stats._entry_ptr = internal global ptr @ocrdma_update_stats._entry, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"active_dpp_pds\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"active_non_dpp_pds\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"active_rc_dpp_qps\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"active_uc_dpp_qps\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"active_ud_dpp_qps\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_rc_non_dpp_qps\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_uc_non_dpp_qps\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_ud_non_dpp_qps\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active_srqs\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active_rbqs\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"active_64K_nsmr\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_64K_to_2M_nsmr\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_2M_to_44M_nsmr\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_44M_to_1G_nsmr\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"active_1G_to_4G_nsmr\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"active_nsmr_count_4G_to_32G\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"active_32G_to_64G_nsmr\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"active_64G_to_128G_nsmr\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"active_128G_to_higher_nsmr\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"active_embedded_nsmr\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active_frmr\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"active_prefetch_qps\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"active_ondemand_qps\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"active_phy_mr\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"active_mw\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"threshold_dpp_pds\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"threshold_non_dpp_pds\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"threshold_rc_dpp_qps\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"threshold_uc_dpp_qps\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"threshold_ud_dpp_qps\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_rc_non_dpp_qps\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_uc_non_dpp_qps\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_ud_non_dpp_qps\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"threshold_srqs\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"threshold_rbqs\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"threshold_64K_nsmr\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_64K_to_2M_nsmr\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_2M_to_44M_nsmr\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"threshold_44M_to_1G_nsmr\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"threshold_1G_to_4G_nsmr\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"threshold_nsmr_count_4G_to_32G\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"threshold_32G_to_64G_nsmr\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"threshold_64G_to_128G_nsmr\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"threshold_128G_to_higher_nsmr\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"threshold_embedded_nsmr\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"threshold_frmr\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"threshold_prefetch_qps\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"threshold_ondemand_qps\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"threshold_phy_mr\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"threshold_mw\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %llu\0A\00", [22 x i8] zeroinitializer }, align 32
@ocrdma_add_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: No space in stats buff\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ocrdma_add_stat\00", [16 x i8] zeroinitializer }, align 32
@ocrdma_add_stat._entry_ptr = internal global ptr @ocrdma_add_stat._entry, section ".printk_index", align 4
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"roce_frame_bytes\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"roce_frame_icrc_drops\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"roce_frame_payload_len_drops\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ud_drops\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qp1_drops\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"psn_error_request_packets\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"psn_error_resp_packets\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnr_nak_timeouts\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnr_nak_receives\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"roce_frame_rxmt_drops\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nak_count_psn_sequence_errors\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rc_drop_count_lookup_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rq_rnr_naks\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"srq_rnr_naks\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"roce_frames\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"large_send_rc_wqes\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"large_write_rc_wqes\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_wqes\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frmr_wqes\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mw_bind_wqes\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalidate_wqes\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpp_wqe_drops\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_pkts\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_pkts\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_pkts\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_rsp_pkts\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ack_pkts\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"send_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_bytes\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_req_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_rsp_bytes\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_timeouts\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sq_doorbell_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cq_doorbell_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rq_srq_doorbell_errors\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cq_overflow_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nak_invalid_request_errors\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nak_remote_operation_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nak_count_remote_access_errors\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"local_length_errors\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"local_protection_errors\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"local_qp_operation_errors\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"retry_count_exceeded_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rnr_retry_count_exceeded_errors\00", [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DW[%d] = 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"async_cq_err\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"async_cq_overrun_err\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"async_cq_qpcat_err\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async_qp_access_err\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"async_qp_commm_est_evt\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"async_sq_drained_evt\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async_dev_fatal_evt\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"async_srqcat_err\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async_srq_limit_evt\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"async_qp_last_wqe_evt\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cqe_loc_len_err\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cqe_loc_qp_op_err\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cqe_loc_eec_op_err\00", [45 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cqe_loc_prot_err\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cqe_wr_flush_err\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cqe_mw_bind_err\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cqe_bad_resp_err\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cqe_loc_access_err\00", [45 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cqe_rem_inv_req_err\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cqe_rem_access_err\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cqe_rem_op_err\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cqe_retry_exc_err\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cqe_rnr_retry_exc_err\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqe_loc_rdd_viol_err\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cqe_rem_inv_rd_req_err\00", [41 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cqe_rem_abort_err\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cqe_inv_eecn_err\00", [47 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cqe_inv_eec_state_err\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cqe_fatal_err\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqe_resp_timeout_err\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cqe_general_err\00", [16 x i8] zeroinitializer }, align 32
@ocrdma_dbgfs_ops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to reset stats = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ocrdma_dbgfs_ops_write\00", [41 x i8] zeroinitializer }, align 32
@ocrdma_dbgfs_ops_write._entry_ptr = internal global ptr @ocrdma_dbgfs_ops_write._entry, section ".printk_index", align 4
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 71, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 79, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"ocrdma_dbgfs_dir\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 47, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 770, i32 22 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"ocrdma_dbg_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 751, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 775, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 780, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 785, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 790, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 795, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 800, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 805, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 810, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 815, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 820, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 832, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 619, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 112, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 114, i32 39 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 116, i32 39 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 118, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 120, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 122, i32 39 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 124, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 126, i32 39 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 128, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 130, i32 39 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 132, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 134, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 136, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 138, i32 39 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 140, i32 39 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 142, i32 39 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 144, i32 39 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 146, i32 39 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 148, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 150, i32 39 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 152, i32 39 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 154, i32 39 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 156, i32 39 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 158, i32 39 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 160, i32 39 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 166, i32 39 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 168, i32 39 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 170, i32 39 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 172, i32 39 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 174, i32 39 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 176, i32 39 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 178, i32 39 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 180, i32 39 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 182, i32 39 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 184, i32 39 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 186, i32 39 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 188, i32 39 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 190, i32 39 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 192, i32 39 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 194, i32 39 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 196, i32 39 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 198, i32 39 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 200, i32 39 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 202, i32 39 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 204, i32 39 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 206, i32 39 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 208, i32 39 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 210, i32 39 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 212, i32 39 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 214, i32 39 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 55, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 59, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 230, i32 17 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 233, i32 39 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 235, i32 39 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 237, i32 39 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 239, i32 39 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 241, i32 39 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 243, i32 39 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 245, i32 39 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 247, i32 39 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 249, i32 39 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 251, i32 39 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 253, i32 39 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 255, i32 39 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 257, i32 39 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 259, i32 39 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 371, i32 39 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 374, i32 39 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 377, i32 39 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 380, i32 39 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 383, i32 39 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 386, i32 39 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 389, i32 39 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 297, i32 39 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 300, i32 39 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 303, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 306, i32 39 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 309, i32 39 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 312, i32 39 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 315, i32 39 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 318, i32 39 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 321, i32 39 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 324, i32 39 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 404, i32 39 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 406, i32 39 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 408, i32 39 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 410, i32 39 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 426, i32 39 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 428, i32 39 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 430, i32 39 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 432, i32 39 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 434, i32 39 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 436, i32 39 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 458, i32 39 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 460, i32 39 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 477, i32 34 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 509, i32 39 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 512, i32 39 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 515, i32 39 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 518, i32 39 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 521, i32 39 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 524, i32 39 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 527, i32 39 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 530, i32 39 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 533, i32 39 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 536, i32 39 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 540, i32 39 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 543, i32 39 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 546, i32 39 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 549, i32 39 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 552, i32 39 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 555, i32 39 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 558, i32 39 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 561, i32 39 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 564, i32 39 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 567, i32 39 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 570, i32 39 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 573, i32 39 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 576, i32 39 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 579, i32 39 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 582, i32 39 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 585, i32 39 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 588, i32 39 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 591, i32 39 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 594, i32 39 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 597, i32 39 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 600, i32 39 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.618 = private constant [47 x i8] c"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 659, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.621, i32 156, i32 2 }
@llvm.compiler.used = appending global [161 x ptr] [ptr @ocrdma_add_stat._entry, ptr @ocrdma_add_stat._entry_ptr, ptr @ocrdma_alloc_stats_resources._entry, ptr @ocrdma_alloc_stats_resources._entry_ptr, ptr @ocrdma_dbgfs_ops_write._entry, ptr @ocrdma_dbgfs_ops_write._entry_ptr, ptr @ocrdma_update_stats._entry, ptr @ocrdma_update_stats._entry_ptr, ptr @ocrdma_alloc_stats_resources.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ocrdma_dbgfs_dir, ptr @.str.4, ptr @ocrdma_dbg_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.151], section "llvm.metadata"
@0 = internal global [157 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_stats_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_alloc_stats_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dbgfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dbg_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_update_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_add_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_dbgfs_ops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ocrdma_alloc_stats_resources(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 34
  tail call void @__mutex_init(ptr noundef %stats_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ocrdma_alloc_stats_resources.__key) #8
  %size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1848, ptr %size, align 4
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %pa = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 1848, ptr noundef %pa, i32 noundef 3264, i32 noundef 0) #8
  %va = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 1
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %va, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end6, label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4096) #12
  %debugfs_mem = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 4
  %5 = ptrtoint ptr %debugfs_mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %debugfs_mem, align 4
  %tobool10.not = icmp ne ptr %call7.i.i, null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end6
  %retval.0 = phi i1 [ false, %do.end6 ], [ %tobool10.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_release_stats_resources(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %pa = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 2
  %6 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %debugfs_mem = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 4
  %9 = ptrtoint ptr %debugfs_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_mem, align 4
  tail call void @kfree(ptr noundef %10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_pma_counters(ptr noundef %dev, ptr nocapture noundef writeonly %out_mad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %va.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 35, i32 1
  %1 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %va.i, align 16
  %act_rsrc_stats.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %2, i32 0, i32 1
  %last_stats_time.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 33
  %3 = ptrtoint ptr %last_stats_time.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_stats_time.i, align 16
  %sub.i = sub i32 %0, %4
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %5 = icmp ult i32 %call.i, 1000
  br i1 %5, label %entry.ocrdma_update_stats.exit_crit_edge, label %if.then.i

entry.ocrdma_update_stats.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocrdma_update_stats.exit

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 @ocrdma_mbx_rdma_stats(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %pd_mgr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 50
  %6 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd_mgr.i, align 8
  %pd_prealloc_valid.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pd_prealloc_valid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pd_prealloc_valid.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then6.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pd_dpp_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %pd_dpp_count.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pd_dpp_count.i, align 4
  %conv.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %act_rsrc_stats.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %act_rsrc_stats.i, align 4
  %13 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd_mgr.i, align 8
  %pd_norm_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pd_norm_count.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pd_norm_count.i, align 4
  %conv9.i = zext i16 %16 to i32
  %non_dpp_pds.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %2, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %non_dpp_pds.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv9.i, ptr %non_dpp_pds.i, align 4
  %th_rsrc_stats.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %pd_mgr.i, align 8
  %pd_dpp_thrsh.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %pd_dpp_thrsh.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pd_dpp_thrsh.i, align 2
  %conv11.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %th_rsrc_stats.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv11.i, ptr %th_rsrc_stats.i, align 4
  %22 = load ptr, ptr %pd_mgr.i, align 8
  %pd_norm_thrsh.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pd_norm_thrsh.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pd_norm_thrsh.i, align 2
  %conv14.i = zext i16 %24 to i32
  %non_dpp_pds15.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %2, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %non_dpp_pds15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv14.i, ptr %non_dpp_pds15.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %if.end.i.if.end16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %last_stats_time.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_stats_time.i, align 16
  br label %ocrdma_update_stats.exit

ocrdma_update_stats.exit:                         ; preds = %if.end16.i, %entry.ocrdma_update_stats.exit_crit_edge
  %28 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %va.i, align 16
  %send_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 11
  %30 = ptrtoint ptr %send_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %send_bytes_hi.i, align 4
  %conv.i15 = zext i32 %31 to i64
  %shl.i = shl nuw i64 %conv.i15, 32
  %send_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 10
  %32 = ptrtoint ptr %send_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %send_bytes_lo.i, align 4
  %conv2.i = zext i32 %33 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %write_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 13
  %34 = ptrtoint ptr %write_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %write_bytes_hi.i, align 4
  %conv3.i = zext i32 %35 to i64
  %shl4.i = shl nuw i64 %conv3.i, 32
  %write_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 12
  %36 = ptrtoint ptr %write_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %write_bytes_lo.i, align 4
  %conv5.i = zext i32 %37 to i64
  %or6.i = or i64 %shl4.i, %conv5.i
  %add.i = add i64 %or6.i, %or.i
  %read_req_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 15
  %38 = ptrtoint ptr %read_req_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read_req_bytes_hi.i, align 4
  %conv7.i = zext i32 %39 to i64
  %shl8.i = shl nuw i64 %conv7.i, 32
  %read_req_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 14
  %40 = ptrtoint ptr %read_req_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read_req_bytes_lo.i, align 4
  %conv9.i16 = zext i32 %41 to i64
  %or10.i = or i64 %shl8.i, %conv9.i16
  %add11.i = add i64 %add.i, %or10.i
  %read_rsp_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 17
  %42 = ptrtoint ptr %read_rsp_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %read_rsp_bytes_hi.i, align 4
  %conv12.i = zext i32 %43 to i64
  %shl13.i = shl nuw i64 %conv12.i, 32
  %read_rsp_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %29, i32 0, i32 5, i32 16
  %44 = ptrtoint ptr %read_rsp_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_rsp_bytes_lo.i, align 4
  %conv14.i17 = zext i32 %45 to i64
  %or15.i = or i64 %shl13.i, %conv14.i17
  %add16.i = add i64 %add11.i, %or15.i
  %div24.i = lshr i64 %add16.i, 2
  %conv = trunc i64 %div24.i to i32
  %port_xmit_data = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 64
  %46 = ptrtoint ptr %port_xmit_data to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %conv, ptr %port_xmit_data, align 1
  %47 = load ptr, ptr %va.i, align 16
  %rx_stats1.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %47, i32 0, i32 7
  %roce_frame_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %47, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %roce_frame_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %roce_frame_bytes_hi.i, align 4
  %conv.i19 = zext i32 %49 to i64
  %shl.i20 = shl nuw i64 %conv.i19, 32
  %50 = ptrtoint ptr %rx_stats1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_stats1.i, align 4
  %conv2.i21 = zext i32 %51 to i64
  %or.i22 = or i64 %shl.i20, %conv2.i21
  %div4.i = lshr i64 %or.i22, 2
  %conv2 = trunc i64 %div4.i to i32
  %port_rcv_data = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 68
  %52 = ptrtoint ptr %port_rcv_data to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %conv2, ptr %port_rcv_data, align 1
  %53 = load ptr, ptr %va.i, align 16
  %tx_stats1.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %tx_stats1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_stats1.i, align 4
  %write_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %53, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %write_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %write_pkts_lo.i, align 4
  %add.i32 = add i32 %57, %55
  %read_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %53, i32 0, i32 5, i32 4
  %58 = ptrtoint ptr %read_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_pkts_lo.i, align 4
  %add11.i37 = add i32 %add.i32, %59
  %read_rsp_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %53, i32 0, i32 5, i32 6
  %60 = ptrtoint ptr %read_rsp_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %read_rsp_pkts_lo.i, align 4
  %add16.i42 = add i32 %add11.i37, %61
  %ack_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %53, i32 0, i32 5, i32 8
  %62 = ptrtoint ptr %ack_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ack_pkts_lo.i, align 4
  %conv4 = add i32 %add16.i42, %63
  %port_xmit_packets = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 72
  %64 = ptrtoint ptr %port_xmit_packets to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %conv4, ptr %port_xmit_packets, align 1
  %65 = load ptr, ptr %va.i, align 16
  %roce_frames_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %65, i32 0, i32 7, i32 15
  %66 = ptrtoint ptr %roce_frames_lo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %roce_frames_lo.i, align 4
  %roce_frame_icrc_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %65, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %roce_frame_icrc_drops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %roce_frame_icrc_drops.i, align 4
  %add.i49 = add i32 %69, %67
  %roce_frame_payload_len_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %65, i32 0, i32 7, i32 3
  %70 = ptrtoint ptr %roce_frame_payload_len_drops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %roce_frame_payload_len_drops.i, align 4
  %add5.i = add i32 %add.i49, %71
  %port_rcv_packets = getelementptr %struct.ib_mad, ptr %out_mad, i32 0, i32 1, i32 76
  %72 = ptrtoint ptr %port_rcv_packets to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %add5.i, ptr %port_rcv_packets, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_add_port_stats(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ocrdma_dbgfs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 20, i32 6
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end.pci_name.exit_crit_edge ]
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef nonnull %0) #8
  %dir = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 47
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %dir, align 8
  %rsrc_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 36
  %8 = ptrtoint ptr %rsrc_stats to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rsrc_stats, align 128
  %dev4 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev4, align 4
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %call2, ptr noundef %rsrc_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %rx_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 37
  %10 = ptrtoint ptr %rx_stats to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rx_stats, align 8
  %dev10 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 37, i32 1
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev10, align 4
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dir, align 8
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %13, ptr noundef %rx_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %wqe_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 38
  %14 = ptrtoint ptr %wqe_stats to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %wqe_stats, align 16
  %dev16 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 38, i32 1
  %15 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev16, align 4
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dir, align 8
  %call19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %wqe_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %tx_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 39
  %18 = ptrtoint ptr %tx_stats to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %tx_stats, align 8
  %dev22 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 39, i32 1
  %19 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev22, align 4
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dir, align 8
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %tx_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %db_err_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 40
  %22 = ptrtoint ptr %db_err_stats to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %db_err_stats, align 32
  %dev28 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 40, i32 1
  %23 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev28, align 4
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dir, align 8
  %call31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %25, ptr noundef %db_err_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %tx_qp_err_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 41
  %26 = ptrtoint ptr %tx_qp_err_stats to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %tx_qp_err_stats, align 8
  %dev34 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 41, i32 1
  %27 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev34, align 4
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dir, align 8
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %tx_qp_err_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %rx_qp_err_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 42
  %30 = ptrtoint ptr %rx_qp_err_stats to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %rx_qp_err_stats, align 16
  %dev40 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 42, i32 1
  %31 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %dev40, align 4
  %32 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dir, align 8
  %call43 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %33, ptr noundef %rx_qp_err_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %tx_dbg_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 43
  %34 = ptrtoint ptr %tx_dbg_stats to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %tx_dbg_stats, align 8
  %dev46 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 43, i32 1
  %35 = ptrtoint ptr %dev46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %dev46, align 4
  %36 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dir, align 8
  %call49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %37, ptr noundef %tx_dbg_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %rx_dbg_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 44
  %38 = ptrtoint ptr %rx_dbg_stats to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %rx_dbg_stats, align 64
  %dev52 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 44, i32 1
  %39 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %dev52, align 4
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dir, align 8
  %call55 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %41, ptr noundef %rx_dbg_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %driver_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 45
  %42 = ptrtoint ptr %driver_stats to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 9, ptr %driver_stats, align 8
  %dev58 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 45, i32 1
  %43 = ptrtoint ptr %dev58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %dev58, align 4
  %44 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dir, align 8
  %call61 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %45, ptr noundef %driver_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  %reset_stats = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 46
  %46 = ptrtoint ptr %reset_stats to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %reset_stats, align 16
  %dev64 = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 46, i32 1
  %47 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev, ptr %dev64, align 4
  %48 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dir, align 8
  %call67 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 128, ptr noundef %49, ptr noundef %reset_stats, ptr noundef nonnull @ocrdma_dbg_ops) #8
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_rem_port_stats(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.ocrdma_dev, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 8
  tail call void @debugfs_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_init_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef null) #8
  store ptr %call, ptr @ocrdma_dbgfs_dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocrdma_rem_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ocrdma_dbgfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocrdma_mbx_rdma_stats(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocrdma_dbgfs_ops_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %usr_buf_len, ptr noundef %ppos) #0 align 64 {
entry:
  %buff.i624.i = alloca [128 x i8], align 1
  %buff.i613.i = alloca [128 x i8], align 1
  %buff.i602.i = alloca [128 x i8], align 1
  %buff.i591.i = alloca [128 x i8], align 1
  %buff.i580.i = alloca [128 x i8], align 1
  %buff.i569.i = alloca [128 x i8], align 1
  %buff.i558.i = alloca [128 x i8], align 1
  %buff.i547.i = alloca [128 x i8], align 1
  %buff.i536.i = alloca [128 x i8], align 1
  %buff.i525.i = alloca [128 x i8], align 1
  %buff.i514.i = alloca [128 x i8], align 1
  %buff.i503.i = alloca [128 x i8], align 1
  %buff.i492.i = alloca [128 x i8], align 1
  %buff.i481.i = alloca [128 x i8], align 1
  %buff.i470.i = alloca [128 x i8], align 1
  %buff.i459.i = alloca [128 x i8], align 1
  %buff.i448.i = alloca [128 x i8], align 1
  %buff.i437.i = alloca [128 x i8], align 1
  %buff.i426.i = alloca [128 x i8], align 1
  %buff.i415.i = alloca [128 x i8], align 1
  %buff.i404.i = alloca [128 x i8], align 1
  %buff.i393.i = alloca [128 x i8], align 1
  %buff.i382.i = alloca [128 x i8], align 1
  %buff.i371.i = alloca [128 x i8], align 1
  %buff.i360.i = alloca [128 x i8], align 1
  %buff.i349.i = alloca [128 x i8], align 1
  %buff.i338.i = alloca [128 x i8], align 1
  %buff.i327.i = alloca [128 x i8], align 1
  %buff.i316.i = alloca [128 x i8], align 1
  %buff.i305.i = alloca [128 x i8], align 1
  %buff.i.i250 = alloca [128 x i8], align 1
  %buff.i69.i = alloca [128 x i8], align 1
  %buff.i58.i = alloca [128 x i8], align 1
  %buff.i47.i = alloca [128 x i8], align 1
  %buff.i36.i = alloca [128 x i8], align 1
  %buff.i.i212 = alloca [128 x i8], align 1
  %buff.i87.i = alloca [128 x i8], align 1
  %buff.i76.i = alloca [128 x i8], align 1
  %buff.i65.i = alloca [128 x i8], align 1
  %buff.i54.i = alloca [128 x i8], align 1
  %buff.i43.i = alloca [128 x i8], align 1
  %buff.i.i191 = alloca [128 x i8], align 1
  %buff.i51.i = alloca [128 x i8], align 1
  %buff.i40.i = alloca [128 x i8], align 1
  %buff.i29.i = alloca [128 x i8], align 1
  %buff.i.i173 = alloca [128 x i8], align 1
  %buff.i193.i = alloca [128 x i8], align 1
  %buff.i182.i = alloca [128 x i8], align 1
  %buff.i171.i = alloca [128 x i8], align 1
  %buff.i160.i = alloca [128 x i8], align 1
  %buff.i149.i = alloca [128 x i8], align 1
  %buff.i138.i = alloca [128 x i8], align 1
  %buff.i127.i99 = alloca [128 x i8], align 1
  %buff.i116.i100 = alloca [128 x i8], align 1
  %buff.i105.i101 = alloca [128 x i8], align 1
  %buff.i.i102 = alloca [128 x i8], align 1
  %buff.i127.i = alloca [128 x i8], align 1
  %buff.i116.i = alloca [128 x i8], align 1
  %buff.i105.i = alloca [128 x i8], align 1
  %buff.i94.i = alloca [128 x i8], align 1
  %buff.i83.i = alloca [128 x i8], align 1
  %buff.i72.i = alloca [128 x i8], align 1
  %buff.i.i70 = alloca [128 x i8], align 1
  %buff.i255.i = alloca [128 x i8], align 1
  %buff.i244.i = alloca [128 x i8], align 1
  %buff.i233.i = alloca [128 x i8], align 1
  %buff.i222.i = alloca [128 x i8], align 1
  %buff.i211.i = alloca [128 x i8], align 1
  %buff.i200.i = alloca [128 x i8], align 1
  %buff.i189.i = alloca [128 x i8], align 1
  %buff.i178.i = alloca [128 x i8], align 1
  %buff.i167.i = alloca [128 x i8], align 1
  %buff.i156.i = alloca [128 x i8], align 1
  %buff.i145.i = alloca [128 x i8], align 1
  %buff.i134.i = alloca [128 x i8], align 1
  %buff.i123.i = alloca [128 x i8], align 1
  %buff.i112.i = alloca [128 x i8], align 1
  %buff.i.i55 = alloca [128 x i8], align 1
  %buff.i904.i = alloca [128 x i8], align 1
  %buff.i893.i = alloca [128 x i8], align 1
  %buff.i882.i = alloca [128 x i8], align 1
  %buff.i871.i = alloca [128 x i8], align 1
  %buff.i860.i = alloca [128 x i8], align 1
  %buff.i849.i = alloca [128 x i8], align 1
  %buff.i838.i = alloca [128 x i8], align 1
  %buff.i827.i = alloca [128 x i8], align 1
  %buff.i816.i = alloca [128 x i8], align 1
  %buff.i805.i = alloca [128 x i8], align 1
  %buff.i794.i = alloca [128 x i8], align 1
  %buff.i783.i = alloca [128 x i8], align 1
  %buff.i772.i = alloca [128 x i8], align 1
  %buff.i761.i = alloca [128 x i8], align 1
  %buff.i750.i = alloca [128 x i8], align 1
  %buff.i739.i = alloca [128 x i8], align 1
  %buff.i728.i = alloca [128 x i8], align 1
  %buff.i717.i = alloca [128 x i8], align 1
  %buff.i706.i = alloca [128 x i8], align 1
  %buff.i695.i = alloca [128 x i8], align 1
  %buff.i684.i = alloca [128 x i8], align 1
  %buff.i673.i = alloca [128 x i8], align 1
  %buff.i662.i = alloca [128 x i8], align 1
  %buff.i651.i = alloca [128 x i8], align 1
  %buff.i640.i = alloca [128 x i8], align 1
  %buff.i629.i = alloca [128 x i8], align 1
  %buff.i618.i = alloca [128 x i8], align 1
  %buff.i607.i = alloca [128 x i8], align 1
  %buff.i596.i = alloca [128 x i8], align 1
  %buff.i585.i = alloca [128 x i8], align 1
  %buff.i574.i = alloca [128 x i8], align 1
  %buff.i563.i = alloca [128 x i8], align 1
  %buff.i552.i = alloca [128 x i8], align 1
  %buff.i541.i = alloca [128 x i8], align 1
  %buff.i530.i = alloca [128 x i8], align 1
  %buff.i519.i = alloca [128 x i8], align 1
  %buff.i508.i = alloca [128 x i8], align 1
  %buff.i497.i = alloca [128 x i8], align 1
  %buff.i486.i = alloca [128 x i8], align 1
  %buff.i475.i = alloca [128 x i8], align 1
  %buff.i464.i = alloca [128 x i8], align 1
  %buff.i453.i = alloca [128 x i8], align 1
  %buff.i442.i = alloca [128 x i8], align 1
  %buff.i431.i = alloca [128 x i8], align 1
  %buff.i420.i = alloca [128 x i8], align 1
  %buff.i409.i = alloca [128 x i8], align 1
  %buff.i398.i = alloca [128 x i8], align 1
  %buff.i387.i = alloca [128 x i8], align 1
  %buff.i376.i = alloca [128 x i8], align 1
  %buff.i.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.ocrdma_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_lock = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %stats_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %va.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 1
  %7 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %va.i, align 16
  %act_rsrc_stats.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %8, i32 0, i32 1
  %last_stats_time.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 33
  %9 = ptrtoint ptr %last_stats_time.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_stats_time.i, align 16
  %sub.i = sub i32 %6, %10
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %11 = icmp ult i32 %call.i, 1000
  br i1 %11, label %if.end.ocrdma_update_stats.exit_crit_edge, label %if.then.i

if.end.ocrdma_update_stats.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocrdma_update_stats.exit

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call i32 @ocrdma_mbx_rdma_stats(ptr noundef %3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call1.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %pd_mgr.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 50
  %12 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd_mgr.i, align 8
  %pd_prealloc_valid.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pd_prealloc_valid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pd_prealloc_valid.i, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then6.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pd_dpp_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %pd_dpp_count.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pd_dpp_count.i, align 4
  %conv.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %act_rsrc_stats.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %act_rsrc_stats.i, align 4
  %19 = ptrtoint ptr %pd_mgr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd_mgr.i, align 8
  %pd_norm_count.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pd_norm_count.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pd_norm_count.i, align 4
  %conv9.i = zext i16 %22 to i32
  %non_dpp_pds.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %8, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %non_dpp_pds.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9.i, ptr %non_dpp_pds.i, align 4
  %th_rsrc_stats.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %8, i32 0, i32 2
  %24 = load ptr, ptr %pd_mgr.i, align 8
  %pd_dpp_thrsh.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %pd_dpp_thrsh.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pd_dpp_thrsh.i, align 2
  %conv11.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %th_rsrc_stats.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv11.i, ptr %th_rsrc_stats.i, align 4
  %28 = load ptr, ptr %pd_mgr.i, align 8
  %pd_norm_thrsh.i = getelementptr inbounds %struct.ocrdma_pd_resource_mgr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %pd_norm_thrsh.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %pd_norm_thrsh.i, align 2
  %conv14.i = zext i16 %30 to i32
  %non_dpp_pds15.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %8, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %non_dpp_pds15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv14.i, ptr %non_dpp_pds15.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %if.end.i.if.end16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %last_stats_time.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_stats_time.i, align 16
  br label %ocrdma_update_stats.exit

ocrdma_update_stats.exit:                         ; preds = %if.end16.i, %if.end.ocrdma_update_stats.exit_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %ocrdma_update_stats.exit.exit_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
    i8 3, label %sw.bb6
    i8 4, label %sw.bb8
    i8 5, label %sw.bb10
    i8 6, label %sw.bb12
    i8 7, label %sw.bb14
    i8 8, label %sw.bb16
    i8 9, label %sw.bb18
  ]

ocrdma_update_stats.exit.exit_crit_edge:          ; preds = %ocrdma_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb:                                            ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %37 = ptrtoint ptr %debugfs_mem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs_mem.i, align 4
  %39 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %va.i, align 16
  %act_rsrc_stats.i49 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1
  %41 = call ptr @memset(ptr %38, i32 0, i32 4096)
  %42 = ptrtoint ptr %act_rsrc_stats.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %act_rsrc_stats.i49, align 4
  %conv.i50 = zext i32 %43 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i) #8
  %44 = call ptr @memset(ptr %buff.i.i, i32 0, i32 128)
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.18, i64 noundef %conv.i50) #8
  %call2.i.i = call i32 @strlen(ptr noundef nonnull %buff.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %call2.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %38, i32 4096
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr3.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %45 = call ptr @memcpy(ptr %38, ptr %buff.i.i, i32 %call2.i.i)
  br label %ocrdma_add_stat.exit.i

ocrdma_add_stat.exit.i:                           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %call2.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i) #8
  %add.ptr.i = getelementptr i8, ptr %38, i32 %retval.0.i.i
  %non_dpp_pds.i51 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %non_dpp_pds.i51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %non_dpp_pds.i51, align 4
  %conv2.i = zext i32 %47 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i376.i) #8
  %48 = call ptr @memset(ptr %buff.i376.i, i32 0, i32 128)
  %call.i377.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i376.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.19, i64 noundef %conv2.i) #8
  %call2.i378.i = call i32 @strlen(ptr noundef nonnull %buff.i376.i) #13
  %add.ptr.i379.i = getelementptr i8, ptr %add.ptr.i, i32 %call2.i378.i
  %cmp.i381.i = icmp ugt ptr %add.ptr.i379.i, %add.ptr3.i.i
  br i1 %cmp.i381.i, label %do.end.i383.i, label %if.end.i384.i

do.end.i383.i:                                    ; preds = %ocrdma_add_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i382.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit386.i

if.end.i384.i:                                    ; preds = %ocrdma_add_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = call ptr @memcpy(ptr %add.ptr.i, ptr %buff.i376.i, i32 %call2.i378.i)
  br label %ocrdma_add_stat.exit386.i

ocrdma_add_stat.exit386.i:                        ; preds = %if.end.i384.i, %do.end.i383.i
  %retval.0.i385.i = phi i32 [ 0, %do.end.i383.i ], [ %call2.i378.i, %if.end.i384.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i376.i) #8
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %retval.0.i385.i
  %rc_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %rc_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rc_dpp_qps.i, align 4
  %conv5.i = zext i32 %51 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i387.i) #8
  %52 = call ptr @memset(ptr %buff.i387.i, i32 0, i32 128)
  %call.i388.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i387.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.20, i64 noundef %conv5.i) #8
  %call2.i389.i = call i32 @strlen(ptr noundef nonnull %buff.i387.i) #13
  %add.ptr.i390.i = getelementptr i8, ptr %add.ptr4.i, i32 %call2.i389.i
  %cmp.i392.i = icmp ugt ptr %add.ptr.i390.i, %add.ptr3.i.i
  br i1 %cmp.i392.i, label %do.end.i394.i, label %if.end.i395.i

do.end.i394.i:                                    ; preds = %ocrdma_add_stat.exit386.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i393.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit397.i

if.end.i395.i:                                    ; preds = %ocrdma_add_stat.exit386.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call ptr @memcpy(ptr %add.ptr4.i, ptr %buff.i387.i, i32 %call2.i389.i)
  br label %ocrdma_add_stat.exit397.i

ocrdma_add_stat.exit397.i:                        ; preds = %if.end.i395.i, %do.end.i394.i
  %retval.0.i396.i = phi i32 [ 0, %do.end.i394.i ], [ %call2.i389.i, %if.end.i395.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i387.i) #8
  %add.ptr7.i = getelementptr i8, ptr %add.ptr4.i, i32 %retval.0.i396.i
  %uc_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %uc_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uc_dpp_qps.i, align 4
  %conv8.i = zext i32 %55 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i398.i) #8
  %56 = call ptr @memset(ptr %buff.i398.i, i32 0, i32 128)
  %call.i399.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i398.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.21, i64 noundef %conv8.i) #8
  %call2.i400.i = call i32 @strlen(ptr noundef nonnull %buff.i398.i) #13
  %add.ptr.i401.i = getelementptr i8, ptr %add.ptr7.i, i32 %call2.i400.i
  %cmp.i403.i = icmp ugt ptr %add.ptr.i401.i, %add.ptr3.i.i
  br i1 %cmp.i403.i, label %do.end.i405.i, label %if.end.i406.i

do.end.i405.i:                                    ; preds = %ocrdma_add_stat.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i404.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit408.i

if.end.i406.i:                                    ; preds = %ocrdma_add_stat.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = call ptr @memcpy(ptr %add.ptr7.i, ptr %buff.i398.i, i32 %call2.i400.i)
  br label %ocrdma_add_stat.exit408.i

ocrdma_add_stat.exit408.i:                        ; preds = %if.end.i406.i, %do.end.i405.i
  %retval.0.i407.i = phi i32 [ 0, %do.end.i405.i ], [ %call2.i400.i, %if.end.i406.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i398.i) #8
  %add.ptr10.i = getelementptr i8, ptr %add.ptr7.i, i32 %retval.0.i407.i
  %ud_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %ud_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ud_dpp_qps.i, align 4
  %conv11.i52 = zext i32 %59 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i409.i) #8
  %60 = call ptr @memset(ptr %buff.i409.i, i32 0, i32 128)
  %call.i410.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i409.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.22, i64 noundef %conv11.i52) #8
  %call2.i411.i = call i32 @strlen(ptr noundef nonnull %buff.i409.i) #13
  %add.ptr.i412.i = getelementptr i8, ptr %add.ptr10.i, i32 %call2.i411.i
  %cmp.i414.i = icmp ugt ptr %add.ptr.i412.i, %add.ptr3.i.i
  br i1 %cmp.i414.i, label %do.end.i416.i, label %if.end.i417.i

do.end.i416.i:                                    ; preds = %ocrdma_add_stat.exit408.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i415.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit419.i

if.end.i417.i:                                    ; preds = %ocrdma_add_stat.exit408.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = call ptr @memcpy(ptr %add.ptr10.i, ptr %buff.i409.i, i32 %call2.i411.i)
  br label %ocrdma_add_stat.exit419.i

ocrdma_add_stat.exit419.i:                        ; preds = %if.end.i417.i, %do.end.i416.i
  %retval.0.i418.i = phi i32 [ 0, %do.end.i416.i ], [ %call2.i411.i, %if.end.i417.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i409.i) #8
  %add.ptr13.i = getelementptr i8, ptr %add.ptr10.i, i32 %retval.0.i418.i
  %rc_non_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %rc_non_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rc_non_dpp_qps.i, align 4
  %conv14.i53 = zext i32 %63 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i420.i) #8
  %64 = call ptr @memset(ptr %buff.i420.i, i32 0, i32 128)
  %call.i421.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i420.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.23, i64 noundef %conv14.i53) #8
  %call2.i422.i = call i32 @strlen(ptr noundef nonnull %buff.i420.i) #13
  %add.ptr.i423.i = getelementptr i8, ptr %add.ptr13.i, i32 %call2.i422.i
  %cmp.i425.i = icmp ugt ptr %add.ptr.i423.i, %add.ptr3.i.i
  br i1 %cmp.i425.i, label %do.end.i427.i, label %if.end.i428.i

do.end.i427.i:                                    ; preds = %ocrdma_add_stat.exit419.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i426.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit430.i

if.end.i428.i:                                    ; preds = %ocrdma_add_stat.exit419.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = call ptr @memcpy(ptr %add.ptr13.i, ptr %buff.i420.i, i32 %call2.i422.i)
  br label %ocrdma_add_stat.exit430.i

ocrdma_add_stat.exit430.i:                        ; preds = %if.end.i428.i, %do.end.i427.i
  %retval.0.i429.i = phi i32 [ 0, %do.end.i427.i ], [ %call2.i422.i, %if.end.i428.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i420.i) #8
  %add.ptr16.i = getelementptr i8, ptr %add.ptr13.i, i32 %retval.0.i429.i
  %uc_non_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 7
  %66 = ptrtoint ptr %uc_non_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %uc_non_dpp_qps.i, align 4
  %conv17.i = zext i32 %67 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i431.i) #8
  %68 = call ptr @memset(ptr %buff.i431.i, i32 0, i32 128)
  %call.i432.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i431.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.24, i64 noundef %conv17.i) #8
  %call2.i433.i = call i32 @strlen(ptr noundef nonnull %buff.i431.i) #13
  %add.ptr.i434.i = getelementptr i8, ptr %add.ptr16.i, i32 %call2.i433.i
  %cmp.i436.i = icmp ugt ptr %add.ptr.i434.i, %add.ptr3.i.i
  br i1 %cmp.i436.i, label %do.end.i438.i, label %if.end.i439.i

do.end.i438.i:                                    ; preds = %ocrdma_add_stat.exit430.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i437.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit441.i

if.end.i439.i:                                    ; preds = %ocrdma_add_stat.exit430.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = call ptr @memcpy(ptr %add.ptr16.i, ptr %buff.i431.i, i32 %call2.i433.i)
  br label %ocrdma_add_stat.exit441.i

ocrdma_add_stat.exit441.i:                        ; preds = %if.end.i439.i, %do.end.i438.i
  %retval.0.i440.i = phi i32 [ 0, %do.end.i438.i ], [ %call2.i433.i, %if.end.i439.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i431.i) #8
  %add.ptr19.i = getelementptr i8, ptr %add.ptr16.i, i32 %retval.0.i440.i
  %ud_non_dpp_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 8
  %70 = ptrtoint ptr %ud_non_dpp_qps.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ud_non_dpp_qps.i, align 4
  %conv20.i = zext i32 %71 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i442.i) #8
  %72 = call ptr @memset(ptr %buff.i442.i, i32 0, i32 128)
  %call.i443.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i442.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.25, i64 noundef %conv20.i) #8
  %call2.i444.i = call i32 @strlen(ptr noundef nonnull %buff.i442.i) #13
  %add.ptr.i445.i = getelementptr i8, ptr %add.ptr19.i, i32 %call2.i444.i
  %cmp.i447.i = icmp ugt ptr %add.ptr.i445.i, %add.ptr3.i.i
  br i1 %cmp.i447.i, label %do.end.i449.i, label %if.end.i450.i

do.end.i449.i:                                    ; preds = %ocrdma_add_stat.exit441.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i448.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit452.i

if.end.i450.i:                                    ; preds = %ocrdma_add_stat.exit441.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = call ptr @memcpy(ptr %add.ptr19.i, ptr %buff.i442.i, i32 %call2.i444.i)
  br label %ocrdma_add_stat.exit452.i

ocrdma_add_stat.exit452.i:                        ; preds = %if.end.i450.i, %do.end.i449.i
  %retval.0.i451.i = phi i32 [ 0, %do.end.i449.i ], [ %call2.i444.i, %if.end.i450.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i442.i) #8
  %add.ptr22.i = getelementptr i8, ptr %add.ptr19.i, i32 %retval.0.i451.i
  %srqs.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 10
  %74 = ptrtoint ptr %srqs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %srqs.i, align 4
  %conv23.i = zext i32 %75 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i453.i) #8
  %76 = call ptr @memset(ptr %buff.i453.i, i32 0, i32 128)
  %call.i454.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i453.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.26, i64 noundef %conv23.i) #8
  %call2.i455.i = call i32 @strlen(ptr noundef nonnull %buff.i453.i) #13
  %add.ptr.i456.i = getelementptr i8, ptr %add.ptr22.i, i32 %call2.i455.i
  %cmp.i458.i = icmp ugt ptr %add.ptr.i456.i, %add.ptr3.i.i
  br i1 %cmp.i458.i, label %do.end.i460.i, label %if.end.i461.i

do.end.i460.i:                                    ; preds = %ocrdma_add_stat.exit452.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i459.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit463.i

if.end.i461.i:                                    ; preds = %ocrdma_add_stat.exit452.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = call ptr @memcpy(ptr %add.ptr22.i, ptr %buff.i453.i, i32 %call2.i455.i)
  br label %ocrdma_add_stat.exit463.i

ocrdma_add_stat.exit463.i:                        ; preds = %if.end.i461.i, %do.end.i460.i
  %retval.0.i462.i = phi i32 [ 0, %do.end.i460.i ], [ %call2.i455.i, %if.end.i461.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i453.i) #8
  %add.ptr25.i = getelementptr i8, ptr %add.ptr22.i, i32 %retval.0.i462.i
  %rbqs.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 11
  %78 = ptrtoint ptr %rbqs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rbqs.i, align 4
  %conv26.i = zext i32 %79 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i464.i) #8
  %80 = call ptr @memset(ptr %buff.i464.i, i32 0, i32 128)
  %call.i465.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i464.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.27, i64 noundef %conv26.i) #8
  %call2.i466.i = call i32 @strlen(ptr noundef nonnull %buff.i464.i) #13
  %add.ptr.i467.i = getelementptr i8, ptr %add.ptr25.i, i32 %call2.i466.i
  %cmp.i469.i = icmp ugt ptr %add.ptr.i467.i, %add.ptr3.i.i
  br i1 %cmp.i469.i, label %do.end.i471.i, label %if.end.i472.i

do.end.i471.i:                                    ; preds = %ocrdma_add_stat.exit463.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i470.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit474.i

if.end.i472.i:                                    ; preds = %ocrdma_add_stat.exit463.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = call ptr @memcpy(ptr %add.ptr25.i, ptr %buff.i464.i, i32 %call2.i466.i)
  br label %ocrdma_add_stat.exit474.i

ocrdma_add_stat.exit474.i:                        ; preds = %if.end.i472.i, %do.end.i471.i
  %retval.0.i473.i = phi i32 [ 0, %do.end.i471.i ], [ %call2.i466.i, %if.end.i472.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i464.i) #8
  %add.ptr28.i = getelementptr i8, ptr %add.ptr25.i, i32 %retval.0.i473.i
  %r64K_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 12
  %82 = ptrtoint ptr %r64K_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %r64K_nsmr.i, align 4
  %conv29.i = zext i32 %83 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i475.i) #8
  %84 = call ptr @memset(ptr %buff.i475.i, i32 0, i32 128)
  %call.i476.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i475.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.28, i64 noundef %conv29.i) #8
  %call2.i477.i = call i32 @strlen(ptr noundef nonnull %buff.i475.i) #13
  %add.ptr.i478.i = getelementptr i8, ptr %add.ptr28.i, i32 %call2.i477.i
  %cmp.i480.i = icmp ugt ptr %add.ptr.i478.i, %add.ptr3.i.i
  br i1 %cmp.i480.i, label %do.end.i482.i, label %if.end.i483.i

do.end.i482.i:                                    ; preds = %ocrdma_add_stat.exit474.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i481.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit485.i

if.end.i483.i:                                    ; preds = %ocrdma_add_stat.exit474.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = call ptr @memcpy(ptr %add.ptr28.i, ptr %buff.i475.i, i32 %call2.i477.i)
  br label %ocrdma_add_stat.exit485.i

ocrdma_add_stat.exit485.i:                        ; preds = %if.end.i483.i, %do.end.i482.i
  %retval.0.i484.i = phi i32 [ 0, %do.end.i482.i ], [ %call2.i477.i, %if.end.i483.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i475.i) #8
  %add.ptr31.i = getelementptr i8, ptr %add.ptr28.i, i32 %retval.0.i484.i
  %r64K_to_2M_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 13
  %86 = ptrtoint ptr %r64K_to_2M_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %r64K_to_2M_nsmr.i, align 4
  %conv32.i = zext i32 %87 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i486.i) #8
  %88 = call ptr @memset(ptr %buff.i486.i, i32 0, i32 128)
  %call.i487.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i486.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.29, i64 noundef %conv32.i) #8
  %call2.i488.i = call i32 @strlen(ptr noundef nonnull %buff.i486.i) #13
  %add.ptr.i489.i = getelementptr i8, ptr %add.ptr31.i, i32 %call2.i488.i
  %cmp.i491.i = icmp ugt ptr %add.ptr.i489.i, %add.ptr3.i.i
  br i1 %cmp.i491.i, label %do.end.i493.i, label %if.end.i494.i

do.end.i493.i:                                    ; preds = %ocrdma_add_stat.exit485.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i492.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit496.i

if.end.i494.i:                                    ; preds = %ocrdma_add_stat.exit485.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = call ptr @memcpy(ptr %add.ptr31.i, ptr %buff.i486.i, i32 %call2.i488.i)
  br label %ocrdma_add_stat.exit496.i

ocrdma_add_stat.exit496.i:                        ; preds = %if.end.i494.i, %do.end.i493.i
  %retval.0.i495.i = phi i32 [ 0, %do.end.i493.i ], [ %call2.i488.i, %if.end.i494.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i486.i) #8
  %add.ptr34.i = getelementptr i8, ptr %add.ptr31.i, i32 %retval.0.i495.i
  %r2M_to_44M_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 14
  %90 = ptrtoint ptr %r2M_to_44M_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %r2M_to_44M_nsmr.i, align 4
  %conv35.i = zext i32 %91 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i497.i) #8
  %92 = call ptr @memset(ptr %buff.i497.i, i32 0, i32 128)
  %call.i498.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i497.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.30, i64 noundef %conv35.i) #8
  %call2.i499.i = call i32 @strlen(ptr noundef nonnull %buff.i497.i) #13
  %add.ptr.i500.i = getelementptr i8, ptr %add.ptr34.i, i32 %call2.i499.i
  %cmp.i502.i = icmp ugt ptr %add.ptr.i500.i, %add.ptr3.i.i
  br i1 %cmp.i502.i, label %do.end.i504.i, label %if.end.i505.i

do.end.i504.i:                                    ; preds = %ocrdma_add_stat.exit496.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i503.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit507.i

if.end.i505.i:                                    ; preds = %ocrdma_add_stat.exit496.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = call ptr @memcpy(ptr %add.ptr34.i, ptr %buff.i497.i, i32 %call2.i499.i)
  br label %ocrdma_add_stat.exit507.i

ocrdma_add_stat.exit507.i:                        ; preds = %if.end.i505.i, %do.end.i504.i
  %retval.0.i506.i = phi i32 [ 0, %do.end.i504.i ], [ %call2.i499.i, %if.end.i505.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i497.i) #8
  %add.ptr37.i = getelementptr i8, ptr %add.ptr34.i, i32 %retval.0.i506.i
  %r44M_to_1G_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 15
  %94 = ptrtoint ptr %r44M_to_1G_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %r44M_to_1G_nsmr.i, align 4
  %conv38.i = zext i32 %95 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i508.i) #8
  %96 = call ptr @memset(ptr %buff.i508.i, i32 0, i32 128)
  %call.i509.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i508.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.31, i64 noundef %conv38.i) #8
  %call2.i510.i = call i32 @strlen(ptr noundef nonnull %buff.i508.i) #13
  %add.ptr.i511.i = getelementptr i8, ptr %add.ptr37.i, i32 %call2.i510.i
  %cmp.i513.i = icmp ugt ptr %add.ptr.i511.i, %add.ptr3.i.i
  br i1 %cmp.i513.i, label %do.end.i515.i, label %if.end.i516.i

do.end.i515.i:                                    ; preds = %ocrdma_add_stat.exit507.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i514.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit518.i

if.end.i516.i:                                    ; preds = %ocrdma_add_stat.exit507.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = call ptr @memcpy(ptr %add.ptr37.i, ptr %buff.i508.i, i32 %call2.i510.i)
  br label %ocrdma_add_stat.exit518.i

ocrdma_add_stat.exit518.i:                        ; preds = %if.end.i516.i, %do.end.i515.i
  %retval.0.i517.i = phi i32 [ 0, %do.end.i515.i ], [ %call2.i510.i, %if.end.i516.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i508.i) #8
  %add.ptr40.i = getelementptr i8, ptr %add.ptr37.i, i32 %retval.0.i517.i
  %r1G_to_4G_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 16
  %98 = ptrtoint ptr %r1G_to_4G_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %r1G_to_4G_nsmr.i, align 4
  %conv41.i = zext i32 %99 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i519.i) #8
  %100 = call ptr @memset(ptr %buff.i519.i, i32 0, i32 128)
  %call.i520.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i519.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.32, i64 noundef %conv41.i) #8
  %call2.i521.i = call i32 @strlen(ptr noundef nonnull %buff.i519.i) #13
  %add.ptr.i522.i = getelementptr i8, ptr %add.ptr40.i, i32 %call2.i521.i
  %cmp.i524.i = icmp ugt ptr %add.ptr.i522.i, %add.ptr3.i.i
  br i1 %cmp.i524.i, label %do.end.i526.i, label %if.end.i527.i

do.end.i526.i:                                    ; preds = %ocrdma_add_stat.exit518.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i525.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit529.i

if.end.i527.i:                                    ; preds = %ocrdma_add_stat.exit518.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = call ptr @memcpy(ptr %add.ptr40.i, ptr %buff.i519.i, i32 %call2.i521.i)
  br label %ocrdma_add_stat.exit529.i

ocrdma_add_stat.exit529.i:                        ; preds = %if.end.i527.i, %do.end.i526.i
  %retval.0.i528.i = phi i32 [ 0, %do.end.i526.i ], [ %call2.i521.i, %if.end.i527.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i519.i) #8
  %add.ptr43.i = getelementptr i8, ptr %add.ptr40.i, i32 %retval.0.i528.i
  %nsmr_count_4G_to_32G.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 17
  %102 = ptrtoint ptr %nsmr_count_4G_to_32G.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nsmr_count_4G_to_32G.i, align 4
  %conv44.i = zext i32 %103 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i530.i) #8
  %104 = call ptr @memset(ptr %buff.i530.i, i32 0, i32 128)
  %call.i531.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i530.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.33, i64 noundef %conv44.i) #8
  %call2.i532.i = call i32 @strlen(ptr noundef nonnull %buff.i530.i) #13
  %add.ptr.i533.i = getelementptr i8, ptr %add.ptr43.i, i32 %call2.i532.i
  %cmp.i535.i = icmp ugt ptr %add.ptr.i533.i, %add.ptr3.i.i
  br i1 %cmp.i535.i, label %do.end.i537.i, label %if.end.i538.i

do.end.i537.i:                                    ; preds = %ocrdma_add_stat.exit529.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i536.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit540.i

if.end.i538.i:                                    ; preds = %ocrdma_add_stat.exit529.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = call ptr @memcpy(ptr %add.ptr43.i, ptr %buff.i530.i, i32 %call2.i532.i)
  br label %ocrdma_add_stat.exit540.i

ocrdma_add_stat.exit540.i:                        ; preds = %if.end.i538.i, %do.end.i537.i
  %retval.0.i539.i = phi i32 [ 0, %do.end.i537.i ], [ %call2.i532.i, %if.end.i538.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i530.i) #8
  %add.ptr46.i = getelementptr i8, ptr %add.ptr43.i, i32 %retval.0.i539.i
  %r32G_to_64G_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 18
  %106 = ptrtoint ptr %r32G_to_64G_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %r32G_to_64G_nsmr.i, align 4
  %conv47.i = zext i32 %107 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i541.i) #8
  %108 = call ptr @memset(ptr %buff.i541.i, i32 0, i32 128)
  %call.i542.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i541.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.34, i64 noundef %conv47.i) #8
  %call2.i543.i = call i32 @strlen(ptr noundef nonnull %buff.i541.i) #13
  %add.ptr.i544.i = getelementptr i8, ptr %add.ptr46.i, i32 %call2.i543.i
  %cmp.i546.i = icmp ugt ptr %add.ptr.i544.i, %add.ptr3.i.i
  br i1 %cmp.i546.i, label %do.end.i548.i, label %if.end.i549.i

do.end.i548.i:                                    ; preds = %ocrdma_add_stat.exit540.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i547.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit551.i

if.end.i549.i:                                    ; preds = %ocrdma_add_stat.exit540.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = call ptr @memcpy(ptr %add.ptr46.i, ptr %buff.i541.i, i32 %call2.i543.i)
  br label %ocrdma_add_stat.exit551.i

ocrdma_add_stat.exit551.i:                        ; preds = %if.end.i549.i, %do.end.i548.i
  %retval.0.i550.i = phi i32 [ 0, %do.end.i548.i ], [ %call2.i543.i, %if.end.i549.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i541.i) #8
  %add.ptr49.i = getelementptr i8, ptr %add.ptr46.i, i32 %retval.0.i550.i
  %r64G_to_128G_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 19
  %110 = ptrtoint ptr %r64G_to_128G_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %r64G_to_128G_nsmr.i, align 4
  %conv50.i = zext i32 %111 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i552.i) #8
  %112 = call ptr @memset(ptr %buff.i552.i, i32 0, i32 128)
  %call.i553.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i552.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.35, i64 noundef %conv50.i) #8
  %call2.i554.i = call i32 @strlen(ptr noundef nonnull %buff.i552.i) #13
  %add.ptr.i555.i = getelementptr i8, ptr %add.ptr49.i, i32 %call2.i554.i
  %cmp.i557.i = icmp ugt ptr %add.ptr.i555.i, %add.ptr3.i.i
  br i1 %cmp.i557.i, label %do.end.i559.i, label %if.end.i560.i

do.end.i559.i:                                    ; preds = %ocrdma_add_stat.exit551.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i558.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit562.i

if.end.i560.i:                                    ; preds = %ocrdma_add_stat.exit551.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = call ptr @memcpy(ptr %add.ptr49.i, ptr %buff.i552.i, i32 %call2.i554.i)
  br label %ocrdma_add_stat.exit562.i

ocrdma_add_stat.exit562.i:                        ; preds = %if.end.i560.i, %do.end.i559.i
  %retval.0.i561.i = phi i32 [ 0, %do.end.i559.i ], [ %call2.i554.i, %if.end.i560.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i552.i) #8
  %add.ptr52.i = getelementptr i8, ptr %add.ptr49.i, i32 %retval.0.i561.i
  %r128G_to_higher_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 20
  %114 = ptrtoint ptr %r128G_to_higher_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %r128G_to_higher_nsmr.i, align 4
  %conv53.i = zext i32 %115 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i563.i) #8
  %116 = call ptr @memset(ptr %buff.i563.i, i32 0, i32 128)
  %call.i564.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i563.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.36, i64 noundef %conv53.i) #8
  %call2.i565.i = call i32 @strlen(ptr noundef nonnull %buff.i563.i) #13
  %add.ptr.i566.i = getelementptr i8, ptr %add.ptr52.i, i32 %call2.i565.i
  %cmp.i568.i = icmp ugt ptr %add.ptr.i566.i, %add.ptr3.i.i
  br i1 %cmp.i568.i, label %do.end.i570.i, label %if.end.i571.i

do.end.i570.i:                                    ; preds = %ocrdma_add_stat.exit562.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i569.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit573.i

if.end.i571.i:                                    ; preds = %ocrdma_add_stat.exit562.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = call ptr @memcpy(ptr %add.ptr52.i, ptr %buff.i563.i, i32 %call2.i565.i)
  br label %ocrdma_add_stat.exit573.i

ocrdma_add_stat.exit573.i:                        ; preds = %if.end.i571.i, %do.end.i570.i
  %retval.0.i572.i = phi i32 [ 0, %do.end.i570.i ], [ %call2.i565.i, %if.end.i571.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i563.i) #8
  %add.ptr55.i = getelementptr i8, ptr %add.ptr52.i, i32 %retval.0.i572.i
  %embedded_nsmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 21
  %118 = ptrtoint ptr %embedded_nsmr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %embedded_nsmr.i, align 4
  %conv56.i = zext i32 %119 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i574.i) #8
  %120 = call ptr @memset(ptr %buff.i574.i, i32 0, i32 128)
  %call.i575.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i574.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.37, i64 noundef %conv56.i) #8
  %call2.i576.i = call i32 @strlen(ptr noundef nonnull %buff.i574.i) #13
  %add.ptr.i577.i = getelementptr i8, ptr %add.ptr55.i, i32 %call2.i576.i
  %cmp.i579.i = icmp ugt ptr %add.ptr.i577.i, %add.ptr3.i.i
  br i1 %cmp.i579.i, label %do.end.i581.i, label %if.end.i582.i

do.end.i581.i:                                    ; preds = %ocrdma_add_stat.exit573.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i580.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit584.i

if.end.i582.i:                                    ; preds = %ocrdma_add_stat.exit573.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = call ptr @memcpy(ptr %add.ptr55.i, ptr %buff.i574.i, i32 %call2.i576.i)
  br label %ocrdma_add_stat.exit584.i

ocrdma_add_stat.exit584.i:                        ; preds = %if.end.i582.i, %do.end.i581.i
  %retval.0.i583.i = phi i32 [ 0, %do.end.i581.i ], [ %call2.i576.i, %if.end.i582.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i574.i) #8
  %add.ptr58.i = getelementptr i8, ptr %add.ptr55.i, i32 %retval.0.i583.i
  %frmr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 22
  %122 = ptrtoint ptr %frmr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %frmr.i, align 4
  %conv59.i = zext i32 %123 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i585.i) #8
  %124 = call ptr @memset(ptr %buff.i585.i, i32 0, i32 128)
  %call.i586.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i585.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.38, i64 noundef %conv59.i) #8
  %call2.i587.i = call i32 @strlen(ptr noundef nonnull %buff.i585.i) #13
  %add.ptr.i588.i = getelementptr i8, ptr %add.ptr58.i, i32 %call2.i587.i
  %cmp.i590.i = icmp ugt ptr %add.ptr.i588.i, %add.ptr3.i.i
  br i1 %cmp.i590.i, label %do.end.i592.i, label %if.end.i593.i

do.end.i592.i:                                    ; preds = %ocrdma_add_stat.exit584.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i591.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit595.i

if.end.i593.i:                                    ; preds = %ocrdma_add_stat.exit584.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = call ptr @memcpy(ptr %add.ptr58.i, ptr %buff.i585.i, i32 %call2.i587.i)
  br label %ocrdma_add_stat.exit595.i

ocrdma_add_stat.exit595.i:                        ; preds = %if.end.i593.i, %do.end.i592.i
  %retval.0.i594.i = phi i32 [ 0, %do.end.i592.i ], [ %call2.i587.i, %if.end.i593.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i585.i) #8
  %add.ptr61.i = getelementptr i8, ptr %add.ptr58.i, i32 %retval.0.i594.i
  %prefetch_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 23
  %126 = ptrtoint ptr %prefetch_qps.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %prefetch_qps.i, align 4
  %conv62.i = zext i32 %127 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i596.i) #8
  %128 = call ptr @memset(ptr %buff.i596.i, i32 0, i32 128)
  %call.i597.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i596.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.39, i64 noundef %conv62.i) #8
  %call2.i598.i = call i32 @strlen(ptr noundef nonnull %buff.i596.i) #13
  %add.ptr.i599.i = getelementptr i8, ptr %add.ptr61.i, i32 %call2.i598.i
  %cmp.i601.i = icmp ugt ptr %add.ptr.i599.i, %add.ptr3.i.i
  br i1 %cmp.i601.i, label %do.end.i603.i, label %if.end.i604.i

do.end.i603.i:                                    ; preds = %ocrdma_add_stat.exit595.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i602.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit606.i

if.end.i604.i:                                    ; preds = %ocrdma_add_stat.exit595.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = call ptr @memcpy(ptr %add.ptr61.i, ptr %buff.i596.i, i32 %call2.i598.i)
  br label %ocrdma_add_stat.exit606.i

ocrdma_add_stat.exit606.i:                        ; preds = %if.end.i604.i, %do.end.i603.i
  %retval.0.i605.i = phi i32 [ 0, %do.end.i603.i ], [ %call2.i598.i, %if.end.i604.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i596.i) #8
  %add.ptr64.i = getelementptr i8, ptr %add.ptr61.i, i32 %retval.0.i605.i
  %ondemand_qps.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 24
  %130 = ptrtoint ptr %ondemand_qps.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ondemand_qps.i, align 4
  %conv65.i = zext i32 %131 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i607.i) #8
  %132 = call ptr @memset(ptr %buff.i607.i, i32 0, i32 128)
  %call.i608.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i607.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.40, i64 noundef %conv65.i) #8
  %call2.i609.i = call i32 @strlen(ptr noundef nonnull %buff.i607.i) #13
  %add.ptr.i610.i = getelementptr i8, ptr %add.ptr64.i, i32 %call2.i609.i
  %cmp.i612.i = icmp ugt ptr %add.ptr.i610.i, %add.ptr3.i.i
  br i1 %cmp.i612.i, label %do.end.i614.i, label %if.end.i615.i

do.end.i614.i:                                    ; preds = %ocrdma_add_stat.exit606.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i613.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit617.i

if.end.i615.i:                                    ; preds = %ocrdma_add_stat.exit606.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = call ptr @memcpy(ptr %add.ptr64.i, ptr %buff.i607.i, i32 %call2.i609.i)
  br label %ocrdma_add_stat.exit617.i

ocrdma_add_stat.exit617.i:                        ; preds = %if.end.i615.i, %do.end.i614.i
  %retval.0.i616.i = phi i32 [ 0, %do.end.i614.i ], [ %call2.i609.i, %if.end.i615.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i607.i) #8
  %add.ptr67.i = getelementptr i8, ptr %add.ptr64.i, i32 %retval.0.i616.i
  %phy_mr.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 25
  %134 = ptrtoint ptr %phy_mr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %phy_mr.i, align 4
  %conv68.i = zext i32 %135 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i618.i) #8
  %136 = call ptr @memset(ptr %buff.i618.i, i32 0, i32 128)
  %call.i619.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i618.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.41, i64 noundef %conv68.i) #8
  %call2.i620.i = call i32 @strlen(ptr noundef nonnull %buff.i618.i) #13
  %add.ptr.i621.i = getelementptr i8, ptr %add.ptr67.i, i32 %call2.i620.i
  %cmp.i623.i = icmp ugt ptr %add.ptr.i621.i, %add.ptr3.i.i
  br i1 %cmp.i623.i, label %do.end.i625.i, label %if.end.i626.i

do.end.i625.i:                                    ; preds = %ocrdma_add_stat.exit617.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i624.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit628.i

if.end.i626.i:                                    ; preds = %ocrdma_add_stat.exit617.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = call ptr @memcpy(ptr %add.ptr67.i, ptr %buff.i618.i, i32 %call2.i620.i)
  br label %ocrdma_add_stat.exit628.i

ocrdma_add_stat.exit628.i:                        ; preds = %if.end.i626.i, %do.end.i625.i
  %retval.0.i627.i = phi i32 [ 0, %do.end.i625.i ], [ %call2.i620.i, %if.end.i626.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i618.i) #8
  %add.ptr70.i = getelementptr i8, ptr %add.ptr67.i, i32 %retval.0.i627.i
  %mw.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 1, i32 26
  %138 = ptrtoint ptr %mw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mw.i, align 4
  %conv71.i = zext i32 %139 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i629.i) #8
  %140 = call ptr @memset(ptr %buff.i629.i, i32 0, i32 128)
  %call.i630.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i629.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.42, i64 noundef %conv71.i) #8
  %call2.i631.i = call i32 @strlen(ptr noundef nonnull %buff.i629.i) #13
  %add.ptr.i632.i = getelementptr i8, ptr %add.ptr70.i, i32 %call2.i631.i
  %cmp.i634.i = icmp ugt ptr %add.ptr.i632.i, %add.ptr3.i.i
  br i1 %cmp.i634.i, label %do.end.i636.i, label %if.end.i637.i

do.end.i636.i:                                    ; preds = %ocrdma_add_stat.exit628.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i635.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit639.i

if.end.i637.i:                                    ; preds = %ocrdma_add_stat.exit628.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = call ptr @memcpy(ptr %add.ptr70.i, ptr %buff.i629.i, i32 %call2.i631.i)
  br label %ocrdma_add_stat.exit639.i

ocrdma_add_stat.exit639.i:                        ; preds = %if.end.i637.i, %do.end.i636.i
  %retval.0.i638.i = phi i32 [ 0, %do.end.i636.i ], [ %call2.i631.i, %if.end.i637.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i629.i) #8
  %add.ptr73.i = getelementptr i8, ptr %add.ptr70.i, i32 %retval.0.i638.i
  %th_rsrc_stats.i54 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2
  %142 = ptrtoint ptr %th_rsrc_stats.i54 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %th_rsrc_stats.i54, align 4
  %conv75.i = zext i32 %143 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i640.i) #8
  %144 = call ptr @memset(ptr %buff.i640.i, i32 0, i32 128)
  %call.i641.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i640.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.43, i64 noundef %conv75.i) #8
  %call2.i642.i = call i32 @strlen(ptr noundef nonnull %buff.i640.i) #13
  %add.ptr.i643.i = getelementptr i8, ptr %add.ptr73.i, i32 %call2.i642.i
  %cmp.i645.i = icmp ugt ptr %add.ptr.i643.i, %add.ptr3.i.i
  br i1 %cmp.i645.i, label %do.end.i647.i, label %if.end.i648.i

do.end.i647.i:                                    ; preds = %ocrdma_add_stat.exit639.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i646.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit650.i

if.end.i648.i:                                    ; preds = %ocrdma_add_stat.exit639.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = call ptr @memcpy(ptr %add.ptr73.i, ptr %buff.i640.i, i32 %call2.i642.i)
  br label %ocrdma_add_stat.exit650.i

ocrdma_add_stat.exit650.i:                        ; preds = %if.end.i648.i, %do.end.i647.i
  %retval.0.i649.i = phi i32 [ 0, %do.end.i647.i ], [ %call2.i642.i, %if.end.i648.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i640.i) #8
  %add.ptr77.i = getelementptr i8, ptr %add.ptr73.i, i32 %retval.0.i649.i
  %non_dpp_pds78.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 1
  %146 = ptrtoint ptr %non_dpp_pds78.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %non_dpp_pds78.i, align 4
  %conv79.i = zext i32 %147 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i651.i) #8
  %148 = call ptr @memset(ptr %buff.i651.i, i32 0, i32 128)
  %call.i652.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i651.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.44, i64 noundef %conv79.i) #8
  %call2.i653.i = call i32 @strlen(ptr noundef nonnull %buff.i651.i) #13
  %add.ptr.i654.i = getelementptr i8, ptr %add.ptr77.i, i32 %call2.i653.i
  %cmp.i656.i = icmp ugt ptr %add.ptr.i654.i, %add.ptr3.i.i
  br i1 %cmp.i656.i, label %do.end.i658.i, label %if.end.i659.i

do.end.i658.i:                                    ; preds = %ocrdma_add_stat.exit650.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i657.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit661.i

if.end.i659.i:                                    ; preds = %ocrdma_add_stat.exit650.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = call ptr @memcpy(ptr %add.ptr77.i, ptr %buff.i651.i, i32 %call2.i653.i)
  br label %ocrdma_add_stat.exit661.i

ocrdma_add_stat.exit661.i:                        ; preds = %if.end.i659.i, %do.end.i658.i
  %retval.0.i660.i = phi i32 [ 0, %do.end.i658.i ], [ %call2.i653.i, %if.end.i659.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i651.i) #8
  %add.ptr81.i = getelementptr i8, ptr %add.ptr77.i, i32 %retval.0.i660.i
  %rc_dpp_qps82.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 2
  %150 = ptrtoint ptr %rc_dpp_qps82.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rc_dpp_qps82.i, align 4
  %conv83.i = zext i32 %151 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i662.i) #8
  %152 = call ptr @memset(ptr %buff.i662.i, i32 0, i32 128)
  %call.i663.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i662.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i64 noundef %conv83.i) #8
  %call2.i664.i = call i32 @strlen(ptr noundef nonnull %buff.i662.i) #13
  %add.ptr.i665.i = getelementptr i8, ptr %add.ptr81.i, i32 %call2.i664.i
  %cmp.i667.i = icmp ugt ptr %add.ptr.i665.i, %add.ptr3.i.i
  br i1 %cmp.i667.i, label %do.end.i669.i, label %if.end.i670.i

do.end.i669.i:                                    ; preds = %ocrdma_add_stat.exit661.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i668.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit672.i

if.end.i670.i:                                    ; preds = %ocrdma_add_stat.exit661.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = call ptr @memcpy(ptr %add.ptr81.i, ptr %buff.i662.i, i32 %call2.i664.i)
  br label %ocrdma_add_stat.exit672.i

ocrdma_add_stat.exit672.i:                        ; preds = %if.end.i670.i, %do.end.i669.i
  %retval.0.i671.i = phi i32 [ 0, %do.end.i669.i ], [ %call2.i664.i, %if.end.i670.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i662.i) #8
  %add.ptr85.i = getelementptr i8, ptr %add.ptr81.i, i32 %retval.0.i671.i
  %uc_dpp_qps86.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 3
  %154 = ptrtoint ptr %uc_dpp_qps86.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %uc_dpp_qps86.i, align 4
  %conv87.i = zext i32 %155 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i673.i) #8
  %156 = call ptr @memset(ptr %buff.i673.i, i32 0, i32 128)
  %call.i674.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i673.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.46, i64 noundef %conv87.i) #8
  %call2.i675.i = call i32 @strlen(ptr noundef nonnull %buff.i673.i) #13
  %add.ptr.i676.i = getelementptr i8, ptr %add.ptr85.i, i32 %call2.i675.i
  %cmp.i678.i = icmp ugt ptr %add.ptr.i676.i, %add.ptr3.i.i
  br i1 %cmp.i678.i, label %do.end.i680.i, label %if.end.i681.i

do.end.i680.i:                                    ; preds = %ocrdma_add_stat.exit672.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i679.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit683.i

if.end.i681.i:                                    ; preds = %ocrdma_add_stat.exit672.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = call ptr @memcpy(ptr %add.ptr85.i, ptr %buff.i673.i, i32 %call2.i675.i)
  br label %ocrdma_add_stat.exit683.i

ocrdma_add_stat.exit683.i:                        ; preds = %if.end.i681.i, %do.end.i680.i
  %retval.0.i682.i = phi i32 [ 0, %do.end.i680.i ], [ %call2.i675.i, %if.end.i681.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i673.i) #8
  %add.ptr89.i = getelementptr i8, ptr %add.ptr85.i, i32 %retval.0.i682.i
  %ud_dpp_qps90.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 4
  %158 = ptrtoint ptr %ud_dpp_qps90.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ud_dpp_qps90.i, align 4
  %conv91.i = zext i32 %159 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i684.i) #8
  %160 = call ptr @memset(ptr %buff.i684.i, i32 0, i32 128)
  %call.i685.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i684.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.47, i64 noundef %conv91.i) #8
  %call2.i686.i = call i32 @strlen(ptr noundef nonnull %buff.i684.i) #13
  %add.ptr.i687.i = getelementptr i8, ptr %add.ptr89.i, i32 %call2.i686.i
  %cmp.i689.i = icmp ugt ptr %add.ptr.i687.i, %add.ptr3.i.i
  br i1 %cmp.i689.i, label %do.end.i691.i, label %if.end.i692.i

do.end.i691.i:                                    ; preds = %ocrdma_add_stat.exit683.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i690.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit694.i

if.end.i692.i:                                    ; preds = %ocrdma_add_stat.exit683.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = call ptr @memcpy(ptr %add.ptr89.i, ptr %buff.i684.i, i32 %call2.i686.i)
  br label %ocrdma_add_stat.exit694.i

ocrdma_add_stat.exit694.i:                        ; preds = %if.end.i692.i, %do.end.i691.i
  %retval.0.i693.i = phi i32 [ 0, %do.end.i691.i ], [ %call2.i686.i, %if.end.i692.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i684.i) #8
  %add.ptr93.i = getelementptr i8, ptr %add.ptr89.i, i32 %retval.0.i693.i
  %rc_non_dpp_qps94.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 5
  %162 = ptrtoint ptr %rc_non_dpp_qps94.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rc_non_dpp_qps94.i, align 4
  %conv95.i = zext i32 %163 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i695.i) #8
  %164 = call ptr @memset(ptr %buff.i695.i, i32 0, i32 128)
  %call.i696.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i695.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.48, i64 noundef %conv95.i) #8
  %call2.i697.i = call i32 @strlen(ptr noundef nonnull %buff.i695.i) #13
  %add.ptr.i698.i = getelementptr i8, ptr %add.ptr93.i, i32 %call2.i697.i
  %cmp.i700.i = icmp ugt ptr %add.ptr.i698.i, %add.ptr3.i.i
  br i1 %cmp.i700.i, label %do.end.i702.i, label %if.end.i703.i

do.end.i702.i:                                    ; preds = %ocrdma_add_stat.exit694.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i701.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit705.i

if.end.i703.i:                                    ; preds = %ocrdma_add_stat.exit694.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = call ptr @memcpy(ptr %add.ptr93.i, ptr %buff.i695.i, i32 %call2.i697.i)
  br label %ocrdma_add_stat.exit705.i

ocrdma_add_stat.exit705.i:                        ; preds = %if.end.i703.i, %do.end.i702.i
  %retval.0.i704.i = phi i32 [ 0, %do.end.i702.i ], [ %call2.i697.i, %if.end.i703.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i695.i) #8
  %add.ptr97.i = getelementptr i8, ptr %add.ptr93.i, i32 %retval.0.i704.i
  %uc_non_dpp_qps98.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 7
  %166 = ptrtoint ptr %uc_non_dpp_qps98.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %uc_non_dpp_qps98.i, align 4
  %conv99.i = zext i32 %167 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i706.i) #8
  %168 = call ptr @memset(ptr %buff.i706.i, i32 0, i32 128)
  %call.i707.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i706.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.49, i64 noundef %conv99.i) #8
  %call2.i708.i = call i32 @strlen(ptr noundef nonnull %buff.i706.i) #13
  %add.ptr.i709.i = getelementptr i8, ptr %add.ptr97.i, i32 %call2.i708.i
  %cmp.i711.i = icmp ugt ptr %add.ptr.i709.i, %add.ptr3.i.i
  br i1 %cmp.i711.i, label %do.end.i713.i, label %if.end.i714.i

do.end.i713.i:                                    ; preds = %ocrdma_add_stat.exit705.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i712.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit716.i

if.end.i714.i:                                    ; preds = %ocrdma_add_stat.exit705.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = call ptr @memcpy(ptr %add.ptr97.i, ptr %buff.i706.i, i32 %call2.i708.i)
  br label %ocrdma_add_stat.exit716.i

ocrdma_add_stat.exit716.i:                        ; preds = %if.end.i714.i, %do.end.i713.i
  %retval.0.i715.i = phi i32 [ 0, %do.end.i713.i ], [ %call2.i708.i, %if.end.i714.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i706.i) #8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr97.i, i32 %retval.0.i715.i
  %ud_non_dpp_qps102.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 8
  %170 = ptrtoint ptr %ud_non_dpp_qps102.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ud_non_dpp_qps102.i, align 4
  %conv103.i = zext i32 %171 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i717.i) #8
  %172 = call ptr @memset(ptr %buff.i717.i, i32 0, i32 128)
  %call.i718.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i717.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i64 noundef %conv103.i) #8
  %call2.i719.i = call i32 @strlen(ptr noundef nonnull %buff.i717.i) #13
  %add.ptr.i720.i = getelementptr i8, ptr %add.ptr101.i, i32 %call2.i719.i
  %cmp.i722.i = icmp ugt ptr %add.ptr.i720.i, %add.ptr3.i.i
  br i1 %cmp.i722.i, label %do.end.i724.i, label %if.end.i725.i

do.end.i724.i:                                    ; preds = %ocrdma_add_stat.exit716.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i723.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit727.i

if.end.i725.i:                                    ; preds = %ocrdma_add_stat.exit716.i
  call void @__sanitizer_cov_trace_pc() #10
  %173 = call ptr @memcpy(ptr %add.ptr101.i, ptr %buff.i717.i, i32 %call2.i719.i)
  br label %ocrdma_add_stat.exit727.i

ocrdma_add_stat.exit727.i:                        ; preds = %if.end.i725.i, %do.end.i724.i
  %retval.0.i726.i = phi i32 [ 0, %do.end.i724.i ], [ %call2.i719.i, %if.end.i725.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i717.i) #8
  %add.ptr105.i = getelementptr i8, ptr %add.ptr101.i, i32 %retval.0.i726.i
  %srqs106.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 10
  %174 = ptrtoint ptr %srqs106.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %srqs106.i, align 4
  %conv107.i = zext i32 %175 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i728.i) #8
  %176 = call ptr @memset(ptr %buff.i728.i, i32 0, i32 128)
  %call.i729.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i728.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.51, i64 noundef %conv107.i) #8
  %call2.i730.i = call i32 @strlen(ptr noundef nonnull %buff.i728.i) #13
  %add.ptr.i731.i = getelementptr i8, ptr %add.ptr105.i, i32 %call2.i730.i
  %cmp.i733.i = icmp ugt ptr %add.ptr.i731.i, %add.ptr3.i.i
  br i1 %cmp.i733.i, label %do.end.i735.i, label %if.end.i736.i

do.end.i735.i:                                    ; preds = %ocrdma_add_stat.exit727.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i734.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit738.i

if.end.i736.i:                                    ; preds = %ocrdma_add_stat.exit727.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = call ptr @memcpy(ptr %add.ptr105.i, ptr %buff.i728.i, i32 %call2.i730.i)
  br label %ocrdma_add_stat.exit738.i

ocrdma_add_stat.exit738.i:                        ; preds = %if.end.i736.i, %do.end.i735.i
  %retval.0.i737.i = phi i32 [ 0, %do.end.i735.i ], [ %call2.i730.i, %if.end.i736.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i728.i) #8
  %add.ptr109.i = getelementptr i8, ptr %add.ptr105.i, i32 %retval.0.i737.i
  %rbqs110.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 11
  %178 = ptrtoint ptr %rbqs110.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rbqs110.i, align 4
  %conv111.i = zext i32 %179 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i739.i) #8
  %180 = call ptr @memset(ptr %buff.i739.i, i32 0, i32 128)
  %call.i740.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i739.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.52, i64 noundef %conv111.i) #8
  %call2.i741.i = call i32 @strlen(ptr noundef nonnull %buff.i739.i) #13
  %add.ptr.i742.i = getelementptr i8, ptr %add.ptr109.i, i32 %call2.i741.i
  %cmp.i744.i = icmp ugt ptr %add.ptr.i742.i, %add.ptr3.i.i
  br i1 %cmp.i744.i, label %do.end.i746.i, label %if.end.i747.i

do.end.i746.i:                                    ; preds = %ocrdma_add_stat.exit738.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i745.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit749.i

if.end.i747.i:                                    ; preds = %ocrdma_add_stat.exit738.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = call ptr @memcpy(ptr %add.ptr109.i, ptr %buff.i739.i, i32 %call2.i741.i)
  br label %ocrdma_add_stat.exit749.i

ocrdma_add_stat.exit749.i:                        ; preds = %if.end.i747.i, %do.end.i746.i
  %retval.0.i748.i = phi i32 [ 0, %do.end.i746.i ], [ %call2.i741.i, %if.end.i747.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i739.i) #8
  %add.ptr113.i = getelementptr i8, ptr %add.ptr109.i, i32 %retval.0.i748.i
  %r64K_nsmr114.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 12
  %182 = ptrtoint ptr %r64K_nsmr114.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %r64K_nsmr114.i, align 4
  %conv115.i = zext i32 %183 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i750.i) #8
  %184 = call ptr @memset(ptr %buff.i750.i, i32 0, i32 128)
  %call.i751.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i750.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.53, i64 noundef %conv115.i) #8
  %call2.i752.i = call i32 @strlen(ptr noundef nonnull %buff.i750.i) #13
  %add.ptr.i753.i = getelementptr i8, ptr %add.ptr113.i, i32 %call2.i752.i
  %cmp.i755.i = icmp ugt ptr %add.ptr.i753.i, %add.ptr3.i.i
  br i1 %cmp.i755.i, label %do.end.i757.i, label %if.end.i758.i

do.end.i757.i:                                    ; preds = %ocrdma_add_stat.exit749.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i756.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit760.i

if.end.i758.i:                                    ; preds = %ocrdma_add_stat.exit749.i
  call void @__sanitizer_cov_trace_pc() #10
  %185 = call ptr @memcpy(ptr %add.ptr113.i, ptr %buff.i750.i, i32 %call2.i752.i)
  br label %ocrdma_add_stat.exit760.i

ocrdma_add_stat.exit760.i:                        ; preds = %if.end.i758.i, %do.end.i757.i
  %retval.0.i759.i = phi i32 [ 0, %do.end.i757.i ], [ %call2.i752.i, %if.end.i758.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i750.i) #8
  %add.ptr117.i = getelementptr i8, ptr %add.ptr113.i, i32 %retval.0.i759.i
  %r64K_to_2M_nsmr118.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 13
  %186 = ptrtoint ptr %r64K_to_2M_nsmr118.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %r64K_to_2M_nsmr118.i, align 4
  %conv119.i = zext i32 %187 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i761.i) #8
  %188 = call ptr @memset(ptr %buff.i761.i, i32 0, i32 128)
  %call.i762.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i761.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i64 noundef %conv119.i) #8
  %call2.i763.i = call i32 @strlen(ptr noundef nonnull %buff.i761.i) #13
  %add.ptr.i764.i = getelementptr i8, ptr %add.ptr117.i, i32 %call2.i763.i
  %cmp.i766.i = icmp ugt ptr %add.ptr.i764.i, %add.ptr3.i.i
  br i1 %cmp.i766.i, label %do.end.i768.i, label %if.end.i769.i

do.end.i768.i:                                    ; preds = %ocrdma_add_stat.exit760.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i767.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit771.i

if.end.i769.i:                                    ; preds = %ocrdma_add_stat.exit760.i
  call void @__sanitizer_cov_trace_pc() #10
  %189 = call ptr @memcpy(ptr %add.ptr117.i, ptr %buff.i761.i, i32 %call2.i763.i)
  br label %ocrdma_add_stat.exit771.i

ocrdma_add_stat.exit771.i:                        ; preds = %if.end.i769.i, %do.end.i768.i
  %retval.0.i770.i = phi i32 [ 0, %do.end.i768.i ], [ %call2.i763.i, %if.end.i769.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i761.i) #8
  %add.ptr121.i = getelementptr i8, ptr %add.ptr117.i, i32 %retval.0.i770.i
  %r2M_to_44M_nsmr122.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 14
  %190 = ptrtoint ptr %r2M_to_44M_nsmr122.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %r2M_to_44M_nsmr122.i, align 4
  %conv123.i = zext i32 %191 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i772.i) #8
  %192 = call ptr @memset(ptr %buff.i772.i, i32 0, i32 128)
  %call.i773.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i772.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.55, i64 noundef %conv123.i) #8
  %call2.i774.i = call i32 @strlen(ptr noundef nonnull %buff.i772.i) #13
  %add.ptr.i775.i = getelementptr i8, ptr %add.ptr121.i, i32 %call2.i774.i
  %cmp.i777.i = icmp ugt ptr %add.ptr.i775.i, %add.ptr3.i.i
  br i1 %cmp.i777.i, label %do.end.i779.i, label %if.end.i780.i

do.end.i779.i:                                    ; preds = %ocrdma_add_stat.exit771.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i778.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit782.i

if.end.i780.i:                                    ; preds = %ocrdma_add_stat.exit771.i
  call void @__sanitizer_cov_trace_pc() #10
  %193 = call ptr @memcpy(ptr %add.ptr121.i, ptr %buff.i772.i, i32 %call2.i774.i)
  br label %ocrdma_add_stat.exit782.i

ocrdma_add_stat.exit782.i:                        ; preds = %if.end.i780.i, %do.end.i779.i
  %retval.0.i781.i = phi i32 [ 0, %do.end.i779.i ], [ %call2.i774.i, %if.end.i780.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i772.i) #8
  %add.ptr125.i = getelementptr i8, ptr %add.ptr121.i, i32 %retval.0.i781.i
  %r44M_to_1G_nsmr126.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 15
  %194 = ptrtoint ptr %r44M_to_1G_nsmr126.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %r44M_to_1G_nsmr126.i, align 4
  %conv127.i = zext i32 %195 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i783.i) #8
  %196 = call ptr @memset(ptr %buff.i783.i, i32 0, i32 128)
  %call.i784.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i783.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.56, i64 noundef %conv127.i) #8
  %call2.i785.i = call i32 @strlen(ptr noundef nonnull %buff.i783.i) #13
  %add.ptr.i786.i = getelementptr i8, ptr %add.ptr125.i, i32 %call2.i785.i
  %cmp.i788.i = icmp ugt ptr %add.ptr.i786.i, %add.ptr3.i.i
  br i1 %cmp.i788.i, label %do.end.i790.i, label %if.end.i791.i

do.end.i790.i:                                    ; preds = %ocrdma_add_stat.exit782.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i789.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit793.i

if.end.i791.i:                                    ; preds = %ocrdma_add_stat.exit782.i
  call void @__sanitizer_cov_trace_pc() #10
  %197 = call ptr @memcpy(ptr %add.ptr125.i, ptr %buff.i783.i, i32 %call2.i785.i)
  br label %ocrdma_add_stat.exit793.i

ocrdma_add_stat.exit793.i:                        ; preds = %if.end.i791.i, %do.end.i790.i
  %retval.0.i792.i = phi i32 [ 0, %do.end.i790.i ], [ %call2.i785.i, %if.end.i791.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i783.i) #8
  %add.ptr129.i = getelementptr i8, ptr %add.ptr125.i, i32 %retval.0.i792.i
  %r1G_to_4G_nsmr130.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 16
  %198 = ptrtoint ptr %r1G_to_4G_nsmr130.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %r1G_to_4G_nsmr130.i, align 4
  %conv131.i = zext i32 %199 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i794.i) #8
  %200 = call ptr @memset(ptr %buff.i794.i, i32 0, i32 128)
  %call.i795.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i794.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.57, i64 noundef %conv131.i) #8
  %call2.i796.i = call i32 @strlen(ptr noundef nonnull %buff.i794.i) #13
  %add.ptr.i797.i = getelementptr i8, ptr %add.ptr129.i, i32 %call2.i796.i
  %cmp.i799.i = icmp ugt ptr %add.ptr.i797.i, %add.ptr3.i.i
  br i1 %cmp.i799.i, label %do.end.i801.i, label %if.end.i802.i

do.end.i801.i:                                    ; preds = %ocrdma_add_stat.exit793.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i800.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit804.i

if.end.i802.i:                                    ; preds = %ocrdma_add_stat.exit793.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = call ptr @memcpy(ptr %add.ptr129.i, ptr %buff.i794.i, i32 %call2.i796.i)
  br label %ocrdma_add_stat.exit804.i

ocrdma_add_stat.exit804.i:                        ; preds = %if.end.i802.i, %do.end.i801.i
  %retval.0.i803.i = phi i32 [ 0, %do.end.i801.i ], [ %call2.i796.i, %if.end.i802.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i794.i) #8
  %add.ptr133.i = getelementptr i8, ptr %add.ptr129.i, i32 %retval.0.i803.i
  %nsmr_count_4G_to_32G134.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 17
  %202 = ptrtoint ptr %nsmr_count_4G_to_32G134.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %nsmr_count_4G_to_32G134.i, align 4
  %conv135.i = zext i32 %203 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i805.i) #8
  %204 = call ptr @memset(ptr %buff.i805.i, i32 0, i32 128)
  %call.i806.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i805.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.58, i64 noundef %conv135.i) #8
  %call2.i807.i = call i32 @strlen(ptr noundef nonnull %buff.i805.i) #13
  %add.ptr.i808.i = getelementptr i8, ptr %add.ptr133.i, i32 %call2.i807.i
  %cmp.i810.i = icmp ugt ptr %add.ptr.i808.i, %add.ptr3.i.i
  br i1 %cmp.i810.i, label %do.end.i812.i, label %if.end.i813.i

do.end.i812.i:                                    ; preds = %ocrdma_add_stat.exit804.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i811.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit815.i

if.end.i813.i:                                    ; preds = %ocrdma_add_stat.exit804.i
  call void @__sanitizer_cov_trace_pc() #10
  %205 = call ptr @memcpy(ptr %add.ptr133.i, ptr %buff.i805.i, i32 %call2.i807.i)
  br label %ocrdma_add_stat.exit815.i

ocrdma_add_stat.exit815.i:                        ; preds = %if.end.i813.i, %do.end.i812.i
  %retval.0.i814.i = phi i32 [ 0, %do.end.i812.i ], [ %call2.i807.i, %if.end.i813.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i805.i) #8
  %add.ptr137.i = getelementptr i8, ptr %add.ptr133.i, i32 %retval.0.i814.i
  %r32G_to_64G_nsmr138.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 18
  %206 = ptrtoint ptr %r32G_to_64G_nsmr138.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %r32G_to_64G_nsmr138.i, align 4
  %conv139.i = zext i32 %207 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i816.i) #8
  %208 = call ptr @memset(ptr %buff.i816.i, i32 0, i32 128)
  %call.i817.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i816.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i64 noundef %conv139.i) #8
  %call2.i818.i = call i32 @strlen(ptr noundef nonnull %buff.i816.i) #13
  %add.ptr.i819.i = getelementptr i8, ptr %add.ptr137.i, i32 %call2.i818.i
  %cmp.i821.i = icmp ugt ptr %add.ptr.i819.i, %add.ptr3.i.i
  br i1 %cmp.i821.i, label %do.end.i823.i, label %if.end.i824.i

do.end.i823.i:                                    ; preds = %ocrdma_add_stat.exit815.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i822.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit826.i

if.end.i824.i:                                    ; preds = %ocrdma_add_stat.exit815.i
  call void @__sanitizer_cov_trace_pc() #10
  %209 = call ptr @memcpy(ptr %add.ptr137.i, ptr %buff.i816.i, i32 %call2.i818.i)
  br label %ocrdma_add_stat.exit826.i

ocrdma_add_stat.exit826.i:                        ; preds = %if.end.i824.i, %do.end.i823.i
  %retval.0.i825.i = phi i32 [ 0, %do.end.i823.i ], [ %call2.i818.i, %if.end.i824.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i816.i) #8
  %add.ptr141.i = getelementptr i8, ptr %add.ptr137.i, i32 %retval.0.i825.i
  %r64G_to_128G_nsmr142.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 19
  %210 = ptrtoint ptr %r64G_to_128G_nsmr142.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %r64G_to_128G_nsmr142.i, align 4
  %conv143.i = zext i32 %211 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i827.i) #8
  %212 = call ptr @memset(ptr %buff.i827.i, i32 0, i32 128)
  %call.i828.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i827.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i64 noundef %conv143.i) #8
  %call2.i829.i = call i32 @strlen(ptr noundef nonnull %buff.i827.i) #13
  %add.ptr.i830.i = getelementptr i8, ptr %add.ptr141.i, i32 %call2.i829.i
  %cmp.i832.i = icmp ugt ptr %add.ptr.i830.i, %add.ptr3.i.i
  br i1 %cmp.i832.i, label %do.end.i834.i, label %if.end.i835.i

do.end.i834.i:                                    ; preds = %ocrdma_add_stat.exit826.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i833.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit837.i

if.end.i835.i:                                    ; preds = %ocrdma_add_stat.exit826.i
  call void @__sanitizer_cov_trace_pc() #10
  %213 = call ptr @memcpy(ptr %add.ptr141.i, ptr %buff.i827.i, i32 %call2.i829.i)
  br label %ocrdma_add_stat.exit837.i

ocrdma_add_stat.exit837.i:                        ; preds = %if.end.i835.i, %do.end.i834.i
  %retval.0.i836.i = phi i32 [ 0, %do.end.i834.i ], [ %call2.i829.i, %if.end.i835.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i827.i) #8
  %add.ptr145.i = getelementptr i8, ptr %add.ptr141.i, i32 %retval.0.i836.i
  %r128G_to_higher_nsmr146.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 20
  %214 = ptrtoint ptr %r128G_to_higher_nsmr146.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %r128G_to_higher_nsmr146.i, align 4
  %conv147.i = zext i32 %215 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i838.i) #8
  %216 = call ptr @memset(ptr %buff.i838.i, i32 0, i32 128)
  %call.i839.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i838.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.61, i64 noundef %conv147.i) #8
  %call2.i840.i = call i32 @strlen(ptr noundef nonnull %buff.i838.i) #13
  %add.ptr.i841.i = getelementptr i8, ptr %add.ptr145.i, i32 %call2.i840.i
  %cmp.i843.i = icmp ugt ptr %add.ptr.i841.i, %add.ptr3.i.i
  br i1 %cmp.i843.i, label %do.end.i845.i, label %if.end.i846.i

do.end.i845.i:                                    ; preds = %ocrdma_add_stat.exit837.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i844.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit848.i

if.end.i846.i:                                    ; preds = %ocrdma_add_stat.exit837.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = call ptr @memcpy(ptr %add.ptr145.i, ptr %buff.i838.i, i32 %call2.i840.i)
  br label %ocrdma_add_stat.exit848.i

ocrdma_add_stat.exit848.i:                        ; preds = %if.end.i846.i, %do.end.i845.i
  %retval.0.i847.i = phi i32 [ 0, %do.end.i845.i ], [ %call2.i840.i, %if.end.i846.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i838.i) #8
  %add.ptr149.i = getelementptr i8, ptr %add.ptr145.i, i32 %retval.0.i847.i
  %embedded_nsmr150.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 21
  %218 = ptrtoint ptr %embedded_nsmr150.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %embedded_nsmr150.i, align 4
  %conv151.i = zext i32 %219 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i849.i) #8
  %220 = call ptr @memset(ptr %buff.i849.i, i32 0, i32 128)
  %call.i850.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i849.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.62, i64 noundef %conv151.i) #8
  %call2.i851.i = call i32 @strlen(ptr noundef nonnull %buff.i849.i) #13
  %add.ptr.i852.i = getelementptr i8, ptr %add.ptr149.i, i32 %call2.i851.i
  %cmp.i854.i = icmp ugt ptr %add.ptr.i852.i, %add.ptr3.i.i
  br i1 %cmp.i854.i, label %do.end.i856.i, label %if.end.i857.i

do.end.i856.i:                                    ; preds = %ocrdma_add_stat.exit848.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i855.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit859.i

if.end.i857.i:                                    ; preds = %ocrdma_add_stat.exit848.i
  call void @__sanitizer_cov_trace_pc() #10
  %221 = call ptr @memcpy(ptr %add.ptr149.i, ptr %buff.i849.i, i32 %call2.i851.i)
  br label %ocrdma_add_stat.exit859.i

ocrdma_add_stat.exit859.i:                        ; preds = %if.end.i857.i, %do.end.i856.i
  %retval.0.i858.i = phi i32 [ 0, %do.end.i856.i ], [ %call2.i851.i, %if.end.i857.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i849.i) #8
  %add.ptr153.i = getelementptr i8, ptr %add.ptr149.i, i32 %retval.0.i858.i
  %frmr154.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 22
  %222 = ptrtoint ptr %frmr154.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %frmr154.i, align 4
  %conv155.i = zext i32 %223 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i860.i) #8
  %224 = call ptr @memset(ptr %buff.i860.i, i32 0, i32 128)
  %call.i861.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i860.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.63, i64 noundef %conv155.i) #8
  %call2.i862.i = call i32 @strlen(ptr noundef nonnull %buff.i860.i) #13
  %add.ptr.i863.i = getelementptr i8, ptr %add.ptr153.i, i32 %call2.i862.i
  %cmp.i865.i = icmp ugt ptr %add.ptr.i863.i, %add.ptr3.i.i
  br i1 %cmp.i865.i, label %do.end.i867.i, label %if.end.i868.i

do.end.i867.i:                                    ; preds = %ocrdma_add_stat.exit859.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i866.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit870.i

if.end.i868.i:                                    ; preds = %ocrdma_add_stat.exit859.i
  call void @__sanitizer_cov_trace_pc() #10
  %225 = call ptr @memcpy(ptr %add.ptr153.i, ptr %buff.i860.i, i32 %call2.i862.i)
  br label %ocrdma_add_stat.exit870.i

ocrdma_add_stat.exit870.i:                        ; preds = %if.end.i868.i, %do.end.i867.i
  %retval.0.i869.i = phi i32 [ 0, %do.end.i867.i ], [ %call2.i862.i, %if.end.i868.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i860.i) #8
  %add.ptr157.i = getelementptr i8, ptr %add.ptr153.i, i32 %retval.0.i869.i
  %prefetch_qps158.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 23
  %226 = ptrtoint ptr %prefetch_qps158.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %prefetch_qps158.i, align 4
  %conv159.i = zext i32 %227 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i871.i) #8
  %228 = call ptr @memset(ptr %buff.i871.i, i32 0, i32 128)
  %call.i872.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i871.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.64, i64 noundef %conv159.i) #8
  %call2.i873.i = call i32 @strlen(ptr noundef nonnull %buff.i871.i) #13
  %add.ptr.i874.i = getelementptr i8, ptr %add.ptr157.i, i32 %call2.i873.i
  %cmp.i876.i = icmp ugt ptr %add.ptr.i874.i, %add.ptr3.i.i
  br i1 %cmp.i876.i, label %do.end.i878.i, label %if.end.i879.i

do.end.i878.i:                                    ; preds = %ocrdma_add_stat.exit870.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i877.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit881.i

if.end.i879.i:                                    ; preds = %ocrdma_add_stat.exit870.i
  call void @__sanitizer_cov_trace_pc() #10
  %229 = call ptr @memcpy(ptr %add.ptr157.i, ptr %buff.i871.i, i32 %call2.i873.i)
  br label %ocrdma_add_stat.exit881.i

ocrdma_add_stat.exit881.i:                        ; preds = %if.end.i879.i, %do.end.i878.i
  %retval.0.i880.i = phi i32 [ 0, %do.end.i878.i ], [ %call2.i873.i, %if.end.i879.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i871.i) #8
  %add.ptr161.i = getelementptr i8, ptr %add.ptr157.i, i32 %retval.0.i880.i
  %ondemand_qps162.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 24
  %230 = ptrtoint ptr %ondemand_qps162.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ondemand_qps162.i, align 4
  %conv163.i = zext i32 %231 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i882.i) #8
  %232 = call ptr @memset(ptr %buff.i882.i, i32 0, i32 128)
  %call.i883.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i882.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.65, i64 noundef %conv163.i) #8
  %call2.i884.i = call i32 @strlen(ptr noundef nonnull %buff.i882.i) #13
  %add.ptr.i885.i = getelementptr i8, ptr %add.ptr161.i, i32 %call2.i884.i
  %cmp.i887.i = icmp ugt ptr %add.ptr.i885.i, %add.ptr3.i.i
  br i1 %cmp.i887.i, label %do.end.i889.i, label %if.end.i890.i

do.end.i889.i:                                    ; preds = %ocrdma_add_stat.exit881.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i888.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit892.i

if.end.i890.i:                                    ; preds = %ocrdma_add_stat.exit881.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = call ptr @memcpy(ptr %add.ptr161.i, ptr %buff.i882.i, i32 %call2.i884.i)
  br label %ocrdma_add_stat.exit892.i

ocrdma_add_stat.exit892.i:                        ; preds = %if.end.i890.i, %do.end.i889.i
  %retval.0.i891.i = phi i32 [ 0, %do.end.i889.i ], [ %call2.i884.i, %if.end.i890.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i882.i) #8
  %add.ptr165.i = getelementptr i8, ptr %add.ptr161.i, i32 %retval.0.i891.i
  %phy_mr166.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 25
  %234 = ptrtoint ptr %phy_mr166.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %phy_mr166.i, align 4
  %conv167.i = zext i32 %235 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i893.i) #8
  %236 = call ptr @memset(ptr %buff.i893.i, i32 0, i32 128)
  %call.i894.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i893.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i64 noundef %conv167.i) #8
  %call2.i895.i = call i32 @strlen(ptr noundef nonnull %buff.i893.i) #13
  %add.ptr.i896.i = getelementptr i8, ptr %add.ptr165.i, i32 %call2.i895.i
  %cmp.i898.i = icmp ugt ptr %add.ptr.i896.i, %add.ptr3.i.i
  br i1 %cmp.i898.i, label %do.end.i900.i, label %if.end.i901.i

do.end.i900.i:                                    ; preds = %ocrdma_add_stat.exit892.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i899.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit903.i

if.end.i901.i:                                    ; preds = %ocrdma_add_stat.exit892.i
  call void @__sanitizer_cov_trace_pc() #10
  %237 = call ptr @memcpy(ptr %add.ptr165.i, ptr %buff.i893.i, i32 %call2.i895.i)
  br label %ocrdma_add_stat.exit903.i

ocrdma_add_stat.exit903.i:                        ; preds = %if.end.i901.i, %do.end.i900.i
  %retval.0.i902.i = phi i32 [ 0, %do.end.i900.i ], [ %call2.i895.i, %if.end.i901.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i893.i) #8
  %add.ptr169.i = getelementptr i8, ptr %add.ptr165.i, i32 %retval.0.i902.i
  %mw170.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %40, i32 0, i32 2, i32 26
  %238 = ptrtoint ptr %mw170.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mw170.i, align 4
  %conv171.i = zext i32 %239 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i904.i) #8
  %240 = call ptr @memset(ptr %buff.i904.i, i32 0, i32 128)
  %call.i905.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i904.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i64 noundef %conv171.i) #8
  %call2.i906.i = call i32 @strlen(ptr noundef nonnull %buff.i904.i) #13
  %add.ptr.i907.i = getelementptr i8, ptr %add.ptr169.i, i32 %call2.i906.i
  %cmp.i909.i = icmp ugt ptr %add.ptr.i907.i, %add.ptr3.i.i
  br i1 %cmp.i909.i, label %do.end.i911.i, label %if.end.i912.i

do.end.i911.i:                                    ; preds = %ocrdma_add_stat.exit903.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i910.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_resource_stats.exit

if.end.i912.i:                                    ; preds = %ocrdma_add_stat.exit903.i
  call void @__sanitizer_cov_trace_pc() #10
  %241 = call ptr @memcpy(ptr %add.ptr169.i, ptr %buff.i904.i, i32 %call2.i906.i)
  br label %ocrdma_resource_stats.exit

ocrdma_resource_stats.exit:                       ; preds = %if.end.i912.i, %do.end.i911.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i904.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i56 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %242 = ptrtoint ptr %debugfs_mem.i56 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %debugfs_mem.i56, align 4
  %244 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %va.i, align 16
  %rx_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7
  %246 = call ptr @memset(ptr %243, i32 0, i32 4096)
  %roce_frame_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 1
  %247 = ptrtoint ptr %roce_frame_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %roce_frame_bytes_hi.i, align 4
  %conv.i58 = zext i32 %248 to i64
  %shl.i = shl nuw i64 %conv.i58, 32
  %249 = ptrtoint ptr %rx_stats2.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rx_stats2.i, align 4
  %conv3.i = zext i32 %250 to i64
  %or.i = or i64 %shl.i, %conv3.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i55) #8
  %251 = call ptr @memset(ptr %buff.i.i55, i32 0, i32 128)
  %call.i.i59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i55, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.71, i64 noundef %or.i) #8
  %call2.i.i60 = call i32 @strlen(ptr noundef nonnull %buff.i.i55) #13
  %add.ptr.i.i61 = getelementptr i8, ptr %243, i32 %call2.i.i60
  %add.ptr3.i.i62 = getelementptr i8, ptr %243, i32 4096
  %cmp.i.i63 = icmp ugt ptr %add.ptr.i.i61, %add.ptr3.i.i62
  br i1 %cmp.i.i63, label %do.end.i.i65, label %if.end.i.i66

do.end.i.i65:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i69

if.end.i.i66:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %252 = call ptr @memcpy(ptr %243, ptr %buff.i.i55, i32 %call2.i.i60)
  br label %ocrdma_add_stat.exit.i69

ocrdma_add_stat.exit.i69:                         ; preds = %if.end.i.i66, %do.end.i.i65
  %retval.0.i.i67 = phi i32 [ 0, %do.end.i.i65 ], [ %call2.i.i60, %if.end.i.i66 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i55) #8
  %add.ptr.i68 = getelementptr i8, ptr %243, i32 %retval.0.i.i67
  %roce_frame_icrc_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 2
  %253 = ptrtoint ptr %roce_frame_icrc_drops.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %roce_frame_icrc_drops.i, align 4
  %conv4.i = zext i32 %254 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i112.i) #8
  %255 = call ptr @memset(ptr %buff.i112.i, i32 0, i32 128)
  %call.i113.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i112.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.72, i64 noundef %conv4.i) #8
  %call2.i114.i = call i32 @strlen(ptr noundef nonnull %buff.i112.i) #13
  %add.ptr.i115.i = getelementptr i8, ptr %add.ptr.i68, i32 %call2.i114.i
  %cmp.i117.i = icmp ugt ptr %add.ptr.i115.i, %add.ptr3.i.i62
  br i1 %cmp.i117.i, label %do.end.i119.i, label %if.end.i120.i

do.end.i119.i:                                    ; preds = %ocrdma_add_stat.exit.i69
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit122.i

if.end.i120.i:                                    ; preds = %ocrdma_add_stat.exit.i69
  call void @__sanitizer_cov_trace_pc() #10
  %256 = call ptr @memcpy(ptr %add.ptr.i68, ptr %buff.i112.i, i32 %call2.i114.i)
  br label %ocrdma_add_stat.exit122.i

ocrdma_add_stat.exit122.i:                        ; preds = %if.end.i120.i, %do.end.i119.i
  %retval.0.i121.i = phi i32 [ 0, %do.end.i119.i ], [ %call2.i114.i, %if.end.i120.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i112.i) #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i68, i32 %retval.0.i121.i
  %roce_frame_payload_len_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 3
  %257 = ptrtoint ptr %roce_frame_payload_len_drops.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %roce_frame_payload_len_drops.i, align 4
  %conv7.i = zext i32 %258 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i123.i) #8
  %259 = call ptr @memset(ptr %buff.i123.i, i32 0, i32 128)
  %call.i124.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i123.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.73, i64 noundef %conv7.i) #8
  %call2.i125.i = call i32 @strlen(ptr noundef nonnull %buff.i123.i) #13
  %add.ptr.i126.i = getelementptr i8, ptr %add.ptr6.i, i32 %call2.i125.i
  %cmp.i128.i = icmp ugt ptr %add.ptr.i126.i, %add.ptr3.i.i62
  br i1 %cmp.i128.i, label %do.end.i130.i, label %if.end.i131.i

do.end.i130.i:                                    ; preds = %ocrdma_add_stat.exit122.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit133.i

if.end.i131.i:                                    ; preds = %ocrdma_add_stat.exit122.i
  call void @__sanitizer_cov_trace_pc() #10
  %260 = call ptr @memcpy(ptr %add.ptr6.i, ptr %buff.i123.i, i32 %call2.i125.i)
  br label %ocrdma_add_stat.exit133.i

ocrdma_add_stat.exit133.i:                        ; preds = %if.end.i131.i, %do.end.i130.i
  %retval.0.i132.i = phi i32 [ 0, %do.end.i130.i ], [ %call2.i125.i, %if.end.i131.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i123.i) #8
  %add.ptr9.i = getelementptr i8, ptr %add.ptr6.i, i32 %retval.0.i132.i
  %ud_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 4
  %261 = ptrtoint ptr %ud_drops.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ud_drops.i, align 4
  %conv10.i = zext i32 %262 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i134.i) #8
  %263 = call ptr @memset(ptr %buff.i134.i, i32 0, i32 128)
  %call.i135.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i134.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.74, i64 noundef %conv10.i) #8
  %call2.i136.i = call i32 @strlen(ptr noundef nonnull %buff.i134.i) #13
  %add.ptr.i137.i = getelementptr i8, ptr %add.ptr9.i, i32 %call2.i136.i
  %cmp.i139.i = icmp ugt ptr %add.ptr.i137.i, %add.ptr3.i.i62
  br i1 %cmp.i139.i, label %do.end.i141.i, label %if.end.i142.i

do.end.i141.i:                                    ; preds = %ocrdma_add_stat.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit144.i

if.end.i142.i:                                    ; preds = %ocrdma_add_stat.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  %264 = call ptr @memcpy(ptr %add.ptr9.i, ptr %buff.i134.i, i32 %call2.i136.i)
  br label %ocrdma_add_stat.exit144.i

ocrdma_add_stat.exit144.i:                        ; preds = %if.end.i142.i, %do.end.i141.i
  %retval.0.i143.i = phi i32 [ 0, %do.end.i141.i ], [ %call2.i136.i, %if.end.i142.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i134.i) #8
  %add.ptr12.i = getelementptr i8, ptr %add.ptr9.i, i32 %retval.0.i143.i
  %qp1_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 5
  %265 = ptrtoint ptr %qp1_drops.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %qp1_drops.i, align 4
  %conv13.i = zext i32 %266 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i145.i) #8
  %267 = call ptr @memset(ptr %buff.i145.i, i32 0, i32 128)
  %call.i146.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i145.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.75, i64 noundef %conv13.i) #8
  %call2.i147.i = call i32 @strlen(ptr noundef nonnull %buff.i145.i) #13
  %add.ptr.i148.i = getelementptr i8, ptr %add.ptr12.i, i32 %call2.i147.i
  %cmp.i150.i = icmp ugt ptr %add.ptr.i148.i, %add.ptr3.i.i62
  br i1 %cmp.i150.i, label %do.end.i152.i, label %if.end.i153.i

do.end.i152.i:                                    ; preds = %ocrdma_add_stat.exit144.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit155.i

if.end.i153.i:                                    ; preds = %ocrdma_add_stat.exit144.i
  call void @__sanitizer_cov_trace_pc() #10
  %268 = call ptr @memcpy(ptr %add.ptr12.i, ptr %buff.i145.i, i32 %call2.i147.i)
  br label %ocrdma_add_stat.exit155.i

ocrdma_add_stat.exit155.i:                        ; preds = %if.end.i153.i, %do.end.i152.i
  %retval.0.i154.i = phi i32 [ 0, %do.end.i152.i ], [ %call2.i147.i, %if.end.i153.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i145.i) #8
  %add.ptr15.i = getelementptr i8, ptr %add.ptr12.i, i32 %retval.0.i154.i
  %psn_error_request_packets.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 6
  %269 = ptrtoint ptr %psn_error_request_packets.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %psn_error_request_packets.i, align 4
  %conv16.i = zext i32 %270 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i156.i) #8
  %271 = call ptr @memset(ptr %buff.i156.i, i32 0, i32 128)
  %call.i157.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i156.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.76, i64 noundef %conv16.i) #8
  %call2.i158.i = call i32 @strlen(ptr noundef nonnull %buff.i156.i) #13
  %add.ptr.i159.i = getelementptr i8, ptr %add.ptr15.i, i32 %call2.i158.i
  %cmp.i161.i = icmp ugt ptr %add.ptr.i159.i, %add.ptr3.i.i62
  br i1 %cmp.i161.i, label %do.end.i163.i, label %if.end.i164.i

do.end.i163.i:                                    ; preds = %ocrdma_add_stat.exit155.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit166.i

if.end.i164.i:                                    ; preds = %ocrdma_add_stat.exit155.i
  call void @__sanitizer_cov_trace_pc() #10
  %272 = call ptr @memcpy(ptr %add.ptr15.i, ptr %buff.i156.i, i32 %call2.i158.i)
  br label %ocrdma_add_stat.exit166.i

ocrdma_add_stat.exit166.i:                        ; preds = %if.end.i164.i, %do.end.i163.i
  %retval.0.i165.i = phi i32 [ 0, %do.end.i163.i ], [ %call2.i158.i, %if.end.i164.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i156.i) #8
  %add.ptr18.i = getelementptr i8, ptr %add.ptr15.i, i32 %retval.0.i165.i
  %psn_error_resp_packets.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 7
  %273 = ptrtoint ptr %psn_error_resp_packets.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %psn_error_resp_packets.i, align 4
  %conv19.i = zext i32 %274 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i167.i) #8
  %275 = call ptr @memset(ptr %buff.i167.i, i32 0, i32 128)
  %call.i168.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i167.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.77, i64 noundef %conv19.i) #8
  %call2.i169.i = call i32 @strlen(ptr noundef nonnull %buff.i167.i) #13
  %add.ptr.i170.i = getelementptr i8, ptr %add.ptr18.i, i32 %call2.i169.i
  %cmp.i172.i = icmp ugt ptr %add.ptr.i170.i, %add.ptr3.i.i62
  br i1 %cmp.i172.i, label %do.end.i174.i, label %if.end.i175.i

do.end.i174.i:                                    ; preds = %ocrdma_add_stat.exit166.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i173.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit177.i

if.end.i175.i:                                    ; preds = %ocrdma_add_stat.exit166.i
  call void @__sanitizer_cov_trace_pc() #10
  %276 = call ptr @memcpy(ptr %add.ptr18.i, ptr %buff.i167.i, i32 %call2.i169.i)
  br label %ocrdma_add_stat.exit177.i

ocrdma_add_stat.exit177.i:                        ; preds = %if.end.i175.i, %do.end.i174.i
  %retval.0.i176.i = phi i32 [ 0, %do.end.i174.i ], [ %call2.i169.i, %if.end.i175.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i167.i) #8
  %add.ptr21.i = getelementptr i8, ptr %add.ptr18.i, i32 %retval.0.i176.i
  %rnr_nak_timeouts.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 8
  %277 = ptrtoint ptr %rnr_nak_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %rnr_nak_timeouts.i, align 4
  %conv22.i = zext i32 %278 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i178.i) #8
  %279 = call ptr @memset(ptr %buff.i178.i, i32 0, i32 128)
  %call.i179.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i178.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.78, i64 noundef %conv22.i) #8
  %call2.i180.i = call i32 @strlen(ptr noundef nonnull %buff.i178.i) #13
  %add.ptr.i181.i = getelementptr i8, ptr %add.ptr21.i, i32 %call2.i180.i
  %cmp.i183.i = icmp ugt ptr %add.ptr.i181.i, %add.ptr3.i.i62
  br i1 %cmp.i183.i, label %do.end.i185.i, label %if.end.i186.i

do.end.i185.i:                                    ; preds = %ocrdma_add_stat.exit177.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i184.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit188.i

if.end.i186.i:                                    ; preds = %ocrdma_add_stat.exit177.i
  call void @__sanitizer_cov_trace_pc() #10
  %280 = call ptr @memcpy(ptr %add.ptr21.i, ptr %buff.i178.i, i32 %call2.i180.i)
  br label %ocrdma_add_stat.exit188.i

ocrdma_add_stat.exit188.i:                        ; preds = %if.end.i186.i, %do.end.i185.i
  %retval.0.i187.i = phi i32 [ 0, %do.end.i185.i ], [ %call2.i180.i, %if.end.i186.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i178.i) #8
  %add.ptr24.i = getelementptr i8, ptr %add.ptr21.i, i32 %retval.0.i187.i
  %rnr_nak_receives.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 9
  %281 = ptrtoint ptr %rnr_nak_receives.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %rnr_nak_receives.i, align 4
  %conv25.i = zext i32 %282 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i189.i) #8
  %283 = call ptr @memset(ptr %buff.i189.i, i32 0, i32 128)
  %call.i190.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i189.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.79, i64 noundef %conv25.i) #8
  %call2.i191.i = call i32 @strlen(ptr noundef nonnull %buff.i189.i) #13
  %add.ptr.i192.i = getelementptr i8, ptr %add.ptr24.i, i32 %call2.i191.i
  %cmp.i194.i = icmp ugt ptr %add.ptr.i192.i, %add.ptr3.i.i62
  br i1 %cmp.i194.i, label %do.end.i196.i, label %if.end.i197.i

do.end.i196.i:                                    ; preds = %ocrdma_add_stat.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i195.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit199.i

if.end.i197.i:                                    ; preds = %ocrdma_add_stat.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  %284 = call ptr @memcpy(ptr %add.ptr24.i, ptr %buff.i189.i, i32 %call2.i191.i)
  br label %ocrdma_add_stat.exit199.i

ocrdma_add_stat.exit199.i:                        ; preds = %if.end.i197.i, %do.end.i196.i
  %retval.0.i198.i = phi i32 [ 0, %do.end.i196.i ], [ %call2.i191.i, %if.end.i197.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i189.i) #8
  %add.ptr27.i = getelementptr i8, ptr %add.ptr24.i, i32 %retval.0.i198.i
  %roce_frame_rxmt_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 10
  %285 = ptrtoint ptr %roce_frame_rxmt_drops.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %roce_frame_rxmt_drops.i, align 4
  %conv28.i = zext i32 %286 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i200.i) #8
  %287 = call ptr @memset(ptr %buff.i200.i, i32 0, i32 128)
  %call.i201.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i200.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.80, i64 noundef %conv28.i) #8
  %call2.i202.i = call i32 @strlen(ptr noundef nonnull %buff.i200.i) #13
  %add.ptr.i203.i = getelementptr i8, ptr %add.ptr27.i, i32 %call2.i202.i
  %cmp.i205.i = icmp ugt ptr %add.ptr.i203.i, %add.ptr3.i.i62
  br i1 %cmp.i205.i, label %do.end.i207.i, label %if.end.i208.i

do.end.i207.i:                                    ; preds = %ocrdma_add_stat.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i206.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit210.i

if.end.i208.i:                                    ; preds = %ocrdma_add_stat.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  %288 = call ptr @memcpy(ptr %add.ptr27.i, ptr %buff.i200.i, i32 %call2.i202.i)
  br label %ocrdma_add_stat.exit210.i

ocrdma_add_stat.exit210.i:                        ; preds = %if.end.i208.i, %do.end.i207.i
  %retval.0.i209.i = phi i32 [ 0, %do.end.i207.i ], [ %call2.i202.i, %if.end.i208.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i200.i) #8
  %add.ptr30.i = getelementptr i8, ptr %add.ptr27.i, i32 %retval.0.i209.i
  %nak_count_psn_sequence_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 11
  %289 = ptrtoint ptr %nak_count_psn_sequence_errors.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %nak_count_psn_sequence_errors.i, align 4
  %conv31.i = zext i32 %290 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i211.i) #8
  %291 = call ptr @memset(ptr %buff.i211.i, i32 0, i32 128)
  %call.i212.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i211.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.81, i64 noundef %conv31.i) #8
  %call2.i213.i = call i32 @strlen(ptr noundef nonnull %buff.i211.i) #13
  %add.ptr.i214.i = getelementptr i8, ptr %add.ptr30.i, i32 %call2.i213.i
  %cmp.i216.i = icmp ugt ptr %add.ptr.i214.i, %add.ptr3.i.i62
  br i1 %cmp.i216.i, label %do.end.i218.i, label %if.end.i219.i

do.end.i218.i:                                    ; preds = %ocrdma_add_stat.exit210.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i217.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit221.i

if.end.i219.i:                                    ; preds = %ocrdma_add_stat.exit210.i
  call void @__sanitizer_cov_trace_pc() #10
  %292 = call ptr @memcpy(ptr %add.ptr30.i, ptr %buff.i211.i, i32 %call2.i213.i)
  br label %ocrdma_add_stat.exit221.i

ocrdma_add_stat.exit221.i:                        ; preds = %if.end.i219.i, %do.end.i218.i
  %retval.0.i220.i = phi i32 [ 0, %do.end.i218.i ], [ %call2.i213.i, %if.end.i219.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i211.i) #8
  %add.ptr33.i = getelementptr i8, ptr %add.ptr30.i, i32 %retval.0.i220.i
  %rc_drop_count_lookup_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 12
  %293 = ptrtoint ptr %rc_drop_count_lookup_errors.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %rc_drop_count_lookup_errors.i, align 4
  %conv34.i = zext i32 %294 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i222.i) #8
  %295 = call ptr @memset(ptr %buff.i222.i, i32 0, i32 128)
  %call.i223.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i222.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.82, i64 noundef %conv34.i) #8
  %call2.i224.i = call i32 @strlen(ptr noundef nonnull %buff.i222.i) #13
  %add.ptr.i225.i = getelementptr i8, ptr %add.ptr33.i, i32 %call2.i224.i
  %cmp.i227.i = icmp ugt ptr %add.ptr.i225.i, %add.ptr3.i.i62
  br i1 %cmp.i227.i, label %do.end.i229.i, label %if.end.i230.i

do.end.i229.i:                                    ; preds = %ocrdma_add_stat.exit221.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit232.i

if.end.i230.i:                                    ; preds = %ocrdma_add_stat.exit221.i
  call void @__sanitizer_cov_trace_pc() #10
  %296 = call ptr @memcpy(ptr %add.ptr33.i, ptr %buff.i222.i, i32 %call2.i224.i)
  br label %ocrdma_add_stat.exit232.i

ocrdma_add_stat.exit232.i:                        ; preds = %if.end.i230.i, %do.end.i229.i
  %retval.0.i231.i = phi i32 [ 0, %do.end.i229.i ], [ %call2.i224.i, %if.end.i230.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i222.i) #8
  %add.ptr36.i = getelementptr i8, ptr %add.ptr33.i, i32 %retval.0.i231.i
  %rq_rnr_naks.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 13
  %297 = ptrtoint ptr %rq_rnr_naks.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %rq_rnr_naks.i, align 4
  %conv37.i = zext i32 %298 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i233.i) #8
  %299 = call ptr @memset(ptr %buff.i233.i, i32 0, i32 128)
  %call.i234.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i233.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.83, i64 noundef %conv37.i) #8
  %call2.i235.i = call i32 @strlen(ptr noundef nonnull %buff.i233.i) #13
  %add.ptr.i236.i = getelementptr i8, ptr %add.ptr36.i, i32 %call2.i235.i
  %cmp.i238.i = icmp ugt ptr %add.ptr.i236.i, %add.ptr3.i.i62
  br i1 %cmp.i238.i, label %do.end.i240.i, label %if.end.i241.i

do.end.i240.i:                                    ; preds = %ocrdma_add_stat.exit232.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i239.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit243.i

if.end.i241.i:                                    ; preds = %ocrdma_add_stat.exit232.i
  call void @__sanitizer_cov_trace_pc() #10
  %300 = call ptr @memcpy(ptr %add.ptr36.i, ptr %buff.i233.i, i32 %call2.i235.i)
  br label %ocrdma_add_stat.exit243.i

ocrdma_add_stat.exit243.i:                        ; preds = %if.end.i241.i, %do.end.i240.i
  %retval.0.i242.i = phi i32 [ 0, %do.end.i240.i ], [ %call2.i235.i, %if.end.i241.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i233.i) #8
  %add.ptr39.i = getelementptr i8, ptr %add.ptr36.i, i32 %retval.0.i242.i
  %srq_rnr_naks.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 14
  %301 = ptrtoint ptr %srq_rnr_naks.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %srq_rnr_naks.i, align 4
  %conv40.i = zext i32 %302 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i244.i) #8
  %303 = call ptr @memset(ptr %buff.i244.i, i32 0, i32 128)
  %call.i245.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i244.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.84, i64 noundef %conv40.i) #8
  %call2.i246.i = call i32 @strlen(ptr noundef nonnull %buff.i244.i) #13
  %add.ptr.i247.i = getelementptr i8, ptr %add.ptr39.i, i32 %call2.i246.i
  %cmp.i249.i = icmp ugt ptr %add.ptr.i247.i, %add.ptr3.i.i62
  br i1 %cmp.i249.i, label %do.end.i251.i, label %if.end.i252.i

do.end.i251.i:                                    ; preds = %ocrdma_add_stat.exit243.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i250.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit254.i

if.end.i252.i:                                    ; preds = %ocrdma_add_stat.exit243.i
  call void @__sanitizer_cov_trace_pc() #10
  %304 = call ptr @memcpy(ptr %add.ptr39.i, ptr %buff.i244.i, i32 %call2.i246.i)
  br label %ocrdma_add_stat.exit254.i

ocrdma_add_stat.exit254.i:                        ; preds = %if.end.i252.i, %do.end.i251.i
  %retval.0.i253.i = phi i32 [ 0, %do.end.i251.i ], [ %call2.i246.i, %if.end.i252.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i244.i) #8
  %add.ptr42.i = getelementptr i8, ptr %add.ptr39.i, i32 %retval.0.i253.i
  %roce_frames_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 16
  %305 = ptrtoint ptr %roce_frames_hi.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %roce_frames_hi.i, align 4
  %conv43.i = zext i32 %306 to i64
  %shl44.i = shl nuw i64 %conv43.i, 32
  %roce_frames_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %245, i32 0, i32 7, i32 15
  %307 = ptrtoint ptr %roce_frames_lo.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %roce_frames_lo.i, align 4
  %conv45.i = zext i32 %308 to i64
  %or46.i = or i64 %shl44.i, %conv45.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i255.i) #8
  %309 = call ptr @memset(ptr %buff.i255.i, i32 0, i32 128)
  %call.i256.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i255.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.85, i64 noundef %or46.i) #8
  %call2.i257.i = call i32 @strlen(ptr noundef nonnull %buff.i255.i) #13
  %add.ptr.i258.i = getelementptr i8, ptr %add.ptr42.i, i32 %call2.i257.i
  %cmp.i260.i = icmp ugt ptr %add.ptr.i258.i, %add.ptr3.i.i62
  br i1 %cmp.i260.i, label %do.end.i262.i, label %if.end.i263.i

do.end.i262.i:                                    ; preds = %ocrdma_add_stat.exit254.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i261.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_rx_stats.exit

if.end.i263.i:                                    ; preds = %ocrdma_add_stat.exit254.i
  call void @__sanitizer_cov_trace_pc() #10
  %310 = call ptr @memcpy(ptr %add.ptr42.i, ptr %buff.i255.i, i32 %call2.i257.i)
  br label %ocrdma_rx_stats.exit

ocrdma_rx_stats.exit:                             ; preds = %if.end.i263.i, %do.end.i262.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i255.i) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i71 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %311 = ptrtoint ptr %debugfs_mem.i71 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %debugfs_mem.i71, align 4
  %313 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %va.i, align 16
  %wqe_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4
  %315 = call ptr @memset(ptr %312, i32 0, i32 4096)
  %large_send_rc_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 1
  %316 = ptrtoint ptr %large_send_rc_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %large_send_rc_wqes_hi.i, align 4
  %conv.i73 = zext i32 %317 to i64
  %shl.i74 = shl nuw i64 %conv.i73, 32
  %318 = ptrtoint ptr %wqe_stats2.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %wqe_stats2.i, align 4
  %conv3.i75 = zext i32 %319 to i64
  %or.i76 = or i64 %shl.i74, %conv3.i75
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i70) #8
  %320 = call ptr @memset(ptr %buff.i.i70, i32 0, i32 128)
  %call.i.i77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i70, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.86, i64 noundef %or.i76) #8
  %call2.i.i78 = call i32 @strlen(ptr noundef nonnull %buff.i.i70) #13
  %add.ptr.i.i79 = getelementptr i8, ptr %312, i32 %call2.i.i78
  %add.ptr3.i.i80 = getelementptr i8, ptr %312, i32 4096
  %cmp.i.i81 = icmp ugt ptr %add.ptr.i.i79, %add.ptr3.i.i80
  br i1 %cmp.i.i81, label %do.end.i.i83, label %if.end.i.i84

do.end.i.i83:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i88

if.end.i.i84:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %321 = call ptr @memcpy(ptr %312, ptr %buff.i.i70, i32 %call2.i.i78)
  br label %ocrdma_add_stat.exit.i88

ocrdma_add_stat.exit.i88:                         ; preds = %if.end.i.i84, %do.end.i.i83
  %retval.0.i.i85 = phi i32 [ 0, %do.end.i.i83 ], [ %call2.i.i78, %if.end.i.i84 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i70) #8
  %add.ptr.i86 = getelementptr i8, ptr %312, i32 %retval.0.i.i85
  %large_write_rc_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 3
  %322 = ptrtoint ptr %large_write_rc_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %large_write_rc_wqes_hi.i, align 4
  %conv4.i87 = zext i32 %323 to i64
  %shl5.i = shl nuw i64 %conv4.i87, 32
  %large_write_rc_wqes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 2
  %324 = ptrtoint ptr %large_write_rc_wqes_lo.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %large_write_rc_wqes_lo.i, align 4
  %conv6.i = zext i32 %325 to i64
  %or7.i = or i64 %shl5.i, %conv6.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i72.i) #8
  %326 = call ptr @memset(ptr %buff.i72.i, i32 0, i32 128)
  %call.i73.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i72.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.87, i64 noundef %or7.i) #8
  %call2.i74.i = call i32 @strlen(ptr noundef nonnull %buff.i72.i) #13
  %add.ptr.i75.i = getelementptr i8, ptr %add.ptr.i86, i32 %call2.i74.i
  %cmp.i77.i = icmp ugt ptr %add.ptr.i75.i, %add.ptr3.i.i80
  br i1 %cmp.i77.i, label %do.end.i79.i, label %if.end.i80.i

do.end.i79.i:                                     ; preds = %ocrdma_add_stat.exit.i88
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit82.i

if.end.i80.i:                                     ; preds = %ocrdma_add_stat.exit.i88
  call void @__sanitizer_cov_trace_pc() #10
  %327 = call ptr @memcpy(ptr %add.ptr.i86, ptr %buff.i72.i, i32 %call2.i74.i)
  br label %ocrdma_add_stat.exit82.i

ocrdma_add_stat.exit82.i:                         ; preds = %if.end.i80.i, %do.end.i79.i
  %retval.0.i81.i = phi i32 [ 0, %do.end.i79.i ], [ %call2.i74.i, %if.end.i80.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i72.i) #8
  %add.ptr9.i89 = getelementptr i8, ptr %add.ptr.i86, i32 %retval.0.i81.i
  %read_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 6
  %328 = ptrtoint ptr %read_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %read_wqes_hi.i, align 4
  %conv10.i90 = zext i32 %329 to i64
  %shl11.i = shl nuw i64 %conv10.i90, 32
  %read_wqes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 5
  %330 = ptrtoint ptr %read_wqes_lo.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %read_wqes_lo.i, align 4
  %conv12.i = zext i32 %331 to i64
  %or13.i = or i64 %shl11.i, %conv12.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i83.i) #8
  %332 = call ptr @memset(ptr %buff.i83.i, i32 0, i32 128)
  %call.i84.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i83.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.88, i64 noundef %or13.i) #8
  %call2.i85.i = call i32 @strlen(ptr noundef nonnull %buff.i83.i) #13
  %add.ptr.i86.i = getelementptr i8, ptr %add.ptr9.i89, i32 %call2.i85.i
  %cmp.i88.i = icmp ugt ptr %add.ptr.i86.i, %add.ptr3.i.i80
  br i1 %cmp.i88.i, label %do.end.i90.i, label %if.end.i91.i

do.end.i90.i:                                     ; preds = %ocrdma_add_stat.exit82.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit93.i

if.end.i91.i:                                     ; preds = %ocrdma_add_stat.exit82.i
  call void @__sanitizer_cov_trace_pc() #10
  %333 = call ptr @memcpy(ptr %add.ptr9.i89, ptr %buff.i83.i, i32 %call2.i85.i)
  br label %ocrdma_add_stat.exit93.i

ocrdma_add_stat.exit93.i:                         ; preds = %if.end.i91.i, %do.end.i90.i
  %retval.0.i92.i = phi i32 [ 0, %do.end.i90.i ], [ %call2.i85.i, %if.end.i91.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i83.i) #8
  %add.ptr15.i91 = getelementptr i8, ptr %add.ptr9.i89, i32 %retval.0.i92.i
  %frmr_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 8
  %334 = ptrtoint ptr %frmr_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %frmr_wqes_hi.i, align 4
  %conv16.i92 = zext i32 %335 to i64
  %shl17.i = shl nuw i64 %conv16.i92, 32
  %frmr_wqes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 7
  %336 = ptrtoint ptr %frmr_wqes_lo.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %frmr_wqes_lo.i, align 4
  %conv18.i = zext i32 %337 to i64
  %or19.i = or i64 %shl17.i, %conv18.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i94.i) #8
  %338 = call ptr @memset(ptr %buff.i94.i, i32 0, i32 128)
  %call.i95.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i94.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.89, i64 noundef %or19.i) #8
  %call2.i96.i = call i32 @strlen(ptr noundef nonnull %buff.i94.i) #13
  %add.ptr.i97.i = getelementptr i8, ptr %add.ptr15.i91, i32 %call2.i96.i
  %cmp.i99.i = icmp ugt ptr %add.ptr.i97.i, %add.ptr3.i.i80
  br i1 %cmp.i99.i, label %do.end.i101.i, label %if.end.i102.i

do.end.i101.i:                                    ; preds = %ocrdma_add_stat.exit93.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit104.i

if.end.i102.i:                                    ; preds = %ocrdma_add_stat.exit93.i
  call void @__sanitizer_cov_trace_pc() #10
  %339 = call ptr @memcpy(ptr %add.ptr15.i91, ptr %buff.i94.i, i32 %call2.i96.i)
  br label %ocrdma_add_stat.exit104.i

ocrdma_add_stat.exit104.i:                        ; preds = %if.end.i102.i, %do.end.i101.i
  %retval.0.i103.i = phi i32 [ 0, %do.end.i101.i ], [ %call2.i96.i, %if.end.i102.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i94.i) #8
  %add.ptr21.i93 = getelementptr i8, ptr %add.ptr15.i91, i32 %retval.0.i103.i
  %mw_bind_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 10
  %340 = ptrtoint ptr %mw_bind_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %mw_bind_wqes_hi.i, align 4
  %conv22.i94 = zext i32 %341 to i64
  %shl23.i = shl nuw i64 %conv22.i94, 32
  %mw_bind_wqes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 9
  %342 = ptrtoint ptr %mw_bind_wqes_lo.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %mw_bind_wqes_lo.i, align 4
  %conv24.i = zext i32 %343 to i64
  %or25.i = or i64 %shl23.i, %conv24.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i105.i) #8
  %344 = call ptr @memset(ptr %buff.i105.i, i32 0, i32 128)
  %call.i106.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i105.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.90, i64 noundef %or25.i) #8
  %call2.i107.i = call i32 @strlen(ptr noundef nonnull %buff.i105.i) #13
  %add.ptr.i108.i = getelementptr i8, ptr %add.ptr21.i93, i32 %call2.i107.i
  %cmp.i110.i = icmp ugt ptr %add.ptr.i108.i, %add.ptr3.i.i80
  br i1 %cmp.i110.i, label %do.end.i112.i, label %if.end.i113.i

do.end.i112.i:                                    ; preds = %ocrdma_add_stat.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit115.i

if.end.i113.i:                                    ; preds = %ocrdma_add_stat.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %345 = call ptr @memcpy(ptr %add.ptr21.i93, ptr %buff.i105.i, i32 %call2.i107.i)
  br label %ocrdma_add_stat.exit115.i

ocrdma_add_stat.exit115.i:                        ; preds = %if.end.i113.i, %do.end.i112.i
  %retval.0.i114.i = phi i32 [ 0, %do.end.i112.i ], [ %call2.i107.i, %if.end.i113.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i105.i) #8
  %add.ptr27.i95 = getelementptr i8, ptr %add.ptr21.i93, i32 %retval.0.i114.i
  %invalidate_wqes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 12
  %346 = ptrtoint ptr %invalidate_wqes_hi.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %invalidate_wqes_hi.i, align 4
  %conv28.i96 = zext i32 %347 to i64
  %shl29.i = shl nuw i64 %conv28.i96, 32
  %invalidate_wqes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 11
  %348 = ptrtoint ptr %invalidate_wqes_lo.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %invalidate_wqes_lo.i, align 4
  %conv30.i = zext i32 %349 to i64
  %or31.i = or i64 %shl29.i, %conv30.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i116.i) #8
  %350 = call ptr @memset(ptr %buff.i116.i, i32 0, i32 128)
  %call.i117.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i116.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.91, i64 noundef %or31.i) #8
  %call2.i118.i = call i32 @strlen(ptr noundef nonnull %buff.i116.i) #13
  %add.ptr.i119.i = getelementptr i8, ptr %add.ptr27.i95, i32 %call2.i118.i
  %cmp.i121.i = icmp ugt ptr %add.ptr.i119.i, %add.ptr3.i.i80
  br i1 %cmp.i121.i, label %do.end.i123.i, label %if.end.i124.i

do.end.i123.i:                                    ; preds = %ocrdma_add_stat.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit126.i

if.end.i124.i:                                    ; preds = %ocrdma_add_stat.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  %351 = call ptr @memcpy(ptr %add.ptr27.i95, ptr %buff.i116.i, i32 %call2.i118.i)
  br label %ocrdma_add_stat.exit126.i

ocrdma_add_stat.exit126.i:                        ; preds = %if.end.i124.i, %do.end.i123.i
  %retval.0.i125.i = phi i32 [ 0, %do.end.i123.i ], [ %call2.i118.i, %if.end.i124.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i116.i) #8
  %add.ptr33.i97 = getelementptr i8, ptr %add.ptr27.i95, i32 %retval.0.i125.i
  %dpp_wqe_drops.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %314, i32 0, i32 4, i32 14
  %352 = ptrtoint ptr %dpp_wqe_drops.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %dpp_wqe_drops.i, align 4
  %conv34.i98 = zext i32 %353 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i127.i) #8
  %354 = call ptr @memset(ptr %buff.i127.i, i32 0, i32 128)
  %call.i128.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i127.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.92, i64 noundef %conv34.i98) #8
  %call2.i129.i = call i32 @strlen(ptr noundef nonnull %buff.i127.i) #13
  %add.ptr.i130.i = getelementptr i8, ptr %add.ptr33.i97, i32 %call2.i129.i
  %cmp.i132.i = icmp ugt ptr %add.ptr.i130.i, %add.ptr3.i.i80
  br i1 %cmp.i132.i, label %do.end.i134.i, label %if.end.i135.i

do.end.i134.i:                                    ; preds = %ocrdma_add_stat.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_wqe_stats.exit

if.end.i135.i:                                    ; preds = %ocrdma_add_stat.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  %355 = call ptr @memcpy(ptr %add.ptr33.i97, ptr %buff.i127.i, i32 %call2.i129.i)
  br label %ocrdma_wqe_stats.exit

ocrdma_wqe_stats.exit:                            ; preds = %if.end.i135.i, %do.end.i134.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i127.i) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i103 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %356 = ptrtoint ptr %debugfs_mem.i103 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %debugfs_mem.i103, align 4
  %358 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %va.i, align 16
  %tx_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5
  %360 = call ptr @memset(ptr %357, i32 0, i32 4096)
  %send_pkts_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 1
  %361 = ptrtoint ptr %send_pkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %send_pkts_hi.i, align 4
  %conv.i105 = zext i32 %362 to i64
  %shl.i106 = shl nuw i64 %conv.i105, 32
  %363 = ptrtoint ptr %tx_stats2.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %tx_stats2.i, align 4
  %conv3.i107 = zext i32 %364 to i64
  %or.i108 = or i64 %shl.i106, %conv3.i107
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i102) #8
  %365 = call ptr @memset(ptr %buff.i.i102, i32 0, i32 128)
  %call.i.i109 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i102, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.93, i64 noundef %or.i108) #8
  %call2.i.i110 = call i32 @strlen(ptr noundef nonnull %buff.i.i102) #13
  %add.ptr.i.i111 = getelementptr i8, ptr %357, i32 %call2.i.i110
  %add.ptr3.i.i112 = getelementptr i8, ptr %357, i32 4096
  %cmp.i.i113 = icmp ugt ptr %add.ptr.i.i111, %add.ptr3.i.i112
  br i1 %cmp.i.i113, label %do.end.i.i115, label %if.end.i.i116

do.end.i.i115:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i127

if.end.i.i116:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %366 = call ptr @memcpy(ptr %357, ptr %buff.i.i102, i32 %call2.i.i110)
  br label %ocrdma_add_stat.exit.i127

ocrdma_add_stat.exit.i127:                        ; preds = %if.end.i.i116, %do.end.i.i115
  %retval.0.i.i117 = phi i32 [ 0, %do.end.i.i115 ], [ %call2.i.i110, %if.end.i.i116 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i102) #8
  %add.ptr.i118 = getelementptr i8, ptr %357, i32 %retval.0.i.i117
  %write_pkts_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 3
  %367 = ptrtoint ptr %write_pkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %write_pkts_hi.i, align 4
  %conv4.i119 = zext i32 %368 to i64
  %shl5.i120 = shl nuw i64 %conv4.i119, 32
  %write_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 2
  %369 = ptrtoint ptr %write_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %write_pkts_lo.i, align 4
  %conv6.i121 = zext i32 %370 to i64
  %or7.i122 = or i64 %shl5.i120, %conv6.i121
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i105.i101) #8
  %371 = call ptr @memset(ptr %buff.i105.i101, i32 0, i32 128)
  %call.i106.i123 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i105.i101, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.94, i64 noundef %or7.i122) #8
  %call2.i107.i124 = call i32 @strlen(ptr noundef nonnull %buff.i105.i101) #13
  %add.ptr.i108.i125 = getelementptr i8, ptr %add.ptr.i118, i32 %call2.i107.i124
  %cmp.i110.i126 = icmp ugt ptr %add.ptr.i108.i125, %add.ptr3.i.i112
  br i1 %cmp.i110.i126, label %do.end.i112.i129, label %if.end.i113.i130

do.end.i112.i129:                                 ; preds = %ocrdma_add_stat.exit.i127
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i111.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit115.i141

if.end.i113.i130:                                 ; preds = %ocrdma_add_stat.exit.i127
  call void @__sanitizer_cov_trace_pc() #10
  %372 = call ptr @memcpy(ptr %add.ptr.i118, ptr %buff.i105.i101, i32 %call2.i107.i124)
  br label %ocrdma_add_stat.exit115.i141

ocrdma_add_stat.exit115.i141:                     ; preds = %if.end.i113.i130, %do.end.i112.i129
  %retval.0.i114.i131 = phi i32 [ 0, %do.end.i112.i129 ], [ %call2.i107.i124, %if.end.i113.i130 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i105.i101) #8
  %add.ptr9.i132 = getelementptr i8, ptr %add.ptr.i118, i32 %retval.0.i114.i131
  %read_pkts_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 5
  %373 = ptrtoint ptr %read_pkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %read_pkts_hi.i, align 4
  %conv10.i133 = zext i32 %374 to i64
  %shl11.i134 = shl nuw i64 %conv10.i133, 32
  %read_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 4
  %375 = ptrtoint ptr %read_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %read_pkts_lo.i, align 4
  %conv12.i135 = zext i32 %376 to i64
  %or13.i136 = or i64 %shl11.i134, %conv12.i135
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i116.i100) #8
  %377 = call ptr @memset(ptr %buff.i116.i100, i32 0, i32 128)
  %call.i117.i137 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i116.i100, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.95, i64 noundef %or13.i136) #8
  %call2.i118.i138 = call i32 @strlen(ptr noundef nonnull %buff.i116.i100) #13
  %add.ptr.i119.i139 = getelementptr i8, ptr %add.ptr9.i132, i32 %call2.i118.i138
  %cmp.i121.i140 = icmp ugt ptr %add.ptr.i119.i139, %add.ptr3.i.i112
  br i1 %cmp.i121.i140, label %do.end.i123.i143, label %if.end.i124.i144

do.end.i123.i143:                                 ; preds = %ocrdma_add_stat.exit115.i141
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i122.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit126.i155

if.end.i124.i144:                                 ; preds = %ocrdma_add_stat.exit115.i141
  call void @__sanitizer_cov_trace_pc() #10
  %378 = call ptr @memcpy(ptr %add.ptr9.i132, ptr %buff.i116.i100, i32 %call2.i118.i138)
  br label %ocrdma_add_stat.exit126.i155

ocrdma_add_stat.exit126.i155:                     ; preds = %if.end.i124.i144, %do.end.i123.i143
  %retval.0.i125.i145 = phi i32 [ 0, %do.end.i123.i143 ], [ %call2.i118.i138, %if.end.i124.i144 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i116.i100) #8
  %add.ptr15.i146 = getelementptr i8, ptr %add.ptr9.i132, i32 %retval.0.i125.i145
  %read_rsp_pkts_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 7
  %379 = ptrtoint ptr %read_rsp_pkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %read_rsp_pkts_hi.i, align 4
  %conv16.i147 = zext i32 %380 to i64
  %shl17.i148 = shl nuw i64 %conv16.i147, 32
  %read_rsp_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 6
  %381 = ptrtoint ptr %read_rsp_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %read_rsp_pkts_lo.i, align 4
  %conv18.i149 = zext i32 %382 to i64
  %or19.i150 = or i64 %shl17.i148, %conv18.i149
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i127.i99) #8
  %383 = call ptr @memset(ptr %buff.i127.i99, i32 0, i32 128)
  %call.i128.i151 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i127.i99, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.96, i64 noundef %or19.i150) #8
  %call2.i129.i152 = call i32 @strlen(ptr noundef nonnull %buff.i127.i99) #13
  %add.ptr.i130.i153 = getelementptr i8, ptr %add.ptr15.i146, i32 %call2.i129.i152
  %cmp.i132.i154 = icmp ugt ptr %add.ptr.i130.i153, %add.ptr3.i.i112
  br i1 %cmp.i132.i154, label %do.end.i134.i157, label %if.end.i135.i158

do.end.i134.i157:                                 ; preds = %ocrdma_add_stat.exit126.i155
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i133.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit137.i

if.end.i135.i158:                                 ; preds = %ocrdma_add_stat.exit126.i155
  call void @__sanitizer_cov_trace_pc() #10
  %384 = call ptr @memcpy(ptr %add.ptr15.i146, ptr %buff.i127.i99, i32 %call2.i129.i152)
  br label %ocrdma_add_stat.exit137.i

ocrdma_add_stat.exit137.i:                        ; preds = %if.end.i135.i158, %do.end.i134.i157
  %retval.0.i136.i = phi i32 [ 0, %do.end.i134.i157 ], [ %call2.i129.i152, %if.end.i135.i158 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i127.i99) #8
  %add.ptr21.i159 = getelementptr i8, ptr %add.ptr15.i146, i32 %retval.0.i136.i
  %ack_pkts_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 9
  %385 = ptrtoint ptr %ack_pkts_hi.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %ack_pkts_hi.i, align 4
  %conv22.i160 = zext i32 %386 to i64
  %shl23.i161 = shl nuw i64 %conv22.i160, 32
  %ack_pkts_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 8
  %387 = ptrtoint ptr %ack_pkts_lo.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %ack_pkts_lo.i, align 4
  %conv24.i162 = zext i32 %388 to i64
  %or25.i163 = or i64 %shl23.i161, %conv24.i162
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i138.i) #8
  %389 = call ptr @memset(ptr %buff.i138.i, i32 0, i32 128)
  %call.i139.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i138.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.97, i64 noundef %or25.i163) #8
  %call2.i140.i = call i32 @strlen(ptr noundef nonnull %buff.i138.i) #13
  %add.ptr.i141.i = getelementptr i8, ptr %add.ptr21.i159, i32 %call2.i140.i
  %cmp.i143.i = icmp ugt ptr %add.ptr.i141.i, %add.ptr3.i.i112
  br i1 %cmp.i143.i, label %do.end.i145.i, label %if.end.i146.i

do.end.i145.i:                                    ; preds = %ocrdma_add_stat.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit148.i

if.end.i146.i:                                    ; preds = %ocrdma_add_stat.exit137.i
  call void @__sanitizer_cov_trace_pc() #10
  %390 = call ptr @memcpy(ptr %add.ptr21.i159, ptr %buff.i138.i, i32 %call2.i140.i)
  br label %ocrdma_add_stat.exit148.i

ocrdma_add_stat.exit148.i:                        ; preds = %if.end.i146.i, %do.end.i145.i
  %retval.0.i147.i = phi i32 [ 0, %do.end.i145.i ], [ %call2.i140.i, %if.end.i146.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i138.i) #8
  %add.ptr27.i164 = getelementptr i8, ptr %add.ptr21.i159, i32 %retval.0.i147.i
  %send_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 11
  %391 = ptrtoint ptr %send_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %send_bytes_hi.i, align 4
  %conv28.i165 = zext i32 %392 to i64
  %shl29.i166 = shl nuw i64 %conv28.i165, 32
  %send_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 10
  %393 = ptrtoint ptr %send_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %send_bytes_lo.i, align 4
  %conv30.i167 = zext i32 %394 to i64
  %or31.i168 = or i64 %shl29.i166, %conv30.i167
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i149.i) #8
  %395 = call ptr @memset(ptr %buff.i149.i, i32 0, i32 128)
  %call.i150.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i149.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.98, i64 noundef %or31.i168) #8
  %call2.i151.i = call i32 @strlen(ptr noundef nonnull %buff.i149.i) #13
  %add.ptr.i152.i = getelementptr i8, ptr %add.ptr27.i164, i32 %call2.i151.i
  %cmp.i154.i = icmp ugt ptr %add.ptr.i152.i, %add.ptr3.i.i112
  br i1 %cmp.i154.i, label %do.end.i156.i, label %if.end.i157.i

do.end.i156.i:                                    ; preds = %ocrdma_add_stat.exit148.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit159.i

if.end.i157.i:                                    ; preds = %ocrdma_add_stat.exit148.i
  call void @__sanitizer_cov_trace_pc() #10
  %396 = call ptr @memcpy(ptr %add.ptr27.i164, ptr %buff.i149.i, i32 %call2.i151.i)
  br label %ocrdma_add_stat.exit159.i

ocrdma_add_stat.exit159.i:                        ; preds = %if.end.i157.i, %do.end.i156.i
  %retval.0.i158.i = phi i32 [ 0, %do.end.i156.i ], [ %call2.i151.i, %if.end.i157.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i149.i) #8
  %add.ptr33.i169 = getelementptr i8, ptr %add.ptr27.i164, i32 %retval.0.i158.i
  %write_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 13
  %397 = ptrtoint ptr %write_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %write_bytes_hi.i, align 4
  %conv34.i170 = zext i32 %398 to i64
  %shl35.i = shl nuw i64 %conv34.i170, 32
  %write_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 12
  %399 = ptrtoint ptr %write_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %write_bytes_lo.i, align 4
  %conv36.i = zext i32 %400 to i64
  %or37.i = or i64 %shl35.i, %conv36.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i160.i) #8
  %401 = call ptr @memset(ptr %buff.i160.i, i32 0, i32 128)
  %call.i161.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i160.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.99, i64 noundef %or37.i) #8
  %call2.i162.i = call i32 @strlen(ptr noundef nonnull %buff.i160.i) #13
  %add.ptr.i163.i = getelementptr i8, ptr %add.ptr33.i169, i32 %call2.i162.i
  %cmp.i165.i = icmp ugt ptr %add.ptr.i163.i, %add.ptr3.i.i112
  br i1 %cmp.i165.i, label %do.end.i167.i, label %if.end.i168.i

do.end.i167.i:                                    ; preds = %ocrdma_add_stat.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit170.i

if.end.i168.i:                                    ; preds = %ocrdma_add_stat.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  %402 = call ptr @memcpy(ptr %add.ptr33.i169, ptr %buff.i160.i, i32 %call2.i162.i)
  br label %ocrdma_add_stat.exit170.i

ocrdma_add_stat.exit170.i:                        ; preds = %if.end.i168.i, %do.end.i167.i
  %retval.0.i169.i = phi i32 [ 0, %do.end.i167.i ], [ %call2.i162.i, %if.end.i168.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i160.i) #8
  %add.ptr39.i171 = getelementptr i8, ptr %add.ptr33.i169, i32 %retval.0.i169.i
  %read_req_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 15
  %403 = ptrtoint ptr %read_req_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %read_req_bytes_hi.i, align 4
  %conv40.i172 = zext i32 %404 to i64
  %shl41.i = shl nuw i64 %conv40.i172, 32
  %read_req_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 14
  %405 = ptrtoint ptr %read_req_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %read_req_bytes_lo.i, align 4
  %conv42.i = zext i32 %406 to i64
  %or43.i = or i64 %shl41.i, %conv42.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i171.i) #8
  %407 = call ptr @memset(ptr %buff.i171.i, i32 0, i32 128)
  %call.i172.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i171.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.100, i64 noundef %or43.i) #8
  %call2.i173.i = call i32 @strlen(ptr noundef nonnull %buff.i171.i) #13
  %add.ptr.i174.i = getelementptr i8, ptr %add.ptr39.i171, i32 %call2.i173.i
  %cmp.i176.i = icmp ugt ptr %add.ptr.i174.i, %add.ptr3.i.i112
  br i1 %cmp.i176.i, label %do.end.i178.i, label %if.end.i179.i

do.end.i178.i:                                    ; preds = %ocrdma_add_stat.exit170.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit181.i

if.end.i179.i:                                    ; preds = %ocrdma_add_stat.exit170.i
  call void @__sanitizer_cov_trace_pc() #10
  %408 = call ptr @memcpy(ptr %add.ptr39.i171, ptr %buff.i171.i, i32 %call2.i173.i)
  br label %ocrdma_add_stat.exit181.i

ocrdma_add_stat.exit181.i:                        ; preds = %if.end.i179.i, %do.end.i178.i
  %retval.0.i180.i = phi i32 [ 0, %do.end.i178.i ], [ %call2.i173.i, %if.end.i179.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i171.i) #8
  %add.ptr45.i = getelementptr i8, ptr %add.ptr39.i171, i32 %retval.0.i180.i
  %read_rsp_bytes_hi.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 17
  %409 = ptrtoint ptr %read_rsp_bytes_hi.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %read_rsp_bytes_hi.i, align 4
  %conv46.i = zext i32 %410 to i64
  %shl47.i = shl nuw i64 %conv46.i, 32
  %read_rsp_bytes_lo.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 16
  %411 = ptrtoint ptr %read_rsp_bytes_lo.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %read_rsp_bytes_lo.i, align 4
  %conv48.i = zext i32 %412 to i64
  %or49.i = or i64 %shl47.i, %conv48.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i182.i) #8
  %413 = call ptr @memset(ptr %buff.i182.i, i32 0, i32 128)
  %call.i183.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i182.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.101, i64 noundef %or49.i) #8
  %call2.i184.i = call i32 @strlen(ptr noundef nonnull %buff.i182.i) #13
  %add.ptr.i185.i = getelementptr i8, ptr %add.ptr45.i, i32 %call2.i184.i
  %cmp.i187.i = icmp ugt ptr %add.ptr.i185.i, %add.ptr3.i.i112
  br i1 %cmp.i187.i, label %do.end.i189.i, label %if.end.i190.i

do.end.i189.i:                                    ; preds = %ocrdma_add_stat.exit181.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i188.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit192.i

if.end.i190.i:                                    ; preds = %ocrdma_add_stat.exit181.i
  call void @__sanitizer_cov_trace_pc() #10
  %414 = call ptr @memcpy(ptr %add.ptr45.i, ptr %buff.i182.i, i32 %call2.i184.i)
  br label %ocrdma_add_stat.exit192.i

ocrdma_add_stat.exit192.i:                        ; preds = %if.end.i190.i, %do.end.i189.i
  %retval.0.i191.i = phi i32 [ 0, %do.end.i189.i ], [ %call2.i184.i, %if.end.i190.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i182.i) #8
  %add.ptr51.i = getelementptr i8, ptr %add.ptr45.i, i32 %retval.0.i191.i
  %ack_timeouts.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %359, i32 0, i32 5, i32 18
  %415 = ptrtoint ptr %ack_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %ack_timeouts.i, align 4
  %conv52.i = zext i32 %416 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i193.i) #8
  %417 = call ptr @memset(ptr %buff.i193.i, i32 0, i32 128)
  %call.i194.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i193.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.102, i64 noundef %conv52.i) #8
  %call2.i195.i = call i32 @strlen(ptr noundef nonnull %buff.i193.i) #13
  %add.ptr.i196.i = getelementptr i8, ptr %add.ptr51.i, i32 %call2.i195.i
  %cmp.i198.i = icmp ugt ptr %add.ptr.i196.i, %add.ptr3.i.i112
  br i1 %cmp.i198.i, label %do.end.i200.i, label %if.end.i201.i

do.end.i200.i:                                    ; preds = %ocrdma_add_stat.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_tx_stats.exit

if.end.i201.i:                                    ; preds = %ocrdma_add_stat.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  %418 = call ptr @memcpy(ptr %add.ptr51.i, ptr %buff.i193.i, i32 %call2.i195.i)
  br label %ocrdma_tx_stats.exit

ocrdma_tx_stats.exit:                             ; preds = %if.end.i201.i, %do.end.i200.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i193.i) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i174 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %419 = ptrtoint ptr %debugfs_mem.i174 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %debugfs_mem.i174, align 4
  %421 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %va.i, align 16
  %db_err_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %422, i32 0, i32 3
  %423 = call ptr @memset(ptr %420, i32 0, i32 4096)
  %424 = ptrtoint ptr %db_err_stats2.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %db_err_stats2.i, align 4
  %conv.i176 = zext i32 %425 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i173) #8
  %426 = call ptr @memset(ptr %buff.i.i173, i32 0, i32 128)
  %call.i.i177 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i173, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.103, i64 noundef %conv.i176) #8
  %call2.i.i178 = call i32 @strlen(ptr noundef nonnull %buff.i.i173) #13
  %add.ptr.i.i179 = getelementptr i8, ptr %420, i32 %call2.i.i178
  %add.ptr3.i.i180 = getelementptr i8, ptr %420, i32 4096
  %cmp.i.i181 = icmp ugt ptr %add.ptr.i.i179, %add.ptr3.i.i180
  br i1 %cmp.i.i181, label %do.end.i.i183, label %if.end.i.i184

do.end.i.i183:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i188

if.end.i.i184:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %427 = call ptr @memcpy(ptr %420, ptr %buff.i.i173, i32 %call2.i.i178)
  br label %ocrdma_add_stat.exit.i188

ocrdma_add_stat.exit.i188:                        ; preds = %if.end.i.i184, %do.end.i.i183
  %retval.0.i.i185 = phi i32 [ 0, %do.end.i.i183 ], [ %call2.i.i178, %if.end.i.i184 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i173) #8
  %add.ptr.i186 = getelementptr i8, ptr %420, i32 %retval.0.i.i185
  %cq_doorbell_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %422, i32 0, i32 3, i32 1
  %428 = ptrtoint ptr %cq_doorbell_errors.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %cq_doorbell_errors.i, align 4
  %conv3.i187 = zext i32 %429 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i29.i) #8
  %430 = call ptr @memset(ptr %buff.i29.i, i32 0, i32 128)
  %call.i30.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i29.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.104, i64 noundef %conv3.i187) #8
  %call2.i31.i = call i32 @strlen(ptr noundef nonnull %buff.i29.i) #13
  %add.ptr.i32.i = getelementptr i8, ptr %add.ptr.i186, i32 %call2.i31.i
  %cmp.i34.i = icmp ugt ptr %add.ptr.i32.i, %add.ptr3.i.i180
  br i1 %cmp.i34.i, label %do.end.i36.i, label %if.end.i37.i

do.end.i36.i:                                     ; preds = %ocrdma_add_stat.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit39.i

if.end.i37.i:                                     ; preds = %ocrdma_add_stat.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  %431 = call ptr @memcpy(ptr %add.ptr.i186, ptr %buff.i29.i, i32 %call2.i31.i)
  br label %ocrdma_add_stat.exit39.i

ocrdma_add_stat.exit39.i:                         ; preds = %if.end.i37.i, %do.end.i36.i
  %retval.0.i38.i = phi i32 [ 0, %do.end.i36.i ], [ %call2.i31.i, %if.end.i37.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i29.i) #8
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i186, i32 %retval.0.i38.i
  %rq_srq_doorbell_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %422, i32 0, i32 3, i32 2
  %432 = ptrtoint ptr %rq_srq_doorbell_errors.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %rq_srq_doorbell_errors.i, align 4
  %conv6.i189 = zext i32 %433 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i40.i) #8
  %434 = call ptr @memset(ptr %buff.i40.i, i32 0, i32 128)
  %call.i41.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i40.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.105, i64 noundef %conv6.i189) #8
  %call2.i42.i = call i32 @strlen(ptr noundef nonnull %buff.i40.i) #13
  %add.ptr.i43.i = getelementptr i8, ptr %add.ptr5.i, i32 %call2.i42.i
  %cmp.i45.i = icmp ugt ptr %add.ptr.i43.i, %add.ptr3.i.i180
  br i1 %cmp.i45.i, label %do.end.i47.i, label %if.end.i48.i

do.end.i47.i:                                     ; preds = %ocrdma_add_stat.exit39.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit50.i

if.end.i48.i:                                     ; preds = %ocrdma_add_stat.exit39.i
  call void @__sanitizer_cov_trace_pc() #10
  %435 = call ptr @memcpy(ptr %add.ptr5.i, ptr %buff.i40.i, i32 %call2.i42.i)
  br label %ocrdma_add_stat.exit50.i

ocrdma_add_stat.exit50.i:                         ; preds = %if.end.i48.i, %do.end.i47.i
  %retval.0.i49.i = phi i32 [ 0, %do.end.i47.i ], [ %call2.i42.i, %if.end.i48.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i40.i) #8
  %add.ptr8.i = getelementptr i8, ptr %add.ptr5.i, i32 %retval.0.i49.i
  %cq_overflow_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %422, i32 0, i32 3, i32 3
  %436 = ptrtoint ptr %cq_overflow_errors.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %cq_overflow_errors.i, align 4
  %conv9.i190 = zext i32 %437 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i51.i) #8
  %438 = call ptr @memset(ptr %buff.i51.i, i32 0, i32 128)
  %call.i52.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i51.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.106, i64 noundef %conv9.i190) #8
  %call2.i53.i = call i32 @strlen(ptr noundef nonnull %buff.i51.i) #13
  %add.ptr.i54.i = getelementptr i8, ptr %add.ptr8.i, i32 %call2.i53.i
  %cmp.i56.i = icmp ugt ptr %add.ptr.i54.i, %add.ptr3.i.i180
  br i1 %cmp.i56.i, label %do.end.i58.i, label %if.end.i59.i

do.end.i58.i:                                     ; preds = %ocrdma_add_stat.exit50.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_db_errstats.exit

if.end.i59.i:                                     ; preds = %ocrdma_add_stat.exit50.i
  call void @__sanitizer_cov_trace_pc() #10
  %439 = call ptr @memcpy(ptr %add.ptr8.i, ptr %buff.i51.i, i32 %call2.i53.i)
  br label %ocrdma_db_errstats.exit

ocrdma_db_errstats.exit:                          ; preds = %if.end.i59.i, %do.end.i58.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i51.i) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i192 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %440 = ptrtoint ptr %debugfs_mem.i192 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %debugfs_mem.i192, align 4
  %442 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %va.i, align 16
  %rx_qp_err_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8
  %444 = call ptr @memset(ptr %441, i32 0, i32 4096)
  %445 = ptrtoint ptr %rx_qp_err_stats2.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %rx_qp_err_stats2.i, align 4
  %conv.i194 = zext i32 %446 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i191) #8
  %447 = call ptr @memset(ptr %buff.i.i191, i32 0, i32 128)
  %call.i.i195 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i191, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.107, i64 noundef %conv.i194) #8
  %call2.i.i196 = call i32 @strlen(ptr noundef nonnull %buff.i.i191) #13
  %add.ptr.i.i197 = getelementptr i8, ptr %441, i32 %call2.i.i196
  %add.ptr3.i.i198 = getelementptr i8, ptr %441, i32 4096
  %cmp.i.i199 = icmp ugt ptr %add.ptr.i.i197, %add.ptr3.i.i198
  br i1 %cmp.i.i199, label %do.end.i.i201, label %if.end.i.i202

do.end.i.i201:                                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i206

if.end.i.i202:                                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %448 = call ptr @memcpy(ptr %441, ptr %buff.i.i191, i32 %call2.i.i196)
  br label %ocrdma_add_stat.exit.i206

ocrdma_add_stat.exit.i206:                        ; preds = %if.end.i.i202, %do.end.i.i201
  %retval.0.i.i203 = phi i32 [ 0, %do.end.i.i201 ], [ %call2.i.i196, %if.end.i.i202 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i191) #8
  %add.ptr.i204 = getelementptr i8, ptr %441, i32 %retval.0.i.i203
  %nak_remote_operation_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8, i32 1
  %449 = ptrtoint ptr %nak_remote_operation_errors.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %nak_remote_operation_errors.i, align 4
  %conv3.i205 = zext i32 %450 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i43.i) #8
  %451 = call ptr @memset(ptr %buff.i43.i, i32 0, i32 128)
  %call.i44.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i43.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.108, i64 noundef %conv3.i205) #8
  %call2.i45.i = call i32 @strlen(ptr noundef nonnull %buff.i43.i) #13
  %add.ptr.i46.i = getelementptr i8, ptr %add.ptr.i204, i32 %call2.i45.i
  %cmp.i48.i = icmp ugt ptr %add.ptr.i46.i, %add.ptr3.i.i198
  br i1 %cmp.i48.i, label %do.end.i50.i, label %if.end.i51.i

do.end.i50.i:                                     ; preds = %ocrdma_add_stat.exit.i206
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit53.i

if.end.i51.i:                                     ; preds = %ocrdma_add_stat.exit.i206
  call void @__sanitizer_cov_trace_pc() #10
  %452 = call ptr @memcpy(ptr %add.ptr.i204, ptr %buff.i43.i, i32 %call2.i45.i)
  br label %ocrdma_add_stat.exit53.i

ocrdma_add_stat.exit53.i:                         ; preds = %if.end.i51.i, %do.end.i50.i
  %retval.0.i52.i = phi i32 [ 0, %do.end.i50.i ], [ %call2.i45.i, %if.end.i51.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i43.i) #8
  %add.ptr5.i207 = getelementptr i8, ptr %add.ptr.i204, i32 %retval.0.i52.i
  %nak_count_remote_access_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8, i32 2
  %453 = ptrtoint ptr %nak_count_remote_access_errors.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %nak_count_remote_access_errors.i, align 4
  %conv6.i208 = zext i32 %454 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i54.i) #8
  %455 = call ptr @memset(ptr %buff.i54.i, i32 0, i32 128)
  %call.i55.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i54.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.109, i64 noundef %conv6.i208) #8
  %call2.i56.i = call i32 @strlen(ptr noundef nonnull %buff.i54.i) #13
  %add.ptr.i57.i = getelementptr i8, ptr %add.ptr5.i207, i32 %call2.i56.i
  %cmp.i59.i = icmp ugt ptr %add.ptr.i57.i, %add.ptr3.i.i198
  br i1 %cmp.i59.i, label %do.end.i61.i, label %if.end.i62.i

do.end.i61.i:                                     ; preds = %ocrdma_add_stat.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit64.i

if.end.i62.i:                                     ; preds = %ocrdma_add_stat.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  %456 = call ptr @memcpy(ptr %add.ptr5.i207, ptr %buff.i54.i, i32 %call2.i56.i)
  br label %ocrdma_add_stat.exit64.i

ocrdma_add_stat.exit64.i:                         ; preds = %if.end.i62.i, %do.end.i61.i
  %retval.0.i63.i = phi i32 [ 0, %do.end.i61.i ], [ %call2.i56.i, %if.end.i62.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i54.i) #8
  %add.ptr8.i209 = getelementptr i8, ptr %add.ptr5.i207, i32 %retval.0.i63.i
  %local_length_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8, i32 3
  %457 = ptrtoint ptr %local_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %local_length_errors.i, align 4
  %conv9.i210 = zext i32 %458 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i65.i) #8
  %459 = call ptr @memset(ptr %buff.i65.i, i32 0, i32 128)
  %call.i66.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i65.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.110, i64 noundef %conv9.i210) #8
  %call2.i67.i = call i32 @strlen(ptr noundef nonnull %buff.i65.i) #13
  %add.ptr.i68.i = getelementptr i8, ptr %add.ptr8.i209, i32 %call2.i67.i
  %cmp.i70.i = icmp ugt ptr %add.ptr.i68.i, %add.ptr3.i.i198
  br i1 %cmp.i70.i, label %do.end.i72.i, label %if.end.i73.i

do.end.i72.i:                                     ; preds = %ocrdma_add_stat.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit75.i

if.end.i73.i:                                     ; preds = %ocrdma_add_stat.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  %460 = call ptr @memcpy(ptr %add.ptr8.i209, ptr %buff.i65.i, i32 %call2.i67.i)
  br label %ocrdma_add_stat.exit75.i

ocrdma_add_stat.exit75.i:                         ; preds = %if.end.i73.i, %do.end.i72.i
  %retval.0.i74.i = phi i32 [ 0, %do.end.i72.i ], [ %call2.i67.i, %if.end.i73.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i65.i) #8
  %add.ptr11.i = getelementptr i8, ptr %add.ptr8.i209, i32 %retval.0.i74.i
  %local_protection_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8, i32 4
  %461 = ptrtoint ptr %local_protection_errors.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %local_protection_errors.i, align 4
  %conv12.i211 = zext i32 %462 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i76.i) #8
  %463 = call ptr @memset(ptr %buff.i76.i, i32 0, i32 128)
  %call.i77.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i76.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.111, i64 noundef %conv12.i211) #8
  %call2.i78.i = call i32 @strlen(ptr noundef nonnull %buff.i76.i) #13
  %add.ptr.i79.i = getelementptr i8, ptr %add.ptr11.i, i32 %call2.i78.i
  %cmp.i81.i = icmp ugt ptr %add.ptr.i79.i, %add.ptr3.i.i198
  br i1 %cmp.i81.i, label %do.end.i83.i, label %if.end.i84.i

do.end.i83.i:                                     ; preds = %ocrdma_add_stat.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit86.i

if.end.i84.i:                                     ; preds = %ocrdma_add_stat.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  %464 = call ptr @memcpy(ptr %add.ptr11.i, ptr %buff.i76.i, i32 %call2.i78.i)
  br label %ocrdma_add_stat.exit86.i

ocrdma_add_stat.exit86.i:                         ; preds = %if.end.i84.i, %do.end.i83.i
  %retval.0.i85.i = phi i32 [ 0, %do.end.i83.i ], [ %call2.i78.i, %if.end.i84.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i76.i) #8
  %add.ptr14.i = getelementptr i8, ptr %add.ptr11.i, i32 %retval.0.i85.i
  %local_qp_operation_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %443, i32 0, i32 8, i32 5
  %465 = ptrtoint ptr %local_qp_operation_errors.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %local_qp_operation_errors.i, align 4
  %conv15.i = zext i32 %466 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i87.i) #8
  %467 = call ptr @memset(ptr %buff.i87.i, i32 0, i32 128)
  %call.i88.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i87.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.112, i64 noundef %conv15.i) #8
  %call2.i89.i = call i32 @strlen(ptr noundef nonnull %buff.i87.i) #13
  %add.ptr.i90.i = getelementptr i8, ptr %add.ptr14.i, i32 %call2.i89.i
  %cmp.i92.i = icmp ugt ptr %add.ptr.i90.i, %add.ptr3.i.i198
  br i1 %cmp.i92.i, label %do.end.i94.i, label %if.end.i95.i

do.end.i94.i:                                     ; preds = %ocrdma_add_stat.exit86.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_rxqp_errstats.exit

if.end.i95.i:                                     ; preds = %ocrdma_add_stat.exit86.i
  call void @__sanitizer_cov_trace_pc() #10
  %468 = call ptr @memcpy(ptr %add.ptr14.i, ptr %buff.i87.i, i32 %call2.i89.i)
  br label %ocrdma_rxqp_errstats.exit

ocrdma_rxqp_errstats.exit:                        ; preds = %if.end.i95.i, %do.end.i94.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i87.i) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i213 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %469 = ptrtoint ptr %debugfs_mem.i213 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %debugfs_mem.i213, align 4
  %471 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %va.i, align 16
  %tx_qp_err_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %472, i32 0, i32 6
  %473 = call ptr @memset(ptr %470, i32 0, i32 4096)
  %474 = ptrtoint ptr %tx_qp_err_stats2.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %tx_qp_err_stats2.i, align 4
  %conv.i215 = zext i32 %475 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i212) #8
  %476 = call ptr @memset(ptr %buff.i.i212, i32 0, i32 128)
  %call.i.i216 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i212, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.110, i64 noundef %conv.i215) #8
  %call2.i.i217 = call i32 @strlen(ptr noundef nonnull %buff.i.i212) #13
  %add.ptr.i.i218 = getelementptr i8, ptr %470, i32 %call2.i.i217
  %add.ptr3.i.i219 = getelementptr i8, ptr %470, i32 4096
  %cmp.i.i220 = icmp ugt ptr %add.ptr.i.i218, %add.ptr3.i.i219
  br i1 %cmp.i.i220, label %do.end.i.i222, label %if.end.i.i223

do.end.i.i222:                                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i228

if.end.i.i223:                                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %477 = call ptr @memcpy(ptr %470, ptr %buff.i.i212, i32 %call2.i.i217)
  br label %ocrdma_add_stat.exit.i228

ocrdma_add_stat.exit.i228:                        ; preds = %if.end.i.i223, %do.end.i.i222
  %retval.0.i.i224 = phi i32 [ 0, %do.end.i.i222 ], [ %call2.i.i217, %if.end.i.i223 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i212) #8
  %add.ptr.i225 = getelementptr i8, ptr %470, i32 %retval.0.i.i224
  %local_protection_errors.i226 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %472, i32 0, i32 6, i32 1
  %478 = ptrtoint ptr %local_protection_errors.i226 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %local_protection_errors.i226, align 4
  %conv3.i227 = zext i32 %479 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i36.i) #8
  %480 = call ptr @memset(ptr %buff.i36.i, i32 0, i32 128)
  %call.i37.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i36.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.111, i64 noundef %conv3.i227) #8
  %call2.i38.i = call i32 @strlen(ptr noundef nonnull %buff.i36.i) #13
  %add.ptr.i39.i = getelementptr i8, ptr %add.ptr.i225, i32 %call2.i38.i
  %cmp.i41.i = icmp ugt ptr %add.ptr.i39.i, %add.ptr3.i.i219
  br i1 %cmp.i41.i, label %do.end.i43.i, label %if.end.i44.i

do.end.i43.i:                                     ; preds = %ocrdma_add_stat.exit.i228
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit46.i

if.end.i44.i:                                     ; preds = %ocrdma_add_stat.exit.i228
  call void @__sanitizer_cov_trace_pc() #10
  %481 = call ptr @memcpy(ptr %add.ptr.i225, ptr %buff.i36.i, i32 %call2.i38.i)
  br label %ocrdma_add_stat.exit46.i

ocrdma_add_stat.exit46.i:                         ; preds = %if.end.i44.i, %do.end.i43.i
  %retval.0.i45.i = phi i32 [ 0, %do.end.i43.i ], [ %call2.i38.i, %if.end.i44.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i36.i) #8
  %add.ptr5.i229 = getelementptr i8, ptr %add.ptr.i225, i32 %retval.0.i45.i
  %local_qp_operation_errors.i230 = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %472, i32 0, i32 6, i32 2
  %482 = ptrtoint ptr %local_qp_operation_errors.i230 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %local_qp_operation_errors.i230, align 4
  %conv6.i231 = zext i32 %483 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i47.i) #8
  %484 = call ptr @memset(ptr %buff.i47.i, i32 0, i32 128)
  %call.i48.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i47.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.112, i64 noundef %conv6.i231) #8
  %call2.i49.i = call i32 @strlen(ptr noundef nonnull %buff.i47.i) #13
  %add.ptr.i50.i = getelementptr i8, ptr %add.ptr5.i229, i32 %call2.i49.i
  %cmp.i52.i = icmp ugt ptr %add.ptr.i50.i, %add.ptr3.i.i219
  br i1 %cmp.i52.i, label %do.end.i54.i, label %if.end.i55.i

do.end.i54.i:                                     ; preds = %ocrdma_add_stat.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit57.i

if.end.i55.i:                                     ; preds = %ocrdma_add_stat.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  %485 = call ptr @memcpy(ptr %add.ptr5.i229, ptr %buff.i47.i, i32 %call2.i49.i)
  br label %ocrdma_add_stat.exit57.i

ocrdma_add_stat.exit57.i:                         ; preds = %if.end.i55.i, %do.end.i54.i
  %retval.0.i56.i = phi i32 [ 0, %do.end.i54.i ], [ %call2.i49.i, %if.end.i55.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i47.i) #8
  %add.ptr8.i232 = getelementptr i8, ptr %add.ptr5.i229, i32 %retval.0.i56.i
  %retry_count_exceeded_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %472, i32 0, i32 6, i32 3
  %486 = ptrtoint ptr %retry_count_exceeded_errors.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %retry_count_exceeded_errors.i, align 4
  %conv9.i233 = zext i32 %487 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i58.i) #8
  %488 = call ptr @memset(ptr %buff.i58.i, i32 0, i32 128)
  %call.i59.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i58.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.113, i64 noundef %conv9.i233) #8
  %call2.i60.i = call i32 @strlen(ptr noundef nonnull %buff.i58.i) #13
  %add.ptr.i61.i = getelementptr i8, ptr %add.ptr8.i232, i32 %call2.i60.i
  %cmp.i63.i = icmp ugt ptr %add.ptr.i61.i, %add.ptr3.i.i219
  br i1 %cmp.i63.i, label %do.end.i65.i, label %if.end.i66.i

do.end.i65.i:                                     ; preds = %ocrdma_add_stat.exit57.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit68.i

if.end.i66.i:                                     ; preds = %ocrdma_add_stat.exit57.i
  call void @__sanitizer_cov_trace_pc() #10
  %489 = call ptr @memcpy(ptr %add.ptr8.i232, ptr %buff.i58.i, i32 %call2.i60.i)
  br label %ocrdma_add_stat.exit68.i

ocrdma_add_stat.exit68.i:                         ; preds = %if.end.i66.i, %do.end.i65.i
  %retval.0.i67.i = phi i32 [ 0, %do.end.i65.i ], [ %call2.i60.i, %if.end.i66.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i58.i) #8
  %add.ptr11.i234 = getelementptr i8, ptr %add.ptr8.i232, i32 %retval.0.i67.i
  %rnr_retry_count_exceeded_errors.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %472, i32 0, i32 6, i32 4
  %490 = ptrtoint ptr %rnr_retry_count_exceeded_errors.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %rnr_retry_count_exceeded_errors.i, align 4
  %conv12.i235 = zext i32 %491 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i69.i) #8
  %492 = call ptr @memset(ptr %buff.i69.i, i32 0, i32 128)
  %call.i70.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i69.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.114, i64 noundef %conv12.i235) #8
  %call2.i71.i = call i32 @strlen(ptr noundef nonnull %buff.i69.i) #13
  %add.ptr.i72.i = getelementptr i8, ptr %add.ptr11.i234, i32 %call2.i71.i
  %cmp.i74.i = icmp ugt ptr %add.ptr.i72.i, %add.ptr3.i.i219
  br i1 %cmp.i74.i, label %do.end.i76.i, label %if.end.i77.i

do.end.i76.i:                                     ; preds = %ocrdma_add_stat.exit68.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_txqp_errstats.exit

if.end.i77.i:                                     ; preds = %ocrdma_add_stat.exit68.i
  call void @__sanitizer_cov_trace_pc() #10
  %493 = call ptr @memcpy(ptr %add.ptr11.i234, ptr %buff.i69.i, i32 %call2.i71.i)
  br label %ocrdma_txqp_errstats.exit

ocrdma_txqp_errstats.exit:                        ; preds = %if.end.i77.i, %do.end.i76.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i69.i) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i236 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %494 = ptrtoint ptr %debugfs_mem.i236 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %debugfs_mem.i236, align 4
  %496 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %va.i, align 16
  %tx_dbg_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %497, i32 0, i32 9
  %498 = call ptr @memset(ptr %495, i32 0, i32 4096)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb14
  %i.013.i = phi i32 [ 0, %sw.bb14 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pstats.012.i = phi ptr [ %495, %sw.bb14 ], [ %add.ptr.i239, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [100 x i32], ptr %tx_dbg_stats2.i, i32 0, i32 %i.013.i
  %499 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %arrayidx.i, align 4
  %call.i238 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pstats.012.i, i32 noundef 80, ptr noundef nonnull @.str.115, i32 noundef %i.013.i, i32 noundef %500) #8
  %add.ptr.i239 = getelementptr i8, ptr %pstats.012.i, i32 %call.i238
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %ocrdma_tx_dbg_stats.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ocrdma_tx_dbg_stats.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %501 = ptrtoint ptr %debugfs_mem.i236 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %debugfs_mem.i236, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i240 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %503 = ptrtoint ptr %debugfs_mem.i240 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %debugfs_mem.i240, align 4
  %505 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %va.i, align 16
  %rx_dbg_stats2.i = getelementptr inbounds %struct.ocrdma_rdma_stats_resp, ptr %506, i32 0, i32 10
  %507 = call ptr @memset(ptr %504, i32 0, i32 4096)
  br label %for.body.i249

for.body.i249:                                    ; preds = %for.body.i249.for.body.i249_crit_edge, %sw.bb16
  %i.013.i242 = phi i32 [ 0, %sw.bb16 ], [ %inc.i247, %for.body.i249.for.body.i249_crit_edge ]
  %pstats.012.i243 = phi ptr [ %504, %sw.bb16 ], [ %add.ptr.i246, %for.body.i249.for.body.i249_crit_edge ]
  %arrayidx.i244 = getelementptr [200 x i32], ptr %rx_dbg_stats2.i, i32 0, i32 %i.013.i242
  %508 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx.i244, align 4
  %call.i245 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pstats.012.i243, i32 noundef 80, ptr noundef nonnull @.str.115, i32 noundef %i.013.i242, i32 noundef %509) #8
  %add.ptr.i246 = getelementptr i8, ptr %pstats.012.i243, i32 %call.i245
  %inc.i247 = add nuw nsw i32 %i.013.i242, 1
  %exitcond.not.i248 = icmp eq i32 %inc.i247, 200
  br i1 %exitcond.not.i248, label %ocrdma_rx_dbg_stats.exit, label %for.body.i249.for.body.i249_crit_edge

for.body.i249.for.body.i249_crit_edge:            ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i249

ocrdma_rx_dbg_stats.exit:                         ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #10
  %510 = ptrtoint ptr %debugfs_mem.i240 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %debugfs_mem.i240, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %ocrdma_update_stats.exit
  %debugfs_mem.i251 = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 35, i32 4
  %512 = ptrtoint ptr %debugfs_mem.i251 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %debugfs_mem.i251, align 4
  %514 = call ptr @memset(ptr %513, i32 0, i32 4096)
  %async_err_stats.i = getelementptr inbounds %struct.ocrdma_dev, ptr %3, i32 0, i32 48
  %515 = ptrtoint ptr %async_err_stats.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %async_err_stats.i, align 4
  %conv.i252 = sext i32 %516 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i.i250) #8
  %517 = call ptr @memset(ptr %buff.i.i250, i32 0, i32 128)
  %call.i.i253 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i.i250, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.116, i64 noundef %conv.i252) #8
  %call2.i.i254 = call i32 @strlen(ptr noundef nonnull %buff.i.i250) #13
  %add.ptr.i.i255 = getelementptr i8, ptr %513, i32 %call2.i.i254
  %add.ptr3.i.i256 = getelementptr i8, ptr %513, i32 4096
  %cmp.i.i257 = icmp ugt ptr %add.ptr.i.i255, %add.ptr3.i.i256
  br i1 %cmp.i.i257, label %do.end.i.i259, label %if.end.i.i260

do.end.i.i259:                                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit.i264

if.end.i.i260:                                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %518 = call ptr @memcpy(ptr %513, ptr %buff.i.i250, i32 %call2.i.i254)
  br label %ocrdma_add_stat.exit.i264

ocrdma_add_stat.exit.i264:                        ; preds = %if.end.i.i260, %do.end.i.i259
  %retval.0.i.i261 = phi i32 [ 0, %do.end.i.i259 ], [ %call2.i.i254, %if.end.i.i260 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i.i250) #8
  %add.ptr.i262 = getelementptr i8, ptr %513, i32 %retval.0.i.i261
  %arrayidx2.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 1
  %519 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %arrayidx2.i, align 4
  %conv4.i263 = sext i32 %520 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i305.i) #8
  %521 = call ptr @memset(ptr %buff.i305.i, i32 0, i32 128)
  %call.i306.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i305.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.117, i64 noundef %conv4.i263) #8
  %call2.i307.i = call i32 @strlen(ptr noundef nonnull %buff.i305.i) #13
  %add.ptr.i308.i = getelementptr i8, ptr %add.ptr.i262, i32 %call2.i307.i
  %cmp.i310.i = icmp ugt ptr %add.ptr.i308.i, %add.ptr3.i.i256
  br i1 %cmp.i310.i, label %do.end.i312.i, label %if.end.i313.i

do.end.i312.i:                                    ; preds = %ocrdma_add_stat.exit.i264
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i311.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit315.i

if.end.i313.i:                                    ; preds = %ocrdma_add_stat.exit.i264
  call void @__sanitizer_cov_trace_pc() #10
  %522 = call ptr @memcpy(ptr %add.ptr.i262, ptr %buff.i305.i, i32 %call2.i307.i)
  br label %ocrdma_add_stat.exit315.i

ocrdma_add_stat.exit315.i:                        ; preds = %if.end.i313.i, %do.end.i312.i
  %retval.0.i314.i = phi i32 [ 0, %do.end.i312.i ], [ %call2.i307.i, %if.end.i313.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i305.i) #8
  %add.ptr6.i265 = getelementptr i8, ptr %add.ptr.i262, i32 %retval.0.i314.i
  %arrayidx8.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 2
  %523 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %arrayidx8.i, align 4
  %conv10.i266 = sext i32 %524 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i316.i) #8
  %525 = call ptr @memset(ptr %buff.i316.i, i32 0, i32 128)
  %call.i317.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i316.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.118, i64 noundef %conv10.i266) #8
  %call2.i318.i = call i32 @strlen(ptr noundef nonnull %buff.i316.i) #13
  %add.ptr.i319.i = getelementptr i8, ptr %add.ptr6.i265, i32 %call2.i318.i
  %cmp.i321.i = icmp ugt ptr %add.ptr.i319.i, %add.ptr3.i.i256
  br i1 %cmp.i321.i, label %do.end.i323.i, label %if.end.i324.i

do.end.i323.i:                                    ; preds = %ocrdma_add_stat.exit315.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i322.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit326.i

if.end.i324.i:                                    ; preds = %ocrdma_add_stat.exit315.i
  call void @__sanitizer_cov_trace_pc() #10
  %526 = call ptr @memcpy(ptr %add.ptr6.i265, ptr %buff.i316.i, i32 %call2.i318.i)
  br label %ocrdma_add_stat.exit326.i

ocrdma_add_stat.exit326.i:                        ; preds = %if.end.i324.i, %do.end.i323.i
  %retval.0.i325.i = phi i32 [ 0, %do.end.i323.i ], [ %call2.i318.i, %if.end.i324.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i316.i) #8
  %add.ptr12.i267 = getelementptr i8, ptr %add.ptr6.i265, i32 %retval.0.i325.i
  %arrayidx14.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 3
  %527 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %arrayidx14.i, align 4
  %conv16.i268 = sext i32 %528 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i327.i) #8
  %529 = call ptr @memset(ptr %buff.i327.i, i32 0, i32 128)
  %call.i328.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i327.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.119, i64 noundef %conv16.i268) #8
  %call2.i329.i = call i32 @strlen(ptr noundef nonnull %buff.i327.i) #13
  %add.ptr.i330.i = getelementptr i8, ptr %add.ptr12.i267, i32 %call2.i329.i
  %cmp.i332.i = icmp ugt ptr %add.ptr.i330.i, %add.ptr3.i.i256
  br i1 %cmp.i332.i, label %do.end.i334.i, label %if.end.i335.i

do.end.i334.i:                                    ; preds = %ocrdma_add_stat.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i333.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit337.i

if.end.i335.i:                                    ; preds = %ocrdma_add_stat.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  %530 = call ptr @memcpy(ptr %add.ptr12.i267, ptr %buff.i327.i, i32 %call2.i329.i)
  br label %ocrdma_add_stat.exit337.i

ocrdma_add_stat.exit337.i:                        ; preds = %if.end.i335.i, %do.end.i334.i
  %retval.0.i336.i = phi i32 [ 0, %do.end.i334.i ], [ %call2.i329.i, %if.end.i335.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i327.i) #8
  %add.ptr18.i269 = getelementptr i8, ptr %add.ptr12.i267, i32 %retval.0.i336.i
  %arrayidx20.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 4
  %531 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx20.i, align 4
  %conv22.i270 = sext i32 %532 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i338.i) #8
  %533 = call ptr @memset(ptr %buff.i338.i, i32 0, i32 128)
  %call.i339.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i338.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.120, i64 noundef %conv22.i270) #8
  %call2.i340.i = call i32 @strlen(ptr noundef nonnull %buff.i338.i) #13
  %add.ptr.i341.i = getelementptr i8, ptr %add.ptr18.i269, i32 %call2.i340.i
  %cmp.i343.i = icmp ugt ptr %add.ptr.i341.i, %add.ptr3.i.i256
  br i1 %cmp.i343.i, label %do.end.i345.i, label %if.end.i346.i

do.end.i345.i:                                    ; preds = %ocrdma_add_stat.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i344.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit348.i

if.end.i346.i:                                    ; preds = %ocrdma_add_stat.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  %534 = call ptr @memcpy(ptr %add.ptr18.i269, ptr %buff.i338.i, i32 %call2.i340.i)
  br label %ocrdma_add_stat.exit348.i

ocrdma_add_stat.exit348.i:                        ; preds = %if.end.i346.i, %do.end.i345.i
  %retval.0.i347.i = phi i32 [ 0, %do.end.i345.i ], [ %call2.i340.i, %if.end.i346.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i338.i) #8
  %add.ptr24.i271 = getelementptr i8, ptr %add.ptr18.i269, i32 %retval.0.i347.i
  %arrayidx26.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 5
  %535 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx26.i, align 4
  %conv28.i272 = sext i32 %536 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i349.i) #8
  %537 = call ptr @memset(ptr %buff.i349.i, i32 0, i32 128)
  %call.i350.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i349.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.121, i64 noundef %conv28.i272) #8
  %call2.i351.i = call i32 @strlen(ptr noundef nonnull %buff.i349.i) #13
  %add.ptr.i352.i = getelementptr i8, ptr %add.ptr24.i271, i32 %call2.i351.i
  %cmp.i354.i = icmp ugt ptr %add.ptr.i352.i, %add.ptr3.i.i256
  br i1 %cmp.i354.i, label %do.end.i356.i, label %if.end.i357.i

do.end.i356.i:                                    ; preds = %ocrdma_add_stat.exit348.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i355.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit359.i

if.end.i357.i:                                    ; preds = %ocrdma_add_stat.exit348.i
  call void @__sanitizer_cov_trace_pc() #10
  %538 = call ptr @memcpy(ptr %add.ptr24.i271, ptr %buff.i349.i, i32 %call2.i351.i)
  br label %ocrdma_add_stat.exit359.i

ocrdma_add_stat.exit359.i:                        ; preds = %if.end.i357.i, %do.end.i356.i
  %retval.0.i358.i = phi i32 [ 0, %do.end.i356.i ], [ %call2.i351.i, %if.end.i357.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i349.i) #8
  %add.ptr30.i273 = getelementptr i8, ptr %add.ptr24.i271, i32 %retval.0.i358.i
  %arrayidx32.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 8
  %539 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx32.i, align 4
  %conv34.i274 = sext i32 %540 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i360.i) #8
  %541 = call ptr @memset(ptr %buff.i360.i, i32 0, i32 128)
  %call.i361.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i360.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.122, i64 noundef %conv34.i274) #8
  %call2.i362.i = call i32 @strlen(ptr noundef nonnull %buff.i360.i) #13
  %add.ptr.i363.i = getelementptr i8, ptr %add.ptr30.i273, i32 %call2.i362.i
  %cmp.i365.i = icmp ugt ptr %add.ptr.i363.i, %add.ptr3.i.i256
  br i1 %cmp.i365.i, label %do.end.i367.i, label %if.end.i368.i

do.end.i367.i:                                    ; preds = %ocrdma_add_stat.exit359.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i366.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit370.i

if.end.i368.i:                                    ; preds = %ocrdma_add_stat.exit359.i
  call void @__sanitizer_cov_trace_pc() #10
  %542 = call ptr @memcpy(ptr %add.ptr30.i273, ptr %buff.i360.i, i32 %call2.i362.i)
  br label %ocrdma_add_stat.exit370.i

ocrdma_add_stat.exit370.i:                        ; preds = %if.end.i368.i, %do.end.i367.i
  %retval.0.i369.i = phi i32 [ 0, %do.end.i367.i ], [ %call2.i362.i, %if.end.i368.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i360.i) #8
  %add.ptr36.i275 = getelementptr i8, ptr %add.ptr30.i273, i32 %retval.0.i369.i
  %arrayidx38.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 14
  %543 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %arrayidx38.i, align 4
  %conv40.i276 = sext i32 %544 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i371.i) #8
  %545 = call ptr @memset(ptr %buff.i371.i, i32 0, i32 128)
  %call.i372.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i371.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.123, i64 noundef %conv40.i276) #8
  %call2.i373.i = call i32 @strlen(ptr noundef nonnull %buff.i371.i) #13
  %add.ptr.i374.i = getelementptr i8, ptr %add.ptr36.i275, i32 %call2.i373.i
  %cmp.i376.i = icmp ugt ptr %add.ptr.i374.i, %add.ptr3.i.i256
  br i1 %cmp.i376.i, label %do.end.i378.i, label %if.end.i379.i

do.end.i378.i:                                    ; preds = %ocrdma_add_stat.exit370.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i377.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit381.i

if.end.i379.i:                                    ; preds = %ocrdma_add_stat.exit370.i
  call void @__sanitizer_cov_trace_pc() #10
  %546 = call ptr @memcpy(ptr %add.ptr36.i275, ptr %buff.i371.i, i32 %call2.i373.i)
  br label %ocrdma_add_stat.exit381.i

ocrdma_add_stat.exit381.i:                        ; preds = %if.end.i379.i, %do.end.i378.i
  %retval.0.i380.i = phi i32 [ 0, %do.end.i378.i ], [ %call2.i373.i, %if.end.i379.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i371.i) #8
  %add.ptr42.i277 = getelementptr i8, ptr %add.ptr36.i275, i32 %retval.0.i380.i
  %arrayidx44.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 15
  %547 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %arrayidx44.i, align 4
  %conv46.i278 = sext i32 %548 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i382.i) #8
  %549 = call ptr @memset(ptr %buff.i382.i, i32 0, i32 128)
  %call.i383.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i382.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.124, i64 noundef %conv46.i278) #8
  %call2.i384.i = call i32 @strlen(ptr noundef nonnull %buff.i382.i) #13
  %add.ptr.i385.i = getelementptr i8, ptr %add.ptr42.i277, i32 %call2.i384.i
  %cmp.i387.i = icmp ugt ptr %add.ptr.i385.i, %add.ptr3.i.i256
  br i1 %cmp.i387.i, label %do.end.i389.i, label %if.end.i390.i

do.end.i389.i:                                    ; preds = %ocrdma_add_stat.exit381.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i388.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit392.i

if.end.i390.i:                                    ; preds = %ocrdma_add_stat.exit381.i
  call void @__sanitizer_cov_trace_pc() #10
  %550 = call ptr @memcpy(ptr %add.ptr42.i277, ptr %buff.i382.i, i32 %call2.i384.i)
  br label %ocrdma_add_stat.exit392.i

ocrdma_add_stat.exit392.i:                        ; preds = %if.end.i390.i, %do.end.i389.i
  %retval.0.i391.i = phi i32 [ 0, %do.end.i389.i ], [ %call2.i384.i, %if.end.i390.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i382.i) #8
  %add.ptr48.i = getelementptr i8, ptr %add.ptr42.i277, i32 %retval.0.i391.i
  %arrayidx50.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 48, i32 16
  %551 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %arrayidx50.i, align 4
  %conv52.i279 = sext i32 %552 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i393.i) #8
  %553 = call ptr @memset(ptr %buff.i393.i, i32 0, i32 128)
  %call.i394.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i393.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.125, i64 noundef %conv52.i279) #8
  %call2.i395.i = call i32 @strlen(ptr noundef nonnull %buff.i393.i) #13
  %add.ptr.i396.i = getelementptr i8, ptr %add.ptr48.i, i32 %call2.i395.i
  %cmp.i398.i = icmp ugt ptr %add.ptr.i396.i, %add.ptr3.i.i256
  br i1 %cmp.i398.i, label %do.end.i400.i, label %if.end.i401.i

do.end.i400.i:                                    ; preds = %ocrdma_add_stat.exit392.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i399.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit403.i

if.end.i401.i:                                    ; preds = %ocrdma_add_stat.exit392.i
  call void @__sanitizer_cov_trace_pc() #10
  %554 = call ptr @memcpy(ptr %add.ptr48.i, ptr %buff.i393.i, i32 %call2.i395.i)
  br label %ocrdma_add_stat.exit403.i

ocrdma_add_stat.exit403.i:                        ; preds = %if.end.i401.i, %do.end.i400.i
  %retval.0.i402.i = phi i32 [ 0, %do.end.i400.i ], [ %call2.i395.i, %if.end.i401.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i393.i) #8
  %add.ptr54.i = getelementptr i8, ptr %add.ptr48.i, i32 %retval.0.i402.i
  %arrayidx55.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 1
  %555 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %arrayidx55.i, align 4
  %conv57.i = sext i32 %556 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i404.i) #8
  %557 = call ptr @memset(ptr %buff.i404.i, i32 0, i32 128)
  %call.i405.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i404.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.126, i64 noundef %conv57.i) #8
  %call2.i406.i = call i32 @strlen(ptr noundef nonnull %buff.i404.i) #13
  %add.ptr.i407.i = getelementptr i8, ptr %add.ptr54.i, i32 %call2.i406.i
  %cmp.i409.i = icmp ugt ptr %add.ptr.i407.i, %add.ptr3.i.i256
  br i1 %cmp.i409.i, label %do.end.i411.i, label %if.end.i412.i

do.end.i411.i:                                    ; preds = %ocrdma_add_stat.exit403.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i410.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit414.i

if.end.i412.i:                                    ; preds = %ocrdma_add_stat.exit403.i
  call void @__sanitizer_cov_trace_pc() #10
  %558 = call ptr @memcpy(ptr %add.ptr54.i, ptr %buff.i404.i, i32 %call2.i406.i)
  br label %ocrdma_add_stat.exit414.i

ocrdma_add_stat.exit414.i:                        ; preds = %if.end.i412.i, %do.end.i411.i
  %retval.0.i413.i = phi i32 [ 0, %do.end.i411.i ], [ %call2.i406.i, %if.end.i412.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i404.i) #8
  %add.ptr59.i = getelementptr i8, ptr %add.ptr54.i, i32 %retval.0.i413.i
  %arrayidx61.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 2
  %559 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %arrayidx61.i, align 8
  %conv63.i = sext i32 %560 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i415.i) #8
  %561 = call ptr @memset(ptr %buff.i415.i, i32 0, i32 128)
  %call.i416.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i415.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.127, i64 noundef %conv63.i) #8
  %call2.i417.i = call i32 @strlen(ptr noundef nonnull %buff.i415.i) #13
  %add.ptr.i418.i = getelementptr i8, ptr %add.ptr59.i, i32 %call2.i417.i
  %cmp.i420.i = icmp ugt ptr %add.ptr.i418.i, %add.ptr3.i.i256
  br i1 %cmp.i420.i, label %do.end.i422.i, label %if.end.i423.i

do.end.i422.i:                                    ; preds = %ocrdma_add_stat.exit414.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i421.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit425.i

if.end.i423.i:                                    ; preds = %ocrdma_add_stat.exit414.i
  call void @__sanitizer_cov_trace_pc() #10
  %562 = call ptr @memcpy(ptr %add.ptr59.i, ptr %buff.i415.i, i32 %call2.i417.i)
  br label %ocrdma_add_stat.exit425.i

ocrdma_add_stat.exit425.i:                        ; preds = %if.end.i423.i, %do.end.i422.i
  %retval.0.i424.i = phi i32 [ 0, %do.end.i422.i ], [ %call2.i417.i, %if.end.i423.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i415.i) #8
  %add.ptr65.i = getelementptr i8, ptr %add.ptr59.i, i32 %retval.0.i424.i
  %arrayidx67.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 3
  %563 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx67.i, align 4
  %conv69.i = sext i32 %564 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i426.i) #8
  %565 = call ptr @memset(ptr %buff.i426.i, i32 0, i32 128)
  %call.i427.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i426.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.128, i64 noundef %conv69.i) #8
  %call2.i428.i = call i32 @strlen(ptr noundef nonnull %buff.i426.i) #13
  %add.ptr.i429.i = getelementptr i8, ptr %add.ptr65.i, i32 %call2.i428.i
  %cmp.i431.i = icmp ugt ptr %add.ptr.i429.i, %add.ptr3.i.i256
  br i1 %cmp.i431.i, label %do.end.i433.i, label %if.end.i434.i

do.end.i433.i:                                    ; preds = %ocrdma_add_stat.exit425.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i432.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit436.i

if.end.i434.i:                                    ; preds = %ocrdma_add_stat.exit425.i
  call void @__sanitizer_cov_trace_pc() #10
  %566 = call ptr @memcpy(ptr %add.ptr65.i, ptr %buff.i426.i, i32 %call2.i428.i)
  br label %ocrdma_add_stat.exit436.i

ocrdma_add_stat.exit436.i:                        ; preds = %if.end.i434.i, %do.end.i433.i
  %retval.0.i435.i = phi i32 [ 0, %do.end.i433.i ], [ %call2.i428.i, %if.end.i434.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i426.i) #8
  %add.ptr71.i = getelementptr i8, ptr %add.ptr65.i, i32 %retval.0.i435.i
  %arrayidx73.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 4
  %567 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %arrayidx73.i, align 16
  %conv75.i280 = sext i32 %568 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i437.i) #8
  %569 = call ptr @memset(ptr %buff.i437.i, i32 0, i32 128)
  %call.i438.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i437.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.129, i64 noundef %conv75.i280) #8
  %call2.i439.i = call i32 @strlen(ptr noundef nonnull %buff.i437.i) #13
  %add.ptr.i440.i = getelementptr i8, ptr %add.ptr71.i, i32 %call2.i439.i
  %cmp.i442.i = icmp ugt ptr %add.ptr.i440.i, %add.ptr3.i.i256
  br i1 %cmp.i442.i, label %do.end.i444.i, label %if.end.i445.i

do.end.i444.i:                                    ; preds = %ocrdma_add_stat.exit436.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i443.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit447.i

if.end.i445.i:                                    ; preds = %ocrdma_add_stat.exit436.i
  call void @__sanitizer_cov_trace_pc() #10
  %570 = call ptr @memcpy(ptr %add.ptr71.i, ptr %buff.i437.i, i32 %call2.i439.i)
  br label %ocrdma_add_stat.exit447.i

ocrdma_add_stat.exit447.i:                        ; preds = %if.end.i445.i, %do.end.i444.i
  %retval.0.i446.i = phi i32 [ 0, %do.end.i444.i ], [ %call2.i439.i, %if.end.i445.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i437.i) #8
  %add.ptr77.i281 = getelementptr i8, ptr %add.ptr71.i, i32 %retval.0.i446.i
  %arrayidx79.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 5
  %571 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %arrayidx79.i, align 4
  %conv81.i = sext i32 %572 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i448.i) #8
  %573 = call ptr @memset(ptr %buff.i448.i, i32 0, i32 128)
  %call.i449.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i448.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.130, i64 noundef %conv81.i) #8
  %call2.i450.i = call i32 @strlen(ptr noundef nonnull %buff.i448.i) #13
  %add.ptr.i451.i = getelementptr i8, ptr %add.ptr77.i281, i32 %call2.i450.i
  %cmp.i453.i = icmp ugt ptr %add.ptr.i451.i, %add.ptr3.i.i256
  br i1 %cmp.i453.i, label %do.end.i455.i, label %if.end.i456.i

do.end.i455.i:                                    ; preds = %ocrdma_add_stat.exit447.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i454.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit458.i

if.end.i456.i:                                    ; preds = %ocrdma_add_stat.exit447.i
  call void @__sanitizer_cov_trace_pc() #10
  %574 = call ptr @memcpy(ptr %add.ptr77.i281, ptr %buff.i448.i, i32 %call2.i450.i)
  br label %ocrdma_add_stat.exit458.i

ocrdma_add_stat.exit458.i:                        ; preds = %if.end.i456.i, %do.end.i455.i
  %retval.0.i457.i = phi i32 [ 0, %do.end.i455.i ], [ %call2.i450.i, %if.end.i456.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i448.i) #8
  %add.ptr83.i = getelementptr i8, ptr %add.ptr77.i281, i32 %retval.0.i457.i
  %arrayidx85.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 6
  %575 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %arrayidx85.i, align 8
  %conv87.i282 = sext i32 %576 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i459.i) #8
  %577 = call ptr @memset(ptr %buff.i459.i, i32 0, i32 128)
  %call.i460.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i459.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.131, i64 noundef %conv87.i282) #8
  %call2.i461.i = call i32 @strlen(ptr noundef nonnull %buff.i459.i) #13
  %add.ptr.i462.i = getelementptr i8, ptr %add.ptr83.i, i32 %call2.i461.i
  %cmp.i464.i = icmp ugt ptr %add.ptr.i462.i, %add.ptr3.i.i256
  br i1 %cmp.i464.i, label %do.end.i466.i, label %if.end.i467.i

do.end.i466.i:                                    ; preds = %ocrdma_add_stat.exit458.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i465.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit469.i

if.end.i467.i:                                    ; preds = %ocrdma_add_stat.exit458.i
  call void @__sanitizer_cov_trace_pc() #10
  %578 = call ptr @memcpy(ptr %add.ptr83.i, ptr %buff.i459.i, i32 %call2.i461.i)
  br label %ocrdma_add_stat.exit469.i

ocrdma_add_stat.exit469.i:                        ; preds = %if.end.i467.i, %do.end.i466.i
  %retval.0.i468.i = phi i32 [ 0, %do.end.i466.i ], [ %call2.i461.i, %if.end.i467.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i459.i) #8
  %add.ptr89.i283 = getelementptr i8, ptr %add.ptr83.i, i32 %retval.0.i468.i
  %arrayidx91.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 7
  %579 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %arrayidx91.i, align 4
  %conv93.i = sext i32 %580 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i470.i) #8
  %581 = call ptr @memset(ptr %buff.i470.i, i32 0, i32 128)
  %call.i471.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i470.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.132, i64 noundef %conv93.i) #8
  %call2.i472.i = call i32 @strlen(ptr noundef nonnull %buff.i470.i) #13
  %add.ptr.i473.i = getelementptr i8, ptr %add.ptr89.i283, i32 %call2.i472.i
  %cmp.i475.i = icmp ugt ptr %add.ptr.i473.i, %add.ptr3.i.i256
  br i1 %cmp.i475.i, label %do.end.i477.i, label %if.end.i478.i

do.end.i477.i:                                    ; preds = %ocrdma_add_stat.exit469.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i476.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit480.i

if.end.i478.i:                                    ; preds = %ocrdma_add_stat.exit469.i
  call void @__sanitizer_cov_trace_pc() #10
  %582 = call ptr @memcpy(ptr %add.ptr89.i283, ptr %buff.i470.i, i32 %call2.i472.i)
  br label %ocrdma_add_stat.exit480.i

ocrdma_add_stat.exit480.i:                        ; preds = %if.end.i478.i, %do.end.i477.i
  %retval.0.i479.i = phi i32 [ 0, %do.end.i477.i ], [ %call2.i472.i, %if.end.i478.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i470.i) #8
  %add.ptr95.i = getelementptr i8, ptr %add.ptr89.i283, i32 %retval.0.i479.i
  %arrayidx97.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 8
  %583 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %arrayidx97.i, align 32
  %conv99.i284 = sext i32 %584 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i481.i) #8
  %585 = call ptr @memset(ptr %buff.i481.i, i32 0, i32 128)
  %call.i482.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i481.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.133, i64 noundef %conv99.i284) #8
  %call2.i483.i = call i32 @strlen(ptr noundef nonnull %buff.i481.i) #13
  %add.ptr.i484.i = getelementptr i8, ptr %add.ptr95.i, i32 %call2.i483.i
  %cmp.i486.i = icmp ugt ptr %add.ptr.i484.i, %add.ptr3.i.i256
  br i1 %cmp.i486.i, label %do.end.i488.i, label %if.end.i489.i

do.end.i488.i:                                    ; preds = %ocrdma_add_stat.exit480.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i487.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit491.i

if.end.i489.i:                                    ; preds = %ocrdma_add_stat.exit480.i
  call void @__sanitizer_cov_trace_pc() #10
  %586 = call ptr @memcpy(ptr %add.ptr95.i, ptr %buff.i481.i, i32 %call2.i483.i)
  br label %ocrdma_add_stat.exit491.i

ocrdma_add_stat.exit491.i:                        ; preds = %if.end.i489.i, %do.end.i488.i
  %retval.0.i490.i = phi i32 [ 0, %do.end.i488.i ], [ %call2.i483.i, %if.end.i489.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i481.i) #8
  %add.ptr101.i285 = getelementptr i8, ptr %add.ptr95.i, i32 %retval.0.i490.i
  %arrayidx103.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 9
  %587 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %arrayidx103.i, align 4
  %conv105.i = sext i32 %588 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i492.i) #8
  %589 = call ptr @memset(ptr %buff.i492.i, i32 0, i32 128)
  %call.i493.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i492.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.134, i64 noundef %conv105.i) #8
  %call2.i494.i = call i32 @strlen(ptr noundef nonnull %buff.i492.i) #13
  %add.ptr.i495.i = getelementptr i8, ptr %add.ptr101.i285, i32 %call2.i494.i
  %cmp.i497.i = icmp ugt ptr %add.ptr.i495.i, %add.ptr3.i.i256
  br i1 %cmp.i497.i, label %do.end.i499.i, label %if.end.i500.i

do.end.i499.i:                                    ; preds = %ocrdma_add_stat.exit491.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i498.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit502.i

if.end.i500.i:                                    ; preds = %ocrdma_add_stat.exit491.i
  call void @__sanitizer_cov_trace_pc() #10
  %590 = call ptr @memcpy(ptr %add.ptr101.i285, ptr %buff.i492.i, i32 %call2.i494.i)
  br label %ocrdma_add_stat.exit502.i

ocrdma_add_stat.exit502.i:                        ; preds = %if.end.i500.i, %do.end.i499.i
  %retval.0.i501.i = phi i32 [ 0, %do.end.i499.i ], [ %call2.i494.i, %if.end.i500.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i492.i) #8
  %add.ptr107.i = getelementptr i8, ptr %add.ptr101.i285, i32 %retval.0.i501.i
  %arrayidx109.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 10
  %591 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %arrayidx109.i, align 8
  %conv111.i286 = sext i32 %592 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i503.i) #8
  %593 = call ptr @memset(ptr %buff.i503.i, i32 0, i32 128)
  %call.i504.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i503.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.135, i64 noundef %conv111.i286) #8
  %call2.i505.i = call i32 @strlen(ptr noundef nonnull %buff.i503.i) #13
  %add.ptr.i506.i = getelementptr i8, ptr %add.ptr107.i, i32 %call2.i505.i
  %cmp.i508.i = icmp ugt ptr %add.ptr.i506.i, %add.ptr3.i.i256
  br i1 %cmp.i508.i, label %do.end.i510.i, label %if.end.i511.i

do.end.i510.i:                                    ; preds = %ocrdma_add_stat.exit502.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i509.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit513.i

if.end.i511.i:                                    ; preds = %ocrdma_add_stat.exit502.i
  call void @__sanitizer_cov_trace_pc() #10
  %594 = call ptr @memcpy(ptr %add.ptr107.i, ptr %buff.i503.i, i32 %call2.i505.i)
  br label %ocrdma_add_stat.exit513.i

ocrdma_add_stat.exit513.i:                        ; preds = %if.end.i511.i, %do.end.i510.i
  %retval.0.i512.i = phi i32 [ 0, %do.end.i510.i ], [ %call2.i505.i, %if.end.i511.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i503.i) #8
  %add.ptr113.i287 = getelementptr i8, ptr %add.ptr107.i, i32 %retval.0.i512.i
  %arrayidx115.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 11
  %595 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %arrayidx115.i, align 4
  %conv117.i = sext i32 %596 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i514.i) #8
  %597 = call ptr @memset(ptr %buff.i514.i, i32 0, i32 128)
  %call.i515.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i514.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.136, i64 noundef %conv117.i) #8
  %call2.i516.i = call i32 @strlen(ptr noundef nonnull %buff.i514.i) #13
  %add.ptr.i517.i = getelementptr i8, ptr %add.ptr113.i287, i32 %call2.i516.i
  %cmp.i519.i = icmp ugt ptr %add.ptr.i517.i, %add.ptr3.i.i256
  br i1 %cmp.i519.i, label %do.end.i521.i, label %if.end.i522.i

do.end.i521.i:                                    ; preds = %ocrdma_add_stat.exit513.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i520.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit524.i

if.end.i522.i:                                    ; preds = %ocrdma_add_stat.exit513.i
  call void @__sanitizer_cov_trace_pc() #10
  %598 = call ptr @memcpy(ptr %add.ptr113.i287, ptr %buff.i514.i, i32 %call2.i516.i)
  br label %ocrdma_add_stat.exit524.i

ocrdma_add_stat.exit524.i:                        ; preds = %if.end.i522.i, %do.end.i521.i
  %retval.0.i523.i = phi i32 [ 0, %do.end.i521.i ], [ %call2.i516.i, %if.end.i522.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i514.i) #8
  %add.ptr119.i = getelementptr i8, ptr %add.ptr113.i287, i32 %retval.0.i523.i
  %arrayidx121.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 12
  %599 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %arrayidx121.i, align 16
  %conv123.i288 = sext i32 %600 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i525.i) #8
  %601 = call ptr @memset(ptr %buff.i525.i, i32 0, i32 128)
  %call.i526.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i525.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.137, i64 noundef %conv123.i288) #8
  %call2.i527.i = call i32 @strlen(ptr noundef nonnull %buff.i525.i) #13
  %add.ptr.i528.i = getelementptr i8, ptr %add.ptr119.i, i32 %call2.i527.i
  %cmp.i530.i = icmp ugt ptr %add.ptr.i528.i, %add.ptr3.i.i256
  br i1 %cmp.i530.i, label %do.end.i532.i, label %if.end.i533.i

do.end.i532.i:                                    ; preds = %ocrdma_add_stat.exit524.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i531.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit535.i

if.end.i533.i:                                    ; preds = %ocrdma_add_stat.exit524.i
  call void @__sanitizer_cov_trace_pc() #10
  %602 = call ptr @memcpy(ptr %add.ptr119.i, ptr %buff.i525.i, i32 %call2.i527.i)
  br label %ocrdma_add_stat.exit535.i

ocrdma_add_stat.exit535.i:                        ; preds = %if.end.i533.i, %do.end.i532.i
  %retval.0.i534.i = phi i32 [ 0, %do.end.i532.i ], [ %call2.i527.i, %if.end.i533.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i525.i) #8
  %add.ptr125.i289 = getelementptr i8, ptr %add.ptr119.i, i32 %retval.0.i534.i
  %arrayidx127.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 13
  %603 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %arrayidx127.i, align 4
  %conv129.i = sext i32 %604 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i536.i) #8
  %605 = call ptr @memset(ptr %buff.i536.i, i32 0, i32 128)
  %call.i537.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i536.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.138, i64 noundef %conv129.i) #8
  %call2.i538.i = call i32 @strlen(ptr noundef nonnull %buff.i536.i) #13
  %add.ptr.i539.i = getelementptr i8, ptr %add.ptr125.i289, i32 %call2.i538.i
  %cmp.i541.i = icmp ugt ptr %add.ptr.i539.i, %add.ptr3.i.i256
  br i1 %cmp.i541.i, label %do.end.i543.i, label %if.end.i544.i

do.end.i543.i:                                    ; preds = %ocrdma_add_stat.exit535.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i542.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit546.i

if.end.i544.i:                                    ; preds = %ocrdma_add_stat.exit535.i
  call void @__sanitizer_cov_trace_pc() #10
  %606 = call ptr @memcpy(ptr %add.ptr125.i289, ptr %buff.i536.i, i32 %call2.i538.i)
  br label %ocrdma_add_stat.exit546.i

ocrdma_add_stat.exit546.i:                        ; preds = %if.end.i544.i, %do.end.i543.i
  %retval.0.i545.i = phi i32 [ 0, %do.end.i543.i ], [ %call2.i538.i, %if.end.i544.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i536.i) #8
  %add.ptr131.i = getelementptr i8, ptr %add.ptr125.i289, i32 %retval.0.i545.i
  %arrayidx133.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 14
  %607 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load i32, ptr %arrayidx133.i, align 8
  %conv135.i290 = sext i32 %608 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i547.i) #8
  %609 = call ptr @memset(ptr %buff.i547.i, i32 0, i32 128)
  %call.i548.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i547.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.139, i64 noundef %conv135.i290) #8
  %call2.i549.i = call i32 @strlen(ptr noundef nonnull %buff.i547.i) #13
  %add.ptr.i550.i = getelementptr i8, ptr %add.ptr131.i, i32 %call2.i549.i
  %cmp.i552.i = icmp ugt ptr %add.ptr.i550.i, %add.ptr3.i.i256
  br i1 %cmp.i552.i, label %do.end.i554.i, label %if.end.i555.i

do.end.i554.i:                                    ; preds = %ocrdma_add_stat.exit546.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i553.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit557.i

if.end.i555.i:                                    ; preds = %ocrdma_add_stat.exit546.i
  call void @__sanitizer_cov_trace_pc() #10
  %610 = call ptr @memcpy(ptr %add.ptr131.i, ptr %buff.i547.i, i32 %call2.i549.i)
  br label %ocrdma_add_stat.exit557.i

ocrdma_add_stat.exit557.i:                        ; preds = %if.end.i555.i, %do.end.i554.i
  %retval.0.i556.i = phi i32 [ 0, %do.end.i554.i ], [ %call2.i549.i, %if.end.i555.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i547.i) #8
  %add.ptr137.i291 = getelementptr i8, ptr %add.ptr131.i, i32 %retval.0.i556.i
  %arrayidx139.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 15
  %611 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load i32, ptr %arrayidx139.i, align 4
  %conv141.i = sext i32 %612 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i558.i) #8
  %613 = call ptr @memset(ptr %buff.i558.i, i32 0, i32 128)
  %call.i559.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i558.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.140, i64 noundef %conv141.i) #8
  %call2.i560.i = call i32 @strlen(ptr noundef nonnull %buff.i558.i) #13
  %add.ptr.i561.i = getelementptr i8, ptr %add.ptr137.i291, i32 %call2.i560.i
  %cmp.i563.i = icmp ugt ptr %add.ptr.i561.i, %add.ptr3.i.i256
  br i1 %cmp.i563.i, label %do.end.i565.i, label %if.end.i566.i

do.end.i565.i:                                    ; preds = %ocrdma_add_stat.exit557.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i564.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit568.i

if.end.i566.i:                                    ; preds = %ocrdma_add_stat.exit557.i
  call void @__sanitizer_cov_trace_pc() #10
  %614 = call ptr @memcpy(ptr %add.ptr137.i291, ptr %buff.i558.i, i32 %call2.i560.i)
  br label %ocrdma_add_stat.exit568.i

ocrdma_add_stat.exit568.i:                        ; preds = %if.end.i566.i, %do.end.i565.i
  %retval.0.i567.i = phi i32 [ 0, %do.end.i565.i ], [ %call2.i560.i, %if.end.i566.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i558.i) #8
  %add.ptr143.i = getelementptr i8, ptr %add.ptr137.i291, i32 %retval.0.i567.i
  %arrayidx145.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 16
  %615 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %arrayidx145.i, align 32
  %conv147.i292 = sext i32 %616 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i569.i) #8
  %617 = call ptr @memset(ptr %buff.i569.i, i32 0, i32 128)
  %call.i570.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i569.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.141, i64 noundef %conv147.i292) #8
  %call2.i571.i = call i32 @strlen(ptr noundef nonnull %buff.i569.i) #13
  %add.ptr.i572.i = getelementptr i8, ptr %add.ptr143.i, i32 %call2.i571.i
  %cmp.i574.i = icmp ugt ptr %add.ptr.i572.i, %add.ptr3.i.i256
  br i1 %cmp.i574.i, label %do.end.i576.i, label %if.end.i577.i

do.end.i576.i:                                    ; preds = %ocrdma_add_stat.exit568.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i575.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit579.i

if.end.i577.i:                                    ; preds = %ocrdma_add_stat.exit568.i
  call void @__sanitizer_cov_trace_pc() #10
  %618 = call ptr @memcpy(ptr %add.ptr143.i, ptr %buff.i569.i, i32 %call2.i571.i)
  br label %ocrdma_add_stat.exit579.i

ocrdma_add_stat.exit579.i:                        ; preds = %if.end.i577.i, %do.end.i576.i
  %retval.0.i578.i = phi i32 [ 0, %do.end.i576.i ], [ %call2.i571.i, %if.end.i577.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i569.i) #8
  %add.ptr149.i293 = getelementptr i8, ptr %add.ptr143.i, i32 %retval.0.i578.i
  %arrayidx151.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 17
  %619 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %arrayidx151.i, align 4
  %conv153.i = sext i32 %620 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i580.i) #8
  %621 = call ptr @memset(ptr %buff.i580.i, i32 0, i32 128)
  %call.i581.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i580.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.142, i64 noundef %conv153.i) #8
  %call2.i582.i = call i32 @strlen(ptr noundef nonnull %buff.i580.i) #13
  %add.ptr.i583.i = getelementptr i8, ptr %add.ptr149.i293, i32 %call2.i582.i
  %cmp.i585.i = icmp ugt ptr %add.ptr.i583.i, %add.ptr3.i.i256
  br i1 %cmp.i585.i, label %do.end.i587.i, label %if.end.i588.i

do.end.i587.i:                                    ; preds = %ocrdma_add_stat.exit579.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i586.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit590.i

if.end.i588.i:                                    ; preds = %ocrdma_add_stat.exit579.i
  call void @__sanitizer_cov_trace_pc() #10
  %622 = call ptr @memcpy(ptr %add.ptr149.i293, ptr %buff.i580.i, i32 %call2.i582.i)
  br label %ocrdma_add_stat.exit590.i

ocrdma_add_stat.exit590.i:                        ; preds = %if.end.i588.i, %do.end.i587.i
  %retval.0.i589.i = phi i32 [ 0, %do.end.i587.i ], [ %call2.i582.i, %if.end.i588.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i580.i) #8
  %add.ptr155.i = getelementptr i8, ptr %add.ptr149.i293, i32 %retval.0.i589.i
  %arrayidx157.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 18
  %623 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %arrayidx157.i, align 8
  %conv159.i294 = sext i32 %624 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i591.i) #8
  %625 = call ptr @memset(ptr %buff.i591.i, i32 0, i32 128)
  %call.i592.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i591.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.143, i64 noundef %conv159.i294) #8
  %call2.i593.i = call i32 @strlen(ptr noundef nonnull %buff.i591.i) #13
  %add.ptr.i594.i = getelementptr i8, ptr %add.ptr155.i, i32 %call2.i593.i
  %cmp.i596.i = icmp ugt ptr %add.ptr.i594.i, %add.ptr3.i.i256
  br i1 %cmp.i596.i, label %do.end.i598.i, label %if.end.i599.i

do.end.i598.i:                                    ; preds = %ocrdma_add_stat.exit590.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i597.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit601.i

if.end.i599.i:                                    ; preds = %ocrdma_add_stat.exit590.i
  call void @__sanitizer_cov_trace_pc() #10
  %626 = call ptr @memcpy(ptr %add.ptr155.i, ptr %buff.i591.i, i32 %call2.i593.i)
  br label %ocrdma_add_stat.exit601.i

ocrdma_add_stat.exit601.i:                        ; preds = %if.end.i599.i, %do.end.i598.i
  %retval.0.i600.i = phi i32 [ 0, %do.end.i598.i ], [ %call2.i593.i, %if.end.i599.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i591.i) #8
  %add.ptr161.i295 = getelementptr i8, ptr %add.ptr155.i, i32 %retval.0.i600.i
  %arrayidx163.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 19
  %627 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %arrayidx163.i, align 4
  %conv165.i = sext i32 %628 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i602.i) #8
  %629 = call ptr @memset(ptr %buff.i602.i, i32 0, i32 128)
  %call.i603.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i602.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.144, i64 noundef %conv165.i) #8
  %call2.i604.i = call i32 @strlen(ptr noundef nonnull %buff.i602.i) #13
  %add.ptr.i605.i = getelementptr i8, ptr %add.ptr161.i295, i32 %call2.i604.i
  %cmp.i607.i = icmp ugt ptr %add.ptr.i605.i, %add.ptr3.i.i256
  br i1 %cmp.i607.i, label %do.end.i609.i, label %if.end.i610.i

do.end.i609.i:                                    ; preds = %ocrdma_add_stat.exit601.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i608.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit612.i

if.end.i610.i:                                    ; preds = %ocrdma_add_stat.exit601.i
  call void @__sanitizer_cov_trace_pc() #10
  %630 = call ptr @memcpy(ptr %add.ptr161.i295, ptr %buff.i602.i, i32 %call2.i604.i)
  br label %ocrdma_add_stat.exit612.i

ocrdma_add_stat.exit612.i:                        ; preds = %if.end.i610.i, %do.end.i609.i
  %retval.0.i611.i = phi i32 [ 0, %do.end.i609.i ], [ %call2.i604.i, %if.end.i610.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i602.i) #8
  %add.ptr167.i = getelementptr i8, ptr %add.ptr161.i295, i32 %retval.0.i611.i
  %arrayidx169.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 20
  %631 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %arrayidx169.i, align 16
  %conv171.i296 = sext i32 %632 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i613.i) #8
  %633 = call ptr @memset(ptr %buff.i613.i, i32 0, i32 128)
  %call.i614.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i613.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.145, i64 noundef %conv171.i296) #8
  %call2.i615.i = call i32 @strlen(ptr noundef nonnull %buff.i613.i) #13
  %add.ptr.i616.i = getelementptr i8, ptr %add.ptr167.i, i32 %call2.i615.i
  %cmp.i618.i = icmp ugt ptr %add.ptr.i616.i, %add.ptr3.i.i256
  br i1 %cmp.i618.i, label %do.end.i620.i, label %if.end.i621.i

do.end.i620.i:                                    ; preds = %ocrdma_add_stat.exit612.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i619.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_add_stat.exit623.i

if.end.i621.i:                                    ; preds = %ocrdma_add_stat.exit612.i
  call void @__sanitizer_cov_trace_pc() #10
  %634 = call ptr @memcpy(ptr %add.ptr167.i, ptr %buff.i613.i, i32 %call2.i615.i)
  br label %ocrdma_add_stat.exit623.i

ocrdma_add_stat.exit623.i:                        ; preds = %if.end.i621.i, %do.end.i620.i
  %retval.0.i622.i = phi i32 [ 0, %do.end.i620.i ], [ %call2.i615.i, %if.end.i621.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i613.i) #8
  %add.ptr173.i = getelementptr i8, ptr %add.ptr167.i, i32 %retval.0.i622.i
  %arrayidx175.i = getelementptr %struct.ocrdma_dev, ptr %3, i32 0, i32 49, i32 21
  %635 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %arrayidx175.i, align 4
  %conv177.i = sext i32 %636 to i64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buff.i624.i) #8
  %637 = call ptr @memset(ptr %buff.i624.i, i32 0, i32 128)
  %call.i625.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buff.i624.i, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.146, i64 noundef %conv177.i) #8
  %call2.i626.i = call i32 @strlen(ptr noundef nonnull %buff.i624.i) #13
  %add.ptr.i627.i = getelementptr i8, ptr %add.ptr173.i, i32 %call2.i626.i
  %cmp.i629.i = icmp ugt ptr %add.ptr.i627.i, %add.ptr3.i.i256
  br i1 %cmp.i629.i, label %do.end.i631.i, label %if.end.i632.i

do.end.i631.i:                                    ; preds = %ocrdma_add_stat.exit623.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i630.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  br label %ocrdma_driver_dbg_stats.exit

if.end.i632.i:                                    ; preds = %ocrdma_add_stat.exit623.i
  call void @__sanitizer_cov_trace_pc() #10
  %638 = call ptr @memcpy(ptr %add.ptr173.i, ptr %buff.i624.i, i32 %call2.i626.i)
  br label %ocrdma_driver_dbg_stats.exit

ocrdma_driver_dbg_stats.exit:                     ; preds = %if.end.i632.i, %do.end.i631.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buff.i624.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %ocrdma_driver_dbg_stats.exit, %ocrdma_rx_dbg_stats.exit, %ocrdma_tx_dbg_stats.exit, %ocrdma_txqp_errstats.exit, %ocrdma_rxqp_errstats.exit, %ocrdma_db_errstats.exit, %ocrdma_tx_stats.exit, %ocrdma_wqe_stats.exit, %ocrdma_rx_stats.exit, %ocrdma_resource_stats.exit
  %data.0 = phi ptr [ %513, %ocrdma_driver_dbg_stats.exit ], [ %511, %ocrdma_rx_dbg_stats.exit ], [ %502, %ocrdma_tx_dbg_stats.exit ], [ %470, %ocrdma_txqp_errstats.exit ], [ %441, %ocrdma_rxqp_errstats.exit ], [ %420, %ocrdma_db_errstats.exit ], [ %357, %ocrdma_tx_stats.exit ], [ %312, %ocrdma_wqe_stats.exit ], [ %243, %ocrdma_rx_stats.exit ], [ %38, %ocrdma_resource_stats.exit ]
  %call20 = tail call i32 @strlen(ptr noundef %data.0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %usr_buf_len)
  %cmp21 = icmp ugt i32 %call20, %usr_buf_len
  br i1 %cmp21, label %sw.epilog.exit_crit_edge, label %if.end24

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @simple_read_from_buffer(ptr noundef %buffer, i32 noundef %usr_buf_len, ptr noundef %ppos, ptr noundef %data.0, i32 noundef %call20) #8
  br label %exit

exit:                                             ; preds = %if.end24, %sw.epilog.exit_crit_edge, %ocrdma_update_stats.exit.exit_crit_edge
  %status.0 = phi i32 [ %call26, %if.end24 ], [ -14, %ocrdma_update_stats.exit.exit_crit_edge ], [ -28, %sw.epilog.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stats_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocrdma_dbgfs_ops_write(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  %tmp_str = alloca [32 x i8], align 1
  %reset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp_str) #8
  %0 = call ptr @memset(ptr %tmp_str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset) #8
  %1 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reset, align 4, !annotation !324
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.ocrdma_stats, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not = icmp ne i64 %7, 0
  %8 = add i32 %count, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %8)
  %9 = icmp ult i32 %8, -32
  %10 = or i1 %9, %cmp.not
  br i1 %10, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %tmp_str, i32 noundef %count, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.151, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #15, !srcloc !325
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !326

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_str, i32 noundef %count) #8
  %12 = call i32 @llvm.read_register.i32(metadata !313) #8
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !327
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !328
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_str, ptr noundef %buffer, i32 noundef %count) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !328
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !326

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i33 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i33
  %add.ptr.i.i = getelementptr i8, ptr %tmp_str, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i33)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [32 x i8], ptr %tmp_str, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %tmp_str, i32 noundef 10, ptr noundef nonnull %reset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cond = icmp eq i8 %18, 10
  br i1 %cond, label %sw.bb, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %sw.bb.cleanup_crit_edge, label %if.then13

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %sw.bb
  %call14 = call i32 @ocrdma_mbx_rdma_stats(ptr noundef %5, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %do.end

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.bb.cleanup_crit_edge ], [ %count, %if.then13.cleanup_crit_edge ], [ -14, %if.end11.cleanup_crit_edge ], [ -14, %if.end6.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %do.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp_str) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !304, !305, !306, !308, !309, !311}
!llvm.named.register.sp = !{!313}
!llvm.module.flags = !{!314, !315, !316, !317, !318, !319, !320, !321}
!llvm.ident = !{!322}

!0 = !{ptr @ocrdma_alloc_stats_resources.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 71, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 79, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ocrdma_alloc_stats_resources._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @ocrdma_alloc_stats_resources._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 770, i32 22}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 775, i32 22}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 780, i32 22}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 785, i32 22}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 790, i32 22}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 795, i32 22}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 800, i32 22}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 805, i32 22}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 810, i32 22}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 815, i32 22}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 820, i32 22}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 832, i32 40}
!33 = !{ptr @ocrdma_dbgfs_dir, !34, !"ocrdma_dbgfs_dir", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 47, i32 23}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 619, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ocrdma_update_stats._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ocrdma_update_stats._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ocrdma_dbg_ops, !41, !"ocrdma_dbg_ops", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 751, i32 37}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 112, i32 39}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 114, i32 39}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 116, i32 39}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 118, i32 39}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 120, i32 39}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 122, i32 39}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 124, i32 39}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 126, i32 39}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 128, i32 39}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 130, i32 39}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 132, i32 39}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 134, i32 39}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 136, i32 39}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 138, i32 39}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 140, i32 39}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 142, i32 39}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 144, i32 39}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 146, i32 39}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 148, i32 39}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 150, i32 39}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 152, i32 39}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 154, i32 39}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 156, i32 39}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 158, i32 39}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 160, i32 39}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 166, i32 39}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 168, i32 39}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 170, i32 39}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 172, i32 39}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 174, i32 39}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 176, i32 39}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 178, i32 39}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 180, i32 39}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 182, i32 39}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 184, i32 39}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 186, i32 39}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 188, i32 39}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 190, i32 39}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 192, i32 39}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 194, i32 39}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 196, i32 39}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 198, i32 39}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 200, i32 39}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 202, i32 39}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 204, i32 39}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 206, i32 39}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 208, i32 39}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 210, i32 39}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 212, i32 39}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 214, i32 39}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 55, i32 22}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 59, i32 3}
!146 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ocrdma_add_stat._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ocrdma_add_stat._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 230, i32 17}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 233, i32 39}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 235, i32 39}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 237, i32 39}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 239, i32 39}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 241, i32 39}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 243, i32 39}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 245, i32 39}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 247, i32 39}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 249, i32 39}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 251, i32 39}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 253, i32 39}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 255, i32 39}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 257, i32 39}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 259, i32 39}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 371, i32 39}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 374, i32 39}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 377, i32 39}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 380, i32 39}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 383, i32 39}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 386, i32 39}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 389, i32 39}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 297, i32 39}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 300, i32 39}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 303, i32 39}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 306, i32 39}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 309, i32 39}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 312, i32 39}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 315, i32 39}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 318, i32 39}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 321, i32 39}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 324, i32 39}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 404, i32 39}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 406, i32 39}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 408, i32 39}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 410, i32 39}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 426, i32 39}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 428, i32 39}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 430, i32 39}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 432, i32 39}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 434, i32 39}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 436, i32 39}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 458, i32 39}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 460, i32 39}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 477, i32 34}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 509, i32 39}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 512, i32 39}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 515, i32 39}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 518, i32 39}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 521, i32 39}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 524, i32 39}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 527, i32 39}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 530, i32 39}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 533, i32 39}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 536, i32 39}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 540, i32 39}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 543, i32 39}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 546, i32 39}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 549, i32 39}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 552, i32 39}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 555, i32 39}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 558, i32 39}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 561, i32 39}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 564, i32 39}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 567, i32 39}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 570, i32 39}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 573, i32 39}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 576, i32 39}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 579, i32 39}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 582, i32 39}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 585, i32 39}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 588, i32 39}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 591, i32 39}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 594, i32 39}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 597, i32 39}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 600, i32 39}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/infiniband/hw/ocrdma/ocrdma_stats.c", i32 659, i32 5}
!303 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @ocrdma_dbgfs_ops_write._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @ocrdma_dbgfs_ops_write._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = distinct !{null, !307, !"__already_done", i1 false, i1 false}
!307 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!308 = distinct !{null, !307, !"<string literal>", i1 false, i1 false}
!309 = distinct !{null, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!311 = !{ptr @.str.151, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!313 = !{!"sp"}
!314 = !{i32 1, !"wchar_size", i32 2}
!315 = !{i32 1, !"min_enum_size", i32 4}
!316 = !{i32 8, !"branch-target-enforcement", i32 0}
!317 = !{i32 8, !"sign-return-address", i32 0}
!318 = !{i32 8, !"sign-return-address-all", i32 0}
!319 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!320 = !{i32 7, !"uwtable", i32 1}
!321 = !{i32 7, !"frame-pointer", i32 2}
!322 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!323 = !{i8 0, i8 2}
!324 = !{!"auto-init"}
!325 = !{i64 2152332780, i64 2152332805}
!326 = !{!"branch_weights", i32 2000, i32 1}
!327 = !{i64 4828335}
!328 = !{i64 4828532}
!329 = !{i64 2152313765}
