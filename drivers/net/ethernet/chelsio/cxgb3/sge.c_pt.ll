; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/sge.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/sge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.sg_ent = type { [2 x i32], [2 x i64] }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, i32, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.149], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.149 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.tx_desc = type { [16 x i64] }
%struct.cpl_tx_pkt = type { %struct.work_request_hdr, i32, i32 }
%struct.work_request_hdr = type { i32, i32 }
%struct.cpl_tx_pkt_lso = type { %struct.work_request_hdr, i32, i32, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.tx_sw_desc = type { ptr, i8, i8, i8, i8 }
%struct.page = type { i32, %union.anon.29, %union.anon.90, %struct.atomic_t, i32 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.rsp_desc = type { %struct.rss_header, i32, i32, %union.anon.150 }
%struct.rss_header = type { i8, i8, i16, i32 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { [47 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rx_desc = type { i32, i32, i32, i32 }
%struct.rx_sw_desc = type { %union.anon.153, i32 }
%union.anon.153 = type { %struct.fl_pg_chunk }
%struct.deferred_unmap_info = type { ptr, [18 x i32] }
%struct.cpl_rx_pkt = type { i8, i8, i16, i16, i16 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.port_info = type { ptr, ptr, i8, i8, i8, %struct.cphy, %struct.cmac, %struct.link_config, i32, i32, %struct.iscsi_config, i32 }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.cmac = type { ptr, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i64, %struct.mac_stats }
%struct.mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.iscsi_config = type { [6 x i8], i32, ptr, ptr }

@t3_eth_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Tx ring %u full while queue awake!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t3_eth_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb3/sge.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_eth_xmit._entry_ptr = internal global ptr @t3_eth_xmit._entry, section ".printk_index", align 4
@t3_sge_err_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2878, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SGE parity error (0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"t3_sge_err_intr_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@t3_sge_err_intr_handler._entry_ptr = internal global ptr @t3_sge_err_intr_handler._entry, section ".printk_index", align 4
@t3_sge_err_intr_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 2881, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SGE framing error (0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@t3_sge_err_intr_handler._entry_ptr.10 = internal global ptr @t3_sge_err_intr_handler._entry.8, section ".printk_index", align 4
@t3_sge_err_intr_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 2884, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SGE response queue credit overflow\0A\00", [60 x i8] zeroinitializer }, align 32
@t3_sge_err_intr_handler._entry_ptr.13 = internal global ptr @t3_sge_err_intr_handler._entry.11, section ".printk_index", align 4
@t3_sge_err_intr_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 2891, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"packet delivered to disabled response queue (0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@t3_sge_err_intr_handler._entry_ptr.16 = internal global ptr @t3_sge_err_intr_handler._entry.14, section ".printk_index", align 4
@cxgb3_wq = external dso_local local_unnamed_addr global ptr, align 4
@t3_sge_alloc_qset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&q->tx_reclaim_timer)\00", [41 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&q->rx_reclaim_timer)\00", [41 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&q->txq[i].lock\00", [16 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&q->txq[TXQ_OFLD].qresume_task)\00", [46 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&q->txq[TXQ_CTRL].qresume_task)\00", [46 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&q->rspq.lock\00", [18 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 3181, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"free list queue 0 initialization failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"t3_sge_alloc_qset\00", [46 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset._entry_ptr = internal global ptr @t3_sge_alloc_qset._entry, section ".printk_index", align 4
@t3_sge_alloc_qset._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 3187, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"free list queue 0 enabled with %d credits\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset._entry_ptr.33 = internal global ptr @t3_sge_alloc_qset._entry.30, section ".printk_index", align 4
@t3_sge_alloc_qset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.2, i32 3193, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"free list queue 1 enabled with %d credits\0A\00", [53 x i8] zeroinitializer }, align 32
@t3_sge_alloc_qset._entry_ptr.36 = internal global ptr @t3_sge_alloc_qset._entry.34, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t3_sge_prep.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adap->sge.reg_lock\00", [44 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@flit_desc_map = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1297, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2877, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2880, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2884, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 2889, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3049, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3050, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3088, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3092, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3093, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3101, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3181, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3186, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3192, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 3388, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 326, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 717, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 1984, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"flit_desc_map\00", align 1
@___asan_gen_.174 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/sge.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 152, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1160, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @t3_eth_xmit._entry, ptr @t3_eth_xmit._entry_ptr, ptr @t3_sge_alloc_qset._entry, ptr @t3_sge_alloc_qset._entry.30, ptr @t3_sge_alloc_qset._entry.34, ptr @t3_sge_alloc_qset._entry_ptr, ptr @t3_sge_alloc_qset._entry_ptr.33, ptr @t3_sge_alloc_qset._entry_ptr.36, ptr @t3_sge_err_intr_handler._entry, ptr @t3_sge_err_intr_handler._entry.11, ptr @t3_sge_err_intr_handler._entry.14, ptr @t3_sge_err_intr_handler._entry.8, ptr @t3_sge_err_intr_handler._entry_ptr, ptr @t3_sge_err_intr_handler._entry_ptr.10, ptr @t3_sge_err_intr_handler._entry_ptr.13, ptr @t3_sge_err_intr_handler._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @t3_sge_alloc_qset.__key, ptr @.str.17, ptr @t3_sge_alloc_qset.__key.18, ptr @.str.19, ptr @t3_sge_alloc_qset.__key.20, ptr @.str.21, ptr @t3_sge_alloc_qset.__key.22, ptr @.str.23, ptr @t3_sge_alloc_qset.__key.24, ptr @.str.25, ptr @t3_sge_alloc_qset.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @t3_sge_prep.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @skb_queue_head_init.__key, ptr @.str.41, ptr @flit_desc_map, ptr @.str.43], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_eth_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_err_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_err_intr_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_err_intr_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_err_intr_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_alloc_qset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_sge_prep.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flit_desc_map to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_eth_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %sgl.i = alloca [9 x %struct.sg_ent], align 8
  %addr = alloca [18 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %addr) #11
  %2 = call ptr @memset(ptr %addr, i32 255, i32 72)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %4)
  %cmp = icmp ult i32 %4, 14
  br i1 %cmp, label %if.then, label %if.end, !prof !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %5 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %6 to i32
  %qs3 = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %qs3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qs3, align 4
  %arrayidx = getelementptr %struct.sge_qset, ptr %8, i32 %conv
  %txq4 = getelementptr %struct.sge_qset, ptr %8, i32 %conv, i32 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %10, i32 %conv
  %processed.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 3
  %11 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %processed.i, align 4
  %cleaned.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 4
  %13 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cleaned.i, align 4
  %sub.i = sub i32 %12, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.reclaim_completed_tx.exit_crit_edge, label %if.then.i

if.end.reclaim_completed_tx.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @free_tx_desc(ptr noundef %1, ptr noundef %txq4, i32 noundef %15) #11
  %16 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cleaned.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %cleaned.i, align 4
  %in_use.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 1
  %18 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_use.i, align 4
  %sub2.i = sub i32 %19, %15
  store i32 %sub2.i, ptr %in_use.i, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %if.end.reclaim_completed_tx.exit_crit_edge
  %size = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %in_use = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 1
  %22 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_use, align 4
  %sub = sub i32 %21, %23
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %25)
  %cmp.i = icmp ult i32 %25, 105
  br i1 %cmp.i, label %reclaim_completed_tx.exit.calc_tx_descs.exit_crit_edge, label %if.end.i

reclaim_completed_tx.exit.calc_tx_descs.exit_crit_edge: ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_tx_descs.exit

if.end.i:                                         ; preds = %reclaim_completed_tx.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %29 to i32
  %add.i179 = add nuw nsw i32 %conv.i, 1
  %mul.i.i = mul nuw nsw i32 %add.i179, 3
  %div2.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %add.i179, 1
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i180 = icmp eq i16 %31, 0
  %spec.select.v.i = select i1 %tobool.not.i180, i32 2, i32 3
  %add.i.i = add nuw nsw i32 %spec.select.v.i, %and.i.i
  %spec.select.i = add nuw nsw i32 %add.i.i, %div2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %spec.select.i)
  %cmp.i.i = icmp ugt i32 %spec.select.i, 57
  br i1 %cmp.i.i, label %do.body2.i.i, label %flits_to_desc.exit.i, !prof !86

do.body2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

flits_to_desc.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr [58 x i8], ptr @flit_desc_map, i32 0, i32 %spec.select.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %33 to i32
  br label %calc_tx_descs.exit

calc_tx_descs.exit:                               ; preds = %flits_to_desc.exit.i, %reclaim_completed_tx.exit.calc_tx_descs.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i.i, %flits_to_desc.exit.i ], [ 1, %reclaim_completed_tx.exit.calc_tx_descs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %retval.0.i)
  %cmp9 = icmp ult i32 %sub, %retval.0.i
  br i1 %cmp9, label %if.then17, label %if.end19, !prof !86

if.then17:                                        ; preds = %calc_tx_descs.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @t3_stop_tx_queue(ptr noundef %arrayidx.i, ptr noundef %arrayidx, ptr noundef %txq4)
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 17
  %36 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cntxt_id, align 4
  %and = and i32 %37, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str, ptr noundef %dev, i32 noundef %and) #14
  br label %cleanup

if.end19:                                         ; preds = %calc_tx_descs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %25)
  %cmp21 = icmp ugt i32 %25, 104
  br i1 %cmp21, label %if.then23, label %if.end19.if.end37_crit_edge

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then23:                                        ; preds = %if.end19
  %pdev24 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev24, align 8
  %call26 = call fastcc i32 @map_skb(ptr noundef %39, ptr noundef %skb, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then35, label %if.then23.if.end37_crit_edge, !prof !86

if.then23.if.end37_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end37:                                         ; preds = %if.then23.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %40 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_use, align 4
  %add = add i32 %41, %retval.0.i
  store i32 %add, ptr %in_use, align 4
  %sub39 = sub i32 %sub, %retval.0.i
  %stop_thres = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 5
  %42 = ptrtoint ptr %stop_thres to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stop_thres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %43)
  %cmp40 = icmp ult i32 %sub39, %43
  br i1 %cmp40, label %if.then48, label %if.end37.if.end55_crit_edge, !prof !86

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then48:                                        ; preds = %if.end37
  tail call fastcc void @t3_stop_tx_queue(ptr noundef %arrayidx.i, ptr noundef %arrayidx, ptr noundef %txq4)
  %44 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %processed.i, align 4
  %46 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %47, %45
  %48 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_use, align 4
  %sub1.i = add i32 %sub.neg.i, %49
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size, align 4
  %shr.i = lshr i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %shr.i)
  %cmp.i184.not = icmp ult i32 %sub1.i, %shr.i
  br i1 %cmp.i184.not, label %land.lhs.true, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then48
  %txq_stopped = getelementptr %struct.sge_qset, ptr %8, i32 %conv, i32 9
  %call51 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %txq_stopped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true.if.end55_crit_edge, label %if.then53

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %restarts = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 19
  %52 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %restarts, align 4
  %inc = add i32 %53, 1
  store i32 %inc, ptr %restarts, align 4
  %state.i = getelementptr %struct.netdev_queue, ptr %10, i32 %conv, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true.if.end55_crit_edge, %if.then48.if.end55_crit_edge, %if.end37.if.end55_crit_edge
  %gen56 = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 8
  %54 = ptrtoint ptr %gen56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gen56, align 4
  %unacked = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 9
  %56 = ptrtoint ptr %unacked to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %unacked, align 4
  %add57 = add i32 %57, %retval.0.i
  %and59 = shl i32 %add57, 18
  %shl = and i32 %and59, 2097152
  %and61 = and i32 %add57, 7
  store i32 %and61, ptr %unacked, align 4
  %pidx62 = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 7
  %58 = ptrtoint ptr %pidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pidx62, align 4
  %add64 = add i32 %59, %retval.0.i
  store i32 %add64, ptr %pidx62, align 4
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add64, i32 %61)
  %cmp67.not = icmp ult i32 %add64, %61
  br i1 %cmp67.not, label %if.end55.if.end74_crit_edge, label %if.then69

if.end55.if.end74_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then69:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %sub72 = sub i32 %add64, %61
  %62 = ptrtoint ptr %pidx62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub72, ptr %pidx62, align 4
  %xor = xor i32 %55, 1
  %63 = ptrtoint ptr %gen56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %xor, ptr %gen56, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end55.if.end74_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %64 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load = load i16, ptr %ip_summed, align 8
  %65 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %65)
  %cmp76 = icmp eq i16 %65, 1536
  br i1 %cmp76, label %if.then78, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx79 = getelementptr %struct.sge_qset, ptr %8, i32 %conv, i32 12, i32 2
  %66 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx79, align 4
  %inc80 = add i32 %67, 1
  store i32 %inc80, ptr %arrayidx79, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end74.if.end81_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool83.not = icmp eq i16 %71, 0
  br i1 %tobool83.not, label %if.end81.if.end88_crit_edge, label %if.then84

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %port_stats85 = getelementptr %struct.sge_qset, ptr %8, i32 %conv, i32 12
  %72 = ptrtoint ptr %port_stats85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port_stats85, align 4
  %inc87 = add i32 %73, 1
  store i32 %inc87, ptr %port_stats85, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end81.if.end88_crit_edge
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %74 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %bf.load89 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load89)
  %tobool92.not = icmp sgt i32 %bf.load89, -1
  br i1 %tobool92.not, label %if.end88.if.end97_crit_edge, label %if.then93

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx95 = getelementptr %struct.sge_qset, ptr %8, i32 %conv, i32 12, i32 4
  %75 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx95, align 4
  %inc96 = add i32 %76, 1
  store i32 %inc96, ptr %arrayidx95, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end88.if.end97_crit_edge
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #11
  %77 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i186.not = icmp eq i32 %78, 1
  br i1 %cmp.i186.not, label %if.then108, label %if.end97.if.end109_crit_edge, !prof !88

if.end97.if.end109_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then108:                                       ; preds = %if.end97
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %79 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i188 = icmp eq ptr %80, null
  br i1 %tobool.not.i188, label %do.body.i, label %if.then.i189

if.then.i189:                                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %80(ptr noundef %skb) #11
  %81 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %destructor.i, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %82, align 4
  br label %if.end109

do.body.i:                                        ; preds = %if.then108
  %84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %tobool3.not.i = icmp eq ptr %86, null
  br i1 %tobool3.not.i, label %do.body.i.if.end109_crit_edge, label %do.body7.i, !prof !88

do.body.i.if.end109_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

if.end109:                                        ; preds = %do.body.i.if.end109_crit_edge, %if.then.i189, %if.end97.if.end109_crit_edge
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %sgl.i) #11
  %87 = call ptr @memset(ptr %sgl.i, i32 255, i32 216)
  %desc.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 10
  %88 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %desc.i, align 4
  %arrayidx.i190 = getelementptr %struct.tx_desc, ptr %89, i32 %59
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  %len1.i = getelementptr inbounds %struct.cpl_tx_pkt, ptr %arrayidx.i190, i32 0, i32 2
  %92 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %len1.i, align 4
  %port_id.i = getelementptr i8, ptr %dev, i32 2312
  %93 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %port_id.i, align 8
  %conv.i192 = zext i8 %94 to i32
  %shl.i = shl nuw nsw i32 %conv.i192, 16
  %95 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %bf.load.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i193 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i193, label %if.end109.if.end.i197_crit_edge, label %if.then.i194

if.end109.if.end.i197_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i197

if.then.i194:                                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %96 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vlan_tci.i, align 2
  %conv2.i = zext i16 %97 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %or4.i = or i32 %or.i, 4194304
  br label %if.end.i197

if.end.i197:                                      ; preds = %if.then.i194, %if.end109.if.end.i197_crit_edge
  %cntrl.0.i = phi i32 [ %or4.i, %if.then.i194 ], [ %shl.i, %if.end109.if.end.i197_crit_edge ]
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %gso_size.i196 = getelementptr inbounds %struct.skb_shared_info, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %gso_size.i196 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %gso_size.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool7.not.i = icmp eq i16 %101, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = zext i16 %101 to i32
  %arrayidx9.i = getelementptr [16 x i64], ptr %arrayidx.i190, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %arrayidx9.i, align 8
  %or10.i = or i32 %cntrl.0.i, 369098752
  %cntrl11.i = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %arrayidx.i190, i32 0, i32 1
  %103 = ptrtoint ptr %cntrl11.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or10.i, ptr %cntrl11.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %104 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %106 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %107 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %105, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %108 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i.i)
  %cmp.not.i = icmp eq i32 %sub.ptr.sub.i.i, 14
  %shl14.i = select i1 %cmp.not.i, i32 0, i32 16384
  %110 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load16.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i8 %bf.load16.i, 15
  %conv17.i = zext i8 %bf.clear.i to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 20
  %or19.i = or i32 %shl14.i, %shl18.i
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %111 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i7.i = zext i16 %112 to i32
  %add.ptr.i.i8.i = getelementptr i8, ptr %105, i32 %conv.i.i7.i
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i8.i, i32 0, i32 4
  %113 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load21.i = load i16, ptr %doff.i, align 4
  %bf.lshr22.i = lshr i16 %bf.load21.i, 12
  %conv23.i = zext i16 %bf.lshr22.i to i32
  %shl24.i = shl nuw nsw i32 %conv23.i, 16
  %or25.i = or i32 %or19.i, %shl24.i
  %or26.i = or i32 %or25.i, %conv5.i
  %lso_info.i = getelementptr inbounds %struct.cpl_tx_pkt_lso, ptr %arrayidx.i190, i32 0, i32 4
  %114 = ptrtoint ptr %lso_info.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or26.i, ptr %lso_info.i, align 4
  br label %if.end71.i

if.else.i:                                        ; preds = %if.end.i197
  %115 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load29.i = load i16, ptr %ip_summed, align 8
  %116 = and i16 %bf.load29.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %116)
  %cmp34.not.i = icmp eq i16 %116, 1536
  %shl36.i = select i1 %cmp34.not.i, i32 0, i32 2097152
  %or28.i = or i32 %cntrl.0.i, %shl36.i
  %or37.i = or i32 %or28.i, 235929600
  %cntrl38.i = getelementptr inbounds %struct.cpl_tx_pkt, ptr %arrayidx.i190, i32 0, i32 1
  %117 = ptrtoint ptr %cntrl38.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or37.i, ptr %cntrl38.i, align 4
  %118 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %119)
  %cmp40.i = icmp ult i32 %119, 105
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i.if.end71.i_crit_edge

if.else.i.if.end71.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.then42.i:                                      ; preds = %if.else.i
  %sdesc.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 11
  %120 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sdesc.i, align 4
  %arrayidx43.i = getelementptr %struct.tx_sw_desc, ptr %121, i32 %59
  %122 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %arrayidx43.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %123 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool45.not.i = icmp eq i32 %124, 0
  %arrayidx48.i = getelementptr [16 x i64], ptr %arrayidx.i190, i32 0, i32 2
  %125 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len, align 4
  br i1 %tobool45.not.i, label %if.then46.i, label %if.else50.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %127 = ptrtoint ptr %data.i9.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i9.i, align 4
  %129 = call ptr @memcpy(ptr %arrayidx48.i, ptr %128, i32 %126)
  br label %if.end55.i

if.else50.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  %call54.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %arrayidx48.i, i32 noundef %126) #11
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else50.i, %if.then46.i
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len, align 4
  %add.i198 = add i32 %131, 7
  %div1.i = lshr i32 %add.i198, 3
  %add57.i = add nuw nsw i32 %div1.i, 2
  %and.i = shl i32 %131, 16
  %shl59.i = and i32 %and.i, 458752
  %or62.i = or i32 %shl, %shl59.i
  %or63.i = or i32 %or62.i, 62914560
  %132 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or63.i, ptr %arrayidx.i190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !90
  %shl65.i = shl i32 %55, 31
  %or66.i = or i32 %add57.i, %shl65.i
  %token.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 13
  %133 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %token.i, align 4
  %shl67.i = shl i32 %134, 8
  %or68.i = or i32 %or66.i, %shl67.i
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %arrayidx.i190, i32 0, i32 1
  %135 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or68.i, ptr %wr_lo.i, align 4
  %conv.i.i199 = zext i32 %55 to i64
  %arrayidx.i.i200 = getelementptr [16 x i64], ptr %arrayidx.i190, i32 0, i32 15
  %136 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv.i.i199, ptr %arrayidx.i.i200, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #11
  br label %write_tx_pkt_wr.exit

if.end71.i:                                       ; preds = %if.else.i.if.end71.i_crit_edge, %if.then8.i
  %flits.0.i = phi i32 [ 3, %if.then8.i ], [ 2, %if.else.i.if.end71.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp72.i = icmp eq i32 %retval.0.i, 1
  %arrayidx75.i = getelementptr [16 x i64], ptr %arrayidx.i190, i32 0, i32 %flits.0.i
  %cond76.i = select i1 %cmp72.i, ptr %arrayidx75.i, ptr %sgl.i
  %137 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %139 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %tobool.i.i = icmp ne i32 %138, %140
  br i1 %tobool.i.i, label %if.then.i.i, label %if.end71.i.if.end.i.i_crit_edge

if.end71.i.if.end.i.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %138, %140
  %141 = ptrtoint ptr %cond76.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub.i.i, ptr %cond76.i, align 8
  %142 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %addr, align 4
  %conv.i10.i = zext i32 %143 to i64
  %arrayidx75.sroa.gep.i = getelementptr inbounds %struct.sg_ent, ptr %arrayidx75.i, i32 0, i32 1
  %sgl.sroa.gep.i = getelementptr inbounds %struct.sg_ent, ptr %sgl.i, i32 0, i32 1
  %cond76.sroa.sel.i = select i1 %cmp72.i, ptr %arrayidx75.sroa.gep.i, ptr %sgl.sroa.gep.i
  %144 = ptrtoint ptr %cond76.sroa.sel.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv.i10.i, ptr %cond76.sroa.sel.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end71.i.if.end.i.i_crit_edge
  %k.0.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %if.end71.i.if.end.i.i_crit_edge ]
  %145 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %end.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %nr_frags.i.i, align 2
  %conv6.i.i = zext i8 %148 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp3.not.i.i = icmp eq i8 %148, 0
  br i1 %cmp3.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %sgp.addr.07.i.i = phi ptr [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %cond76.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %k.16.i.i = phi i32 [ %inc13.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %k.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %j.15.i.i = phi i32 [ %xor.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %k.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.04.i.i = phi i32 [ %inc22.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %149 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %150, i32 0, i32 12, i32 %i.04.i.i, i32 1
  %151 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bv_len.i.i.i, align 4
  %arrayidx12.i.i = getelementptr [2 x i32], ptr %sgp.addr.07.i.i, i32 0, i32 %j.15.i.i
  %153 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %arrayidx12.i.i, align 4
  %inc13.i.i = add nuw nsw i32 %k.16.i.i, 1
  %arrayidx14.i.i = getelementptr i32, ptr %addr, i32 %k.16.i.i
  %154 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx14.i.i, align 4
  %conv15.i.i = zext i32 %155 to i64
  %arrayidx17.i.i = getelementptr %struct.sg_ent, ptr %sgp.addr.07.i.i, i32 0, i32 1, i32 %j.15.i.i
  %156 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %conv15.i.i, ptr %arrayidx17.i.i, align 8
  %xor.i.i = xor i32 %j.15.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %cmp18.i.i = icmp eq i32 %xor.i.i, 0
  %spec.select.idx.i.i = zext i1 %cmp18.i.i to i32
  %spec.select.i.i = getelementptr %struct.sg_ent, ptr %sgp.addr.07.i.i, i32 %spec.select.idx.i.i
  %inc22.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, %conv6.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %j.1.lcssa.i.i = phi i32 [ %k.0.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %xor.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %sgp.addr.0.lcssa.i.i = phi ptr [ %cond76.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %spec.select.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1.lcssa.i.i)
  %tobool23.not.i.i = icmp eq i32 %j.1.lcssa.i.i, 0
  br i1 %tobool23.not.i.i, label %for.end.i.i.write_sgl.exit.i_crit_edge, label %if.then24.i.i

for.end.i.i.write_sgl.exit.i_crit_edge:           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %write_sgl.exit.i

if.then24.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx26.i.i = getelementptr [2 x i32], ptr %sgp.addr.0.lcssa.i.i, i32 0, i32 %j.1.lcssa.i.i
  %157 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %arrayidx26.i.i, align 4
  br label %write_sgl.exit.i

write_sgl.exit.i:                                 ; preds = %if.then24.i.i, %for.end.i.i.write_sgl.exit.i_crit_edge
  %conv29.i.i = zext i1 %tobool.i.i to i32
  %add.i.i201 = add nuw nsw i32 %conv6.i.i, %conv29.i.i
  %mul.i.i202 = mul nuw nsw i32 %add.i.i201, 3
  %div1.i.i = lshr i32 %mul.i.i202, 1
  %add30.i.i = add i32 %j.1.lcssa.i.i, %div1.i.i
  %or80.i = or i32 %shl, 50331648
  %token81.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 13
  %158 = ptrtoint ptr %token81.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %token81.i, align 4
  %shl82.i = shl i32 %159, 8
  call fastcc void @write_wr_hdr_sgl(i32 noundef %retval.0.i, ptr noundef %skb, ptr noundef %arrayidx.i190, i32 noundef %59, ptr noundef %txq4, ptr noundef nonnull %sgl.i, i32 noundef %flits.0.i, i32 noundef %add30.i.i, i32 noundef %55, i32 noundef %or80.i, i32 noundef %shl82.i) #11
  br label %write_tx_pkt_wr.exit

write_tx_pkt_wr.exit:                             ; preds = %write_sgl.exit.i, %if.end55.i
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %sgl.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  %cntxt_id.i = getelementptr inbounds %struct.sge_txq, ptr %txq4, i32 0, i32 17
  %160 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cntxt_id.i, align 4
  %or.i203 = or i32 %161, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %162 = tail call i32 @llvm.bswap.i32(i32 %or.i203) #11
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %163 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %164, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %162) #11, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %write_tx_pkt_wr.exit, %if.then35, %if.then17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 16, %if.then17 ], [ 0, %if.then35 ], [ 0, %write_tx_pkt_wr.exit ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %addr) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t3_stop_tx_queue(ptr noundef %txq, ptr noundef %qs, ptr nocapture noundef %q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %txq, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  %txq_stopped = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %txq_stopped) #11
  %stops = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 18
  %0 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stops, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stops, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_skb(ptr noundef %pdev, ptr nocapture noundef readonly %skb, ptr nocapture noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #11
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !88

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #11
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.then
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %5, i32 noundef %sub.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %5 to i32
  %sub.i59 = add i32 %12, 1073741824
  %shr.i = lshr i32 %sub.i59, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %and.i = and i32 %12, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #11
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call41.i, ptr %addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i32, ptr %addr, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %addr.addr.0 = phi ptr [ %incdec.ptr, %if.end ], [ %addr, %entry.if.end7_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 12
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags, align 2
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %15, i32 0, i32 12, i32 %idxprom
  %cmp71 = icmp ult ptr %frags, %arrayidx
  br i1 %cmp71, label %for.body.lr.ph, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %fp.073 = phi ptr [ %frags, %for.body.lr.ph ], [ %incdec.ptr19, %if.end17.for.body_crit_edge ]
  %addr.addr.172 = phi ptr [ %addr.addr.0, %for.body.lr.ph ], [ %incdec.ptr18, %if.end17.for.body_crit_edge ]
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %fp.073, i32 0, i32 1
  %18 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i, align 4
  %20 = ptrtoint ptr %fp.073 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp.073, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %fp.073, i32 0, i32 2
  %22 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev10, ptr noundef %21, i32 noundef %23, i32 noundef %19, i32 noundef 1, i32 noundef 0) #11
  %24 = ptrtoint ptr %addr.addr.172 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2.i, ptr %addr.addr.172, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev10, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i60.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i60.not, label %while.cond.preheader, label %if.end17

while.cond.preheader:                             ; preds = %for.body
  %cmp2374 = icmp ugt ptr %fp.073, %frags
  br i1 %cmp2374, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.end17:                                         ; preds = %for.body
  %incdec.ptr18 = getelementptr i32, ptr %addr.addr.172, i32 1
  %incdec.ptr19 = getelementptr %struct.bio_vec, ptr %fp.073, i32 1
  %cmp = icmp ult ptr %incdec.ptr19, %arrayidx
  br i1 %cmp, label %if.end17.for.body_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %fp.176 = phi ptr [ %incdec.ptr20, %while.body.while.body_crit_edge ], [ %fp.073, %while.cond.preheader.while.body_crit_edge ]
  %addr.addr.275 = phi ptr [ %incdec.ptr25, %while.body.while.body_crit_edge ], [ %addr.addr.172, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr20 = getelementptr %struct.bio_vec, ptr %fp.176, i32 -1
  %incdec.ptr25 = getelementptr i32, ptr %addr.addr.275, i32 -1
  %25 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr25, align 4
  %bv_len.i62 = getelementptr %struct.bio_vec, ptr %fp.176, i32 -1, i32 1
  %27 = ptrtoint ptr %bv_len.i62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_len.i62, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %26, i32 noundef %28, i32 noundef 1, i32 noundef 0) #11
  %cmp23 = icmp ugt ptr %incdec.ptr20, %frags
  br i1 %cmp23, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %addr.addr.2.lcssa = phi ptr [ %addr.addr.172, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr25, %while.body.while.end_crit_edge ]
  %arrayidx28 = getelementptr i32, ptr %addr.addr.2.lcssa, i32 -1
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx28, align 4
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %sub.i65 = sub i32 %32, %34
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %30, i32 noundef %sub.i65, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end17.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.0 = phi i32 [ -12, %while.end ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mgmt_tx(ptr noundef %adap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable()
  %arrayidx1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 4, i32 2
  %call = tail call fastcc i32 @ctrl_xmit(ptr noundef %adap, ptr noundef %arrayidx1, ptr noundef %skb)
  tail call fastcc void @local_bh_enable()
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_xmit(ptr nocapture noundef readonly %adap, ptr noundef %q, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %1)
  %cmp.i = icmp ugt i32 %1, 120
  br i1 %cmp.i, label %do.end, label %if.end24, !prof !86

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1485, i32 noundef 9, ptr noundef null) #11
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %or = or i32 %5, 12582912
  store i32 %or, ptr %3, align 4
  %token = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 13
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 4
  %shl = shl i32 %7, 8
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %wr_lo, align 4
  %lock = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %processed.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 3
  %cleaned.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 4
  %in_use.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 1
  %sendq.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 15
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %txq_stopped.i = getelementptr i8, ptr %q, i32 228
  br label %again

again:                                            ; preds = %land.lhs.true.i.again_crit_edge, %if.end24
  %9 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %processed.i, align 4
  %11 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %12, %10
  %13 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_use.i, align 4
  %sub1.i = add i32 %sub.neg.i, %14
  store i32 %sub1.i, ptr %in_use.i, align 4
  store i32 %10, ptr %cleaned.i, align 4
  %15 = ptrtoint ptr %sendq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sendq.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %sendq.i
  br i1 %cmp.i.not.i, label %if.end.i, label %again.if.then34_crit_edge, !prof !88

again.if.then34_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.end.i:                                         ; preds = %again
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub1.i)
  %cmp.i76 = icmp eq i32 %18, %sub1.i
  br i1 %cmp.i76, label %if.then11.i, label %if.end37, !prof !86

if.then11.i:                                      ; preds = %if.end.i
  tail call void @_set_bit(i32 noundef 2, ptr noundef %txq_stopped.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  %19 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %processed.i, align 4
  %21 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i.i = sub i32 %22, %20
  %23 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_use.i, align 4
  %sub1.i.i = add i32 %sub.neg.i.i, %24
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %shr.i.i = lshr i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %shr.i.i)
  %cmp.i1.not.i = icmp ult i32 %sub1.i.i, %shr.i.i
  br i1 %cmp.i1.not.i, label %land.lhs.true.i, label %if.then11.i.cleanup.i_crit_edge

if.then11.i.cleanup.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.then11.i
  %call19.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %txq_stopped.i) #11
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.again_crit_edge

land.lhs.true.i.again_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %if.then11.i.cleanup.i_crit_edge
  %stops.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 18
  %27 = ptrtoint ptr %stops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stops.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %stops.i, align 4
  br label %if.then34

if.then34:                                        ; preds = %cleanup.i, %again.if.then34_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 15, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %sendq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %32 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %skb, ptr %30, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 15, i32 1
  %34 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc, align 4
  %pidx = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 7
  %38 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pidx, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %37, i32 %39
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %gen = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 8
  %42 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gen, align 4
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  %arrayidx.i = getelementptr %struct.work_request_hdr, ptr %arrayidx, i32 1
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i, !prof !88

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i = getelementptr %struct.work_request_hdr, ptr %45, i32 1
  %sub.i77 = add i32 %41, -8
  %48 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx4.i, i32 %sub.i77)
  br label %write_imm.exit

if.else.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = add i32 %41, -8
  %call.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 8, ptr noundef %arrayidx.i, i32 noundef %sub6.i) #11
  br label %write_imm.exit

write_imm.exit:                                   ; preds = %if.else.i, %if.then.i
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 4
  %and.i = shl i32 %41, 16
  %shl.i = and i32 %and.i, 458752
  %or.i = or i32 %shl.i, %50
  %or7.i = or i32 %or.i, 12582912
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or7.i, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %45, i32 0, i32 1
  %52 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wr_lo.i, align 4
  %shl9.i = shl i32 %43, 31
  %add.i = add i32 %41, 7
  %div27.i = lshr i32 %add.i, 3
  %or11.i = or i32 %shl9.i, %div27.i
  %or12.i = or i32 %53, %or11.i
  %wr_lo13.i = getelementptr inbounds %struct.work_request_hdr, ptr %arrayidx, i32 0, i32 1
  %54 = ptrtoint ptr %wr_lo13.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or12.i, ptr %wr_lo13.i, align 4
  %conv.i.i = zext i32 %43 to i64
  %arrayidx.i.i = getelementptr [16 x i64], ptr %arrayidx, i32 0, i32 15
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv.i.i, ptr %arrayidx.i.i, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  %56 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_use.i, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %in_use.i, align 4
  %58 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pidx, align 4
  %inc39 = add i32 %59, 1
  store i32 %inc39, ptr %pidx, align 4
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc39, i32 %61)
  %cmp40.not = icmp ult i32 %inc39, %61
  br i1 %cmp40.not, label %write_imm.exit.if.end44_crit_edge, label %if.then41

write_imm.exit.if.end44_crit_edge:                ; preds = %write_imm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %write_imm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pidx, align 4
  %63 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gen, align 4
  %xor = xor i32 %64, 1
  store i32 %xor, ptr %gen, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %write_imm.exit.if.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 17
  %65 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cntxt_id, align 4
  %or50 = or i32 %66, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %67 = tail call i32 @llvm.bswap.i32(i32 %or50) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %67) #11, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then34, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 2, %if.then34 ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_offload_tx(ptr noundef %tdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 16
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %0 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priority.i, align 4
  %shr.i = lshr i32 %1, 1
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !88

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 2
  %call6 = tail call fastcc i32 @ctrl_xmit(ptr noundef %tdev, ptr noundef %arrayidx5, ptr noundef %skb)
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx8 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 121
  br i1 %cmp.i.i, label %if.end.calc_tx_descs_ofld.exit.i_crit_edge, label %if.end.i.i

if.end.calc_tx_descs_ofld.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_tx_descs_ofld.exit.i

if.end.i.i:                                       ; preds = %if.end
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %div.i.i = sdiv i32 %sub.ptr.sub.i.i.i, 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i.i = zext i8 %13 to i32
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %cmp4.not.i.i = icmp ne ptr %15, %add.ptr.i.i.i.i
  %inc.i.i = zext i1 %cmp4.not.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %inc.i.i, %conv.i.i
  %mul.i.i.i = mul nuw nsw i32 %spec.select.i.i, 3
  %div2.i.i.i = lshr i32 %mul.i.i.i, 1
  %and.i.i.i = and i32 %spec.select.i.i, 1
  %add.i.i.i = add nsw i32 %and.i.i.i, %div.i.i
  %add.i.i = add nsw i32 %add.i.i.i, %div2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %add.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i, 57
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %flits_to_desc.exit.i.i, !prof !86

do.body2.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/chelsio/cxgb3/sge.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

flits_to_desc.exit.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr [58 x i8], ptr @flit_desc_map, i32 0, i32 %add.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i16.i.i = zext i8 %17 to i32
  br label %calc_tx_descs_ofld.exit.i

calc_tx_descs_ofld.exit.i:                        ; preds = %flits_to_desc.exit.i.i, %if.end.calc_tx_descs_ofld.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i16.i.i, %flits_to_desc.exit.i.i ], [ 1, %if.end.calc_tx_descs_ofld.exit.i_crit_edge ]
  %lock.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %processed.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 3
  %cleaned.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 4
  %in_use.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 1
  %sendq.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 15
  %size.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 2
  %txq_stopped.i.i = getelementptr i8, ptr %arrayidx8, i32 440
  br label %again.i

again.i:                                          ; preds = %land.lhs.true.i.i.again.i_crit_edge, %calc_tx_descs_ofld.exit.i
  %18 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %processed.i.i, align 4
  %20 = ptrtoint ptr %cleaned.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cleaned.i.i, align 4
  %sub.i.i = sub i32 %19, %21
  %22 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %again.i.reclaim_completed_tx.exit.i_crit_edge, label %if.then.i.i

again.i.reclaim_completed_tx.exit.i_crit_edge:    ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_completed_tx.exit.i

if.then.i.i:                                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @free_tx_desc(ptr noundef %tdev, ptr noundef %arrayidx8, i32 noundef %22) #11
  %23 = ptrtoint ptr %cleaned.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cleaned.i.i, align 4
  %add.i63.i = add i32 %24, %22
  store i32 %add.i63.i, ptr %cleaned.i.i, align 4
  %25 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_use.i.i, align 4
  %sub2.i.i = sub i32 %26, %22
  store i32 %sub2.i.i, ptr %in_use.i.i, align 4
  br label %reclaim_completed_tx.exit.i

reclaim_completed_tx.exit.i:                      ; preds = %if.then.i.i, %again.i.reclaim_completed_tx.exit.i_crit_edge
  %27 = ptrtoint ptr %sendq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sendq.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %28, %sendq.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i68.i, label %reclaim_completed_tx.exit.i.if.then5.i_crit_edge, !prof !88

reclaim_completed_tx.exit.i.if.then5.i_crit_edge: ; preds = %reclaim_completed_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i

if.end.i68.i:                                     ; preds = %reclaim_completed_tx.exit.i
  %29 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i.i, align 4
  %31 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_use.i.i, align 4
  %sub.i66.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i66.i, i32 %retval.0.i.i)
  %cmp.i67.i = icmp ult i32 %sub.i66.i, %retval.0.i.i
  br i1 %cmp.i67.i, label %if.then11.i.i, label %if.end7.i, !prof !86

if.then11.i.i:                                    ; preds = %if.end.i68.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %txq_stopped.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  %33 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %processed.i.i, align 4
  %35 = ptrtoint ptr %cleaned.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cleaned.i.i, align 4
  %sub.neg.i.i.i = sub i32 %36, %34
  %37 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_use.i.i, align 4
  %sub1.i.i.i = add i32 %sub.neg.i.i.i, %38
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.i, align 4
  %shr.i.i.i = lshr i32 %40, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i.i, i32 %shr.i.i.i)
  %cmp.i1.not.i.i = icmp ult i32 %sub1.i.i.i, %shr.i.i.i
  br i1 %cmp.i1.not.i.i, label %land.lhs.true.i.i, label %if.then11.i.i.cleanup.i.i_crit_edge

if.then11.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %if.then11.i.i
  %call19.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %txq_stopped.i.i) #11
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i.again.i_crit_edge

land.lhs.true.i.i.again.i_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i.cleanup.i.i_crit_edge, %if.then11.i.i.cleanup.i.i_crit_edge
  %stops.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 18
  %41 = ptrtoint ptr %stops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stops.i.i, align 4
  %inc.i69.i = add i32 %42, 1
  store i32 %inc.i69.i, ptr %stops.i.i, align 4
  br label %if.then5.i

if.then5.i:                                       ; preds = %cleanup.i.i, %reclaim_completed_tx.exit.i.if.then5.i_crit_edge
  %prev.i.i.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 15, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i.i, align 4
  %45 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %sendq.i.i, ptr %skb, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %46 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %skb, ptr %44, align 4
  %qlen.i.i.i.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 15, i32 1
  %48 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i, ptr %priority.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i68.i
  %51 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %52)
  %cmp.i71.i = icmp ugt i32 %52, 120
  br i1 %cmp.i71.i, label %land.lhs.true.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 3
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i, align 8
  %call10.i = tail call fastcc i32 @map_skb(ptr noundef %54, ptr noundef %skb, ptr noundef %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  br label %cleanup

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %gen15.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 8
  %57 = ptrtoint ptr %gen15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gen15.i, align 4
  %59 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in_use.i.i, align 4
  %add.i = add i32 %60, %retval.0.i.i
  store i32 %add.i, ptr %in_use.i.i, align 4
  %pidx16.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 7
  %61 = ptrtoint ptr %pidx16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pidx16.i, align 4
  %add18.i = add i32 %62, %retval.0.i.i
  store i32 %add18.i, ptr %pidx16.i, align 4
  %63 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %64)
  %cmp20.not.i = icmp ult i32 %add18.i, %64
  br i1 %cmp20.not.i, label %if.end14.i.if.end25.i_crit_edge, label %if.then21.i

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %add18.i, %64
  %65 = ptrtoint ptr %pidx16.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i, ptr %pidx16.i, align 4
  %xor.i = xor i32 %58, 1
  %66 = ptrtoint ptr %gen15.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %xor.i, ptr %gen15.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end14.i.if.end25.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  %head27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %67 = ptrtoint ptr %head27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head27.i, align 8
  tail call fastcc void @write_ofld_wr(ptr noundef %tdev, ptr noundef %skb, ptr noundef %arrayidx8, i32 noundef %62, i32 noundef %58, i32 noundef %retval.0.i.i, ptr noundef %68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  %cntxt_id.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %shr.i, i32 4, i32 1, i32 17
  %69 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cntxt_id.i.i, align 4
  %or.i.i = or i32 %70, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %regs.i.i.i = getelementptr inbounds %struct.adapter, ptr %tdev, i32 0, i32 2
  %72 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73.i, i32 %71) #11, !srcloc !93
  br label %cleanup

cleanup:                                          ; preds = %if.end25.i, %if.then12.i, %if.then5.i, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ 2, %if.then5.i ], [ 0, %if.end25.i ], [ 0, %if.then12.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @t3_intr_handler(ptr nocapture noundef readonly %adap, i32 noundef %polling) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polling)
  %tobool1.not = icmp eq i32 %polling, 0
  %cond = select i1 %tobool1.not, ptr @t3_sge_intr_msix, ptr @t3_sge_intr_msix_napi
  br label %return

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polling)
  %tobool6.not = icmp eq i32 %polling, 0
  %cond7 = select i1 %tobool6.not, ptr @t3_intr_msi, ptr @t3_intr_msi_napi
  br label %return

if.end8:                                          ; preds = %if.end
  %rev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end8.return_crit_edge, label %if.then9

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polling)
  %tobool10.not = icmp eq i32 %polling, 0
  %cond11 = select i1 %tobool10.not, ptr @t3b_intr, ptr @t3b_intr_napi
  br label %return

return:                                           ; preds = %if.then9, %if.end8.return_crit_edge, %if.then5, %if.then
  %retval.0 = phi ptr [ %cond, %if.then ], [ %cond7, %if.then5 ], [ %cond11, %if.then9 ], [ @t3_intr, %if.end8.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_sge_intr_msix_napi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rspq = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2
  %lock = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 128
  %desc.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %cidx.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx.i, align 4
  %arrayidx.i = getelementptr %struct.rsp_desc, ptr %3, i32 %5
  %intr_gen.i.i = getelementptr %struct.rsp_desc, ptr %3, i32 %5, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %intr_gen.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intr_gen.i.i, align 1
  %8 = and i8 %7, 1
  %and.i.i = zext i8 %8 to i32
  %gen.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %10, %and.i.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %flags.i.i = getelementptr %struct.rsp_desc, ptr %3, i32 %5, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i22.i = and i32 %12, 603979776
  %len_cq.i.i = getelementptr %struct.rsp_desc, ptr %3, i32 %5, i32 2
  %13 = ptrtoint ptr %len_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len_cq.i.i, align 4
  %or.i.i = or i32 %and.i22.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i23.not.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i23.not.i, label %land.lhs.true.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %size.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 1
  %processed.i.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 4, i32 0, i32 3
  %processed7.i.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 4, i32 2, i32 3
  %processed16.i.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 4, i32 1, i32 3
  %pure_rsps.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 17
  %cntxt_id.i.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 10
  %regs.i.i.i.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %land.lhs.true.i
  %r.addr.0.i.i = phi ptr [ %arrayidx.i, %land.lhs.true.i ], [ %r.addr.1.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %sleeping.0.i.i = phi i32 [ 0, %land.lhs.true.i ], [ %sleeping.1.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %flags1.i.i = getelementptr inbounds %struct.rsp_desc, ptr %r.addr.0.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags1.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.rsp_desc, ptr %r.addr.0.i.i, i32 1
  %17 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cidx.i, align 4
  %inc.i.i = add i32 %18, 1
  store i32 %inc.i.i, ptr %cidx.i, align 4
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %20)
  %cmp.i25.i = icmp eq i32 %inc.i.i, %20
  br i1 %cmp.i25.i, label %if.then.i.i, label %do.body.i.i.if.end.i.i_crit_edge, !prof !86

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cidx.i, align 4
  %22 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gen.i.i, align 4
  %xor.i.i = xor i32 %23, 1
  store i32 %xor.i.i, ptr %gen.i.i, align 4
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.body.i.i.if.end.i.i_crit_edge
  %r.addr.1.i.i = phi ptr [ %25, %if.then.i.i ], [ %incdec.ptr.i.i, %do.body.i.i.if.end.i.i_crit_edge ]
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %r.addr.1.i.i) #11, !srcloc !98
  %and.i26.i = and i32 %16, 16744447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %tobool4.not.i.i = icmp eq i32 %and.i26.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %and6.i.i = and i32 %16, 8388736
  %or.i27.i = or i32 %and6.i.i, %sleeping.0.i.i
  %shr.i.i.i = lshr i32 %16, 16
  %and.i.i.i = and i32 %shr.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then5.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then5.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %processed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %processed.i.i.i, align 4
  %add.i.i.i = add i32 %27, %and.i.i.i
  store i32 %add.i.i.i, ptr %processed.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then5.i.i.if.end.i.i.i_crit_edge
  %shr1.i.i.i = lshr i32 %16, 8
  %and2.i.i.i = and i32 %shr1.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %processed7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %processed7.i.i.i, align 4
  %add8.i.i.i = add i32 %29, %and2.i.i.i
  store i32 %add8.i.i.i, ptr %processed7.i.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  %and11.i.i.i = and i32 %16, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end9.i.i.i.if.end7.i.i_crit_edge, label %if.then13.i.i.i

if.end9.i.i.i.if.end7.i.i_crit_edge:              ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then13.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %processed16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %processed16.i.i.i, align 4
  %add17.i.i.i = add i32 %31, %and11.i.i.i
  store i32 %add17.i.i.i, ptr %processed16.i.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then13.i.i.i, %if.end9.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  %sleeping.1.i.i = phi i32 [ %sleeping.0.i.i, %if.end.i.i.if.end7.i.i_crit_edge ], [ %or.i27.i, %if.end9.i.i.i.if.end7.i.i_crit_edge ], [ %or.i27.i, %if.then13.i.i.i ]
  %32 = ptrtoint ptr %pure_rsps.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pure_rsps.i.i, align 4
  %inc8.i.i = add i32 %33, 1
  store i32 %inc8.i.i, ptr %pure_rsps.i.i, align 4
  %34 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rspq, align 4
  %inc9.i.i = add i32 %35, 1
  store i32 %inc9.i.i, ptr %rspq, align 4
  %36 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i, align 4
  %div68.i.i = lshr i32 %37, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc9.i.i, i32 %div68.i.i)
  %cmp11.not.i.i = icmp ult i32 %inc9.i.i, %div68.i.i
  br i1 %cmp11.not.i.i, label %if.end7.i.i.if.end15.i.i_crit_edge, label %if.then12.i.i

if.end7.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %38 = ptrtoint ptr %cntxt_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cntxt_id.i.i.i, align 4
  %shl.i.i.i = shl i32 %39, 29
  %or.i.i.i = or i32 %shl.i.i.i, %inc9.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %41 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %40) #11, !srcloc !93
  %43 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rspq, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then12.i.i, %if.end7.i.i.if.end15.i.i_crit_edge
  %intr_gen.i.i.i = getelementptr inbounds %struct.rsp_desc, ptr %r.addr.1.i.i, i32 0, i32 3, i32 0, i32 1
  %44 = ptrtoint ptr %intr_gen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %intr_gen.i.i.i, align 1
  %46 = and i8 %45, 1
  %and.i69.i.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and.i69.i.i)
  %cmp.i.not.i.i = icmp eq i32 %48, %and.i69.i.i
  br i1 %cmp.i.not.i.i, label %do.cond.i.i, label %if.end15.i.i.do.end.i.i_crit_edge

if.end15.i.i.do.end.i.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.cond.i.i:                                      ; preds = %if.end15.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  %flags.i.i.i = getelementptr inbounds %struct.rsp_desc, ptr %r.addr.1.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i.i, align 4
  %and.i70.i.i = and i32 %50, 603979776
  %len_cq.i.i.i = getelementptr inbounds %struct.rsp_desc, ptr %r.addr.1.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %len_cq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len_cq.i.i.i, align 4
  %or.i71.i.i = or i32 %and.i70.i.i, %52
  %cmp.i72.not.i.i = icmp eq i32 %or.i71.i.i, 0
  br i1 %cmp.i72.not.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.do.end.i.i_crit_edge

do.cond.i.i.do.end.i.i_crit_edge:                 ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i.do.end.i.i_crit_edge, %if.end15.i.i.do.end.i.i_crit_edge
  %intr_gen.i.i.i.le = getelementptr inbounds %struct.rsp_desc, ptr %r.addr.1.i.i, i32 0, i32 3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleeping.1.i.i)
  %tobool21.not.i.i = icmp eq i32 %sleeping.1.i.i, 0
  br i1 %tobool21.not.i.i, label %do.end.i.i.do.end27.i.i_crit_edge, label %if.then22.i.i

do.end.i.i.do.end27.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27.i.i

if.then22.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @check_ring_db(ptr noundef %1, ptr noundef %cookie, i32 noundef %sleeping.1.i.i) #11
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %if.then22.i.i, %do.end.i.i.do.end27.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  %txq_stopped.i.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 9
  %53 = ptrtoint ptr %txq_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txq_stopped.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp30.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp30.not.i.i, label %do.end27.i.i.process_pure_responses.exit.i_crit_edge, label %if.then37.i.i, !prof !88

do.end27.i.i.process_pure_responses.exit.i_crit_edge: ; preds = %do.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_pure_responses.exit.i

if.then37.i.i:                                    ; preds = %do.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @restart_tx(ptr noundef %cookie) #11
  br label %process_pure_responses.exit.i

process_pure_responses.exit.i:                    ; preds = %if.then37.i.i, %do.end27.i.i.process_pure_responses.exit.i_crit_edge
  %55 = ptrtoint ptr %intr_gen.i.i.i.le to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %intr_gen.i.i.i.le, align 1
  %57 = and i8 %56, 1
  %and.i74.i.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %and.i74.i.i)
  %cmp.i76.i.not.i = icmp eq i32 %59, %and.i74.i.i
  br i1 %cmp.i76.i.not.i, label %process_pure_responses.exit.i.if.end10.i_crit_edge, label %if.then5.i

process_pure_responses.exit.i.if.end10.i_crit_edge: ; preds = %process_pure_responses.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then5.i:                                       ; preds = %process_pure_responses.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %cntxt_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cntxt_id.i.i.i, align 4
  %shl.i = shl i32 %61, 29
  %holdoff_tmr.i = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 5
  %62 = ptrtoint ptr %holdoff_tmr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %holdoff_tmr.i, align 4
  %shl6.i = shl i32 %63, 16
  %or.i = or i32 %shl6.i, %shl.i
  %64 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cidx.i, align 4
  %or9.i = or i32 %or.i, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %66 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #11
  %67 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %66) #11, !srcloc !93
  br label %if.end

if.end10.i:                                       ; preds = %process_pure_responses.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %napi.i = getelementptr %struct.sge_qset, ptr %cookie, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #11
  br i1 %call.i.i, label %if.then.i29.i, label %if.end10.i.if.end_crit_edge

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i29.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi.i) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %unhandled_irqs = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 23
  %69 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %unhandled_irqs, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %unhandled_irqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then.i29.i, %if.end10.i.if.end_crit_edge, %if.then5.i
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_sge_intr_msix(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 128
  %lock = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %call = tail call fastcc i32 @process_responses(ptr noundef %1, ptr noundef %cookie, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %unhandled_irqs = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 23
  %2 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unhandled_irqs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %unhandled_irqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cntxt_id = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 10
  %4 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntxt_id, align 4
  %shl = shl i32 %5, 29
  %next_holdoff = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %next_holdoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_holdoff, align 4
  %shl2 = shl i32 %7, 16
  %or = or i32 %shl2, %shl
  %cidx = getelementptr inbounds %struct.sge_qset, ptr %cookie, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cidx, align 4
  %or4 = or i32 %or, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %10 = tail call i32 @llvm.bswap.i32(i32 %or4) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #11, !srcloc !93
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_intr_msi_napi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %napi.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 1
  %state.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.rspq_check_napi.exit_crit_edge

entry.rspq_check_napi.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit

land.lhs.true.i:                                  ; preds = %entry
  %desc.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %cidx.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx.i, align 4
  %intr_gen.i.i = getelementptr %struct.rsp_desc, ptr %3, i32 %5, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %intr_gen.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intr_gen.i.i, align 1
  %8 = and i8 %7, 1
  %and.i.i = zext i8 %8 to i32
  %gen.i.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %10, %and.i.i
  br i1 %cmp.i.not.i, label %if.then.i, label %land.lhs.true.i.rspq_check_napi.exit_crit_edge

land.lhs.true.i.rspq_check_napi.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #11
  br i1 %call.i.i, label %if.then.i.i, label %if.then.i.rspq_check_napi.exit_crit_edge

if.then.i.rspq_check_napi.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi.i) #11
  br label %rspq_check_napi.exit

rspq_check_napi.exit:                             ; preds = %if.then.i.i, %if.then.i.rspq_check_napi.exit_crit_edge, %land.lhs.true.i.rspq_check_napi.exit_crit_edge, %entry.rspq_check_napi.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %land.lhs.true.i.rspq_check_napi.exit_crit_edge ], [ 0, %entry.rspq_check_napi.exit_crit_edge ], [ 1, %if.then.i.rspq_check_napi.exit_crit_edge ], [ 1, %if.then.i.i ]
  %nports = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 9
  %11 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %rspq_check_napi.exit.if.end_crit_edge

rspq_check_napi.exit.if.end_crit_edge:            ; preds = %rspq_check_napi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rspq_check_napi.exit
  %napi.i20 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 1
  %state.i.i21 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %state.i.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i21, align 4
  %and1.i.i.i22 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i22)
  %tobool.not.i23 = icmp eq i32 %and1.i.i.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i30, label %if.then.rspq_check_napi.exit35_crit_edge

if.then.rspq_check_napi.exit35_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit35

land.lhs.true.i30:                                ; preds = %if.then
  %desc.i24 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 8
  %15 = ptrtoint ptr %desc.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i24, align 4
  %cidx.i25 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %17 = ptrtoint ptr %cidx.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cidx.i25, align 4
  %intr_gen.i.i26 = getelementptr %struct.rsp_desc, ptr %16, i32 %18, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %intr_gen.i.i26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %intr_gen.i.i26, align 1
  %21 = and i8 %20, 1
  %and.i.i27 = zext i8 %21 to i32
  %gen.i.i28 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 3
  %22 = ptrtoint ptr %gen.i.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gen.i.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i.i27)
  %cmp.i.not.i29 = icmp eq i32 %23, %and.i.i27
  br i1 %cmp.i.not.i29, label %if.then.i32, label %land.lhs.true.i30.rspq_check_napi.exit35_crit_edge

land.lhs.true.i30.rspq_check_napi.exit35_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit35

if.then.i32:                                      ; preds = %land.lhs.true.i30
  %call.i.i31 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i20) #11
  br i1 %call.i.i31, label %if.then.i.i33, label %if.then.i32.rspq_check_napi.exit35_crit_edge

if.then.i32.rspq_check_napi.exit35_crit_edge:     ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rspq_check_napi.exit35

if.then.i.i33:                                    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi.i20) #11
  br label %rspq_check_napi.exit35

rspq_check_napi.exit35:                           ; preds = %if.then.i.i33, %if.then.i32.rspq_check_napi.exit35_crit_edge, %land.lhs.true.i30.rspq_check_napi.exit35_crit_edge, %if.then.rspq_check_napi.exit35_crit_edge
  %retval.0.i34 = phi i32 [ 0, %land.lhs.true.i30.rspq_check_napi.exit35_crit_edge ], [ 0, %if.then.rspq_check_napi.exit35_crit_edge ], [ 1, %if.then.i32.rspq_check_napi.exit35_crit_edge ], [ 1, %if.then.i.i33 ]
  %add = add nuw nsw i32 %retval.0.i34, %retval.0.i
  br label %if.end

if.end:                                           ; preds = %rspq_check_napi.exit35, %rspq_check_napi.exit.if.end_crit_edge
  %new_packets.0 = phi i32 [ %add, %rspq_check_napi.exit35 ], [ %retval.0.i, %rspq_check_napi.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_packets.0)
  %tobool.not = icmp eq i32 %new_packets.0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %unhandled_irqs = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 23
  %24 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unhandled_irqs, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %unhandled_irqs, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_intr_msi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16
  %lock = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %call = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %sge, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cntxt_id = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cntxt_id, align 4
  %shl = shl i32 %1, 29
  %next_holdoff = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %next_holdoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_holdoff, align 4
  %shl4 = shl i32 %3, 16
  %or = or i32 %shl4, %shl
  %cidx = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cidx, align 4
  %or6 = or i32 %or, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or6) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #11, !srcloc !93
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nports = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 9
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %arrayidx9 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1
  %call10 = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %arrayidx9, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end25_crit_edge, label %if.end25.thread

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %cntxt_id17 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 10
  %11 = ptrtoint ptr %cntxt_id17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cntxt_id17, align 4
  %shl18 = shl i32 %12, 29
  %next_holdoff19 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 6
  %13 = ptrtoint ptr %next_holdoff19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_holdoff19, align 4
  %shl20 = shl i32 %14, 16
  %or21 = or i32 %shl20, %shl18
  %cidx22 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %15 = ptrtoint ptr %cidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cidx22, align 4
  %or24 = or i32 %or21, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or24) #11
  %regs.i49 = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #11, !srcloc !93
  br label %if.end31

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  br i1 %tobool.not, label %land.lhs.true27, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true27:                                  ; preds = %if.end25
  %call28 = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %land.lhs.true27.if.end31_crit_edge

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  %unhandled_irqs = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 23
  %20 = ptrtoint ptr %unhandled_irqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unhandled_irqs, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %unhandled_irqs, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true27.if.end31_crit_edge, %if.end25.if.end31_crit_edge, %if.end25.thread
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3b_intr_napi(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !93
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #11, !srcloc !102
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool4.not = icmp sgt i32 %5, -1
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then11, !prof !88

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %and14 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then22, !prof !86

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end13
  %napi = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 1
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #11
  br i1 %call.i, label %if.then.i, label %if.then22.if.end23_crit_edge

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.then22.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %and24 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %napi30 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 1
  %call.i47 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi30) #11
  br i1 %call.i47, label %if.then.i48, label %if.then26.if.end31_crit_edge

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then.i48:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__napi_schedule(ptr noundef %napi30) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then.i48, %if.then26.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3b_intr(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !93
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #11, !srcloc !102
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !86

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool4.not = icmp sgt i32 %5, -1
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then11, !prof !88

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %and14 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end24_crit_edge, label %if.then22, !prof !86

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16
  %call1.i = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %add.ptr.i.i, i32 noundef -1) #11
  %cntxt_id.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 10
  %6 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntxt_id.i, align 4
  %shl.i = shl i32 %7, 29
  %next_holdoff.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %next_holdoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_holdoff.i, align 4
  %shl2.i = shl i32 %9, 16
  %or.i = or i32 %shl2.i, %shl.i
  %cidx.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cidx.i, align 4
  %or4.i = or i32 %or.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #11
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %12) #11, !srcloc !93
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end13.if.end24_crit_edge
  %and25 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end33_crit_edge, label %if.then27

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i50 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1
  %call1.i51 = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %add.ptr.i.i50, i32 noundef -1) #11
  %cntxt_id.i52 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 10
  %15 = ptrtoint ptr %cntxt_id.i52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cntxt_id.i52, align 4
  %shl.i53 = shl i32 %16, 29
  %next_holdoff.i54 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 6
  %17 = ptrtoint ptr %next_holdoff.i54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next_holdoff.i54, align 4
  %shl2.i55 = shl i32 %18, 16
  %or.i56 = or i32 %shl2.i55, %shl.i53
  %cidx.i57 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %19 = ptrtoint ptr %cidx.i57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cidx.i57, align 4
  %or4.i58 = or i32 %or.i56, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or4.i58) #11
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1.i60 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i60, i32 %21) #11, !srcloc !93
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end24.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t3_intr(i32 noundef %irq, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %desc = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cidx = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cidx, align 4
  %intr_gen.i = getelementptr %struct.rsp_desc, ptr %1, i32 %3, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %intr_gen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %intr_gen.i, align 1
  %6 = and i8 %5, 1
  %and.i = zext i8 %6 to i32
  %gen.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and.i)
  %cmp.i = icmp eq i32 %8, %and.i
  %nports = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 10, i32 9
  %9 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc6 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 8
  %11 = ptrtoint ptr %desc6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc6, align 4
  %cidx7 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %13 = ptrtoint ptr %cidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cidx7, align 4
  %intr_gen.i51 = getelementptr %struct.rsp_desc, ptr %12, i32 %14, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %intr_gen.i51 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %intr_gen.i51, align 1
  %17 = and i8 %16, 1
  %and.i52 = zext i8 %17 to i32
  %gen.i53 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 3
  %18 = ptrtoint ptr %gen.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gen.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and.i52)
  %cmp.i54 = icmp eq i32 %19, %and.i52
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %20 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp.i54, %land.rhs ]
  %or69 = or i1 %cmp.i, %20
  br i1 %or69, label %if.then, label %if.else, !prof !88

if.then:                                          ; preds = %land.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !93
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %24, i32 1784
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #11, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  br i1 %cmp.i, label %if.then21, label %if.then.if.end_crit_edge, !prof !88

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16
  %call1.i = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %add.ptr.i.i, i32 noundef -1) #11
  %cntxt_id.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cntxt_id.i, align 4
  %shl.i = shl i32 %27, 29
  %next_holdoff.i = getelementptr inbounds %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %next_holdoff.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_holdoff.i, align 4
  %shl2.i = shl i32 %29, 16
  %or.i = or i32 %shl2.i, %shl.i
  %30 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cidx, align 4
  %or4.i = or i32 %or.i, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #11
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %32) #11, !srcloc !93
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  br i1 %20, label %if.then24, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i58 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1
  %call1.i59 = tail call fastcc i32 @process_responses(ptr noundef %cookie, ptr noundef %add.ptr.i.i58, i32 noundef -1) #11
  %cntxt_id.i60 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 10
  %35 = ptrtoint ptr %cntxt_id.i60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cntxt_id.i60, align 4
  %shl.i61 = shl i32 %36, 29
  %next_holdoff.i62 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 6
  %37 = ptrtoint ptr %next_holdoff.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %next_holdoff.i62, align 4
  %shl2.i63 = shl i32 %38, 16
  %or.i64 = or i32 %shl2.i63, %shl.i61
  %cidx.i65 = getelementptr %struct.adapter, ptr %cookie, i32 0, i32 16, i32 0, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %cidx.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cidx.i65, align 4
  %or4.i66 = or i32 %or.i64, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %or4.i66) #11
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i1.i68 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i68, i32 %41) #11, !srcloc !93
  br label %if.end29

if.else:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 @t3_slow_intr_handler(ptr noundef %cookie) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %phi.cmp = icmp ne i32 %call28, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24, %if.end.if.end29_crit_edge
  %work_done.0 = phi i32 [ %phi.cast, %if.else ], [ 1, %if.then24 ], [ 1, %if.end.if.end29_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 %work_done.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_err_intr_handler(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  %and = and i32 %3, -3
  %and1 = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %and1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and3 = and i32 %3, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %do.end8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev9 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev9, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev10, ptr noundef nonnull @.str.9, i32 noundef %and3) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end8, %if.end.if.end12_crit_edge
  %and13 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %do.end18

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %pdev19 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev20, ptr noundef nonnull @.str.12) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end12.if.end21_crit_edge
  %and22 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %if.then24

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %11, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #11, !srcloc !102
  %13 = lshr i32 %12, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  %pdev29 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %14 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev29, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %and31 = and i32 %13, 255
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev30, ptr noundef nonnull @.str.15, i32 noundef %and31) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end21.if.end32_crit_edge
  %and33 = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %if.then35

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cxgb3_wq to i32))
  %16 = load ptr, ptr @cxgb3_wq, align 4
  %db_drop_task = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 29
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %db_drop_task) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %and38 = and i32 %3, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cxgb3_wq to i32))
  %17 = load ptr, ptr @cxgb3_wq, align 4
  %db_full_task = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 27
  %call.i74 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %db_full_task) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %and43 = and i32 %3, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cxgb3_wq to i32))
  %18 = load ptr, ptr @cxgb3_wq, align 4
  %db_empty_task = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 28
  %call.i75 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %db_empty_task) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %21, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %19) #11, !srcloc !93
  %and48 = and i32 %3, -16372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @t3_fatal_err(ptr noundef %adapter) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_fatal_err(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @t3_update_qset_coalesce(ptr nocapture noundef writeonly %qs, ptr nocapture noundef readonly %p) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %coalesce_usecs = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coalesce_usecs, align 4
  %mul = mul i32 %1, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp eq i32 %mul, 0
  %.mul = select i1 %cmp.not, i32 1, i32 %mul
  %holdoff_tmr = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %holdoff_tmr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.mul, ptr %holdoff_tmr, align 4
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p, align 4
  %polling2 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %polling2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %polling2, align 8
  %6 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond4 = select i1 %tobool.not, ptr @ofld_poll, ptr @napi_rx_handler
  %poll = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond4, ptr %poll, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @napi_rx_handler(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %call = tail call fastcc i32 @process_responses(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #11
  %cntxt_id = getelementptr i8, ptr %napi, i32 264
  %2 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cntxt_id, align 8
  %shl = shl i32 %3, 29
  %next_holdoff = getelementptr i8, ptr %napi, i32 248
  %4 = ptrtoint ptr %next_holdoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_holdoff, align 8
  %shl5 = shl i32 %5, 16
  %or = or i32 %shl5, %shl
  %cidx = getelementptr i8, ptr %napi, i32 232
  %6 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cidx, align 8
  %or8 = or i32 %or, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or8) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !93
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ofld_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %skbs = alloca [8 x ptr], align 4
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %lock = getelementptr i8, ptr %napi, i32 268
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %queue, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %rx_queue = getelementptr i8, ptr %napi, i32 312
  %prev2.i.i = getelementptr i8, ptr %napi, i32 316
  %qlen.i61 = getelementptr i8, ptr %napi, i32 320
  %offload_bundles = getelementptr i8, ptr %napi, i32 376
  %recv = getelementptr inbounds %struct.t3cdev, ptr %1, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp93 = icmp sgt i32 %budget, 0
  br i1 %cmp93, label %entry.while.body_crit_edge, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %work_done.094 = phi i32 [ %work_done.1.lcssa, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %skbs) #11
  %2 = call ptr @memset(ptr %skbs, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #11
  %3 = call ptr @memset(ptr %queue, i32 255, i32 56)
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %queue, align 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue, ptr %prev.i, align 4
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %7 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_queue, align 4
  %cmp.i.not.i = icmp eq ptr %8, %rx_queue
  br i1 %cmp.i.not.i, label %while.body.skb_queue_splice_init.exit_crit_edge, label %if.then.i

while.body.skb_queue_splice_init.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %queue, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %queue, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue, ptr %10, align 8
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %prev.i, align 4
  %15 = ptrtoint ptr %qlen.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i61, align 4
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %qlen.i, align 4
  %19 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_queue, ptr %rx_queue, align 4
  store ptr %rx_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i61, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %while.body.skb_queue_splice_init.exit_crit_edge
  %20 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %21, %queue
  br i1 %cmp.i.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.094) #11
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %skbs) #11
  br label %cleanup31

if.end:                                           ; preds = %skb_queue_splice_init.exit
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %22 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue, align 4
  %cmp6.not79.not = icmp eq ptr %23, %queue
  br i1 %cmp6.not79.not, label %if.end.for.end_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  br label %if.end9

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end9:                                          ; preds = %for.inc.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ngathered.084 = phi i32 [ %ngathered.1, %for.inc.if.end9_crit_edge ], [ 0, %if.end.if.end9_crit_edge ]
  %skb.083 = phi ptr [ %tmp1.085, %for.inc.if.end9_crit_edge ], [ %23, %if.end.if.end9_crit_edge ]
  %work_done.182 = phi i32 [ %inc, %for.inc.if.end9_crit_edge ], [ %work_done.094, %if.end.if.end9_crit_edge ]
  %24 = ptrtoint ptr %skb.083 to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp1.085 = load ptr, ptr %skb.083, align 8
  %inc = add nsw i32 %work_done.182, 1
  %25 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %26, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %27 = load ptr, ptr %skb.083, align 8
  %prev9.i = getelementptr inbounds %struct.anon, ptr %skb.083, i32 0, i32 1
  %28 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.083, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %prev17.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %29, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.083, i32 0, i32 19
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %33) #11, !srcloc !98
  %arrayidx = getelementptr [8 x ptr], ptr %skbs, i32 0, i32 %ngathered.084
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %skb.083, ptr %arrayidx, align 4
  %inc10 = add i32 %ngathered.084, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc10)
  %cmp11 = icmp eq i32 %inc10, 8
  br i1 %cmp11, label %if.then12, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %offload_bundles to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offload_bundles, align 4
  %inc13 = add i32 %36, 1
  store i32 %inc13, ptr %offload_bundles, align 4
  %37 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %recv, align 8
  %call15 = call i32 %38(ptr noundef %1, ptr noundef nonnull %skbs, i32 noundef 8) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end9.for.inc_crit_edge
  %ngathered.1 = phi i32 [ 0, %if.then12 ], [ %inc10, %if.end9.for.inc_crit_edge ]
  %cmp6.not = icmp ne ptr %tmp1.085, %queue
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp7.not = icmp slt i32 %inc, %budget
  %or.cond = select i1 %cmp6.not, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %for.inc.if.end9_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %work_done.1.lcssa = phi i32 [ %work_done.094, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %ngathered.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ngathered.1, %for.inc.for.end_crit_edge ]
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue, align 4
  %cmp.i63.not = icmp eq ptr %40, %queue
  br i1 %cmp.i63.not, label %for.end.if.end24_crit_edge, label %if.then20

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %for.end
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue, align 4
  %cmp.i.not.i65 = icmp eq ptr %42, %queue
  br i1 %cmp.i.not.i65, label %if.then20.skb_queue_splice.exit_crit_edge, label %if.then.i72

if.then20.skb_queue_splice.exit_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice.exit

if.then.i72:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_queue, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %prev5.i.i67 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev5.i.i67 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %rx_queue, ptr %prev5.i.i67, align 4
  store volatile ptr %42, ptr %rx_queue, align 8
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %46, align 8
  %prev35.i.i68 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev35.i.i68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %46, ptr %prev35.i.i68, align 4
  %50 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen.i, align 4
  %52 = ptrtoint ptr %qlen.i61 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qlen.i61, align 4
  %add.i71 = add i32 %53, %51
  store i32 %add.i71, ptr %qlen.i61, align 4
  br label %skb_queue_splice.exit

skb_queue_splice.exit:                            ; preds = %if.then.i72, %if.then20.skb_queue_splice.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %if.end24

if.end24:                                         ; preds = %skb_queue_splice.exit, %for.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngathered.0.lcssa)
  %tobool.not.i = icmp eq i32 %ngathered.0.lcssa, 0
  br i1 %tobool.not.i, label %if.end24.cleanup_crit_edge, label %if.then.i73

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i73:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %offload_bundles to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offload_bundles, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %offload_bundles, align 4
  %56 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %recv, align 4
  %call.i = call i32 %57(ptr noundef %1, ptr noundef nonnull %skbs, i32 noundef %ngathered.0.lcssa) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i73, %if.end24.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %skbs) #11
  %cmp = icmp slt i32 %work_done.1.lcssa, %budget
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup31_crit_edge

cleanup.cleanup31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup31:                                        ; preds = %cleanup.cleanup31_crit_edge, %cleanup.thread, %entry.cleanup31_crit_edge
  %work_done.092 = phi i32 [ %work_done.094, %cleanup.thread ], [ 0, %entry.cleanup31_crit_edge ], [ %work_done.1.lcssa, %cleanup.cleanup31_crit_edge ]
  ret i32 %work_done.092
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_sge_alloc_qset(ptr noundef %adapter, i32 noundef %id, i32 noundef %nports, i32 noundef %irq_vec_idx, ptr nocapture noundef readonly %p, i32 noundef %ntxq, ptr noundef %dev, ptr noundef %netdevq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16
  %arrayidx = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id
  %cntxt_id.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 10
  %0 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %cntxt_id.i, align 8
  %mul.i = shl i32 %id, 1
  %cntxt_id1.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 0, i32 14
  %1 = ptrtoint ptr %cntxt_id1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul.i, ptr %cntxt_id1.i, align 4
  %add.i = or i32 %mul.i, 1
  %cntxt_id5.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 14
  %2 = ptrtoint ptr %cntxt_id5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %cntxt_id5.i, align 4
  %add6.i = add i32 %id, 8
  %cntxt_id8.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 0, i32 17
  %3 = ptrtoint ptr %cntxt_id8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add6.i, ptr %cntxt_id8.i, align 4
  %add9.i = add i32 %id, 65544
  %token.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 0, i32 13
  %4 = ptrtoint ptr %token.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add9.i, ptr %token.i, align 4
  %cntxt_id15.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 17
  %5 = ptrtoint ptr %cntxt_id15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %id, ptr %cntxt_id15.i, align 4
  %add16.i = add i32 %id, 65528
  %cntxt_id19.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 17
  %6 = ptrtoint ptr %cntxt_id19.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add16.i, ptr %cntxt_id19.i, align 4
  %add20.i = add i32 %id, 65536
  %token23.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 13
  %7 = ptrtoint ptr %token23.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add20.i, ptr %token23.i, align 4
  %tx_reclaim_timer = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 10
  tail call void @init_timer_key(ptr noundef %tx_reclaim_timer, ptr noundef nonnull @sge_timer_tx, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @t3_sge_alloc_qset.__key) #11
  %rx_reclaim_timer = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 11
  tail call void @init_timer_key(ptr noundef %rx_reclaim_timer, ptr noundef nonnull @sge_timer_rx, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @t3_sge_alloc_qset.__key.18) #11
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %fl_size = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 3
  %10 = ptrtoint ptr %fl_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fl_size, align 4
  %fl = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3
  %phys_addr = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 13
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %mul.i461 = shl i32 %11, 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i461, ptr noundef %phys_addr, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.alloc_ring.exit.thread_crit_edge, label %if.end.i

entry.alloc_ring.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_ring.exit.thread

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %sdesc, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 24) #11
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.then3.i.if.then6.i_crit_edge, label %if.end7.i.i.i, !prof !86

if.then3.i.if.then6.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.end7.i.i.i:                                    ; preds = %if.then3.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #15
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.if.then6.i_crit_edge, label %if.end8.i

if.end7.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end7.i.i.i.if.then6.i_crit_edge, %if.then3.i.if.then6.i_crit_edge
  %15 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i461, ptr noundef nonnull %call.i.i, i32 noundef %16, i32 noundef 0) #11
  br label %alloc_ring.exit.thread

if.end8.i:                                        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %sdesc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i.i, ptr %sdesc, align 4
  br label %if.end

alloc_ring.exit.thread:                           ; preds = %if.then6.i, %entry.alloc_ring.exit.thread_crit_edge
  %desc568 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %18 = ptrtoint ptr %desc568 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %desc568, align 4
  br label %err

if.end:                                           ; preds = %if.end8.i, %if.end.i.if.end_crit_edge
  %desc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 11
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %desc, align 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %jumbo_size = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 4
  %22 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jumbo_size, align 4
  %arrayidx14 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1
  %phys_addr15 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 13
  %sdesc18 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 12
  %mul.i462 = shl i32 %23, 4
  %dev.i463 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call.i.i464 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i463, i32 noundef %mul.i462, ptr noundef %phys_addr15, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i465 = icmp eq ptr %call.i.i464, null
  br i1 %tobool.not.i465, label %if.end.alloc_ring.exit507.thread_crit_edge, label %if.end.i467

if.end.alloc_ring.exit507.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_ring.exit507.thread

if.end.i467:                                      ; preds = %if.end
  %tobool2.not.i466 = icmp eq ptr %sdesc18, null
  br i1 %tobool2.not.i466, label %if.end.i467.if.end28_crit_edge, label %if.then3.i468

if.end.i467.if.end28_crit_edge:                   ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then3.i468:                                    ; preds = %if.end.i467
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 24) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.then3.i468.if.then6.i503_crit_edge, label %if.end7.i.i.i499, !prof !86

if.then3.i468.if.then6.i503_crit_edge:            ; preds = %if.then3.i468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i503

if.end7.i.i.i499:                                 ; preds = %if.then3.i468
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i.i.i498 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #15
  %tobool5.not.i501 = icmp eq ptr %call8.i.i.i498, null
  br i1 %tobool5.not.i501, label %if.end7.i.i.i499.if.then6.i503_crit_edge, label %if.end8.i505

if.end7.i.i.i499.if.then6.i503_crit_edge:         ; preds = %if.end7.i.i.i499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i503

if.then6.i503:                                    ; preds = %if.end7.i.i.i499.if.then6.i503_crit_edge, %if.then3.i468.if.then6.i503_crit_edge
  %27 = ptrtoint ptr %phys_addr15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_addr15, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i463, i32 noundef %mul.i462, ptr noundef nonnull %call.i.i464, i32 noundef %28, i32 noundef 0) #11
  br label %alloc_ring.exit507.thread

if.end8.i505:                                     ; preds = %if.end7.i.i.i499
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %sdesc18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i.i498, ptr %sdesc18, align 4
  br label %if.end28

alloc_ring.exit507.thread:                        ; preds = %if.then6.i503, %if.end.alloc_ring.exit507.thread_crit_edge
  %desc22571 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 11
  %30 = ptrtoint ptr %desc22571 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %desc22571, align 4
  br label %err

if.end28:                                         ; preds = %if.end8.i505, %if.end.i467.if.end28_crit_edge
  %desc22 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 11
  %31 = ptrtoint ptr %desc22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i464, ptr %desc22, align 4
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %rspq_size = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 2
  %34 = ptrtoint ptr %rspq_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rspq_size, align 4
  %rspq = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2
  %phys_addr30 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 9
  %mul.i508 = shl i32 %35, 6
  %dev.i509 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call.i.i510 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i509, i32 noundef %mul.i508, ptr noundef %phys_addr30, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i511 = icmp eq ptr %call.i.i510, null
  %desc33574 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 8
  br i1 %tobool.not.i511, label %alloc_ring.exit514.thread, label %alloc_ring.exit514

alloc_ring.exit514.thread:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %desc33574 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %desc33574, align 8
  br label %err

alloc_ring.exit514:                               ; preds = %if.end28
  %37 = ptrtoint ptr %desc33574 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i510, ptr %desc33574, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ntxq)
  %cmp588 = icmp sgt i32 %ntxq, 0
  br i1 %cmp588, label %alloc_ring.exit514.for.body_crit_edge, label %alloc_ring.exit514.flits_to_desc.exit_crit_edge

alloc_ring.exit514.flits_to_desc.exit_crit_edge:  ; preds = %alloc_ring.exit514
  call void @__sanitizer_cov_trace_pc() #13
  br label %flits_to_desc.exit

alloc_ring.exit514.for.body_crit_edge:            ; preds = %alloc_ring.exit514
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %alloc_ring.exit514.for.body_crit_edge
  %i.0589 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %alloc_ring.exit514.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0589)
  %cmp39 = icmp eq i32 %i.0589, 2
  %cond = select i1 %cmp39, i32 0, i32 8
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %arrayidx41 = getelementptr %struct.qset_params, ptr %p, i32 0, i32 5, i32 %i.0589
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx41, align 4
  %phys_addr43 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 14
  %sdesc46 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 11
  %mul.i515 = shl i32 %41, 7
  %dev.i516 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call.i.i517 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i516, i32 noundef %mul.i515, ptr noundef %phys_addr43, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i518 = icmp eq ptr %call.i.i517, null
  br i1 %tobool.not.i518, label %for.body.cleanup_crit_edge, label %if.end.i520

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i520:                                      ; preds = %for.body
  %tobool2.not.i519 = icmp eq ptr %sdesc46, null
  %or.cond.i = or i1 %cmp39, %tobool2.not.i519
  br i1 %or.cond.i, label %if.end.i520.for.inc_crit_edge, label %if.then3.i521

if.end.i520.for.inc_crit_edge:                    ; preds = %if.end.i520
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then3.i521:                                    ; preds = %if.end.i520
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 %cond) #11
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.then3.i521.if.then6.i556_crit_edge, label %if.end7.i.i.i552, !prof !86

if.then3.i521.if.then6.i556_crit_edge:            ; preds = %if.then3.i521
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i556

if.end7.i.i.i552:                                 ; preds = %if.then3.i521
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i551 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #15
  %tobool5.not.i554 = icmp eq ptr %call8.i.i.i551, null
  br i1 %tobool5.not.i554, label %if.end7.i.i.i552.if.then6.i556_crit_edge, label %if.end8.i558

if.end7.i.i.i552.if.then6.i556_crit_edge:         ; preds = %if.end7.i.i.i552
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i556

if.then6.i556:                                    ; preds = %if.end7.i.i.i552.if.then6.i556_crit_edge, %if.then3.i521.if.then6.i556_crit_edge
  %45 = ptrtoint ptr %phys_addr43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys_addr43, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i516, i32 noundef %mul.i515, ptr noundef nonnull %call.i.i517, i32 noundef %46, i32 noundef 0) #11
  br label %cleanup

if.end8.i558:                                     ; preds = %if.end7.i.i.i552
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %sdesc46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i.i551, ptr %sdesc46, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then6.i556, %for.body.cleanup_crit_edge
  %desc50577 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 10
  %48 = ptrtoint ptr %desc50577 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %desc50577, align 4
  br label %err

for.inc:                                          ; preds = %if.end8.i558, %if.end.i520.for.inc_crit_edge
  %desc50 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 10
  %49 = ptrtoint ptr %desc50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i517, ptr %desc50, align 4
  %gen = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 8
  %50 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %gen, align 4
  %51 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx41, align 4
  %size = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 2
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %size, align 4
  %lock = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @t3_sge_alloc_qset.__key.20, i16 noundef signext 3) #11
  %sendq = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 15
  %lock.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 15, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %54 = ptrtoint ptr %sendq to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %sendq, ptr %sendq, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.95, ptr %sendq, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sendq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 %i.0589, i32 15, i32 1
  %56 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %qlen.i.i, align 4
  %inc = add nuw nsw i32 %i.0589, 1
  %exitcond.not = icmp eq i32 %inc, %ntxq
  br i1 %exitcond.not, label %for.inc.flits_to_desc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.flits_to_desc.exit_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %flits_to_desc.exit

flits_to_desc.exit:                               ; preds = %for.inc.flits_to_desc.exit_crit_edge, %alloc_ring.exit514.flits_to_desc.exit_crit_edge
  %txq72 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4
  %qresume_task = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 16
  tail call void @__init_work(ptr noundef %qresume_task, i32 noundef 0) #11
  %57 = ptrtoint ptr %qresume_task to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %qresume_task, align 4
  %lockdep_map = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @t3_sge_alloc_qset.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry83 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 16, i32 1
  %58 = ptrtoint ptr %entry83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry83, ptr %entry83, align 4
  %prev.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 16, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry83, ptr %prev.i, align 4
  %func = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 16, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @restart_offloadq, ptr %func, align 4
  %qresume_task92 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 16
  tail call void @__init_work(ptr noundef %qresume_task92, i32 noundef 0) #11
  %61 = ptrtoint ptr %qresume_task92 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %qresume_task92, align 4
  %lockdep_map102 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map102, ptr noundef nonnull @.str.25, ptr noundef nonnull @t3_sge_alloc_qset.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry106 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 16, i32 1
  %62 = ptrtoint ptr %entry106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry106, ptr %entry106, align 4
  %prev.i561 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 16, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i561 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry106, ptr %prev.i561, align 4
  %func110 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 16, i32 2
  %64 = ptrtoint ptr %func110 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @restart_ctrlq, ptr %func110, align 4
  %gen115 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 6
  %65 = ptrtoint ptr %gen115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %gen115, align 4
  %gen118 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 6
  %66 = ptrtoint ptr %gen118 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %gen118, align 4
  %67 = ptrtoint ptr %fl_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fl_size, align 4
  %size122 = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 3
  %69 = ptrtoint ptr %size122 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %size122, align 4
  %70 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %jumbo_size, align 4
  %size126 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 3
  %72 = ptrtoint ptr %size126 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %size126, align 4
  %gen128 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 3
  %73 = ptrtoint ptr %gen128 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %gen128, align 4
  %74 = ptrtoint ptr %rspq_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rspq_size, align 4
  %size131 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 1
  %76 = ptrtoint ptr %size131 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %size131, align 4
  %lock134 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock134, ptr noundef nonnull @.str.27, ptr noundef nonnull @t3_sge_alloc_qset.__key.26, i16 noundef signext 3) #11
  %rx_queue = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 12
  %lock.i562 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i562, ptr noundef nonnull @.str.41, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %77 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i563 = getelementptr inbounds %struct.anon.95, ptr %rx_queue, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i563 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rx_queue, ptr %prev.i.i563, align 4
  %qlen.i.i564 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 12, i32 1
  %79 = ptrtoint ptr %qlen.i.i564 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %qlen.i.i564, align 4
  %mul = mul i32 %nports, 3
  %stop_thres = getelementptr inbounds %struct.sge_txq, ptr %txq72, i32 0, i32 5
  %80 = ptrtoint ptr %stop_thres to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul, ptr %stop_thres, align 4
  %81 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2048, ptr %fl, align 4
  %82 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8192, ptr %arrayidx14, align 4
  %use_pages = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 8
  %83 = ptrtoint ptr %use_pages to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %use_pages, align 4
  %use_pages152 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 8
  %84 = ptrtoint ptr %use_pages152 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %use_pages152, align 4
  %order = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 9
  %85 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %order, align 4
  %order157 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 9
  %86 = ptrtoint ptr %order157 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %order157, align 4
  %alloc_size = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %87 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4096, ptr %alloc_size, align 4
  %alloc_size162 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 1, i32 10
  %88 = ptrtoint ptr %alloc_size162 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8192, ptr %alloc_size162, align 4
  %reg_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %89 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cntxt_id.i, align 8
  %91 = ptrtoint ptr %phys_addr30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phys_addr30, align 4
  %conv = zext i32 %92 to i64
  %93 = ptrtoint ptr %size131 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size131, align 4
  %95 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fl, align 4
  %sub = add i32 %96, -128
  %call172 = tail call i32 @t3_sge_init_rspcntxt(ptr noundef %adapter, i32 noundef %90, i32 noundef %irq_vec_idx, i64 noundef %conv, i32 noundef %94, i32 noundef %sub, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %for.cond176.preheader, label %flits_to_desc.exit.err_unlock_crit_edge

flits_to_desc.exit.err_unlock_crit_edge:          ; preds = %flits_to_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

for.cond176.preheader:                            ; preds = %flits_to_desc.exit
  %cong_thres = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 6
  %97 = ptrtoint ptr %cntxt_id1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cntxt_id1.i, align 4
  %phys_addr185 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 0, i32 13
  %99 = ptrtoint ptr %phys_addr185 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %phys_addr185, align 4
  %conv186 = zext i32 %100 to i64
  %size189 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 3, i32 0, i32 3
  %101 = ptrtoint ptr %size189 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size189, align 4
  %103 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fl, align 4
  %sub193 = add i32 %104, -128
  %105 = ptrtoint ptr %cong_thres to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cong_thres, align 4
  %call194 = tail call i32 @t3_sge_init_flcntxt(ptr noundef %adapter, i32 noundef %98, i32 noundef 0, i64 noundef %conv186, i32 noundef %102, i32 noundef %sub193, i32 noundef %106, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %for.cond176, label %for.cond176.preheader.err_unlock_crit_edge

for.cond176.preheader.err_unlock_crit_edge:       ; preds = %for.cond176.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

for.cond176:                                      ; preds = %for.cond176.preheader
  %107 = ptrtoint ptr %cntxt_id5.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cntxt_id5.i, align 4
  %109 = ptrtoint ptr %phys_addr15 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %phys_addr15, align 4
  %conv186.1 = zext i32 %110 to i64
  %111 = ptrtoint ptr %size126 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size126, align 4
  %113 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx14, align 4
  %sub193.1 = add i32 %114, -128
  %115 = ptrtoint ptr %cong_thres to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cong_thres, align 4
  %call194.1 = tail call i32 @t3_sge_init_flcntxt(ptr noundef %adapter, i32 noundef %108, i32 noundef 0, i64 noundef %conv186.1, i32 noundef %112, i32 noundef %sub193.1, i32 noundef %116, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.1)
  %tobool195.not.1 = icmp eq i32 %call194.1, 0
  br i1 %tobool195.not.1, label %for.cond176.1, label %for.cond176.err_unlock_crit_edge

for.cond176.err_unlock_crit_edge:                 ; preds = %for.cond176
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

for.cond176.1:                                    ; preds = %for.cond176
  %cntxt_id203 = getelementptr inbounds %struct.sge_txq, ptr %txq72, i32 0, i32 17
  %117 = ptrtoint ptr %cntxt_id203 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cntxt_id203, align 4
  %phys_addr206 = getelementptr inbounds %struct.sge_txq, ptr %txq72, i32 0, i32 14
  %119 = ptrtoint ptr %phys_addr206 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %phys_addr206, align 4
  %conv207 = zext i32 %120 to i64
  %size210 = getelementptr inbounds %struct.sge_txq, ptr %txq72, i32 0, i32 2
  %121 = ptrtoint ptr %size210 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size210, align 4
  %token = getelementptr inbounds %struct.sge_txq, ptr %txq72, i32 0, i32 13
  %123 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %token, align 4
  %call213 = tail call i32 @t3_sge_init_ecntxt(ptr noundef %adapter, i32 noundef %118, i32 noundef 0, i32 noundef 2, i32 noundef %id, i64 noundef %conv207, i32 noundef %122, i32 noundef %124, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end216, label %for.cond176.1.err_unlock_crit_edge

for.cond176.1.err_unlock_crit_edge:               ; preds = %for.cond176.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end216:                                        ; preds = %for.cond176.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ntxq)
  %cmp217 = icmp sgt i32 %ntxq, 1
  br i1 %cmp217, label %if.then219, label %if.end216.if.end255_crit_edge

if.end216.if.end255_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.then219:                                       ; preds = %if.end216
  %125 = ptrtoint ptr %cntxt_id15.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cntxt_id15.i, align 4
  %phys_addr225 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 14
  %127 = ptrtoint ptr %phys_addr225 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %phys_addr225, align 4
  %conv226 = zext i32 %128 to i64
  %size229 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 1, i32 2
  %129 = ptrtoint ptr %size229 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size229, align 4
  %call230 = tail call i32 @t3_sge_init_ecntxt(ptr noundef %adapter, i32 noundef %126, i32 noundef 0, i32 noundef 4, i32 noundef %id, i64 noundef %conv226, i32 noundef %130, i32 noundef 0, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end234, label %if.then219.err_unlock_crit_edge

if.then219.err_unlock_crit_edge:                  ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end234:                                        ; preds = %if.then219
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ntxq)
  %cmp235 = icmp ugt i32 %ntxq, 2
  br i1 %cmp235, label %if.then237, label %if.end234.if.end255_crit_edge

if.end234.if.end255_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.then237:                                       ; preds = %if.end234
  %131 = ptrtoint ptr %cntxt_id19.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cntxt_id19.i, align 4
  %phys_addr243 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 14
  %133 = ptrtoint ptr %phys_addr243 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %phys_addr243, align 4
  %conv244 = zext i32 %134 to i64
  %size247 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 4, i32 2, i32 2
  %135 = ptrtoint ptr %size247 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %size247, align 4
  %137 = ptrtoint ptr %token23.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %token23.i, align 4
  %call251 = tail call i32 @t3_sge_init_ecntxt(ptr noundef %adapter, i32 noundef %132, i32 noundef 0, i32 noundef 5, i32 noundef %id, i64 noundef %conv244, i32 noundef %136, i32 noundef %138, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then237.if.end255_crit_edge, label %if.then237.err_unlock_crit_edge

if.then237.err_unlock_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.then237.if.end255_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.end255:                                        ; preds = %if.then237.if.end255_crit_edge, %if.end234.if.end255_crit_edge, %if.end216.if.end255_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  %139 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %adapter, ptr %arrayidx, align 128
  %netdev = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 7
  %140 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %dev, ptr %netdev, align 8
  %tx_q = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 8
  %141 = ptrtoint ptr %tx_q to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %netdevq, ptr %tx_q, align 4
  %coalesce_usecs.i = getelementptr inbounds %struct.qset_params, ptr %p, i32 0, i32 1
  %142 = ptrtoint ptr %coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %coalesce_usecs.i, align 4
  %mul.i565 = mul i32 %143, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i565)
  %cmp.not.i = icmp eq i32 %mul.i565, 0
  %.mul.i = select i1 %cmp.not.i, i32 1, i32 %mul.i565
  %holdoff_tmr.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 5
  %144 = ptrtoint ptr %holdoff_tmr.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %.mul.i, ptr %holdoff_tmr.i, align 4
  %145 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %p, align 4
  %polling2.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 2, i32 4
  %147 = ptrtoint ptr %polling2.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %polling2.i, align 8
  %148 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i566 = icmp eq i32 %148, 0
  %cond4.i = select i1 %tobool.not.i566, ptr @ofld_poll, ptr @napi_rx_handler
  %poll.i = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %id, i32 1, i32 5
  %149 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %cond4.i, ptr %poll.i, align 8
  %150 = ptrtoint ptr %size122 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size122, align 4
  %call263 = tail call fastcc i32 @refill_fl(ptr noundef %adapter, ptr noundef %fl, i32 noundef %151, i32 noundef 265408)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %do.end268, label %if.end271

do.end268:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdev, align 8
  %dev270 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev270, ptr noundef nonnull @.str.28) #14
  br label %err

if.end271:                                        ; preds = %if.end255
  %154 = ptrtoint ptr %size122 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call263, i32 %155)
  %cmp275 = icmp ult i32 %call263, %155
  br i1 %cmp275, label %do.end280, label %if.end271.if.end283_crit_edge

if.end271.if.end283_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end283

do.end280:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev, align 8
  %dev282 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev282, ptr noundef nonnull @.str.31, i32 noundef %call263) #14
  br label %if.end283

if.end283:                                        ; preds = %do.end280, %if.end271.if.end283_crit_edge
  %158 = ptrtoint ptr %size126 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %size126, align 4
  %call289 = tail call fastcc i32 @refill_fl(ptr noundef %adapter, ptr noundef %arrayidx14, i32 noundef %159, i32 noundef 265408)
  %160 = ptrtoint ptr %size126 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %size126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call289, i32 %161)
  %cmp293 = icmp ult i32 %call289, %161
  br i1 %cmp293, label %do.end298, label %if.end283.if.end301_crit_edge

if.end283.if.end301_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end301

do.end298:                                        ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #13
  %162 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev, align 8
  %dev300 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev300, ptr noundef nonnull @.str.35, i32 noundef %call289) #14
  br label %if.end301

if.end301:                                        ; preds = %do.end298, %if.end283.if.end301_crit_edge
  %164 = ptrtoint ptr %size131 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size131, align 4
  %sub305 = add i32 %165, -1
  tail call fastcc void @refill_rspq(ptr noundef %adapter, ptr noundef %rspq, i32 noundef %sub305)
  %166 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cntxt_id.i, align 8
  %shl = shl i32 %167, 29
  %168 = ptrtoint ptr %holdoff_tmr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %holdoff_tmr.i, align 4
  %shl309 = shl i32 %169, 16
  %or = or i32 %shl309, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %170 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %171 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %172, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %170) #11, !srcloc !93
  br label %cleanup312

err_unlock:                                       ; preds = %if.then237.err_unlock_crit_edge, %if.then219.err_unlock_crit_edge, %for.cond176.1.err_unlock_crit_edge, %for.cond176.err_unlock_crit_edge, %for.cond176.preheader.err_unlock_crit_edge, %flits_to_desc.exit.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call172, %flits_to_desc.exit.err_unlock_crit_edge ], [ %call213, %for.cond176.1.err_unlock_crit_edge ], [ %call230, %if.then219.err_unlock_crit_edge ], [ %call251, %if.then237.err_unlock_crit_edge ], [ %call194, %for.cond176.preheader.err_unlock_crit_edge ], [ %call194.1, %for.cond176.err_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  br label %err

err:                                              ; preds = %err_unlock, %do.end268, %cleanup, %alloc_ring.exit514.thread, %alloc_ring.exit507.thread, %alloc_ring.exit.thread
  %ret.1 = phi i32 [ -12, %cleanup ], [ %ret.0, %err_unlock ], [ -12, %do.end268 ], [ -12, %alloc_ring.exit.thread ], [ -12, %alloc_ring.exit507.thread ], [ -12, %alloc_ring.exit514.thread ]
  tail call fastcc void @t3_free_qset(ptr noundef %adapter, ptr noundef %arrayidx)
  br label %cleanup312

cleanup312:                                       ; preds = %err, %if.end301
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %if.end301 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_timer_tx(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %tx_q = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_q, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 10
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %_xmit_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %xmit_lock_owner.i, align 4
  %processed.i = getelementptr i8, ptr %t, i32 -644
  %11 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %processed.i, align 4
  %cleaned.i = getelementptr i8, ptr %t, i32 -640
  %13 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cleaned.i, align 4
  %sub.i = sub i32 %12, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.reclaim_completed_tx.exit_crit_edge, label %if.then.i

if.then.reclaim_completed_tx.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %txq = getelementptr i8, ptr %t, i32 -656
  tail call fastcc void @free_tx_desc(ptr noundef %3, ptr noundef %txq, i32 noundef %15) #11
  %16 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cleaned.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %cleaned.i, align 4
  %in_use.i = getelementptr i8, ptr %t, i32 -652
  %18 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_use.i, align 4
  %sub2.i = sub i32 %19, %15
  store i32 %sub2.i, ptr %in_use.i, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %if.then.reclaim_completed_tx.exit_crit_edge
  %20 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %processed.i, align 4
  %22 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cleaned.i, align 4
  %sub5.i = sub i32 %21, %23
  %24 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_q, align 4
  %xmit_lock_owner.i32 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %xmit_lock_owner.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 -1, ptr %xmit_lock_owner.i32, align 4
  %_xmit_lock.i33 = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i33) #11
  br label %if.end

if.end:                                           ; preds = %reclaim_completed_tx.exit, %entry.if.end_crit_edge
  %tbd.sroa.0.0 = phi i32 [ %sub5.i, %reclaim_completed_tx.exit ], [ 0, %entry.if.end_crit_edge ]
  %lock = getelementptr i8, ptr %t, i32 -396
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then8:                                         ; preds = %if.end
  %processed.i34 = getelementptr i8, ptr %t, i32 -432
  %27 = ptrtoint ptr %processed.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %processed.i34, align 4
  %cleaned.i35 = getelementptr i8, ptr %t, i32 -428
  %29 = ptrtoint ptr %cleaned.i35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cleaned.i35, align 4
  %sub.i36 = sub i32 %28, %30
  %31 = tail call i32 @llvm.umin.i32(i32 %sub.i36, i32 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i37 = icmp eq i32 %31, 0
  br i1 %tobool.not.i37, label %if.then8.reclaim_completed_tx.exit43_crit_edge, label %if.then.i41

if.then8.reclaim_completed_tx.exit43_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_completed_tx.exit43

if.then.i41:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr i8, ptr %t, i32 -444
  tail call fastcc void @free_tx_desc(ptr noundef %3, ptr noundef %arrayidx6, i32 noundef %31) #11
  %32 = ptrtoint ptr %cleaned.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cleaned.i35, align 4
  %add.i38 = add i32 %33, %31
  store i32 %add.i38, ptr %cleaned.i35, align 4
  %in_use.i39 = getelementptr i8, ptr %t, i32 -440
  %34 = ptrtoint ptr %in_use.i39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in_use.i39, align 4
  %sub2.i40 = sub i32 %35, %31
  store i32 %sub2.i40, ptr %in_use.i39, align 4
  br label %reclaim_completed_tx.exit43

reclaim_completed_tx.exit43:                      ; preds = %if.then.i41, %if.then8.reclaim_completed_tx.exit43_crit_edge
  %36 = ptrtoint ptr %processed.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %processed.i34, align 4
  %38 = ptrtoint ptr %cleaned.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cleaned.i35, align 4
  %sub5.i42 = sub i32 %37, %39
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end16

if.end16:                                         ; preds = %reclaim_completed_tx.exit43, %if.end.if.end16_crit_edge
  %tbd.sroa.5.0 = phi i32 [ %sub5.i42, %reclaim_completed_tx.exit43 ], [ 0, %if.end.if.end16_crit_edge ]
  %40 = tail call i32 @llvm.umax.i32(i32 %tbd.sroa.0.0, i32 %tbd.sroa.5.0)
  %div31 = lshr i32 %40, 6
  %shr = lshr i32 25, %div31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %shr, %41
  %call20 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sge_timer_rx(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %t, i32 -60
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %rev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 13
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %lock1 = getelementptr i8, ptr %t, i32 -1024
  %lock4 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 16, i32 0, i32 0, i32 2, i32 11
  %cond = select i1 %cmp.not, ptr %lock4, ptr %lock1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !104
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !105
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call2.i = tail call i32 @_raw_spin_trylock(ptr noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %spin_trylock_irq.exit.thread, label %if.end

spin_trylock_irq.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !106
  br label %out

if.end:                                           ; preds = %if.end.i
  %state.i = getelementptr i8, ptr %t, i32 -1284
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool7.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp12 = icmp ult i32 %10, 4
  br i1 %cmp12, label %if.then13, label %if.end9.if.end32_crit_edge

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then13:                                        ; preds = %if.end9
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %12, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #11, !srcloc !102
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !103
  %rspq15 = getelementptr i8, ptr %t, i32 -1068
  %cntxt_id = getelementptr i8, ptr %t, i32 -1028
  %15 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cntxt_id, align 8
  %shl = shl nuw i32 1, %16
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then13.if.end32_crit_edge, label %if.then17

if.then13.if.end32_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then17:                                        ; preds = %if.then13
  %starved = getelementptr i8, ptr %t, i32 -880
  %17 = ptrtoint ptr %starved to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %starved, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %starved, align 4
  %19 = ptrtoint ptr %rspq15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rspq15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.then17.if.end32_crit_edge, label %if.then21

if.then17.if.end32_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %20, -1
  %21 = ptrtoint ptr %rspq15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec, ptr %rspq15, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %22 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cntxt_id, align 4
  %shl.i = shl i32 %23, 29
  %or.i = or i32 %shl.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #11, !srcloc !93
  %restarted = getelementptr i8, ptr %t, i32 -876
  %27 = ptrtoint ptr %restarted to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %restarted, align 8
  %inc26 = add i32 %28, 1
  store i32 %inc26, ptr %restarted, align 8
  %29 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cntxt_id, align 8
  %shl29 = shl nuw i32 1, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl29) #11
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %33, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %31) #11, !srcloc !93
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.then17.if.end32_crit_edge, %if.then13.if.end32_crit_edge, %if.end9.if.end32_crit_edge
  %credits34 = getelementptr i8, ptr %t, i32 -868
  %34 = ptrtoint ptr %credits34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %credits34, align 4
  %size = getelementptr i8, ptr %t, i32 -860
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp37 = icmp ult i32 %35, %37
  br i1 %cmp37, label %if.then38, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %fl = getelementptr i8, ptr %t, i32 -872
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %40 = ptrtoint ptr %credits34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %credits34, align 4
  %sub.i = sub i32 %39, %41
  %42 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #11
  %call.i = tail call fastcc i32 @refill_fl(ptr noundef %3, ptr noundef %fl, i32 noundef %42, i32 noundef 264736) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end32.if.end41_crit_edge
  %credits44 = getelementptr i8, ptr %t, i32 -784
  %43 = ptrtoint ptr %credits44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %credits44, align 4
  %size47 = getelementptr i8, ptr %t, i32 -776
  %45 = ptrtoint ptr %size47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp48 = icmp ult i32 %44, %46
  br i1 %cmp48, label %if.then49, label %if.end41.unlock_crit_edge

if.end41.unlock_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43 = getelementptr i8, ptr %t, i32 -788
  %47 = ptrtoint ptr %size47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size47, align 4
  %49 = ptrtoint ptr %credits44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %credits44, align 4
  %sub.i83 = sub i32 %48, %50
  %51 = tail call i32 @llvm.umin.i32(i32 %sub.i83, i32 16) #11
  %call.i84 = tail call fastcc i32 @refill_fl(ptr noundef %3, ptr noundef %arrayidx43, i32 noundef %51, i32 noundef 264736) #11
  br label %unlock

unlock:                                           ; preds = %if.then49, %if.end41.unlock_crit_edge, %if.end.unlock_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %cond) #11
  br label %out

out:                                              ; preds = %unlock, %spin_trylock_irq.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %52, 25
  %call53 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restart_offloadq(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %w, i32 -156
  %netdev = getelementptr i8, ptr %w, i32 276
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %w, i32 -108
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %processed.i = getelementptr i8, ptr %w, i32 -144
  %cleaned.i = getelementptr i8, ptr %w, i32 -140
  %in_use.i = getelementptr i8, ptr %w, i32 -152
  %sendq = getelementptr i8, ptr %w, i32 -56
  %size = getelementptr i8, ptr %w, i32 -148
  %pdev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %gen22 = getelementptr i8, ptr %w, i32 -124
  %pidx24 = getelementptr i8, ptr %w, i32 -128
  %qlen.i = getelementptr i8, ptr %w, i32 -48
  %txq_stopped = getelementptr i8, ptr %w, i32 284
  br label %again

again:                                            ; preds = %land.lhs.true.again_crit_edge, %entry
  %written.0 = phi i32 [ 0, %entry ], [ %written.1122, %land.lhs.true.again_crit_edge ]
  %4 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %processed.i, align 4
  %6 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cleaned.i, align 4
  %sub.i = sub i32 %5, %7
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %again.reclaim_completed_tx.exit_crit_edge, label %if.then.i

again.reclaim_completed_tx.exit_crit_edge:        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %reclaim_completed_tx.exit

if.then.i:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @free_tx_desc(ptr noundef %3, ptr noundef %arrayidx, i32 noundef %8) #11
  %9 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cleaned.i, align 4
  %add.i = add i32 %10, %8
  store i32 %add.i, ptr %cleaned.i, align 4
  %11 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_use.i, align 4
  %sub2.i = sub i32 %12, %8
  store i32 %sub2.i, ptr %in_use.i, align 4
  br label %reclaim_completed_tx.exit

reclaim_completed_tx.exit:                        ; preds = %if.then.i, %again.reclaim_completed_tx.exit_crit_edge
  %13 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sendq, align 4
  %cmp.i119 = icmp eq ptr %14, %sendq
  %cmp.not105120 = icmp eq ptr %14, null
  %cmp.not121 = or i1 %cmp.i119, %cmp.not105120
  br i1 %cmp.not121, label %reclaim_completed_tx.exit.while.end_crit_edge, label %reclaim_completed_tx.exit.while.body_crit_edge

reclaim_completed_tx.exit.while.body_crit_edge:   ; preds = %reclaim_completed_tx.exit
  br label %while.body

reclaim_completed_tx.exit.while.end_crit_edge:    ; preds = %reclaim_completed_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %reclaim_completed_tx.exit.while.body_crit_edge
  %15 = phi ptr [ %59, %cleanup.while.body_crit_edge ], [ %14, %reclaim_completed_tx.exit.while.body_crit_edge ]
  %written.1122 = phi i32 [ %add27, %cleanup.while.body_crit_edge ], [ %written.0, %reclaim_completed_tx.exit.while.body_crit_edge ]
  %priority = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 15, i32 0, i32 6
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %priority, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %20 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_use.i, align 4
  %sub = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %17)
  %cmp3 = icmp ult i32 %sub, %17
  br i1 %cmp3, label %if.then, label %if.end14, !prof !86

if.then:                                          ; preds = %while.body
  tail call void @_set_bit(i32 noundef 1, ptr noundef %txq_stopped) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  %22 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %processed.i, align 4
  %24 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %25, %23
  %26 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %in_use.i, align 4
  %sub1.i = add i32 %sub.neg.i, %27
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %shr.i = lshr i32 %29, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %shr.i)
  %cmp.i98.not = icmp ult i32 %sub1.i, %shr.i
  br i1 %cmp.i98.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %txq_stopped) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.again_crit_edge

land.lhs.true.again_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %again

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %stops = getelementptr i8, ptr %w, i32 48
  %30 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stops, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %stops, align 4
  br label %while.end

if.end14:                                         ; preds = %while.body
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %33)
  %cmp.i99 = icmp ugt i32 %33, 120
  br i1 %cmp.i99, label %land.lhs.true17, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.end14
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %head = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 18
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head, align 8
  %call18 = tail call fastcc i32 @map_skb(ptr noundef %35, ptr noundef nonnull %15, ptr noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end21_crit_edge, label %land.lhs.true17.while.end_crit_edge

land.lhs.true17.while.end_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true17.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %38 = ptrtoint ptr %gen22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gen22, align 4
  %40 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_use.i, align 4
  %add = add i32 %41, %17
  store i32 %add, ptr %in_use.i, align 4
  %42 = ptrtoint ptr %pidx24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pidx24, align 4
  %add26 = add i32 %43, %17
  store i32 %add26, ptr %pidx24, align 4
  %add27 = add i32 %17, %written.1122
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %45)
  %cmp30.not = icmp ult i32 %add26, %45
  br i1 %cmp30.not, label %if.end21.cleanup_crit_edge, label %if.then31

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %sub34 = sub i32 %add26, %45
  %46 = ptrtoint ptr %pidx24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub34, ptr %pidx24, align 4
  %xor = xor i32 %39, 1
  %47 = ptrtoint ptr %gen22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %xor, ptr %gen22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end21.cleanup_crit_edge
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 4
  %sub.i101 = add i32 %49, -1
  store volatile i32 %sub.i101, ptr %qlen.i, align 4
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %15, align 8
  %prev9.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %52 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %15, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %53, ptr %prev17.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %51, ptr %53, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %head39 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 18
  %56 = ptrtoint ptr %head39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head39, align 8
  tail call fastcc void @write_ofld_wr(ptr noundef %3, ptr noundef nonnull %15, ptr noundef %arrayidx, i32 noundef %43, i32 noundef %39, i32 noundef %17, ptr noundef %57)
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %58 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sendq, align 4
  %cmp.i = icmp eq ptr %59, %sendq
  %cmp.not105 = icmp eq ptr %59, null
  %cmp.not = or i1 %cmp.i, %cmp.not105
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.lhs.true17.while.end_crit_edge, %if.end, %reclaim_completed_tx.exit.while.end_crit_edge
  %written.1118 = phi i32 [ %written.1122, %if.end ], [ %written.1122, %land.lhs.true17.while.end_crit_edge ], [ %add27, %cleanup.while.end_crit_edge ], [ %written.0, %reclaim_completed_tx.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !108
  tail call void @arm_heavy_mb() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1118)
  %tobool47.not = icmp eq i32 %written.1118, 0
  br i1 %tobool47.not, label %while.end.if.end55_crit_edge, label %if.then54, !prof !86

while.end.if.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then54:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %cntxt_id = getelementptr i8, ptr %w, i32 44
  %60 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cntxt_id, align 4
  %or = or i32 %61, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %62) #11, !srcloc !93
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %while.end.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @restart_ctrlq(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %w, i32 -108
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %processed.i = getelementptr i8, ptr %w, i32 -144
  %cleaned.i = getelementptr i8, ptr %w, i32 -140
  %in_use.i = getelementptr i8, ptr %w, i32 -152
  %size = getelementptr i8, ptr %w, i32 -148
  %sendq = getelementptr i8, ptr %w, i32 -56
  %qlen.i.i = getelementptr i8, ptr %w, i32 -48
  %desc = getelementptr i8, ptr %w, i32 -116
  %pidx = getelementptr i8, ptr %w, i32 -128
  %gen = getelementptr i8, ptr %w, i32 -124
  %txq_stopped = getelementptr i8, ptr %w, i32 72
  br label %again

again:                                            ; preds = %land.lhs.true.again_crit_edge, %entry
  %0 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %processed.i, align 4
  %2 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %3, %1
  %4 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_use.i, align 4
  %sub1.i = add i32 %sub.neg.i, %5
  store i32 %sub1.i, ptr %in_use.i, align 4
  store i32 %1, ptr %cleaned.i, align 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %7)
  %cmp61 = icmp ult i32 %sub1.i, %7
  br i1 %cmp61, label %again.land.rhs_crit_edge, label %again.while.end_crit_edge

again.while.end_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

again.land.rhs_crit_edge:                         ; preds = %again
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %again.land.rhs_crit_edge
  %8 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sendq, align 4
  %cmp.i.i = icmp eq ptr %9, %sendq
  %tobool.not.i59 = icmp eq ptr %9, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i59
  br i1 %tobool.not.i, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %9, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %prev17.i.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %15, align 8
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %20 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pidx, align 4
  %arrayidx2 = getelementptr %struct.tx_desc, ptr %19, i32 %21
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gen, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i50 = icmp eq i32 %29, 0
  %arrayidx.i = getelementptr %struct.work_request_hdr, ptr %arrayidx2, i32 1
  br i1 %tobool.not.i50, label %if.then.i51, label %if.else.i, !prof !88

if.then.i51:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i = getelementptr %struct.work_request_hdr, ptr %27, i32 1
  %sub.i = add i32 %23, -8
  %30 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx4.i, i32 %sub.i)
  br label %write_imm.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = add i32 %23, -8
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %9, i32 noundef 8, ptr noundef %arrayidx.i, i32 noundef %sub6.i) #11
  br label %write_imm.exit

write_imm.exit:                                   ; preds = %if.else.i, %if.then.i51
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  %and.i = shl i32 %23, 16
  %shl.i = and i32 %and.i, 458752
  %or.i = or i32 %shl.i, %32
  %or7.i = or i32 %or.i, 12582912
  %33 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or7.i, ptr %arrayidx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wr_lo.i, align 4
  %shl9.i = shl i32 %25, 31
  %add.i = add i32 %23, 7
  %div27.i = lshr i32 %add.i, 3
  %or11.i = or i32 %shl9.i, %div27.i
  %or12.i = or i32 %35, %or11.i
  %wr_lo13.i = getelementptr inbounds %struct.work_request_hdr, ptr %arrayidx2, i32 0, i32 1
  %36 = ptrtoint ptr %wr_lo13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or12.i, ptr %wr_lo13.i, align 4
  %conv.i.i = zext i32 %25 to i64
  %arrayidx.i.i = getelementptr [16 x i64], ptr %arrayidx2, i32 0, i32 15
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i.i, ptr %arrayidx.i.i, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #11
  %38 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pidx, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %pidx, align 4
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %41)
  %cmp5.not = icmp ult i32 %inc, %41
  br i1 %cmp5.not, label %write_imm.exit.if.end_crit_edge, label %if.then

write_imm.exit.if.end_crit_edge:                  ; preds = %write_imm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %write_imm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %pidx, align 4
  %43 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gen, align 4
  %xor = xor i32 %44, 1
  store i32 %xor, ptr %gen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %write_imm.exit.if.end_crit_edge
  %45 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in_use.i, align 4
  %inc9 = add i32 %46, 1
  store i32 %inc9, ptr %in_use.i, align 4
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc9, %48
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %again.while.end_crit_edge
  %49 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sendq, align 4
  %cmp.i.not = icmp eq ptr %50, %sendq
  br i1 %cmp.i.not, label %while.end.if.end24_crit_edge, label %if.then12

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then12:                                        ; preds = %while.end
  tail call void @_set_bit(i32 noundef 2, ptr noundef %txq_stopped) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %51 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %processed.i, align 4
  %53 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i54 = sub i32 %54, %52
  %55 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in_use.i, align 4
  %sub1.i56 = add i32 %sub.neg.i54, %56
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size, align 4
  %shr.i = lshr i32 %58, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i56, i32 %shr.i)
  %cmp.i57.not = icmp ult i32 %sub1.i56, %shr.i
  br i1 %cmp.i57.not, label %land.lhs.true, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then12
  %call19 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %txq_stopped) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.again_crit_edge

land.lhs.true.again_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %again

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.then12.if.end22_crit_edge
  %stops = getelementptr i8, ptr %w, i32 48
  %59 = ptrtoint ptr %stops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stops, align 4
  %inc23 = add i32 %60, 1
  store i32 %inc23, ptr %stops, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %while.end.if.end24_crit_edge
  %add.ptr = getelementptr i8, ptr %w, i32 -1176
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !110
  tail call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 128
  %cntxt_id = getelementptr i8, ptr %w, i32 44
  %63 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cntxt_id, align 4
  %or = or i32 %64, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %65 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %62, i32 0, i32 2
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %65) #11, !srcloc !93
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_init_rspcntxt(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_init_flcntxt(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_init_ecntxt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @refill_fl(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q, i32 noundef %n, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 12
  %pidx = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 5
  %desc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not127 = icmp eq i32 %n, 0
  br i1 %tobool.not127, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pidx, align 4
  %arrayidx2 = getelementptr %struct.rx_desc, ptr %1, i32 %3
  %4 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %5, i32 %3
  %use_pages = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 8
  %order = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 9
  %gen = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 6
  %pdev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup41.while.body_crit_edge, %while.body.lr.ph
  %dec134.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec134, %cleanup41.while.body_crit_edge ]
  %count.0132 = phi i32 [ 0, %while.body.lr.ph ], [ %inc40, %cleanup41.while.body_crit_edge ]
  %d.0130 = phi ptr [ %arrayidx2, %while.body.lr.ph ], [ %d.1, %cleanup41.while.body_crit_edge ]
  %sd.0128 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %sd.1, %cleanup41.while.body_crit_edge ]
  %dec134 = add i32 %dec134.in, -1
  %6 = ptrtoint ptr %use_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %8 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order, align 4
  %call = tail call fastcc i32 @alloc_pg_chunk(ptr noundef %adap, ptr noundef %q, ptr noundef %sd.0128, i32 noundef %gfp, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then.nomem_crit_edge, !prof !88

if.then.nomem_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

nomem:                                            ; preds = %if.else.nomem_crit_edge, %if.then.nomem_crit_edge
  %alloc_failed = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 16
  %10 = ptrtoint ptr %alloc_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_failed, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %alloc_failed, align 4
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mapping8 = getelementptr inbounds %struct.fl_pg_chunk, ptr %sd.0128, i32 0, i32 4
  %12 = ptrtoint ptr %mapping8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapping8, align 4
  %offset = getelementptr inbounds %struct.fl_pg_chunk, ptr %sd.0128, i32 0, i32 2
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add = add i32 %15, %13
  %dma_addr = getelementptr inbounds %struct.rx_sw_desc, ptr %sd.0128, i32 0, i32 1
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %dma_addr, align 4
  %17 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gen, align 4
  %19 = ptrtoint ptr %d.0130 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %d.0130, align 4
  %addr_hi.i = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 3
  %20 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %addr_hi.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %shl.i = shl i32 %18, 31
  %len_gen.i = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 1
  %21 = ptrtoint ptr %len_gen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl.i, ptr %len_gen.i, align 4
  %gen2.i = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 2
  %22 = ptrtoint ptr %gen2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %gen2.i, align 4
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q, align 4
  %sub = add i32 %26, -128
  tail call void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %add, i32 noundef %sub, i32 noundef 2) #11
  br label %if.end30

if.else:                                          ; preds = %while.body
  %27 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %q, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %28, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #11
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.else.nomem_crit_edge, label %if.end14

if.else.nomem_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

if.end14:                                         ; preds = %if.else
  %29 = ptrtoint ptr %sd.0128 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %sd.0128, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %32 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %q, align 4
  %34 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gen, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end14
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !88

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #11
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %41, %if.end.i.i.i ], [ %39, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #11
  br label %cleanup.thread

dma_map_single_attrs.exit.i:                      ; preds = %if.end14
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %31, i32 noundef %33) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %31 to i32
  %sub.i.i = add i32 %43, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %42, i32 %shr.i.i
  %and.i.i = and i32 %43, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %33, i32 noundef 2, i32 noundef 0) #11
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.cleanup.thread_crit_edge, label %cleanup.thread103

dma_map_single_attrs.exit.i.cleanup.thread_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread103:                                ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_addr.i = getelementptr inbounds %struct.rx_sw_desc, ptr %sd.0128, i32 0, i32 1
  %44 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call41.i.i, ptr %dma_addr.i, align 4
  %45 = ptrtoint ptr %d.0130 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call41.i.i, ptr %d.0130, align 4
  %addr_hi.i94 = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 3
  %46 = ptrtoint ptr %addr_hi.i94 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %addr_hi.i94, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %shl.i95 = shl i32 %35, 31
  %len_gen.i96 = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 1
  %47 = ptrtoint ptr %len_gen.i96 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i95, ptr %len_gen.i96, align 4
  %gen2.i97 = getelementptr inbounds %struct.rx_desc, ptr %d.0130, i32 0, i32 2
  %48 = ptrtoint ptr %gen2.i97 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %35, ptr %gen2.i97, align 4
  br label %if.end30

cleanup.thread:                                   ; preds = %dma_map_single_attrs.exit.i.cleanup.thread_crit_edge, %dma_map_single_attrs.exit.thread.i
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 8
  tail call fastcc void @clear_rx_desc(ptr noundef %50, ptr noundef %q, ptr noundef %sd.0128)
  br label %while.end

if.end30:                                         ; preds = %cleanup.thread103, %if.end
  %incdec.ptr = getelementptr %struct.rx_desc, ptr %d.0130, i32 1
  %incdec.ptr31 = getelementptr %struct.rx_sw_desc, ptr %sd.0128, i32 1
  %51 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pidx, align 4
  %inc33 = add i32 %52, 1
  store i32 %inc33, ptr %pidx, align 4
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc33, i32 %54)
  %cmp = icmp eq i32 %inc33, %54
  br i1 %cmp, label %if.then34, label %if.end30.cleanup41_crit_edge

if.end30.cleanup41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pidx, align 4
  %56 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gen, align 4
  %xor = xor i32 %57, 1
  store i32 %xor, ptr %gen, align 4
  %58 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sdesc, align 4
  %60 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.then34, %if.end30.cleanup41_crit_edge
  %sd.1 = phi ptr [ %59, %if.then34 ], [ %incdec.ptr31, %if.end30.cleanup41_crit_edge ]
  %d.1 = phi ptr [ %61, %if.then34 ], [ %incdec.ptr, %if.end30.cleanup41_crit_edge ]
  %inc40 = add nuw i32 %count.0132, 1
  %tobool.not = icmp eq i32 %dec134, 0
  br i1 %tobool.not, label %cleanup41.while.end_crit_edge, label %cleanup41.while.body_crit_edge

cleanup41.while.body_crit_edge:                   ; preds = %cleanup41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup41.while.end_crit_edge:                    ; preds = %cleanup41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup41.while.end_crit_edge, %cleanup.thread, %nomem, %entry.while.end_crit_edge
  %count.0113 = phi i32 [ %count.0132, %cleanup.thread ], [ %count.0132, %nomem ], [ 0, %entry.while.end_crit_edge ], [ %n, %cleanup41.while.end_crit_edge ]
  %credits = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 1
  %62 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %credits, align 4
  %add45 = add i32 %63, %count.0113
  store i32 %add45, ptr %credits, align 4
  %pend_cred = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 2
  %64 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pend_cred, align 4
  %add46 = add i32 %65, %count.0113
  store i32 %add46, ptr %pend_cred, align 4
  %div5.i = lshr i32 %add45, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %div5.i)
  %cmp.not.i = icmp ult i32 %add46, %div5.i
  br i1 %cmp.not.i, label %while.end.ring_fl_db.exit_crit_edge, label %if.then.i

while.end.ring_fl_db.exit_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ring_fl_db.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %pend_cred to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %pend_cred, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %cntxt_id.i = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 14
  %67 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cntxt_id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #11
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 %69) #11, !srcloc !93
  br label %ring_fl_db.exit

ring_fl_db.exit:                                  ; preds = %if.then.i, %while.end.ring_fl_db.exit_crit_edge
  ret i32 %count.0113
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_rspq(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %q, i32 noundef %credits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %cntxt_id = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cntxt_id, align 4
  %shl = shl i32 %1, 29
  %or = or i32 %shl, %credits
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !93
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t3_free_qset(ptr noundef %adapter, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %reg_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 16, i32 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %desc = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 11
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %cntxt_id = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 14
  %4 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cntxt_id, align 4
  %call = tail call i32 @t3_sge_disable_fl(ptr noundef %adapter, i32 noundef %5) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  %cidx1.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 4
  %6 = ptrtoint ptr %cidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cidx1.i, align 4
  %credits.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %credits.i, align 4
  %dec18.i = add i32 %9, -1
  store i32 %dec18.i, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not19.i = icmp eq i32 %9, 0
  br i1 %tobool.not19.i, label %if.then.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %sdesc.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 12
  %size.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cidx.020.i = phi i32 [ %7, %while.body.lr.ph.i ], [ %spec.store.select.i, %while.body.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %sdesc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdesc.i, align 4
  %arrayidx.i = getelementptr %struct.rx_sw_desc, ptr %11, i32 %cidx.020.i
  tail call fastcc void @clear_rx_desc(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %arrayidx.i) #11
  %inc.i = add i32 %cidx.020.i, 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %13)
  %cmp.i = icmp eq i32 %inc.i, %13
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %14 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %credits.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %credits.i, align 4
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %pg_chunk.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 7
  %16 = ptrtoint ptr %pg_chunk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pg_chunk.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %while.end.i.free_rx_bufs.exit_crit_edge, label %if.then3.i

while.end.i.free_rx_bufs.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_rx_bufs.exit

if.then3.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %order.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 9
  %18 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %order.i, align 4
  tail call void @__free_pages(ptr noundef nonnull %17, i32 noundef %19) #11
  %20 = ptrtoint ptr %pg_chunk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pg_chunk.i, align 4
  br label %free_rx_bufs.exit

free_rx_bufs.exit:                                ; preds = %if.then3.i, %while.end.i.free_rx_bufs.exit_crit_edge
  %sdesc = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 12
  %21 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %22) #11
  %size = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %mul = shl i32 %24, 4
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc, align 4
  %phys_addr = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 0, i32 13
  %27 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %26, i32 noundef %28, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %free_rx_bufs.exit, %entry.for.inc_crit_edge
  %desc.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 11
  %29 = ptrtoint ptr %desc.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc.1, align 4
  %tobool.not.1 = icmp eq ptr %30, null
  br i1 %tobool.not.1, label %for.inc.for.body19.preheader_crit_edge, label %if.then.1

for.inc.for.body19.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.preheader

if.then.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %cntxt_id.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 14
  %31 = ptrtoint ptr %cntxt_id.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cntxt_id.1, align 4
  %call.1 = tail call i32 @t3_sge_disable_fl(ptr noundef %adapter, i32 noundef %32) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  %cidx1.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 4
  %33 = ptrtoint ptr %cidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cidx1.i.1, align 4
  %credits.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 1
  %35 = ptrtoint ptr %credits.i.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %credits.i.1, align 4
  %dec18.i.1 = add i32 %36, -1
  store i32 %dec18.i.1, ptr %credits.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not19.i.1 = icmp eq i32 %36, 0
  br i1 %tobool.not19.i.1, label %if.then.1.while.end.i.1_crit_edge, label %while.body.lr.ph.i.1

if.then.1.while.end.i.1_crit_edge:                ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.1

while.body.lr.ph.i.1:                             ; preds = %if.then.1
  %sdesc.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 12
  %size.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 3
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %while.body.lr.ph.i.1
  %cidx.020.i.1 = phi i32 [ %34, %while.body.lr.ph.i.1 ], [ %spec.store.select.i.1, %while.body.i.1.while.body.i.1_crit_edge ]
  %37 = ptrtoint ptr %sdesc.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdesc.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.rx_sw_desc, ptr %38, i32 %cidx.020.i.1
  tail call fastcc void @clear_rx_desc(ptr noundef %1, ptr noundef %arrayidx.1, ptr noundef %arrayidx.i.1) #11
  %inc.i.1 = add i32 %cidx.020.i.1, 1
  %39 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %40)
  %cmp.i.1 = icmp eq i32 %inc.i.1, %40
  %spec.store.select.i.1 = select i1 %cmp.i.1, i32 0, i32 %inc.i.1
  %41 = ptrtoint ptr %credits.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %credits.i.1, align 4
  %dec.i.1 = add i32 %42, -1
  store i32 %dec.i.1, ptr %credits.i.1, align 4
  %tobool.not.i.1 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.while.end.i.1_crit_edge, label %while.body.i.1.while.body.i.1_crit_edge

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.1

while.body.i.1.while.end.i.1_crit_edge:           ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.1

while.end.i.1:                                    ; preds = %while.body.i.1.while.end.i.1_crit_edge, %if.then.1.while.end.i.1_crit_edge
  %pg_chunk.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 7
  %43 = ptrtoint ptr %pg_chunk.i.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pg_chunk.i.1, align 4
  %tobool2.not.i.1 = icmp eq ptr %44, null
  br i1 %tobool2.not.i.1, label %while.end.i.1.free_rx_bufs.exit.1_crit_edge, label %if.then3.i.1

while.end.i.1.free_rx_bufs.exit.1_crit_edge:      ; preds = %while.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_rx_bufs.exit.1

if.then3.i.1:                                     ; preds = %while.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %order.i.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 9
  %45 = ptrtoint ptr %order.i.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %order.i.1, align 4
  tail call void @__free_pages(ptr noundef nonnull %44, i32 noundef %46) #11
  %47 = ptrtoint ptr %pg_chunk.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %pg_chunk.i.1, align 4
  br label %free_rx_bufs.exit.1

free_rx_bufs.exit.1:                              ; preds = %if.then3.i.1, %while.end.i.1.free_rx_bufs.exit.1_crit_edge
  %sdesc.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 12
  %48 = ptrtoint ptr %sdesc.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdesc.1, align 4
  tail call void @kfree(ptr noundef %49) #11
  %size.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 3
  %50 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.1, align 4
  %mul.1 = shl i32 %51, 4
  %52 = ptrtoint ptr %desc.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc.1, align 4
  %phys_addr.1 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 3, i32 1, i32 13
  %54 = ptrtoint ptr %phys_addr.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys_addr.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul.1, ptr noundef %53, i32 noundef %55, i32 noundef 0) #11
  br label %for.body19.preheader

for.body19.preheader:                             ; preds = %free_rx_bufs.exit.1, %for.inc.for.body19.preheader_crit_edge
  br label %for.body19

for.body19:                                       ; preds = %for.inc59.for.body19_crit_edge, %for.body19.preheader
  %i.1144 = phi i32 [ %inc60, %for.inc59.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx20 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144
  %desc21 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 10
  %56 = ptrtoint ptr %desc21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc21, align 4
  %tobool22.not = icmp eq ptr %57, null
  br i1 %tobool22.not, label %for.body19.for.inc59_crit_edge, label %if.then23

for.body19.for.inc59_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59

if.then23:                                        ; preds = %for.body19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %cntxt_id28 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 17
  %58 = ptrtoint ptr %cntxt_id28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cntxt_id28, align 4
  %call29 = tail call i32 @t3_sge_enable_ecntxt(ptr noundef %adapter, i32 noundef %59, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  %sdesc34 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 11
  %60 = ptrtoint ptr %sdesc34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdesc34, align 4
  %tobool35.not = icmp eq ptr %61, null
  br i1 %tobool35.not, label %if.then23.if.end44_crit_edge, label %if.then36

if.then23.if.end44_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then36:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %in_use = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 1
  %62 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %in_use, align 4
  tail call fastcc void @free_tx_desc(ptr noundef %adapter, ptr noundef %arrayidx20, i32 noundef %63)
  %64 = ptrtoint ptr %sdesc34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdesc34, align 4
  tail call void @kfree(ptr noundef %65) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.then23.if.end44_crit_edge
  %size48 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 2
  %66 = ptrtoint ptr %size48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size48, align 4
  %mul49 = shl i32 %67, 7
  %68 = ptrtoint ptr %desc21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %desc21, align 4
  %phys_addr55 = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 14
  %70 = ptrtoint ptr %phys_addr55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phys_addr55, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul49, ptr noundef %69, i32 noundef %71, i32 noundef 0) #11
  %sendq = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 15
  %72 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sendq, align 4
  %cmp.i.i2.i = icmp eq ptr %73, %sendq
  %tobool.not.i13.i = icmp eq ptr %73, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.end44.for.inc59_crit_edge, label %while.body.lr.ph.i136

if.end44.for.inc59_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59

while.body.lr.ph.i136:                            ; preds = %if.end44
  %qlen.i.i.i = getelementptr %struct.sge_qset, ptr %q, i32 0, i32 4, i32 %i.1144, i32 15, i32 1
  br label %while.body.i137

while.body.i137:                                  ; preds = %while.body.i137.while.body.i137_crit_edge, %while.body.lr.ph.i136
  %74 = phi ptr [ %73, %while.body.lr.ph.i136 ], [ %84, %while.body.i137.while.body.i137_crit_edge ]
  %75 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %74, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %80, ptr %prev17.i.i.i, align 4
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %78, ptr %80, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %74, i32 noundef 0) #11
  %83 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sendq, align 4
  %cmp.i.i.i = icmp eq ptr %84, %sendq
  %tobool.not.i1.i = icmp eq ptr %84, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i137.for.inc59_crit_edge, label %while.body.i137.while.body.i137_crit_edge

while.body.i137.while.body.i137_crit_edge:        ; preds = %while.body.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i137

while.body.i137.for.inc59_crit_edge:              ; preds = %while.body.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59

for.inc59:                                        ; preds = %while.body.i137.for.inc59_crit_edge, %if.end44.for.inc59_crit_edge, %for.body19.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1144, 1
  %exitcond.not = icmp eq i32 %inc60, 3
  br i1 %exitcond.not, label %for.end61, label %for.inc59.for.body19_crit_edge

for.inc59.for.body19_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.end61:                                        ; preds = %for.inc59
  %desc62 = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 2, i32 8
  %85 = ptrtoint ptr %desc62 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc62, align 8
  %tobool63.not = icmp eq ptr %86, null
  br i1 %tobool63.not, label %for.end61.if.end80_crit_edge, label %if.then64

for.end61.if.end80_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then64:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %cntxt_id68 = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 2, i32 10
  %87 = ptrtoint ptr %cntxt_id68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cntxt_id68, align 8
  %call69 = tail call i32 @t3_sge_disable_rspcntxt(ptr noundef %adapter, i32 noundef %88) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  %size74 = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %size74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size74, align 4
  %mul75 = shl i32 %90, 6
  %91 = ptrtoint ptr %desc62 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %desc62, align 8
  %phys_addr79 = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 2, i32 9
  %93 = ptrtoint ptr %phys_addr79 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %phys_addr79, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul75, ptr noundef %92, i32 noundef %94, i32 noundef 0) #11
  br label %if.end80

if.end80:                                         ; preds = %if.then64, %for.end61.if.end80_crit_edge
  %95 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %q, align 128
  %tobool.not.i139 = icmp eq ptr %96, null
  br i1 %tobool.not.i139, label %if.end80.if.end.i_crit_edge, label %land.lhs.true.i

if.end80.if.end.i_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end80
  %flags.i = getelementptr inbounds %struct.adapter, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i140 = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i140, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = call ptr @memset(ptr %q, i32 0, i32 1408)
  br label %t3_reset_qset.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end80.if.end.i_crit_edge
  %100 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %q, align 128
  %rspq.i = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 2
  %txq_stopped.i = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 9
  %101 = ptrtoint ptr %txq_stopped.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %txq_stopped.i, align 32
  %function.i = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 10, i32 2
  %102 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %function.i, align 4
  %function5.i = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 11, i32 2
  %103 = ptrtoint ptr %function5.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %function5.i, align 4
  %skb.i.i = getelementptr inbounds %struct.sge_qset, ptr %q, i32 0, i32 1, i32 9
  %104 = call ptr @memset(ptr %rspq.i, i32 0, i32 1004)
  %105 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %skb.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %106, i32 noundef 0) #11
  %107 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %skb.i.i, align 4
  br label %t3_reset_qset.exit

t3_reset_qset.exit:                               ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_start_sge_timers(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %if.end8.for.body_crit_edge ]
  %function = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %i.014, i32 10, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %i.014, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 25
  %call = tail call i32 @mod_timer(ptr noundef %tx_reclaim_timer, i32 noundef %add) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %function2 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %i.014, i32 11, i32 2
  %3 = ptrtoint ptr %function2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %function2, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %i.014, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add6 = add i32 %5, 25
  %call7 = tail call i32 @mod_timer(ptr noundef %rx_reclaim_timer, i32 noundef %add6) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_stop_sge_timers(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 10
  %call = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %function2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %function2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 11
  %call6 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %function.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 10, i32 2
  %4 = ptrtoint ptr %function.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end7.if.end.1_crit_edge, label %if.then.1

if.end7.if.end.1_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 10
  %call.1 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.1) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end7.if.end.1_crit_edge
  %function2.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 11, i32 2
  %6 = ptrtoint ptr %function2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %function2.1, align 4
  %tobool3.not.1 = icmp eq ptr %7, null
  br i1 %tobool3.not.1, label %if.end.1.if.end7.1_crit_edge, label %if.then4.1

if.end.1.if.end7.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.1

if.then4.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 11
  %call6.1 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.1) #11
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then4.1, %if.end.1.if.end7.1_crit_edge
  %function.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 10, i32 2
  %8 = ptrtoint ptr %function.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %function.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %if.end7.1.if.end.2_crit_edge, label %if.then.2

if.end7.1.if.end.2_crit_edge:                     ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then.2:                                        ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 10
  %call.2 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.2) #11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end7.1.if.end.2_crit_edge
  %function2.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 11, i32 2
  %10 = ptrtoint ptr %function2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %function2.2, align 4
  %tobool3.not.2 = icmp eq ptr %11, null
  br i1 %tobool3.not.2, label %if.end.2.if.end7.2_crit_edge, label %if.then4.2

if.end.2.if.end7.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.2

if.then4.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 11
  %call6.2 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.2) #11
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then4.2, %if.end.2.if.end7.2_crit_edge
  %function.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 10, i32 2
  %12 = ptrtoint ptr %function.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %function.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %if.end7.2.if.end.3_crit_edge, label %if.then.3

if.end7.2.if.end.3_crit_edge:                     ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3

if.then.3:                                        ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 10
  %call.3 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.3) #11
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end7.2.if.end.3_crit_edge
  %function2.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 11, i32 2
  %14 = ptrtoint ptr %function2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %function2.3, align 4
  %tobool3.not.3 = icmp eq ptr %15, null
  br i1 %tobool3.not.3, label %if.end.3.if.end7.3_crit_edge, label %if.then4.3

if.end.3.if.end7.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.3

if.then4.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 11
  %call6.3 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.3) #11
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then4.3, %if.end.3.if.end7.3_crit_edge
  %function.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 10, i32 2
  %16 = ptrtoint ptr %function.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %function.4, align 4
  %tobool.not.4 = icmp eq ptr %17, null
  br i1 %tobool.not.4, label %if.end7.3.if.end.4_crit_edge, label %if.then.4

if.end7.3.if.end.4_crit_edge:                     ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4

if.then.4:                                        ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 10
  %call.4 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.4) #11
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end7.3.if.end.4_crit_edge
  %function2.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 11, i32 2
  %18 = ptrtoint ptr %function2.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %function2.4, align 4
  %tobool3.not.4 = icmp eq ptr %19, null
  br i1 %tobool3.not.4, label %if.end.4.if.end7.4_crit_edge, label %if.then4.4

if.end.4.if.end7.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.4

if.then4.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 11
  %call6.4 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.4) #11
  br label %if.end7.4

if.end7.4:                                        ; preds = %if.then4.4, %if.end.4.if.end7.4_crit_edge
  %function.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 10, i32 2
  %20 = ptrtoint ptr %function.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %function.5, align 4
  %tobool.not.5 = icmp eq ptr %21, null
  br i1 %tobool.not.5, label %if.end7.4.if.end.5_crit_edge, label %if.then.5

if.end7.4.if.end.5_crit_edge:                     ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.5

if.then.5:                                        ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 10
  %call.5 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.5) #11
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end7.4.if.end.5_crit_edge
  %function2.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 11, i32 2
  %22 = ptrtoint ptr %function2.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %function2.5, align 4
  %tobool3.not.5 = icmp eq ptr %23, null
  br i1 %tobool3.not.5, label %if.end.5.if.end7.5_crit_edge, label %if.then4.5

if.end.5.if.end7.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.5

if.then4.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 11
  %call6.5 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.5) #11
  br label %if.end7.5

if.end7.5:                                        ; preds = %if.then4.5, %if.end.5.if.end7.5_crit_edge
  %function.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 10, i32 2
  %24 = ptrtoint ptr %function.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %function.6, align 4
  %tobool.not.6 = icmp eq ptr %25, null
  br i1 %tobool.not.6, label %if.end7.5.if.end.6_crit_edge, label %if.then.6

if.end7.5.if.end.6_crit_edge:                     ; preds = %if.end7.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.6

if.then.6:                                        ; preds = %if.end7.5
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 10
  %call.6 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.6) #11
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end7.5.if.end.6_crit_edge
  %function2.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 11, i32 2
  %26 = ptrtoint ptr %function2.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %function2.6, align 4
  %tobool3.not.6 = icmp eq ptr %27, null
  br i1 %tobool3.not.6, label %if.end.6.if.end7.6_crit_edge, label %if.then4.6

if.end.6.if.end7.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.6

if.then4.6:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 11
  %call6.6 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.6) #11
  br label %if.end7.6

if.end7.6:                                        ; preds = %if.then4.6, %if.end.6.if.end7.6_crit_edge
  %function.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 10, i32 2
  %28 = ptrtoint ptr %function.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %function.7, align 4
  %tobool.not.7 = icmp eq ptr %29, null
  br i1 %tobool.not.7, label %if.end7.6.if.end.7_crit_edge, label %if.then.7

if.end7.6.if.end.7_crit_edge:                     ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.7

if.then.7:                                        ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #13
  %tx_reclaim_timer.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 10
  %call.7 = tail call i32 @del_timer_sync(ptr noundef %tx_reclaim_timer.7) #11
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end7.6.if.end.7_crit_edge
  %function2.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 11, i32 2
  %30 = ptrtoint ptr %function2.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %function2.7, align 4
  %tobool3.not.7 = icmp eq ptr %31, null
  br i1 %tobool3.not.7, label %if.end.7.if.end7.7_crit_edge, label %if.then4.7

if.end.7.if.end7.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.7

if.then4.7:                                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  %rx_reclaim_timer.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 11
  %call6.7 = tail call i32 @del_timer_sync(ptr noundef %rx_reclaim_timer.7) #11
  br label %if.end7.7

if.end7.7:                                        ; preds = %if.then4.7, %if.end.7.if.end7.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_free_sge_resources(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sge = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %sge)
  %arrayidx.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.1)
  %arrayidx.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.2)
  %arrayidx.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.3)
  %arrayidx.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.4)
  %arrayidx.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.5)
  %arrayidx.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.6)
  %arrayidx.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7
  tail call fastcc void @t3_free_qset(ptr noundef %adap, ptr noundef %arrayidx.7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_start(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef 0, i32 noundef 1, i32 noundef 1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_stop_dma(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef 0, i32 noundef 1, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_stop(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @t3_set_reg_field(ptr noundef %adap, i32 noundef 0, i32 noundef 1, i32 noundef 0) #11
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qresume_task = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 4, i32 1, i32 16
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task) #11
  %qresume_task5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 0, i32 4, i32 2, i32 16
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5) #11
  %qresume_task.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 4, i32 1, i32 16
  %call.1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.1) #11
  %qresume_task5.1 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 1, i32 4, i32 2, i32 16
  %call6.1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.1) #11
  %qresume_task.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 4, i32 1, i32 16
  %call.2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.2) #11
  %qresume_task5.2 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 2, i32 4, i32 2, i32 16
  %call6.2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.2) #11
  %qresume_task.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 4, i32 1, i32 16
  %call.3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.3) #11
  %qresume_task5.3 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 3, i32 4, i32 2, i32 16
  %call6.3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.3) #11
  %qresume_task.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 4, i32 1, i32 16
  %call.4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.4) #11
  %qresume_task5.4 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 4, i32 4, i32 2, i32 16
  %call6.4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.4) #11
  %qresume_task.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 4, i32 1, i32 16
  %call.5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.5) #11
  %qresume_task5.5 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 5, i32 4, i32 2, i32 16
  %call6.5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.5) #11
  %qresume_task.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 4, i32 1, i32 16
  %call.6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.6) #11
  %qresume_task5.6 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 6, i32 4, i32 2, i32 16
  %call6.6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.6) #11
  %qresume_task.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 4, i32 1, i32 16
  %call.7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task.7) #11
  %qresume_task5.7 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 16, i32 0, i32 7, i32 4, i32 2, i32 16
  %call6.7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %qresume_task5.7) #11
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_init(ptr nocapture noundef readonly %adap, ptr nocapture noundef readnone %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %end = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cond.end.thread_crit_edge, label %cond.end

entry.cond.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

cond.end:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %3, %5
  %add = add i32 %sub, 1
  %phi.bo = lshr i32 %add, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %iszero = icmp ult i32 %add, 4096
  %6 = tail call i32 @llvm.cttz.i32(i32 %phi.bo, i1 true), !range !114
  %phi.bo45 = shl nuw nsw i32 %6, 14
  %phi.bo47 = or i32 %phi.bo45, 961546886
  br i1 %iszero, label %cond.end.cond.end.thread_crit_edge, label %cond.end._crit_edge

cond.end._crit_edge:                              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %7

cond.end.cond.end.thread_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end.cond.end.thread_crit_edge, %entry.cond.end.thread_crit_edge
  br label %7

7:                                                ; preds = %cond.end.thread, %cond.end._crit_edge
  %8 = phi i32 [ 961546886, %cond.end.thread ], [ %phi.bo47, %cond.end._crit_edge ]
  %rev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %9 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.not = icmp eq i32 %10, 0
  br i1 %cmp14.not, label %.if.end18_crit_edge, label %if.then

.if.end18_crit_edge:                              ; preds = %7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %7
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %or17 = or i32 %8, 8388640
  %spec.select = select i1 %tobool15.not, i32 %or17, i32 %8
  br label %if.end18

if.end18:                                         ; preds = %if.then, %.if.end18_crit_edge
  %ctrl.0 = phi i32 [ %8, %.if.end18_crit_edge ], [ %spec.select, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131074) #11, !srcloc !93
  %vpd.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vpd.i, align 4
  %div = udiv i32 %19, 10000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %div) #11
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %22, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %20) #11, !srcloc !93
  %23 = ptrtoint ptr %vpd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vpd.i, align 4
  %div.i52 = udiv i32 %24, 1000
  %shl20 = mul i32 %div.i52, 51200
  %or21 = or i32 %shl20, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or21) #11
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %27, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %25) #11, !srcloc !93
  %28 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp24 = icmp ult i32 %29, 4
  %cond25 = select i1 %cmp24, i32 1000, i32 500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %cond25) #11
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %30) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %34, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 65536) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 -402456576) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 65536) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %40, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 65295) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %42, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 16515072) #11, !srcloc !93
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_sge_prep(ptr noundef %adap, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16112, ptr %p, align 4
  %qset = getelementptr inbounds %struct.sge_params, ptr %p, i32 0, i32 1
  %rev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 10, i32 13
  %1 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp ne i32 %2, 0
  %conv = zext i1 %cmp1 to i32
  %3 = ptrtoint ptr %qset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %qset, align 4
  %coalesce_usecs = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %coalesce_usecs, align 4
  %rspq_size = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %rspq_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %rspq_size, align 4
  %fl_size = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %fl_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %fl_size, align 4
  %jumbo_size = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %jumbo_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 512, ptr %jumbo_size, align 4
  %txq_size = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %txq_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %txq_size, align 4
  %arrayidx3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 256, ptr %arrayidx5, align 4
  %cong_thres = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 0, i32 6
  %11 = ptrtoint ptr %cong_thres to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cong_thres, align 4
  %add.ptr.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.1 = icmp ne i32 %13, 0
  %conv.1 = zext i1 %cmp1.1 to i32
  %14 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.1, ptr %add.ptr.1, align 4
  %coalesce_usecs.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %coalesce_usecs.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %coalesce_usecs.1, align 4
  %rspq_size.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %rspq_size.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1024, ptr %rspq_size.1, align 4
  %fl_size.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 3
  %17 = ptrtoint ptr %fl_size.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1024, ptr %fl_size.1, align 4
  %jumbo_size.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 4
  %18 = ptrtoint ptr %jumbo_size.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %jumbo_size.1, align 4
  %txq_size.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %txq_size.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %txq_size.1, align 4
  %arrayidx3.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %arrayidx3.1, align 4
  %arrayidx5.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %arrayidx5.1, align 4
  %cong_thres.1 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 1, i32 6
  %22 = ptrtoint ptr %cong_thres.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cong_thres.1, align 4
  %add.ptr.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.2 = icmp ne i32 %24, 0
  %conv.2 = zext i1 %cmp1.2 to i32
  %25 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.2, ptr %add.ptr.2, align 4
  %coalesce_usecs.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 1
  %26 = ptrtoint ptr %coalesce_usecs.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %coalesce_usecs.2, align 4
  %rspq_size.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 2
  %27 = ptrtoint ptr %rspq_size.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1024, ptr %rspq_size.2, align 4
  %fl_size.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 3
  %28 = ptrtoint ptr %fl_size.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1024, ptr %fl_size.2, align 4
  %jumbo_size.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 4
  %29 = ptrtoint ptr %jumbo_size.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 512, ptr %jumbo_size.2, align 4
  %txq_size.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 5
  %30 = ptrtoint ptr %txq_size.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1024, ptr %txq_size.2, align 4
  %arrayidx3.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1024, ptr %arrayidx3.2, align 4
  %arrayidx5.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 256, ptr %arrayidx5.2, align 4
  %cong_thres.2 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 2, i32 6
  %33 = ptrtoint ptr %cong_thres.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cong_thres.2, align 4
  %add.ptr.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp1.3 = icmp ne i32 %35, 0
  %conv.3 = zext i1 %cmp1.3 to i32
  %36 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.3, ptr %add.ptr.3, align 4
  %coalesce_usecs.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 1
  %37 = ptrtoint ptr %coalesce_usecs.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %coalesce_usecs.3, align 4
  %rspq_size.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 2
  %38 = ptrtoint ptr %rspq_size.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1024, ptr %rspq_size.3, align 4
  %fl_size.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 3
  %39 = ptrtoint ptr %fl_size.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1024, ptr %fl_size.3, align 4
  %jumbo_size.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 4
  %40 = ptrtoint ptr %jumbo_size.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 512, ptr %jumbo_size.3, align 4
  %txq_size.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 5
  %41 = ptrtoint ptr %txq_size.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1024, ptr %txq_size.3, align 4
  %arrayidx3.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 5, i32 1
  %42 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1024, ptr %arrayidx3.3, align 4
  %arrayidx5.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %arrayidx5.3, align 4
  %cong_thres.3 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 3, i32 6
  %44 = ptrtoint ptr %cong_thres.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cong_thres.3, align 4
  %add.ptr.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp1.4 = icmp ne i32 %46, 0
  %conv.4 = zext i1 %cmp1.4 to i32
  %47 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.4, ptr %add.ptr.4, align 4
  %coalesce_usecs.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 1
  %48 = ptrtoint ptr %coalesce_usecs.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %coalesce_usecs.4, align 4
  %rspq_size.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 2
  %49 = ptrtoint ptr %rspq_size.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1024, ptr %rspq_size.4, align 4
  %fl_size.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 3
  %50 = ptrtoint ptr %fl_size.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1024, ptr %fl_size.4, align 4
  %jumbo_size.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 4
  %51 = ptrtoint ptr %jumbo_size.4 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 512, ptr %jumbo_size.4, align 4
  %txq_size.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 5
  %52 = ptrtoint ptr %txq_size.4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1024, ptr %txq_size.4, align 4
  %arrayidx3.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 5, i32 1
  %53 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1024, ptr %arrayidx3.4, align 4
  %arrayidx5.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 5, i32 2
  %54 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 256, ptr %arrayidx5.4, align 4
  %cong_thres.4 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 4, i32 6
  %55 = ptrtoint ptr %cong_thres.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cong_thres.4, align 4
  %add.ptr.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1.5 = icmp ne i32 %57, 0
  %conv.5 = zext i1 %cmp1.5 to i32
  %58 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.5, ptr %add.ptr.5, align 4
  %coalesce_usecs.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 1
  %59 = ptrtoint ptr %coalesce_usecs.5 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %coalesce_usecs.5, align 4
  %rspq_size.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 2
  %60 = ptrtoint ptr %rspq_size.5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1024, ptr %rspq_size.5, align 4
  %fl_size.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 3
  %61 = ptrtoint ptr %fl_size.5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1024, ptr %fl_size.5, align 4
  %jumbo_size.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 4
  %62 = ptrtoint ptr %jumbo_size.5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 512, ptr %jumbo_size.5, align 4
  %txq_size.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 5
  %63 = ptrtoint ptr %txq_size.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1024, ptr %txq_size.5, align 4
  %arrayidx3.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 5, i32 1
  %64 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1024, ptr %arrayidx3.5, align 4
  %arrayidx5.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 5, i32 2
  %65 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 256, ptr %arrayidx5.5, align 4
  %cong_thres.5 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 5, i32 6
  %66 = ptrtoint ptr %cong_thres.5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cong_thres.5, align 4
  %add.ptr.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6
  %67 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp1.6 = icmp ne i32 %68, 0
  %conv.6 = zext i1 %cmp1.6 to i32
  %69 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.6, ptr %add.ptr.6, align 4
  %coalesce_usecs.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 1
  %70 = ptrtoint ptr %coalesce_usecs.6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %coalesce_usecs.6, align 4
  %rspq_size.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 2
  %71 = ptrtoint ptr %rspq_size.6 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1024, ptr %rspq_size.6, align 4
  %fl_size.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 3
  %72 = ptrtoint ptr %fl_size.6 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1024, ptr %fl_size.6, align 4
  %jumbo_size.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 4
  %73 = ptrtoint ptr %jumbo_size.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 512, ptr %jumbo_size.6, align 4
  %txq_size.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 5
  %74 = ptrtoint ptr %txq_size.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1024, ptr %txq_size.6, align 4
  %arrayidx3.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 5, i32 1
  %75 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1024, ptr %arrayidx3.6, align 4
  %arrayidx5.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 5, i32 2
  %76 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 256, ptr %arrayidx5.6, align 4
  %cong_thres.6 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 6, i32 6
  %77 = ptrtoint ptr %cong_thres.6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %cong_thres.6, align 4
  %add.ptr.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7
  %78 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.7 = icmp ne i32 %79, 0
  %conv.7 = zext i1 %cmp1.7 to i32
  %80 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.7, ptr %add.ptr.7, align 4
  %coalesce_usecs.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 1
  %81 = ptrtoint ptr %coalesce_usecs.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 5, ptr %coalesce_usecs.7, align 4
  %rspq_size.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 2
  %82 = ptrtoint ptr %rspq_size.7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1024, ptr %rspq_size.7, align 4
  %fl_size.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 3
  %83 = ptrtoint ptr %fl_size.7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1024, ptr %fl_size.7, align 4
  %jumbo_size.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 4
  %84 = ptrtoint ptr %jumbo_size.7 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 512, ptr %jumbo_size.7, align 4
  %txq_size.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 5
  %85 = ptrtoint ptr %txq_size.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1024, ptr %txq_size.7, align 4
  %arrayidx3.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 5, i32 1
  %86 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1024, ptr %arrayidx3.7, align 4
  %arrayidx5.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 5, i32 2
  %87 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 256, ptr %arrayidx5.7, align 4
  %cong_thres.7 = getelementptr %struct.sge_params, ptr %p, i32 0, i32 1, i32 7, i32 6
  %88 = ptrtoint ptr %cong_thres.7 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %cong_thres.7, align 4
  %reg_lock = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @t3_sge_prep.__key, i16 noundef signext 3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_tx_desc(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %q, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cidx2 = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %cidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cidx2, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 17
  %2 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cntxt_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp = icmp ugt i32 %3, 7
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool3.not34 = icmp eq i32 %n, 0
  br i1 %tobool3.not34, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %5, i32 %1
  %pdev1 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev1, align 8
  %desc.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %size.i = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %dec40.in = phi i32 [ %n, %while.body.lr.ph ], [ %dec40, %if.end17.while.body_crit_edge ]
  %cidx.037 = phi i32 [ %1, %while.body.lr.ph ], [ %cidx.1, %if.end17.while.body_crit_edge ]
  %d.035 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %d.1, %if.end17.while.body_crit_edge ]
  %dec40 = add i32 %dec40.in, -1
  %8 = ptrtoint ptr %d.035 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d.035, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %while.body.if.end13_crit_edge, label %if.then

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %while.body
  br i1 %cmp, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  %10 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdesc, align 4
  %arrayidx.i = getelementptr %struct.tx_sw_desc, ptr %11, i32 1
  %addr_idx.i = getelementptr %struct.tx_sw_desc, ptr %11, i32 %cidx.037, i32 2
  %12 = ptrtoint ptr %addr_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_idx.i, align 1
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i, align 4
  %arrayidx1.i = getelementptr %struct.tx_desc, ptr %15, i32 %cidx.037
  %sflit.i = getelementptr %struct.tx_sw_desc, ptr %11, i32 %cidx.037, i32 4
  %16 = ptrtoint ptr %sflit.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sflit.i, align 1
  %idxprom.i = sext i8 %17 to i32
  %arrayidx2.i = getelementptr [16 x i64], ptr %arrayidx1.i, i32 0, i32 %idxprom.i
  %fragidx.i = getelementptr %struct.tx_sw_desc, ptr %11, i32 %cidx.037, i32 3
  %18 = ptrtoint ptr %fragidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fragidx.i, align 2
  %conv3.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then6.if.end.i_crit_edge

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %tobool.not.i = icmp eq i32 %21, %23
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %21, %23
  %addr.i = getelementptr inbounds %struct.sg_ent, ptr %arrayidx2.i, i32 0, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %addr.i, align 8
  %conv6.i = trunc i64 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv6.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then6.if.end.i_crit_edge
  %j.0.shrunk.i = phi i8 [ 1, %if.then.i ], [ %13, %land.lhs.true.i.if.end.i_crit_edge ], [ %13, %if.then6.if.end.i_crit_edge ]
  %j.0.i = zext i8 %j.0.shrunk.i to i32
  %26 = ptrtoint ptr %sflit.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sflit.i, align 1
  %conv9.i = sext i8 %27 to i32
  %add.i = add nuw nsw i32 %j.0.i, 1
  %add10.i = add nsw i32 %add.i, %conv9.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags.i, align 2
  %conv12.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %31)
  %cmp1381.i = icmp ult i8 %19, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add10.i)
  %cmp1582.i = icmp ult i32 %add10.i, 15
  %or.cond83.i = select i1 %cmp1381.i, i1 %cmp1582.i, i1 false
  br i1 %or.cond83.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %j.187.i = phi i32 [ %xor.i, %while.body.i.while.body.i_crit_edge ], [ %j.0.i, %if.end.i.while.body.i_crit_edge ]
  %curflit.086.i = phi i32 [ %inc28.i, %while.body.i.while.body.i_crit_edge ], [ %add10.i, %if.end.i.while.body.i_crit_edge ]
  %frag_idx.085.i = phi i32 [ %inc29.i, %while.body.i.while.body.i_crit_edge ], [ %conv3.i, %if.end.i.while.body.i_crit_edge ]
  %sgp.084.i = phi ptr [ %sgp.1.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx2.i, %if.end.i.while.body.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.sg_ent, ptr %sgp.084.i, i32 0, i32 1, i32 %j.187.i
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx19.i, align 8
  %conv20.i = trunc i64 %33 to i32
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %35, i32 0, i32 12, i32 %frag_idx.085.i, i32 1
  %36 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv20.i, i32 noundef %37, i32 noundef 1, i32 noundef 0) #11
  %xor.i = xor i32 %j.187.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %cmp24.i = icmp eq i32 %xor.i, 0
  %sgp.1.idx.i = zext i1 %cmp24.i to i32
  %sgp.1.i = getelementptr %struct.sg_ent, ptr %sgp.084.i, i32 %sgp.1.idx.i
  %curflit.1.i = add nuw nsw i32 %curflit.086.i, 1
  %inc28.i = add nuw nsw i32 %curflit.1.i, %sgp.1.idx.i
  %inc29.i = add nuw nsw i32 %frag_idx.085.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc29.i, i32 %conv12.i)
  %cmp13.i = icmp ult i32 %inc29.i, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc28.i)
  %cmp15.i = icmp ult i32 %inc28.i, 15
  %or.cond.i = select i1 %cmp13.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %frag_idx.0.lcssa.i = phi i32 [ %conv3.i, %if.end.i.while.end.i_crit_edge ], [ %inc29.i, %while.body.i.while.end.i_crit_edge ]
  %curflit.0.lcssa.i = phi i32 [ %add10.i, %if.end.i.while.end.i_crit_edge ], [ %inc28.i, %while.body.i.while.end.i_crit_edge ]
  %j.1.lcssa.i = phi i32 [ %j.0.i, %if.end.i.while.end.i_crit_edge ], [ %xor.i, %while.body.i.while.end.i_crit_edge ]
  %cmp13.lcssa.i = phi i1 [ %cmp1381.i, %if.end.i.while.end.i_crit_edge ], [ %cmp13.i, %while.body.i.while.end.i_crit_edge ]
  br i1 %cmp13.lcssa.i, label %if.then32.i, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then32.i:                                      ; preds = %while.end.i
  %add33.i = add i32 %cidx.037, 1
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %39)
  %cmp34.i = icmp eq i32 %add33.i, %39
  br i1 %cmp34.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdesc, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.tx_sw_desc, ptr %arrayidx.i, i32 %cidx.037
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %41, %cond.true.i ], [ %add.ptr.i, %cond.false.i ]
  %conv37.i = trunc i32 %frag_idx.0.lcssa.i to i8
  %fragidx38.i = getelementptr inbounds %struct.tx_sw_desc, ptr %cond.i, i32 0, i32 3
  %42 = ptrtoint ptr %fragidx38.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv37.i, ptr %fragidx38.i, align 2
  %conv39.i = trunc i32 %j.1.lcssa.i to i8
  %addr_idx40.i = getelementptr inbounds %struct.tx_sw_desc, ptr %cond.i, i32 0, i32 2
  %43 = ptrtoint ptr %addr_idx40.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv39.i, ptr %addr_idx40.i, align 1
  %sub.i = add nsw i32 %curflit.0.lcssa.i, 241
  %sub41.i = sub i32 %sub.i, %j.1.lcssa.i
  %conv42.i = trunc i32 %sub41.i to i8
  %sflit43.i = getelementptr inbounds %struct.tx_sw_desc, ptr %cond.i, i32 0, i32 4
  %44 = ptrtoint ptr %sflit43.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv42.i, ptr %sflit43.i, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.i, %while.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %eop = getelementptr inbounds %struct.tx_sw_desc, ptr %d.035, i32 0, i32 1
  %45 = ptrtoint ptr %eop to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %eop, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool8.not = icmp eq i8 %46, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %d.035 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d.035, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %48, i32 noundef 0) #11
  %49 = ptrtoint ptr %d.035 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %d.035, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %incdec.ptr = getelementptr %struct.tx_sw_desc, ptr %d.035, i32 1
  %inc = add i32 %cidx.037, 1
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %51)
  %cmp14 = icmp eq i32 %inc, %51
  br i1 %cmp14, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdesc, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %d.1 = phi ptr [ %53, %if.then15 ], [ %incdec.ptr, %if.end13.if.end17_crit_edge ]
  %cidx.1 = phi i32 [ 0, %if.then15 ], [ %inc, %if.end13.if.end17_crit_edge ]
  %tobool3.not = icmp eq i32 %dec40, 0
  br i1 %tobool3.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %cidx.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %cidx.1, %if.end17.while.end_crit_edge ]
  %54 = ptrtoint ptr %cidx2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cidx.0.lcssa, ptr %cidx2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_wr_hdr_sgl(i32 noundef %ndesc, ptr noundef %skb, ptr nocapture noundef %d, i32 noundef %pidx, ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %sgl, i32 noundef %flits, i32 noundef %sgl_flits, i32 noundef %gen, i32 noundef %wr_hi, i32 noundef %wr_lo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc, align 4
  %arrayidx = getelementptr %struct.tx_sw_desc, ptr %1, i32 %pidx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %arrayidx, align 4
  %fragidx = getelementptr %struct.tx_sw_desc, ptr %1, i32 %pidx, i32 3
  %3 = ptrtoint ptr %fragidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fragidx, align 2
  %addr_idx = getelementptr %struct.tx_sw_desc, ptr %1, i32 %pidx, i32 2
  %4 = ptrtoint ptr %addr_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_idx, align 1
  %conv = trunc i32 %flits to i8
  %sflit = getelementptr %struct.tx_sw_desc, ptr %1, i32 %pidx, i32 4
  %5 = ptrtoint ptr %sflit to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %sflit, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ndesc)
  %cmp = icmp eq i32 %ndesc, 1
  br i1 %cmp, label %if.then5, label %if.else, !prof !88

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %eop = getelementptr %struct.tx_sw_desc, ptr %1, i32 %pidx, i32 1
  %6 = ptrtoint ptr %eop to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %eop, align 4
  %shl = shl i32 %flits, 8
  %or = or i32 %shl, %wr_hi
  %or6 = or i32 %or, 13631488
  %7 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or6, ptr %d, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !115
  %add = add i32 %sgl_flits, %flits
  %shl9 = shl i32 %gen, 31
  %or10 = or i32 %shl9, %add
  %or11 = or i32 %or10, %wr_lo
  %wr_lo12 = getelementptr inbounds %struct.work_request_hdr, ptr %d, i32 0, i32 1
  %8 = ptrtoint ptr %wr_lo12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or11, ptr %wr_lo12, align 4
  %conv.i = zext i32 %gen to i64
  %arrayidx.i = getelementptr [16 x i64], ptr %d, i32 0, i32 15
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  br label %if.end80

if.else:                                          ; preds = %entry
  %shl13 = shl i32 %flits, 8
  %or14 = or i32 %shl13, %wr_hi
  %or15 = or i32 %or14, 9437184
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or15, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_flits)
  %tobool17.not149 = icmp eq i32 %sgl_flits, 0
  br i1 %tobool17.not149, label %if.else.while.end_crit_edge, label %while.body.lr.ph

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else
  %size = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 2
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %or35 = or i32 %wr_hi, 1048832
  %sub163 = sub i32 15, %flits
  %11 = tail call i32 @llvm.umin.i32(i32 %sub163, i32 %sgl_flits)
  %arrayidx22164 = getelementptr [16 x i64], ptr %d, i32 0, i32 %flits
  %mul165 = shl i32 %11, 3
  %12 = call ptr @memcpy(ptr %arrayidx22164, ptr %sgl, i32 %mul165)
  %sub23166 = sub i32 %sgl_flits, %11
  %dec167 = add i32 %ndesc, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23166)
  %tobool24.not168 = icmp eq i32 %sub23166, 0
  br i1 %tobool24.not168, label %while.body.lr.ph.while.end_crit_edge, label %while.body.lr.ph.if.end26_crit_edge

while.body.lr.ph.if.end26_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end26

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %while.body.lr.ph.if.end26_crit_edge
  %dec175 = phi i32 [ %dec, %cleanup.if.end26_crit_edge ], [ %dec167, %while.body.lr.ph.if.end26_crit_edge ]
  %sub23174 = phi i32 [ %sub23, %cleanup.if.end26_crit_edge ], [ %sub23166, %while.body.lr.ph.if.end26_crit_edge ]
  %13 = phi i32 [ %26, %cleanup.if.end26_crit_edge ], [ %11, %while.body.lr.ph.if.end26_crit_edge ]
  %gen.addr.0151173 = phi i32 [ %gen.addr.1, %cleanup.if.end26_crit_edge ], [ %gen, %while.body.lr.ph.if.end26_crit_edge ]
  %pidx.addr.0153172 = phi i32 [ %pidx.addr.1, %cleanup.if.end26_crit_edge ], [ %pidx, %while.body.lr.ph.if.end26_crit_edge ]
  %wrp.0154171 = phi ptr [ %d.addr.1, %cleanup.if.end26_crit_edge ], [ %d, %while.body.lr.ph.if.end26_crit_edge ]
  %sd.0155170 = phi ptr [ %sd.1, %cleanup.if.end26_crit_edge ], [ %arrayidx, %while.body.lr.ph.if.end26_crit_edge ]
  %fp.0156169 = phi ptr [ %add.ptr, %cleanup.if.end26_crit_edge ], [ %sgl, %while.body.lr.ph.if.end26_crit_edge ]
  %add.ptr = getelementptr i64, ptr %fp.0156169, i32 %13
  %incdec.ptr = getelementptr %struct.tx_desc, ptr %wrp.0154171, i32 1
  %eop27 = getelementptr inbounds %struct.tx_sw_desc, ptr %sd.0155170, i32 0, i32 1
  %14 = ptrtoint ptr %eop27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %eop27, align 4
  %incdec.ptr28 = getelementptr %struct.tx_sw_desc, ptr %sd.0155170, i32 1
  %inc = add i32 %pidx.addr.0153172, 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp29 = icmp eq i32 %inc, %16
  br i1 %cmp29, label %if.then31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %xor = xor i32 %gen.addr.0151173, 1
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  %19 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdesc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end26.cleanup_crit_edge
  %gen.addr.1 = phi i32 [ %xor, %if.then31 ], [ %gen.addr.0151173, %if.end26.cleanup_crit_edge ]
  %pidx.addr.1 = phi i32 [ 0, %if.then31 ], [ %inc, %if.end26.cleanup_crit_edge ]
  %sd.1 = phi ptr [ %20, %if.then31 ], [ %incdec.ptr28, %if.end26.cleanup_crit_edge ]
  %d.addr.1 = phi ptr [ %18, %if.then31 ], [ %incdec.ptr, %if.end26.cleanup_crit_edge ]
  %21 = ptrtoint ptr %sd.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb, ptr %sd.1, align 4
  %22 = ptrtoint ptr %d.addr.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or35, ptr %d.addr.1, align 4
  %add37 = add i32 %sub23174, 1
  %23 = tail call i32 @llvm.umin.i32(i32 %add37, i32 15)
  %shl41 = shl i32 %gen.addr.1, 31
  %or42 = or i32 %shl41, %23
  %or43 = or i32 %or42, %wr_lo
  %wr_lo44 = getelementptr inbounds %struct.work_request_hdr, ptr %d.addr.1, i32 0, i32 1
  %24 = ptrtoint ptr %wr_lo44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or43, ptr %wr_lo44, align 4
  %conv.i136 = zext i32 %gen.addr.1 to i64
  %arrayidx.i137 = getelementptr [16 x i64], ptr %d.addr.1, i32 0, i32 15
  %25 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv.i136, ptr %arrayidx.i137, align 8
  %26 = tail call i32 @llvm.umin.i32(i32 %sub23174, i32 14)
  %arrayidx22 = getelementptr [16 x i64], ptr %d.addr.1, i32 0, i32 1
  %mul = shl nuw nsw i32 %26, 3
  %27 = call ptr @memcpy(ptr %arrayidx22, ptr %add.ptr, i32 %mul)
  %sub23 = sub i32 %sub23174, %26
  %dec = add i32 %dec175, -1
  %tobool24.not = icmp eq i32 %sub23, 0
  br i1 %tobool24.not, label %cleanup.while.end_crit_edge, label %cleanup.if.end26_crit_edge

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge, %if.else.while.end_crit_edge
  %wrp.0.lcssa = phi ptr [ %d, %if.else.while.end_crit_edge ], [ %d, %while.body.lr.ph.while.end_crit_edge ], [ %d.addr.1, %cleanup.while.end_crit_edge ]
  %sd.0.lcssa = phi ptr [ %arrayidx, %if.else.while.end_crit_edge ], [ %arrayidx, %while.body.lr.ph.while.end_crit_edge ], [ %sd.1, %cleanup.while.end_crit_edge ]
  %ndesc.addr.1 = phi i32 [ %ndesc, %if.else.while.end_crit_edge ], [ %dec167, %while.body.lr.ph.while.end_crit_edge ], [ %dec, %cleanup.while.end_crit_edge ]
  %eop45 = getelementptr inbounds %struct.tx_sw_desc, ptr %sd.0.lcssa, i32 0, i32 1
  %28 = ptrtoint ptr %eop45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %eop45, align 4
  %29 = ptrtoint ptr %wrp.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wrp.0.lcssa, align 4
  %or47 = or i32 %30, 4194304
  store i32 %or47, ptr %wrp.0.lcssa, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !116
  %shl48 = shl i32 %gen, 31
  %or49 = or i32 %shl48, %wr_lo
  %or50 = or i32 %or49, 15
  %wr_lo51 = getelementptr inbounds %struct.work_request_hdr, ptr %d, i32 0, i32 1
  %31 = ptrtoint ptr %wr_lo51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or50, ptr %wr_lo51, align 4
  %conv.i138 = zext i32 %gen to i64
  %arrayidx.i139 = getelementptr [16 x i64], ptr %d, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv.i138, ptr %arrayidx.i139, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndesc.addr.1)
  %cmp52.not = icmp eq i32 %ndesc.addr.1, 0
  br i1 %cmp52.not, label %while.end.if.end80_crit_edge, label %do.end, !prof !88

while.end.if.end80_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.end80

if.end80:                                         ; preds = %do.end, %while.end.if.end80_crit_edge, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_ofld_wr(ptr nocapture noundef readonly %adap, ptr noundef %skb, ptr nocapture noundef readonly %q, i32 noundef %pidx, i32 noundef %gen, i32 noundef %ndesc, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  %sgl = alloca [9 x %struct.sg_ent], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %sgl) #11
  %0 = call ptr @memset(ptr %sgl, i32 255, i32 216)
  %desc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 10
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %2, i32 %pidx
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %4)
  %cmp.i = icmp ugt i32 %4, 120
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %q, i32 0, i32 11
  %5 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdesc, align 4
  %arrayidx1 = getelementptr %struct.tx_sw_desc, ptr %6, i32 %pidx
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %arrayidx.i = getelementptr %struct.work_request_hdr, ptr %arrayidx, i32 1
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i, !prof !88

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i = getelementptr %struct.work_request_hdr, ptr %11, i32 1
  %sub.i = add i32 %9, -8
  %14 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx4.i, i32 %sub.i)
  br label %write_imm.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = add i32 %9, -8
  %call.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 8, ptr noundef %arrayidx.i, i32 noundef %sub6.i) #11
  br label %write_imm.exit

write_imm.exit:                                   ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 4
  %and.i = shl i32 %9, 16
  %shl.i = and i32 %and.i, 458752
  %or.i = or i32 %shl.i, %16
  %or7.i = or i32 %or.i, 12582912
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or7.i, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_lo.i, align 4
  %shl9.i = shl i32 %gen, 31
  %add.i = add i32 %9, 7
  %div27.i = lshr i32 %add.i, 3
  %or11.i = or i32 %div27.i, %shl9.i
  %or12.i = or i32 %19, %or11.i
  %wr_lo13.i = getelementptr inbounds %struct.work_request_hdr, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %wr_lo13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or12.i, ptr %wr_lo13.i, align 4
  %conv.i.i = zext i32 %gen to i64
  %arrayidx.i.i = getelementptr [16 x i64], ptr %arrayidx, i32 0, i32 15
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i.i, ptr %arrayidx.i.i, align 8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %arrayidx3 = getelementptr [16 x i64], ptr %arrayidx, i32 0, i32 1
  %arrayidx4 = getelementptr %struct.work_request_hdr, ptr %23, i32 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %26 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i49 = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i49
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 -8, %sub.ptr.rhs.cast.i
  %sub = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %28 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx4, i32 %sub)
  %29 = load ptr, ptr %head.i.i, align 8
  %30 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i53 = zext i16 %30 to i32
  %add.ptr.i.i54 = getelementptr i8, ptr %29, i32 %conv.i.i53
  %31 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i56 = ptrtoint ptr %add.ptr.i.i54 to i32
  %sub.ptr.rhs.cast.i57 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i58 = sub i32 %sub.ptr.lhs.cast.i56, %sub.ptr.rhs.cast.i57
  %div = sdiv i32 %sub.ptr.sub.i58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ndesc)
  %cmp = icmp eq i32 %ndesc, 1
  %arrayidx8 = getelementptr [16 x i64], ptr %arrayidx, i32 0, i32 %div
  %cond = select i1 %cmp, ptr %arrayidx8, ptr %sgl
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %tobool.i = icmp ne ptr %33, %add.ptr.i.i54
  br i1 %tobool.i, label %if.then.i65, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i65:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.lhs.cast.i56
  %34 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub, ptr %cond, align 8
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %conv.i64 = zext i32 %36 to i64
  %arrayidx8.sroa.gep = getelementptr inbounds %struct.sg_ent, ptr %arrayidx8, i32 0, i32 1
  %sgl.sroa.gep = getelementptr inbounds %struct.sg_ent, ptr %sgl, i32 0, i32 1
  %cond.sroa.sel = select i1 %cmp, ptr %arrayidx8.sroa.gep, ptr %sgl.sroa.gep
  %37 = ptrtoint ptr %cond.sroa.sel to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv.i64, ptr %cond.sroa.sel, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i65, %if.end.if.end.i_crit_edge
  %k.0.i = phi i32 [ 1, %if.then.i65 ], [ 0, %if.end.if.end.i_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nr_frags.i, align 2
  %conv6.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp3.not.i = icmp eq i8 %41, 0
  br i1 %cmp3.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %sgp.addr.07.i = phi ptr [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %cond, %if.end.i.for.body.i_crit_edge ]
  %k.16.i = phi i32 [ %inc13.i, %for.body.i.for.body.i_crit_edge ], [ %k.0.i, %if.end.i.for.body.i_crit_edge ]
  %j.15.i = phi i32 [ %xor.i, %for.body.i.for.body.i_crit_edge ], [ %k.0.i, %if.end.i.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc22.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %43, i32 0, i32 12, i32 %i.04.i, i32 1
  %44 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i.i, align 4
  %arrayidx12.i = getelementptr [2 x i32], ptr %sgp.addr.07.i, i32 0, i32 %j.15.i
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx12.i, align 4
  %inc13.i = add nuw nsw i32 %k.16.i, 1
  %arrayidx14.i = getelementptr i32, ptr %addr, i32 %k.16.i
  %47 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx14.i, align 4
  %conv15.i = zext i32 %48 to i64
  %arrayidx17.i = getelementptr %struct.sg_ent, ptr %sgp.addr.07.i, i32 0, i32 1, i32 %j.15.i
  %49 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv15.i, ptr %arrayidx17.i, align 8
  %xor.i = xor i32 %j.15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %cmp18.i = icmp eq i32 %xor.i, 0
  %spec.select.idx.i = zext i1 %cmp18.i to i32
  %spec.select.i = getelementptr %struct.sg_ent, ptr %sgp.addr.07.i, i32 %spec.select.idx.i
  %inc22.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %conv6.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %j.1.lcssa.i = phi i32 [ %k.0.i, %if.end.i.for.end.i_crit_edge ], [ %xor.i, %for.body.i.for.end.i_crit_edge ]
  %sgp.addr.0.lcssa.i = phi ptr [ %cond, %if.end.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1.lcssa.i)
  %tobool23.not.i = icmp eq i32 %j.1.lcssa.i, 0
  br i1 %tobool23.not.i, label %for.end.i.write_sgl.exit_crit_edge, label %if.then24.i

for.end.i.write_sgl.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %write_sgl.exit

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx26.i = getelementptr [2 x i32], ptr %sgp.addr.0.lcssa.i, i32 0, i32 %j.1.lcssa.i
  %50 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx26.i, align 4
  br label %write_sgl.exit

write_sgl.exit:                                   ; preds = %if.then24.i, %for.end.i.write_sgl.exit_crit_edge
  %conv29.i = zext i1 %tobool.i to i32
  %add.i66 = add nuw nsw i32 %conv6.i, %conv29.i
  %mul.i = mul nuw nsw i32 %add.i66, 3
  %div1.i = lshr i32 %mul.i, 1
  %add30.i = add i32 %j.1.lcssa.i, %div1.i
  %pdev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %51 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev, align 8
  %53 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %54, align 4
  %addr.i = getelementptr inbounds %struct.deferred_unmap_info, ptr %54, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add30.i)
  %cmp19.i = icmp sgt i32 %add30.i, 2
  br i1 %cmp19.i, label %write_sgl.exit.for.body.i72_crit_edge, label %write_sgl.exit.for.end.i74_crit_edge

write_sgl.exit.for.end.i74_crit_edge:             ; preds = %write_sgl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i74

write_sgl.exit.for.body.i72_crit_edge:            ; preds = %write_sgl.exit
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.body.i72.for.body.i72_crit_edge, %write_sgl.exit.for.body.i72_crit_edge
  %sgl.addr.022.i = phi ptr [ %incdec.ptr7.i, %for.body.i72.for.body.i72_crit_edge ], [ %cond, %write_sgl.exit.for.body.i72_crit_edge ]
  %p.021.i = phi ptr [ %incdec.ptr6.i, %for.body.i72.for.body.i72_crit_edge ], [ %addr.i, %write_sgl.exit.for.body.i72_crit_edge ]
  %sgl_flits.addr.020.i = phi i32 [ %sub.i70, %for.body.i72.for.body.i72_crit_edge ], [ %add30.i, %write_sgl.exit.for.body.i72_crit_edge ]
  %addr2.i = getelementptr inbounds %struct.sg_ent, ptr %sgl.addr.022.i, i32 0, i32 1
  %56 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %addr2.i, align 8
  %conv.i68 = trunc i64 %57 to i32
  %incdec.ptr.i = getelementptr i32, ptr %p.021.i, i32 1
  %58 = ptrtoint ptr %p.021.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv.i68, ptr %p.021.i, align 4
  %arrayidx4.i69 = getelementptr %struct.sg_ent, ptr %sgl.addr.022.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx4.i69 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx4.i69, align 8
  %conv5.i = trunc i64 %60 to i32
  %incdec.ptr6.i = getelementptr i32, ptr %p.021.i, i32 2
  %61 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv5.i, ptr %incdec.ptr.i, align 4
  %incdec.ptr7.i = getelementptr %struct.sg_ent, ptr %sgl.addr.022.i, i32 1
  %sub.i70 = add nsw i32 %sgl_flits.addr.020.i, -3
  %cmp.i71 = icmp ugt i32 %sgl_flits.addr.020.i, 5
  br i1 %cmp.i71, label %for.body.i72.for.body.i72_crit_edge, label %for.body.i72.for.end.i74_crit_edge

for.body.i72.for.end.i74_crit_edge:               ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i74

for.body.i72.for.body.i72_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i72

for.end.i74:                                      ; preds = %for.body.i72.for.end.i74_crit_edge, %write_sgl.exit.for.end.i74_crit_edge
  %sgl_flits.addr.0.lcssa.i = phi i32 [ %add30.i, %write_sgl.exit.for.end.i74_crit_edge ], [ %sub.i70, %for.body.i72.for.end.i74_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %addr.i, %write_sgl.exit.for.end.i74_crit_edge ], [ %incdec.ptr6.i, %for.body.i72.for.end.i74_crit_edge ]
  %sgl.addr.0.lcssa.i = phi ptr [ %cond, %write_sgl.exit.for.end.i74_crit_edge ], [ %incdec.ptr7.i, %for.body.i72.for.end.i74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_flits.addr.0.lcssa.i)
  %tobool.not.i73 = icmp eq i32 %sgl_flits.addr.0.lcssa.i, 0
  br i1 %tobool.not.i73, label %for.end.i74.setup_deferred_unmapping.exit_crit_edge, label %if.then.i75

for.end.i74.setup_deferred_unmapping.exit_crit_edge: ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_deferred_unmapping.exit

if.then.i75:                                      ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #13
  %addr8.i = getelementptr inbounds %struct.sg_ent, ptr %sgl.addr.0.lcssa.i, i32 0, i32 1
  %62 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %addr8.i, align 8
  %conv10.i = trunc i64 %63 to i32
  %64 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv10.i, ptr %p.0.lcssa.i, align 4
  br label %setup_deferred_unmapping.exit

setup_deferred_unmapping.exit:                    ; preds = %if.then.i75, %for.end.i74.setup_deferred_unmapping.exit_crit_edge
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @deferred_unmap_destructor, ptr %destructor, align 4
  %66 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %23, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %23, i32 0, i32 1
  %68 = ptrtoint ptr %wr_lo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wr_lo, align 4
  call fastcc void @write_wr_hdr_sgl(i32 noundef %ndesc, ptr noundef %skb, ptr noundef %arrayidx, i32 noundef %pidx, ptr noundef %q, ptr noundef nonnull %sgl, i32 noundef %div, i32 noundef %add30.i, i32 noundef %gen, i32 noundef %67, i32 noundef %69)
  br label %cleanup

cleanup:                                          ; preds = %setup_deferred_unmapping.exit, %write_imm.exit
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %sgl) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deferred_unmap_destructor(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 8
  %addr = getelementptr inbounds %struct.deferred_unmap_info, ptr %1, i32 0, i32 1
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %tobool.not = icmp eq ptr %3, %add.ptr.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %incdec.ptr = getelementptr %struct.deferred_unmap_info, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %sub.ptr.lhs.cast4 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast5 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub6 = sub i32 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %sub.ptr.sub6, i32 noundef 1, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %if.then ], [ %addr, %entry.if.end_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp30.not = icmp eq i8 %13, 0
  br i1 %cmp30.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.132 = phi ptr [ %incdec.ptr11, %for.body.for.body_crit_edge ], [ %p.0, %if.end.for.body_crit_edge ]
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %incdec.ptr11 = getelementptr i32, ptr %p.132, i32 1
  %16 = ptrtoint ptr %p.132 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p.132, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %11, i32 0, i32 12, i32 %i.031, i32 1
  %18 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %17, i32 noundef %19, i32 noundef 1, i32 noundef 0) #11
  %inc = add nuw nsw i32 %i.031, 1
  %20 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_ring_db(ptr nocapture noundef readonly %adap, ptr noundef %qs, i32 noundef %sleeping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %sleeping, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %txq1 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4
  %cleaned = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 4
  %0 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cleaned, align 4
  %in_use = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_use, align 4
  %add = add i32 %3, %1
  %processed = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %processed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp eq i32 %add, %5
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %land.lhs.true

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %txq1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %txq1) #11
  %cntxt_id = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 17
  %6 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cntxt_id, align 4
  %or = or i32 %7, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #11, !srcloc !93
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %and6 = and i32 %sleeping, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end27_crit_edge, label %if.then8

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then8:                                         ; preds = %if.end5
  %arrayidx11 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1
  %cleaned12 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 4
  %11 = ptrtoint ptr %cleaned12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cleaned12, align 4
  %in_use13 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %in_use13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_use13, align 4
  %add14 = add i32 %14, %12
  %processed15 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 3
  %15 = ptrtoint ptr %processed15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %processed15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %16)
  %cmp16.not = icmp eq i32 %add14, %16
  br i1 %cmp16.not, label %if.then8.if.end27_crit_edge, label %land.lhs.true17

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true17:                                  ; preds = %if.then8
  %call19 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %arrayidx11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true17.if.end27_crit_edge

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %arrayidx11) #11
  %cntxt_id23 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 17
  %17 = ptrtoint ptr %cntxt_id23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cntxt_id23, align 4
  %or25 = or i32 %18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %or25) #11
  %regs.i41 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %20 = ptrtoint ptr %regs.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %19) #11, !srcloc !93
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %land.lhs.true17.if.end27_crit_edge, %if.then8.if.end27_crit_edge, %if.end5.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restart_tx(ptr noundef %qs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_stopped = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 9
  %0 = ptrtoint ptr %txq_stopped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %txq_stopped, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %processed.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 3
  %2 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %processed.i, align 4
  %cleaned.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %cleaned.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cleaned.i, align 4
  %sub.neg.i = sub i32 %5, %3
  %in_use.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_use.i, align 4
  %sub1.i = add i32 %sub.neg.i, %7
  %size.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %shr.i73 = lshr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %shr.i73)
  %cmp.i.not = icmp ult i32 %sub1.i, %shr.i73
  br i1 %cmp.i.not, label %land.lhs.true3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %txq_stopped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true3.if.end11_crit_edge, label %if.then

land.lhs.true3.if.end11_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true3
  %restarts = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 19
  %10 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %restarts, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %restarts, align 4
  %netdev = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 7
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end11_crit_edge, label %if.then10

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tx_q = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 8
  %16 = ptrtoint ptr %tx_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_q, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %17) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %land.lhs.true3.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %18 = ptrtoint ptr %txq_stopped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %txq_stopped, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %if.end11.if.end32_crit_edge, label %land.lhs.true15

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true15:                                  ; preds = %if.end11
  %processed.i74 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 3
  %21 = ptrtoint ptr %processed.i74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %processed.i74, align 4
  %cleaned.i75 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 4
  %23 = ptrtoint ptr %cleaned.i75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cleaned.i75, align 4
  %sub.neg.i76 = sub i32 %24, %22
  %in_use.i77 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %in_use.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_use.i77, align 4
  %sub1.i78 = add i32 %sub.neg.i76, %26
  %size.i79 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 2
  %27 = ptrtoint ptr %size.i79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i79, align 4
  %shr.i80 = lshr i32 %28, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i78, i32 %shr.i80)
  %cmp.i81.not = icmp ult i32 %sub1.i78, %shr.i80
  br i1 %cmp.i81.not, label %land.lhs.true20, label %land.lhs.true15.if.end32_crit_edge

land.lhs.true15.if.end32_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %call22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %txq_stopped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true20.if.end32_crit_edge, label %if.then24

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then24:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  %restarts27 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 19
  %29 = ptrtoint ptr %restarts27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %restarts27, align 4
  %inc28 = add i32 %30, 1
  store i32 %inc28, ptr %restarts27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cxgb3_wq to i32))
  %31 = load ptr, ptr @cxgb3_wq, align 4
  %qresume_task = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %qresume_task) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %land.lhs.true20.if.end32_crit_edge, %land.lhs.true15.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %32 = ptrtoint ptr %txq_stopped to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %txq_stopped, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool35.not = icmp eq i32 %34, 0
  br i1 %tobool35.not, label %if.end32.if.end54_crit_edge, label %land.lhs.true36

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true36:                                  ; preds = %if.end32
  %processed.i83 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 3
  %35 = ptrtoint ptr %processed.i83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %processed.i83, align 4
  %cleaned.i84 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 4
  %37 = ptrtoint ptr %cleaned.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cleaned.i84, align 4
  %sub.neg.i85 = sub i32 %38, %36
  %in_use.i86 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 1
  %39 = ptrtoint ptr %in_use.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %in_use.i86, align 4
  %sub1.i87 = add i32 %sub.neg.i85, %40
  %size.i88 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 2
  %41 = ptrtoint ptr %size.i88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i88, align 4
  %shr.i89 = lshr i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i87, i32 %shr.i89)
  %cmp.i90.not = icmp ult i32 %sub1.i87, %shr.i89
  br i1 %cmp.i90.not, label %land.lhs.true41, label %land.lhs.true36.if.end54_crit_edge

land.lhs.true36.if.end54_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %call43 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %txq_stopped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true41.if.end54_crit_edge, label %if.then45

land.lhs.true41.if.end54_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  %restarts48 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 19
  %43 = ptrtoint ptr %restarts48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %restarts48, align 4
  %inc49 = add i32 %44, 1
  store i32 %inc49, ptr %restarts48, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cxgb3_wq to i32))
  %45 = load ptr, ptr @cxgb3_wq, align 4
  %qresume_task52 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 16
  %call.i92 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %qresume_task52) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %land.lhs.true41.if.end54_crit_edge, %land.lhs.true36.if.end54_crit_edge, %if.end32.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_responses(ptr noundef %adap, ptr noundef %qs, i32 noundef %budget) unnamed_addr #0 align 64 {
entry:
  %offload_skbs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rspq = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2
  %desc = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %cidx = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cidx, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offload_skbs) #11
  %holdoff_tmr = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 5
  %4 = call ptr @memset(ptr %offload_skbs, i32 255, i32 32)
  %5 = ptrtoint ptr %holdoff_tmr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %holdoff_tmr, align 4
  %next_holdoff = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %next_holdoff to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %next_holdoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not432 = icmp eq i32 %budget, 0
  br i1 %tobool.not432, label %entry.do.end_crit_edge, label %land.rhs.lr.ph, !prof !86

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.rsp_desc, ptr %1, i32 %3
  %gen.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 3
  %netdev = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 7
  %async_notif = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 20
  %imm_data = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 18
  %arrayidx56 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 3, i32 1
  %fl57 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 3
  %pg_skb.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 13
  %rx_recycle_buf14.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 7
  %pdev45.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %rx_drops = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 19
  %pure_rsps = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 17
  %processed.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 0, i32 3
  %processed7.i = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 2, i32 3
  %processed16.i = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 4, i32 1, i32 3
  %size133 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 1
  %cntxt_id.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 10
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %offload_pkts = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 14
  %polling.i379 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 4
  %recv.i = getelementptr inbounds %struct.t3cdev, ptr %adap, i32 0, i32 6
  %offload_bundles.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 15
  %rx_queue.i.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 12
  %prev.i.i.i.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 12, i32 0, i32 0, i32 1
  %qlen.i.i.i.i.i = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 12, i32 1
  %napi.i.i = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 1
  %arrayidx14.i = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 12, i32 1
  %sge.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %qs to i32
  %arrayidx27.i = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 12, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup171.land.rhs_crit_edge, %land.rhs.lr.ph
  %ngathered.0442 = phi i32 [ 0, %land.rhs.lr.ph ], [ %ngathered.3, %cleanup171.land.rhs_crit_edge ]
  %sleeping.0439 = phi i32 [ 0, %land.rhs.lr.ph ], [ %sleeping.1, %cleanup171.land.rhs_crit_edge ]
  %budget_left.0436 = phi i32 [ %budget, %land.rhs.lr.ph ], [ %budget_left.1, %cleanup171.land.rhs_crit_edge ]
  %r.0433 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %r.1, %cleanup171.land.rhs_crit_edge ]
  %intr_gen.i = getelementptr inbounds %struct.rsp_desc, ptr %r.0433, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %intr_gen.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %intr_gen.i, align 1
  %10 = and i8 %9, 1
  %and.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and.i)
  %cmp.i = icmp eq i32 %12, %and.i
  br i1 %cmp.i, label %while.body, label %land.rhs.while.end_crit_edge, !prof !88

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 16
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 14
  %19 = and i32 %18, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %20 = ptrtoint ptr %r.0433 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %r.0433, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %21)
  %cmp = icmp eq i8 %21, 43
  %22 = ptrtoint ptr %r.0433 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r.0433, align 4
  %rss_hash_val = getelementptr inbounds %struct.rss_header, ptr %r.0433, i32 0, i32 3
  %24 = ptrtoint ptr %rss_hash_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rss_hash_val, align 4
  %flags11 = getelementptr inbounds %struct.rsp_desc, ptr %r.0433, i32 0, i32 1
  %26 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags11, align 4
  %and12 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then, !prof !88

if.then:                                          ; preds = %while.body
  %call.i = call ptr @__alloc_skb(i32 noundef 32, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.then.cleanup171.thread_crit_edge, label %if.end

if.then.cleanup171.thread_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171.thread

if.end:                                           ; preds = %if.then
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_data.exit, label %do.body3.i.i, !prof !88

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

__skb_put_data.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 32
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %32 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %33, 32
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %34 = call ptr @memcpy(ptr %31, ptr %r.0433, i32 32)
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %36, align 1
  %38 = ptrtoint ptr %async_notif to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %async_notif, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %async_notif, align 4
  br label %if.end125

if.else:                                          ; preds = %while.body
  %and25 = and i32 %27, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else43, label %if.then27

if.then27:                                        ; preds = %if.else
  %call.i.i = call ptr @__alloc_skb(i32 noundef 48, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then27.cleanup171.thread_crit_edge, label %if.then.i

if.then27.cleanup171.thread_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171.thread

if.then.i:                                        ; preds = %if.then27
  %data_len.i.i.i308 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i.i308, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i309 = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i309, label %if.end41, label %do.body3.i.i310, !prof !88

do.body3.i.i310:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

cleanup171.thread:                                ; preds = %if.then90.cleanup171.thread_crit_edge, %if.then27.cleanup171.thread_crit_edge, %if.then.cleanup171.thread_crit_edge
  %42 = ptrtoint ptr %next_holdoff to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2500, ptr %next_holdoff, align 4
  %nomem = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 22
  %43 = ptrtoint ptr %nomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nomem, align 4
  %inc40 = add i32 %44, 1
  store i32 %inc40, ptr %nomem, align 4
  %budget_left.1406 = add i32 %budget_left.0436, -1
  br label %while.end

if.end41:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i311 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i311, align 8
  %add.ptr.i.i312 = getelementptr i8, ptr %46, i32 48
  store ptr %add.ptr.i.i312, ptr %tail.i.i.i311, align 8
  %len9.i.i313 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %len9.i.i313 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len9.i.i313, align 4
  %add.i.i314 = add i32 %48, 48
  store i32 %add.i.i314, ptr %len9.i.i313, align 4
  %49 = getelementptr inbounds %struct.rsp_desc, ptr %r.0433, i32 0, i32 3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %52 = call ptr @memcpy(ptr %51, ptr %49, i32 48)
  %53 = ptrtoint ptr %imm_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %imm_data, align 4
  %inc42 = add i32 %54, 1
  store i32 %inc42, ptr %imm_data, align 4
  br label %if.end125

if.else43:                                        ; preds = %if.else
  %len_cq = getelementptr inbounds %struct.rsp_desc, ptr %r.0433, i32 0, i32 2
  %55 = ptrtoint ptr %len_cq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len_cq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp44.not = icmp eq i32 %56, 0
  br i1 %cmp44.not, label %if.else121, label %if.then46

if.then46:                                        ; preds = %if.else43
  %57 = and i32 %23, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %57)
  %cmp.i315 = icmp eq i32 %57, 8388608
  %58 = select i1 %cmp, i1 %cmp.i315, i1 false
  %land.ext = zext i1 %58 to i32
  %and52 = and i32 %18, %land.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool54.not408 = icmp slt i32 %56, 0
  %cond = select i1 %tobool54.not408, ptr %arrayidx56, ptr %fl57
  %use_pages = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 8
  %59 = ptrtoint ptr %use_pages to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %use_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool59.not = icmp eq i32 %60, 0
  br i1 %tobool59.not, label %if.else74, label %if.then60

if.then60:                                        ; preds = %if.then46
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 12
  %61 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdesc, align 4
  %cidx61 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 4
  %63 = ptrtoint ptr %cidx61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cidx61, align 4
  %va = getelementptr %struct.rx_sw_desc, ptr %62, i32 %64, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %va, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %66) #11, !srcloc !98
  %size.i = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 3
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  %credits.i = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 1
  %69 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %credits.i, align 4
  %sub.i = sub i32 %68, %70
  %71 = call i32 @llvm.umin.i32(i32 %sub.i, i32 16) #11
  %call.i316 = call fastcc i32 @refill_fl(ptr noundef %adap, ptr noundef %cond, i32 noundef %71, i32 noundef 264736) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp63.not = icmp eq i32 %and52, 0
  %and70 = and i32 %56, 2147483647
  br i1 %cmp63.not, label %if.end68, label %cleanup

if.end68:                                         ; preds = %if.then60
  %cond72 = select i1 %cmp, i32 16, i32 0
  %72 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdesc, align 4
  %74 = ptrtoint ptr %cidx61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cidx61, align 4
  %arrayidx.i = getelementptr %struct.rx_sw_desc, ptr %73, i32 %75
  %dma_addr1.i = getelementptr %struct.rx_sw_desc, ptr %73, i32 %75, i32 1
  %76 = ptrtoint ptr %dma_addr1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma_addr1.i, align 4
  %78 = ptrtoint ptr %pg_skb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pg_skb.i, align 4
  %tobool.not.i317 = icmp eq ptr %79, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %and70)
  %cmp.i318 = icmp ult i32 %and70, 257
  %or.cond.i = and i1 %cmp.i318, %tobool.not.i317
  br i1 %or.cond.i, label %if.then.i320, label %if.end13.i

if.then.i320:                                     ; preds = %if.end68
  %call.i.i319 = call ptr @__alloc_skb(i32 noundef %and70, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %cmp2.not.i = icmp eq ptr %call.i.i319, null
  br i1 %cmp2.not.i, label %if.else.i, label %if.then5.i, !prof !86

if.then5.i:                                       ; preds = %if.then.i320
  %data_len.i.i.i321 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i319, i32 0, i32 7
  %80 = ptrtoint ptr %data_len.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i321, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not.i.i322 = icmp eq i32 %81, 0
  br i1 %tobool.i.not.i.i322, label %__skb_put.exit.i328, label %do.body3.i.i323, !prof !88

do.body3.i.i323:                                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

__skb_put.exit.i328:                              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i324 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i319, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i.i324, align 8
  %add.ptr.i.i325 = getelementptr i8, ptr %83, i32 %and70
  store ptr %add.ptr.i.i325, ptr %tail.i.i.i324, align 8
  %len9.i.i326 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i319, i32 0, i32 6
  %84 = ptrtoint ptr %len9.i.i326 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len9.i.i326, align 4
  %add.i.i327 = add i32 %85, %and70
  store i32 %add.i.i327, ptr %len9.i.i326, align 4
  %86 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev45.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %77, i32 noundef %and70, i32 noundef 2) #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i319, i32 0, i32 19
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i, align 4
  %va.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 1
  %90 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %va.i, align 4
  %92 = call ptr @memcpy(ptr %89, ptr %91, i32 %and70)
  %93 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev45.i, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  call void @dma_sync_single_for_device(ptr noundef %dev8.i, i32 noundef %77, i32 noundef %and70, i32 noundef 2) #11
  br label %recycle.i

if.else.i:                                        ; preds = %if.then.i320
  br i1 %cmp, label %if.else.i.recycle.i_crit_edge, label %if.else.i.cleanup.thread_crit_edge

if.else.i.cleanup.thread_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.else.i.recycle.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i

recycle.i:                                        ; preds = %if.then40.i.recycle.i_crit_edge, %lor.end.i.recycle.i_crit_edge, %land.rhs.i.recycle.i_crit_edge, %if.else.i.recycle.i_crit_edge, %__skb_put.exit.i328
  %newskb.0.i = phi ptr [ %79, %lor.end.i.recycle.i_crit_edge ], [ null, %if.then40.i.recycle.i_crit_edge ], [ %call.i.i319, %__skb_put.exit.i328 ], [ null, %if.else.i.recycle.i_crit_edge ], [ %79, %land.rhs.i.recycle.i_crit_edge ]
  %95 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %credits.i, align 4
  %dec.i = add i32 %96, -1
  store i32 %dec.i, ptr %credits.i, align 4
  %97 = ptrtoint ptr %cidx61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cidx61, align 4
  call fastcc void @recycle_rx_buf(ptr noundef %adap, ptr noundef %cond, i32 noundef %98) #11
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end68
  %99 = ptrtoint ptr %rx_recycle_buf14.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_recycle_buf14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool15.not.i = icmp ne i32 %100, 0
  %tobool.not.not.i = xor i1 %tobool.not.i317, true
  %brmerge.i = select i1 %tobool15.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %lor.end.i, label %land.rhs.i, !prof !119

land.rhs.i:                                       ; preds = %if.end13.i
  %101 = ptrtoint ptr %credits.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %cond72)
  %cmp18.not.i = icmp ugt i32 %102, %cond72
  br i1 %cmp18.not.i, label %land.rhs.i.if.end26.i_crit_edge, label %land.rhs.i.recycle.i_crit_edge, !prof !88

land.rhs.i.recycle.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i

land.rhs.i.if.end26.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

lor.end.i:                                        ; preds = %if.end13.i
  br i1 %tobool15.not.i, label %lor.end.i.recycle.i_crit_edge, label %lor.end.i.if.end26.i_crit_edge, !prof !86

lor.end.i.if.end26.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

lor.end.i.recycle.i_crit_edge:                    ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i

if.end26.i:                                       ; preds = %lor.end.i.if.end26.i_crit_edge, %land.rhs.i.if.end26.i_crit_edge
  %p_cnt.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 3
  %103 = ptrtoint ptr %p_cnt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %p_cnt.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %104) #11, !srcloc !98
  br i1 %tobool.not.i317, label %if.end30.i, label %if.end26.i.if.end44.i_crit_edge

if.end26.i.if.end44.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.end30.i:                                       ; preds = %if.end26.i
  %call.i146.i = call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool31.not.i = icmp eq ptr %call.i146.i, null
  br i1 %tobool31.not.i, label %if.then40.i, label %if.end30.i.if.end44.i_crit_edge, !prof !86

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end30.i
  br i1 %cmp, label %if.then40.i.recycle.i_crit_edge, label %if.then40.i.cleanup.thread_crit_edge

if.then40.i.cleanup.thread_crit_edge:             ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then40.i.recycle.i_crit_edge:                  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i

if.end44.i:                                       ; preds = %if.end30.i.if.end44.i_crit_edge, %if.end26.i.if.end44.i_crit_edge
  %newskb.1176.i = phi ptr [ %call.i146.i, %if.end30.i.if.end44.i_crit_edge ], [ %79, %if.end26.i.if.end44.i_crit_edge ]
  %105 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev45.i, align 8
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  call void @dma_sync_single_for_cpu(ptr noundef %dev46.i, i32 noundef %77, i32 noundef %and70, i32 noundef 2) #11
  %107 = ptrtoint ptr %p_cnt.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %p_cnt.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %dec48.i = add i32 %110, -1
  store i32 %dec48.i, ptr %108, align 4
  %111 = load ptr, ptr %p_cnt.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool50.not.i = icmp eq i32 %113, 0
  br i1 %tobool50.not.i, label %land.lhs.true51.i, label %if.end44.i.if.end57.i_crit_edge

if.end44.i.if.end57.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

land.lhs.true51.i:                                ; preds = %if.end44.i
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i, align 4
  %pg_chunk.i = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 7
  %116 = ptrtoint ptr %pg_chunk.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pg_chunk.i, align 4
  %cmp53.not.i = icmp eq ptr %115, %117
  br i1 %cmp53.not.i, label %land.lhs.true51.i.if.end57.i_crit_edge, label %if.then54.i

land.lhs.true51.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then54.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev45.i, align 8
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %mapping.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 4
  %120 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mapping.i, align 4
  %alloc_size.i = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 10
  %122 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %alloc_size.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev56.i, i32 noundef %121, i32 noundef %123, i32 noundef 2, i32 noundef 0) #11
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %land.lhs.true51.i.if.end57.i_crit_edge, %if.end44.i.if.end57.i_crit_edge
  br i1 %tobool.not.i317, label %if.then59.i, label %if.else68.i

if.then59.i:                                      ; preds = %if.end57.i
  %data_len.i.i147.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 7
  %124 = ptrtoint ptr %data_len.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_len.i.i147.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i.not.i148.i = icmp eq i32 %125, 0
  br i1 %tobool.i.not.i148.i, label %__skb_put.exit154.i, label %do.body3.i149.i, !prof !88

do.body3.i149.i:                                  ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

__skb_put.exit154.i:                              ; preds = %if.then59.i
  %tail.i.i150.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 16
  %126 = ptrtoint ptr %tail.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tail.i.i150.i, align 8
  %add.ptr.i151.i = getelementptr i8, ptr %127, i32 128
  store ptr %add.ptr.i151.i, ptr %tail.i.i150.i, align 8
  %len9.i152.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 6
  %128 = ptrtoint ptr %len9.i152.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len9.i152.i, align 4
  %add.i153.i = add i32 %129, 128
  store i32 %add.i153.i, ptr %len9.i152.i, align 4
  %data61.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 19
  %130 = ptrtoint ptr %data61.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data61.i, align 4
  %va62.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 1
  %132 = ptrtoint ptr %va62.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %va62.i, align 4
  %134 = call ptr @memcpy(ptr %131, ptr %133, i32 128)
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i, align 4
  %offset.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 2
  %137 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %138, 128
  %sub.i330 = add nsw i32 %and70, -128
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 17
  %139 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 0
  %141 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %136, ptr %arrayidx.i.i.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 0, i32 2
  %142 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add.i, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %140, i32 0, i32 12, i32 0, i32 1
  %143 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub.i330, ptr %bv_len.i.i.i.i, align 4
  %144 = getelementptr inbounds %struct.page, ptr %136, i32 0, i32 1
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %144, align 4
  %and.i.i.i.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !88

if.then.i.i.i.i:                                  ; preds = %__skb_put.exit154.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add i32 %146, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %__skb_put.exit154.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %136 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %147, %if.end.i.i.i.i ]
  %148 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %149 = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 1
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %152 = ptrtoint ptr %151 to i32
  %and.i8.i.i.i = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i8.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge, label %if.then.i.i.i

_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge: ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_fill_page_desc.exit.i

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pfmemalloc.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 12
  %153 = ptrtoint ptr %pfmemalloc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %bf.load.i.i.i = load i8, ptr %pfmemalloc.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 2
  store i8 %bf.set.i.i.i, ptr %pfmemalloc.i.i.i, align 2
  br label %skb_fill_page_desc.exit.i

skb_fill_page_desc.exit.i:                        ; preds = %if.then.i.i.i, %_compound_head.exit.i.i.i.skb_fill_page_desc.exit.i_crit_edge
  %154 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %nr_frags.i.i, align 2
  %157 = ptrtoint ptr %len9.i152.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and70, ptr %len9.i152.i, align 4
  %158 = ptrtoint ptr %data_len.i.i147.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub.i330, ptr %data_len.i.i147.i, align 8
  br label %if.end78.i

if.else68.i:                                      ; preds = %if.end57.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 17
  %159 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %nr_frags.i, align 2
  %conv.i331 = zext i8 %162 to i32
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i, align 4
  %offset71.i = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx.i, i32 0, i32 2
  %165 = ptrtoint ptr %offset71.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %offset71.i, align 4
  %arrayidx.i.i156.i = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %conv.i331
  %167 = ptrtoint ptr %arrayidx.i.i156.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %arrayidx.i.i156.i, align 4
  %bv_offset.i.i157.i = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %conv.i331, i32 2
  %168 = ptrtoint ptr %bv_offset.i.i157.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %166, ptr %bv_offset.i.i157.i, align 4
  %bv_len.i.i.i158.i = getelementptr %struct.skb_shared_info, ptr %160, i32 0, i32 12, i32 %conv.i331, i32 1
  %169 = ptrtoint ptr %bv_len.i.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and70, ptr %bv_len.i.i.i158.i, align 4
  %170 = getelementptr inbounds %struct.page, ptr %164, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %170, align 4
  %and.i.i.i159.i = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i159.i)
  %tobool.not.i.i.i160.i = icmp eq i32 %and.i.i.i159.i, 0
  br i1 %tobool.not.i.i.i160.i, label %if.end.i.i.i163.i, label %if.then.i.i.i162.i, !prof !88

if.then.i.i.i162.i:                               ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i161.i = add i32 %172, -1
  br label %_compound_head.exit.i.i167.i

if.end.i.i.i163.i:                                ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %164 to i32
  br label %_compound_head.exit.i.i167.i

_compound_head.exit.i.i167.i:                     ; preds = %if.end.i.i.i163.i, %if.then.i.i.i162.i
  %retval.0.i.i.i164.i = phi i32 [ %sub.i.i.i161.i, %if.then.i.i.i162.i ], [ %173, %if.end.i.i.i163.i ]
  %174 = inttoptr i32 %retval.0.i.i.i164.i to ptr
  %175 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %178 = ptrtoint ptr %177 to i32
  %and.i8.i.i165.i = and i32 %178, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i165.i)
  %tobool.i.not.i.i166.i = icmp eq i32 %and.i8.i.i165.i, 0
  br i1 %tobool.i.not.i.i166.i, label %_compound_head.exit.i.i167.i.skb_fill_page_desc.exit173.i_crit_edge, label %if.then.i.i171.i

_compound_head.exit.i.i167.i.skb_fill_page_desc.exit173.i_crit_edge: ; preds = %_compound_head.exit.i.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_fill_page_desc.exit173.i

if.then.i.i171.i:                                 ; preds = %_compound_head.exit.i.i167.i
  call void @__sanitizer_cov_trace_pc() #13
  %pfmemalloc.i.i168.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 12
  %179 = ptrtoint ptr %pfmemalloc.i.i168.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load.i.i169.i = load i8, ptr %pfmemalloc.i.i168.i, align 2
  %bf.set.i.i170.i = or i8 %bf.load.i.i169.i, 2
  store i8 %bf.set.i.i170.i, ptr %pfmemalloc.i.i168.i, align 2
  br label %skb_fill_page_desc.exit173.i

skb_fill_page_desc.exit173.i:                     ; preds = %if.then.i.i171.i, %_compound_head.exit.i.i167.i.skb_fill_page_desc.exit173.i_crit_edge
  %conv.i.i = add i8 %162, 1
  %180 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i172.i = getelementptr inbounds %struct.skb_shared_info, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %nr_frags.i172.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv.i.i, ptr %nr_frags.i172.i, align 2
  %len72.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 6
  %183 = ptrtoint ptr %len72.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len72.i, align 4
  %add73.i = add i32 %184, %and70
  store i32 %add73.i, ptr %len72.i, align 4
  %data_len74.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 7
  %185 = ptrtoint ptr %data_len74.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %data_len74.i, align 8
  %add75.i = add i32 %186, %and70
  store i32 %add75.i, ptr %data_len74.i, align 8
  br label %if.end78.i

if.end78.i:                                       ; preds = %skb_fill_page_desc.exit173.i, %skb_fill_page_desc.exit.i
  %len.sink.i = phi i32 [ %and70, %skb_fill_page_desc.exit173.i ], [ %sub.i330, %skb_fill_page_desc.exit.i ]
  %truesize76.i = getelementptr inbounds %struct.sk_buff, ptr %newskb.1176.i, i32 0, i32 20
  %187 = ptrtoint ptr %truesize76.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %truesize76.i, align 8
  %add77.i = add i32 %188, %len.sink.i
  store i32 %add77.i, ptr %truesize76.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end78.i, %recycle.i
  %credits79.sink180.i = phi ptr [ %credits.i, %if.end78.i ], [ %rx_recycle_buf14.i, %recycle.i ]
  %.sink179.i = phi i32 [ -1, %if.end78.i ], [ 1, %recycle.i ]
  %retval.0.ph.i = phi ptr [ %newskb.1176.i, %if.end78.i ], [ %newskb.0.i, %recycle.i ]
  %189 = ptrtoint ptr %credits79.sink180.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %credits79.sink180.i, align 4
  %dec80.i = add i32 %190, %.sink179.i
  store i32 %dec80.i, ptr %credits79.sink180.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.sink.split.i, %if.then40.i.cleanup.thread_crit_edge, %if.else.i.cleanup.thread_crit_edge
  %retval.0.i = phi ptr [ null, %if.else.i.cleanup.thread_crit_edge ], [ null, %if.then40.i.cleanup.thread_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %191 = ptrtoint ptr %pg_skb.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %retval.0.i, ptr %pg_skb.i, align 4
  br label %if.end80

cleanup:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %and67 = and i32 %27, 16777216
  call fastcc void @lro_add_page(ptr noundef %adap, ptr noundef %qs, ptr noundef %cond, i32 noundef %and70, i32 noundef %and67)
  br label %cleanup118.thread

if.else74:                                        ; preds = %if.then46
  %and76 = and i32 %56, 2147483647
  %sdesc.i332 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 12
  %192 = ptrtoint ptr %sdesc.i332 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sdesc.i332, align 4
  %cidx.i333 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 4
  %194 = ptrtoint ptr %cidx.i333 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cidx.i333, align 4
  %arrayidx.i334 = getelementptr %struct.rx_sw_desc, ptr %193, i32 %195
  %196 = ptrtoint ptr %arrayidx.i334 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i334, align 4
  %data.i335 = getelementptr inbounds %struct.sk_buff, ptr %197, i32 0, i32 19
  %198 = ptrtoint ptr %data.i335 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data.i335, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %199) #11, !srcloc !98
  %credits.i336 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 1
  %200 = ptrtoint ptr %credits.i336 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %credits.i336, align 4
  %dec.i337 = add i32 %201, -1
  store i32 %dec.i337, ptr %credits.i336, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %and76)
  %cmp.i338 = icmp ult i32 %and76, 257
  br i1 %cmp.i338, label %if.then.i340, label %if.end14.i

if.then.i340:                                     ; preds = %if.else74
  %call.i.i339 = call ptr @__alloc_skb(i32 noundef %and76, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %cmp1.not.i = icmp eq ptr %call.i.i339, null
  br i1 %cmp1.not.i, label %if.else.i352, label %if.then3.i, !prof !86

if.then3.i:                                       ; preds = %if.then.i340
  %data_len.i.i.i341 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i339, i32 0, i32 7
  %202 = ptrtoint ptr %data_len.i.i.i341 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %data_len.i.i.i341, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.i.not.i.i342 = icmp eq i32 %203, 0
  br i1 %tobool.i.not.i.i342, label %__skb_put.exit.i351, label %do.body3.i.i343, !prof !88

do.body3.i.i343:                                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !118
  unreachable

__skb_put.exit.i351:                              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i.i.i344 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i339, i32 0, i32 16
  %204 = ptrtoint ptr %tail.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %tail.i.i.i344, align 8
  %add.ptr.i.i345 = getelementptr i8, ptr %205, i32 %and76
  store ptr %add.ptr.i.i345, ptr %tail.i.i.i344, align 8
  %len9.i.i346 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i339, i32 0, i32 6
  %206 = ptrtoint ptr %len9.i.i346 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len9.i.i346, align 4
  %add.i.i347 = add i32 %207, %and76
  store i32 %add.i.i347, ptr %len9.i.i346, align 4
  %208 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pdev45.i, align 8
  %dev.i349 = getelementptr inbounds %struct.pci_dev, ptr %209, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.rx_sw_desc, ptr %193, i32 %195, i32 1
  %210 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dma_addr.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i349, i32 noundef %211, i32 noundef %and76, i32 noundef 2) #11
  %data5.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i339, i32 0, i32 19
  %212 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %data5.i, align 4
  %214 = ptrtoint ptr %arrayidx.i334 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i334, align 4
  %data6.i = getelementptr inbounds %struct.sk_buff, ptr %215, i32 0, i32 19
  %216 = ptrtoint ptr %data6.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %data6.i, align 4
  %218 = call ptr @memcpy(ptr %213, ptr %217, i32 %and76)
  %219 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdev45.i, align 8
  %dev8.i350 = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  %221 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dma_addr.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %dev8.i350, i32 noundef %222, i32 noundef %and76, i32 noundef 2) #11
  br label %recycle.i353

if.else.i352:                                     ; preds = %if.then.i340
  br i1 %cmp, label %if.else.i352.recycle.i353_crit_edge, label %if.else.i352.use_orig_buf.i_crit_edge

if.else.i352.use_orig_buf.i_crit_edge:            ; preds = %if.else.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %use_orig_buf.i

if.else.i352.recycle.i353_crit_edge:              ; preds = %if.else.i352
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i353

recycle.i353:                                     ; preds = %land.lhs.true.i.recycle.i353_crit_edge, %if.else.i352.recycle.i353_crit_edge, %__skb_put.exit.i351
  %skb.0.i = phi ptr [ %call.i.i339, %__skb_put.exit.i351 ], [ null, %if.else.i352.recycle.i353_crit_edge ], [ null, %land.lhs.true.i.recycle.i353_crit_edge ]
  %223 = ptrtoint ptr %cidx.i333 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %cidx.i333, align 4
  call fastcc void @recycle_rx_buf(ptr noundef %adap, ptr noundef %cond, i32 noundef %224) #11
  br label %if.end80

if.end14.i:                                       ; preds = %if.else74
  %cond78 = select i1 %cmp, i32 16, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i337, i32 %cond78)
  %cmp16.i = icmp ult i32 %dec.i337, %cond78
  br i1 %cmp16.i, label %land.lhs.true.i, label %if.end14.i.use_orig_buf.i_crit_edge, !prof !86

if.end14.i.use_orig_buf.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %use_orig_buf.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %size.i354 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 3
  %225 = ptrtoint ptr %size.i354 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %size.i354, align 4
  %sub24.i = sub i32 %226, %201
  %227 = call i32 @llvm.umin.i32(i32 %sub24.i, i32 16) #11
  %call26.i = call fastcc i32 @refill_fl(ptr noundef %adap, ptr noundef %cond, i32 noundef %227, i32 noundef 264736) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %land.lhs.true.i.recycle.i353_crit_edge, label %land.lhs.true.i.use_orig_buf.i_crit_edge

land.lhs.true.i.use_orig_buf.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %use_orig_buf.i

land.lhs.true.i.recycle.i353_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recycle.i353

use_orig_buf.i:                                   ; preds = %land.lhs.true.i.use_orig_buf.i_crit_edge, %if.end14.i.use_orig_buf.i_crit_edge, %if.else.i352.use_orig_buf.i_crit_edge
  %228 = ptrtoint ptr %pdev45.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %pdev45.i, align 8
  %dev31.i = getelementptr inbounds %struct.pci_dev, ptr %229, i32 0, i32 44
  %dma_addr32.i = getelementptr %struct.rx_sw_desc, ptr %193, i32 %195, i32 1
  %230 = ptrtoint ptr %dma_addr32.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %dma_addr32.i, align 4
  %232 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %cond, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev31.i, i32 noundef %231, i32 noundef %233, i32 noundef 2, i32 noundef 0) #11
  %234 = ptrtoint ptr %arrayidx.i334 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i334, align 4
  %call33.i = call ptr @skb_put(ptr noundef %235, i32 noundef %and76) #11
  %size.i.i = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 3
  %236 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %size.i.i, align 4
  %238 = ptrtoint ptr %credits.i336 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %credits.i336, align 4
  %sub.i.i = sub i32 %237, %239
  %240 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 16) #11
  %call.i69.i = call fastcc i32 @refill_fl(ptr noundef %adap, ptr noundef %cond, i32 noundef %240, i32 noundef 264736) #11
  br label %if.end80

if.end80:                                         ; preds = %use_orig_buf.i, %recycle.i353, %cleanup.thread
  %skb.1 = phi ptr [ %retval.0.i, %cleanup.thread ], [ %skb.0.i, %recycle.i353 ], [ %235, %use_orig_buf.i ]
  %tobool81.not = icmp eq ptr %skb.1, null
  br i1 %tobool81.not, label %if.then90, label %if.else95, !prof !86

if.then90:                                        ; preds = %if.end80
  br i1 %cmp, label %if.end93, label %if.then90.cleanup171.thread_crit_edge

if.then90.cleanup171.thread_crit_edge:            ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171.thread

if.end93:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %241 = ptrtoint ptr %rx_drops to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rx_drops, align 4
  %inc94 = add i32 %242, 1
  store i32 %inc94, ptr %rx_drops, align 4
  br label %cleanup118.thread

if.else95:                                        ; preds = %if.end80
  %243 = ptrtoint ptr %r.0433 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %r.0433, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -93, i8 %244)
  %cmp99 = icmp eq i8 %244, -93
  br i1 %cmp99, label %if.then107, label %if.else95.cleanup118.thread_crit_edge, !prof !86

if.else95.cleanup118.thread_crit_edge:            ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup118.thread

if.then107:                                       ; preds = %if.else95
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %245 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len1.i, align 4
  %sub.i356 = add i32 %246, -2
  store i32 %sub.i356, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %247 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i356, i32 %248)
  %cmp.i357 = icmp ult i32 %sub.i356, %248
  br i1 %cmp.i357, label %do.body4.i, label %__skb_pull.exit, !prof !86

do.body4.i:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !120
  unreachable

__skb_pull.exit:                                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  %data.i358 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %249 = ptrtoint ptr %data.i358 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %data.i358, align 4
  %add.ptr.i = getelementptr i8, ptr %250, i32 2
  store ptr %add.ptr.i, ptr %data.i358, align 4
  br label %cleanup118.thread

cleanup118.thread:                                ; preds = %__skb_pull.exit, %if.else95.cleanup118.thread_crit_edge, %if.end93, %cleanup
  %skb.2 = phi ptr [ null, %cleanup ], [ null, %if.end93 ], [ %skb.1, %__skb_pull.exit ], [ %skb.1, %if.else95.cleanup118.thread_crit_edge ]
  %cidx111 = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 4
  %251 = ptrtoint ptr %cidx111 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cidx111, align 4
  %inc112 = add i32 %252, 1
  %size = getelementptr inbounds %struct.sge_fl, ptr %cond, i32 0, i32 3
  %253 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc112, i32 %254)
  %cmp113 = icmp eq i32 %inc112, %254
  %spec.store.select = select i1 %cmp113, i32 0, i32 %inc112
  %255 = ptrtoint ptr %cidx111 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %spec.store.select, ptr %cidx111, align 4
  br label %if.end125

if.else121:                                       ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  %256 = ptrtoint ptr %pure_rsps to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %pure_rsps, align 4
  %inc122 = add i32 %257, 1
  store i32 %inc122, ptr %pure_rsps, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else121, %cleanup118.thread, %if.end41, %__skb_put_data.exit
  %ethpad.0 = phi i32 [ 2, %__skb_put_data.exit ], [ 0, %if.end41 ], [ 2, %if.else121 ], [ 2, %cleanup118.thread ]
  %lro.0 = phi i32 [ %19, %__skb_put_data.exit ], [ %19, %if.end41 ], [ %19, %if.else121 ], [ %and52, %cleanup118.thread ]
  %skb.4 = phi ptr [ %call.i, %__skb_put_data.exit ], [ %call.i.i, %if.end41 ], [ null, %if.else121 ], [ %skb.2, %cleanup118.thread ]
  %rss_hi.0 = phi i32 [ -2147483648, %__skb_put_data.exit ], [ %23, %if.end41 ], [ %23, %if.else121 ], [ %23, %cleanup118.thread ]
  %and126 = and i32 %27, 16744447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end130_crit_edge, label %if.then128

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  %and129 = and i32 %27, 8388736
  %or = or i32 %and129, %sleeping.0439
  %shr.i = lshr i32 %27, 16
  %and.i359 = and i32 %shr.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i359)
  %tobool.not.i360 = icmp eq i32 %and.i359, 0
  br i1 %tobool.not.i360, label %if.then128.if.end.i_crit_edge, label %if.then.i362

if.then128.if.end.i_crit_edge:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i362:                                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  %258 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %processed.i, align 4
  %add.i361 = add i32 %259, %and.i359
  store i32 %add.i361, ptr %processed.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i362, %if.then128.if.end.i_crit_edge
  %shr1.i = lshr i32 %27, 8
  %and2.i = and i32 %shr1.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then4.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %processed7.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %processed7.i, align 4
  %add8.i = add i32 %261, %and2.i
  store i32 %add8.i, ptr %processed7.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i.if.end9.i_crit_edge
  %and11.i = and i32 %27, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end130_crit_edge, label %if.then13.i

if.end9.i.if.end130_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %processed16.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %processed16.i, align 4
  %add17.i = add i32 %263, %and11.i
  store i32 %add17.i, ptr %processed16.i, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then13.i, %if.end9.i.if.end130_crit_edge, %if.end125.if.end130_crit_edge
  %sleeping.1 = phi i32 [ %sleeping.0439, %if.end125.if.end130_crit_edge ], [ %or, %if.end9.i.if.end130_crit_edge ], [ %or, %if.then13.i ]
  %incdec.ptr = getelementptr %struct.rsp_desc, ptr %r.0433, i32 1
  %264 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %cidx, align 4
  %inc132 = add i32 %265, 1
  store i32 %inc132, ptr %cidx, align 4
  %266 = ptrtoint ptr %size133 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %size133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc132, i32 %267)
  %cmp134 = icmp eq i32 %inc132, %267
  br i1 %cmp134, label %if.then142, label %if.end130.if.end145_crit_edge, !prof !86

if.end130.if.end145_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then142:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %268 = ptrtoint ptr %cidx to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %cidx, align 4
  %269 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %gen.i, align 4
  %xor = xor i32 %270, 1
  store i32 %xor, ptr %gen.i, align 4
  %271 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %desc, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end130.if.end145_crit_edge
  %r.1 = phi ptr [ %272, %if.then142 ], [ %incdec.ptr, %if.end130.if.end145_crit_edge ]
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %r.1) #11, !srcloc !98
  %273 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rspq, align 4
  %inc146 = add i32 %274, 1
  store i32 %inc146, ptr %rspq, align 4
  %275 = ptrtoint ptr %size133 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %size133, align 4
  %div306 = lshr i32 %276, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc146, i32 %div306)
  %cmp148.not = icmp ult i32 %inc146, %div306
  br i1 %cmp148.not, label %if.end145.if.end153_crit_edge, label %if.then150

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %277 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %cntxt_id.i, align 4
  %shl.i = shl i32 %278, 29
  %or.i = or i32 %shl.i, %inc146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  call void @arm_heavy_mb() #11
  %279 = call i32 @llvm.bswap.i32(i32 %or.i) #11
  %280 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i363 = getelementptr i8, ptr %281, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i363, i32 %279) #11, !srcloc !93
  %282 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %rspq, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end145.if.end153_crit_edge
  %cmp155.not = icmp eq ptr %skb.4, null
  %and154 = and i32 %27, 620756992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool157.not = icmp eq i32 %and154, 0
  %or.cond = select i1 %cmp155.not, i1 true, i1 %tobool157.not
  br i1 %or.cond, label %if.end153.cleanup171_crit_edge, label %if.then158

if.end153.cleanup171_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.then158:                                       ; preds = %if.end153
  br i1 %cmp, label %if.then160, label %if.else161

if.then160:                                       ; preds = %if.then158
  %data.i364 = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 19
  %283 = ptrtoint ptr %data.i364 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %data.i364, align 4
  %add.ptr.i365 = getelementptr i8, ptr %284, i32 %ethpad.0
  %add.i367 = or i32 %ethpad.0, 8
  %call1.i = call ptr @skb_pull(ptr noundef nonnull %skb.4, i32 noundef %add.i367) #11
  %iff.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %add.ptr.i365, i32 0, i32 1
  %285 = ptrtoint ptr %iff.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %bf.load.i = load i8, ptr %iff.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %idxprom.i = zext i8 %bf.clear.i to i32
  %arrayidx.i368 = getelementptr %struct.adapter, ptr %adap, i32 0, i32 21, i32 %idxprom.i
  %286 = ptrtoint ptr %arrayidx.i368 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i368, align 4
  %call2.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.4, ptr noundef %287) #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 18
  %288 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 %call2.i, ptr %protocol.i, align 8
  %289 = getelementptr inbounds %struct.anon, ptr %skb.4, i32 0, i32 2
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 8
  %add.ptr.i72.i = getelementptr i8, ptr %291, i32 2304
  %features.i = getelementptr inbounds %struct.net_device, ptr %291, i32 0, i32 23
  %292 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %features.i, align 16
  %and.i369 = and i64 %293, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i369)
  %tobool.not.i370 = icmp eq i64 %and.i369, 0
  br i1 %tobool.not.i370, label %if.then160.if.end.i376_crit_edge, label %land.lhs.true.i371

if.then160.if.end.i376_crit_edge:                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i376

land.lhs.true.i371:                               ; preds = %if.then160
  %294 = ptrtoint ptr %iff.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %bf.load4.i = load i8, ptr %iff.i, align 1
  %295 = and i8 %bf.load4.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool6.not.i = icmp eq i8 %295, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i371.if.end.i376_crit_edge, label %land.lhs.true7.i

land.lhs.true.i371.if.end.i376_crit_edge:         ; preds = %land.lhs.true.i371
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i376

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i371
  %csum.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %add.ptr.i365, i32 0, i32 2
  %296 = ptrtoint ptr %csum.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %csum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %297)
  %cmp.i372 = icmp eq i16 %297, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4.i)
  %tobool13.not.i = icmp sgt i8 %bf.load4.i, -1
  %or.cond.i373 = select i1 %cmp.i372, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i373, label %if.then.i374, label %land.lhs.true7.i.if.end.i376_crit_edge

land.lhs.true7.i.if.end.i376_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i376

if.then.i374:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  %298 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx14.i, align 4
  %inc.i = add i32 %299, 1
  store i32 %inc.i, ptr %arrayidx14.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15
  %300 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %bf.load15.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear16.i = and i16 %bf.load15.i, -1537
  %bf.set.i = or i16 %bf.clear16.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end.i376

if.end.i376:                                      ; preds = %if.then.i374, %land.lhs.true7.i.if.end.i376_crit_edge, %land.lhs.true.i371.if.end.i376_crit_edge, %if.then160.if.end.i376_crit_edge
  %first_qset.i = getelementptr i8, ptr %291, i32 2314
  %301 = ptrtoint ptr %first_qset.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %first_qset.i, align 2
  %idxprom18.i = zext i8 %302 to i32
  %arrayidx19.i = getelementptr [8 x %struct.sge_qset], ptr %sge.i, i32 0, i32 %idxprom18.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %arrayidx19.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 1408
  %conv20.i = trunc i32 %sub.ptr.div.i to i16
  %add.i.i375 = add i16 %conv20.i, 1
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 10
  %303 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %add.i.i375, ptr %queue_mapping.i.i, align 8
  %304 = ptrtoint ptr %iff.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %bf.load21.i = load i8, ptr %iff.i, align 1
  %305 = and i8 %bf.load21.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool24.not.i = icmp eq i8 %305, 0
  br i1 %tobool24.not.i, label %if.end.i376.if.end29.i_crit_edge, label %if.then25.i

if.end.i376.if.end29.i_crit_edge:                 ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #13
  %306 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx27.i, align 4
  %inc28.i = add i32 %307, 1
  store i32 %inc28.i, ptr %arrayidx27.i, align 4
  %vlan.i = getelementptr inbounds %struct.cpl_rx_pkt, ptr %add.ptr.i365, i32 0, i32 3
  %308 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %vlan.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 9
  %310 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 10
  %311 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %309, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 3
  %312 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %if.end.i376.if.end29.i_crit_edge
  %313 = ptrtoint ptr %polling.i379 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %polling.i379, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool30.not.i = icmp eq i32 %314, 0
  br i1 %tobool30.not.i, label %if.else43.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lro.0)
  %tobool32.not.i = icmp eq i32 %lro.0, 0
  br i1 %tobool32.not.i, label %if.else35.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = call i32 @napi_gro_receive(ptr noundef %napi.i.i, ptr noundef nonnull %skb.4) #11
  br label %if.end164

if.else35.i:                                      ; preds = %if.then31.i
  %flags.i = getelementptr i8, ptr %291, i32 6136
  %315 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool36.not.i = icmp eq i32 %316, 0
  br i1 %tobool36.not.i, label %if.else35.i.if.end40.i_crit_edge, label %if.then39.i, !prof !88

if.else35.i.if.end40.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @cxgb3_process_iscsi_prov_pack(ptr noundef %add.ptr.i72.i, ptr noundef nonnull %skb.4) #11
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.else35.i.if.end40.i_crit_edge
  %call41.i = call i32 @netif_receive_skb(ptr noundef nonnull %skb.4) #11
  br label %if.end164

if.else43.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call44.i = call i32 @netif_rx(ptr noundef nonnull %skb.4) #11
  br label %if.end164

if.else161:                                       ; preds = %if.then158
  %317 = ptrtoint ptr %offload_pkts to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %offload_pkts, align 4
  %inc162 = add i32 %318, 1
  store i32 %inc162, ptr %offload_pkts, align 4
  %319 = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 5
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %rss_hi.0, ptr %319, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 6
  %321 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %25, ptr %priority, align 4
  %data.i.i377 = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 19
  %322 = ptrtoint ptr %data.i.i377 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %data.i.i377, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 18
  %324 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %323 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %325 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i378 = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 21
  %326 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %conv.i.i378, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 20
  %327 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %conv.i.i378, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.4, i32 0, i32 15, i32 0, i32 19
  %328 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv.i.i378, ptr %transport_header.i.i, align 2
  %329 = ptrtoint ptr %polling.i379 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %polling.i379, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool.not.i380 = icmp eq i32 %330, 0
  br i1 %tobool.not.i380, label %if.else.i386, label %if.then.i384

if.then.i384:                                     ; preds = %if.else161
  %inc.i381 = add i32 %ngathered.0442, 1
  %arrayidx.i382 = getelementptr ptr, ptr %offload_skbs, i32 %ngathered.0442
  %331 = ptrtoint ptr %arrayidx.i382 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %skb.4, ptr %arrayidx.i382, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i381)
  %cmp.i383 = icmp eq i32 %inc.i381, 8
  br i1 %cmp.i383, label %if.then1.i, label %if.then.i384.if.end164_crit_edge

if.then.i384.if.end164_crit_edge:                 ; preds = %if.then.i384
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then1.i:                                       ; preds = %if.then.i384
  call void @__sanitizer_cov_trace_pc() #13
  %332 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %recv.i, align 4
  %call.i385 = call i32 %333(ptr noundef %adap, ptr noundef nonnull %offload_skbs, i32 noundef 8) #11
  %334 = ptrtoint ptr %offload_bundles.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %offload_bundles.i, align 4
  %inc2.i = add i32 %335, 1
  store i32 %inc2.i, ptr %offload_bundles.i, align 4
  br label %if.end164

if.else.i386:                                     ; preds = %if.else161
  %336 = ptrtoint ptr %rx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rx_queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %337, %rx_queue.i.i
  %338 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %prev.i.i.i.i, align 4
  %340 = ptrtoint ptr %skb.4 to i32
  call void @__asan_store4_noabort(i32 %340)
  store volatile ptr %rx_queue.i.i, ptr %skb.4, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %skb.4, i32 0, i32 1
  %341 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile ptr %339, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %skb.4, ptr %prev.i.i.i.i, align 4
  %342 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %342)
  store volatile ptr %skb.4, ptr %339, align 4
  %343 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %344, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.else.i386.if.end164_crit_edge

if.else.i386.if.end164_crit_edge:                 ; preds = %if.else.i386
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then.i.i:                                      ; preds = %if.else.i386
  %call.i.i.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i.i) #11
  br i1 %call.i.i.i, label %if.then.i.i.i387, label %if.then.i.i.if.end164_crit_edge

if.then.i.i.if.end164_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then.i.i.i387:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__napi_schedule(ptr noundef %napi.i.i) #11
  br label %if.end164

if.end164:                                        ; preds = %if.then.i.i.i387, %if.then.i.i.if.end164_crit_edge, %if.else.i386.if.end164_crit_edge, %if.then1.i, %if.then.i384.if.end164_crit_edge, %if.else43.i, %if.end40.i, %if.then33.i
  %ngathered.1 = phi i32 [ %ngathered.0442, %if.then33.i ], [ %ngathered.0442, %if.end40.i ], [ %ngathered.0442, %if.else43.i ], [ 0, %if.then1.i ], [ %inc.i381, %if.then.i384.if.end164_crit_edge ], [ %ngathered.0442, %if.else.i386.if.end164_crit_edge ], [ %ngathered.0442, %if.then.i.i.if.end164_crit_edge ], [ %ngathered.0442, %if.then.i.i.i387 ]
  %and165 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.cleanup171_crit_edge, label %if.then167

if.end164.cleanup171_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.then167:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  %345 = ptrtoint ptr %pg_skb.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr null, ptr %pg_skb.i, align 4
  %346 = ptrtoint ptr %rx_recycle_buf14.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %rx_recycle_buf14.i, align 4
  br label %cleanup171

cleanup171:                                       ; preds = %if.then167, %if.end164.cleanup171_crit_edge, %if.end153.cleanup171_crit_edge
  %ngathered.3 = phi i32 [ %ngathered.1, %if.then167 ], [ %ngathered.1, %if.end164.cleanup171_crit_edge ], [ %ngathered.0442, %if.end153.cleanup171_crit_edge ]
  %budget_left.1 = add i32 %budget_left.0436, -1
  %tobool.not = icmp eq i32 %budget_left.1, 0
  br i1 %tobool.not, label %cleanup171.while.end_crit_edge, label %cleanup171.land.rhs_crit_edge, !prof !86

cleanup171.land.rhs_crit_edge:                    ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

cleanup171.while.end_crit_edge:                   ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup171.while.end_crit_edge, %cleanup171.thread, %land.rhs.while.end_crit_edge
  %sleeping.0424 = phi i32 [ %sleeping.0439, %cleanup171.thread ], [ %sleeping.0439, %land.rhs.while.end_crit_edge ], [ %sleeping.1, %cleanup171.while.end_crit_edge ]
  %ngathered.0416 = phi i32 [ %ngathered.0442, %cleanup171.thread ], [ %ngathered.0442, %land.rhs.while.end_crit_edge ], [ %ngathered.3, %cleanup171.while.end_crit_edge ]
  %budget_left.2 = phi i32 [ %budget_left.1406, %cleanup171.thread ], [ %budget_left.0436, %land.rhs.while.end_crit_edge ], [ 0, %cleanup171.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngathered.0416)
  %tobool.not.i390 = icmp eq i32 %ngathered.0416, 0
  br i1 %tobool.not.i390, label %while.end.deliver_partial_bundle.exit_crit_edge, label %if.then.i395

while.end.deliver_partial_bundle.exit_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %deliver_partial_bundle.exit

if.then.i395:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %offload_bundles.i391 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 2, i32 15
  %347 = ptrtoint ptr %offload_bundles.i391 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %offload_bundles.i391, align 4
  %inc.i392 = add i32 %348, 1
  store i32 %inc.i392, ptr %offload_bundles.i391, align 4
  %recv.i393 = getelementptr inbounds %struct.t3cdev, ptr %adap, i32 0, i32 6
  %349 = ptrtoint ptr %recv.i393 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %recv.i393, align 4
  %call.i394 = call i32 %350(ptr noundef %adap, ptr noundef nonnull %offload_skbs, i32 noundef %ngathered.0416) #11
  br label %deliver_partial_bundle.exit

deliver_partial_bundle.exit:                      ; preds = %if.then.i395, %while.end.deliver_partial_bundle.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleeping.0424)
  %tobool184.not = icmp eq i32 %sleeping.0424, 0
  br i1 %tobool184.not, label %deliver_partial_bundle.exit.do.end_crit_edge, label %if.then185

deliver_partial_bundle.exit.do.end_crit_edge:     ; preds = %deliver_partial_bundle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then185:                                       ; preds = %deliver_partial_bundle.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @check_ring_db(ptr noundef %adap, ptr noundef %qs, i32 noundef %sleeping.0424)
  br label %do.end

do.end:                                           ; preds = %if.then185, %deliver_partial_bundle.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %budget_left.2476480 = phi i32 [ %budget_left.2, %if.then185 ], [ %budget_left.2, %deliver_partial_bundle.exit.do.end_crit_edge ], [ 0, %entry.do.end_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !121
  %txq_stopped = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 9
  %351 = ptrtoint ptr %txq_stopped to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %txq_stopped, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp190.not = icmp eq i32 %352, 0
  br i1 %cmp190.not, label %do.end.if.end199_crit_edge, label %if.then198, !prof !88

do.end.if.end199_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then198:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @restart_tx(ptr noundef %qs)
  br label %if.end199

if.end199:                                        ; preds = %if.then198, %do.end.if.end199_crit_edge
  %sub = sub i32 %budget, %budget_left.2476480
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offload_skbs) #11
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lro_add_page(ptr noundef %adap, ptr noundef %qs, ptr nocapture noundef %fl, i32 noundef %len, i32 noundef %complete) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 12
  %0 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdesc, align 4
  %cidx = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 4
  %2 = ptrtoint ptr %cidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cidx, align 4
  %arrayidx = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3
  %netdev = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 7
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %nomem = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 5
  %6 = ptrtoint ptr %nomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nomem, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %napi = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 1
  %call1 = tail call ptr @napi_get_frags(ptr noundef %napi) #11
  %tobool2.not = icmp eq ptr %call1, null
  %lnot.ext = zext i1 %tobool2.not to i32
  %8 = ptrtoint ptr %nomem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %nomem, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skb.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  %credits = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 1
  %9 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %credits, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %credits, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %dma_addr = getelementptr %struct.rx_sw_desc, ptr %1, i32 %3, i32 1
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr, align 4
  %15 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fl, align 4
  %sub = add i32 %16, -128
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %14, i32 noundef %sub, i32 noundef 2) #11
  %p_cnt = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %p_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_cnt, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %dec4 = add i32 %20, -1
  store i32 %dec4, ptr %18, align 4
  %21 = load ptr, ptr %p_cnt, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not = icmp eq i32 %23, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %pg_chunk = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 7
  %26 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pg_chunk, align 4
  %cmp.not = icmp eq ptr %25, %27
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %mapping = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx, i32 0, i32 4
  %30 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mapping, align 4
  %alloc_size = getelementptr inbounds %struct.sge_fl, ptr %fl, i32 0, i32 10
  %32 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %alloc_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 0) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %skb.0, null
  br i1 %tobool12.not, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !88

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %38, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %35 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %39, %if.end.i.i ]
  %40 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !86

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.40) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@lro_add_page, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %40) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete)
  %tobool15.not = icmp eq i32 %complete, 0
  br i1 %tobool15.not, label %put_page.exit.cleanup_crit_edge, label %if.then16

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %nomem to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nomem, align 16
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 12
  %nr_frags22 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %nr_frags22 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nr_frags22, align 2
  %conv = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool23.not = icmp eq i8 %48, 0
  br i1 %tobool23.not, label %if.then24, label %if.else43

if.then24:                                        ; preds = %if.end19
  %va = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx, i32 0, i32 1
  %49 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %va, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 2
  %lro_va = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 6
  %51 = ptrtoint ptr %lro_va to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr, ptr %lro_va, align 4
  %52 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 23
  %54 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %features, align 16
  %and = and i64 %55, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool26.not = icmp eq i64 %and, 0
  br i1 %tobool26.not, label %if.then24.if.else_crit_edge, label %land.lhs.true27

if.then24.if.else_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true27:                                  ; preds = %if.then24
  %csum_valid = getelementptr i8, ptr %50, i32 3
  %56 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %csum_valid, align 1
  %57 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool29.not = icmp eq i8 %57, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.else_crit_edge, label %land.lhs.true30

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %csum = getelementptr i8, ptr %50, i32 4
  %58 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %csum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp32 = icmp eq i16 %59, -1
  br i1 %cmp32, label %if.then34, label %land.lhs.true30.if.else_crit_edge

land.lhs.true30.if.else_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15
  %60 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load35 = load i16, ptr %ip_summed, align 8
  %bf.clear36 = and i16 %bf.load35, -1537
  %bf.set = or i16 %bf.clear36, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %arrayidx37 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 12, i32 1
  %61 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx37, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %arrayidx37, align 4
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true30.if.else_crit_edge, %land.lhs.true27.if.else_crit_edge, %if.then24.if.else_crit_edge
  %ip_summed38 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15
  %63 = ptrtoint ptr %ip_summed38 to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load39 = load i16, ptr %ip_summed38, align 8
  %bf.clear40 = and i16 %bf.load39, -1537
  store i16 %bf.clear40, ptr %ip_summed38, align 8
  br label %if.end45

if.else43:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %lro_va44 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 6
  %64 = ptrtoint ptr %lro_va44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lro_va44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.else, %if.then34
  %cpl.0 = phi ptr [ %65, %if.else43 ], [ %add.ptr, %if.then34 ], [ %add.ptr, %if.else ]
  %offset.0 = phi i32 [ 0, %if.else43 ], [ 10, %if.then34 ], [ 10, %if.else ]
  %sub46 = sub i32 %len, %offset.0
  %add.ptr47 = getelementptr %struct.bio_vec, ptr %frags, i32 %conv
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %add.ptr47, align 4
  %offset49 = getelementptr inbounds %struct.fl_pg_chunk, ptr %arrayidx, i32 0, i32 2
  %69 = ptrtoint ptr %offset49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset49, align 4
  %add = add i32 %70, %offset.0
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %frags, i32 %conv, i32 2
  %71 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %bv_offset.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %frags, i32 %conv, i32 1
  %72 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub46, ptr %bv_len.i, align 4
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %73 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len50, align 4
  %add51 = add i32 %74, %sub46
  store i32 %add51, ptr %len50, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %75 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len, align 8
  %add52 = add i32 %76, %sub46
  store i32 %add52, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 20
  %77 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %truesize, align 8
  %add53 = add i32 %78, %sub46
  store i32 %add53, ptr %truesize, align 8
  %79 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i, align 4
  %nr_frags55 = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %nr_frags55 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nr_frags55, align 2
  %inc56 = add i8 %82, 1
  store i8 %inc56, ptr %nr_frags55, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %complete)
  %tobool57.not = icmp eq i32 %complete, 0
  br i1 %tobool57.not, label %if.end45.cleanup_crit_edge, label %if.end59

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end45
  %sge = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  %first_qset = getelementptr i8, ptr %5, i32 2314
  %83 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %first_qset, align 2
  %idxprom = zext i8 %84 to i32
  %arrayidx61 = getelementptr [8 x %struct.sge_qset], ptr %sge, i32 0, i32 %idxprom
  %sub.ptr.lhs.cast = ptrtoint ptr %qs to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx61 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 1408
  %conv62 = trunc i32 %sub.ptr.div to i16
  %add.i = add i16 %conv62, 1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 10
  %85 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %add.i, ptr %queue_mapping.i, align 8
  %vlan_valid = getelementptr inbounds %struct.cpl_rx_pkt, ptr %cpl.0, i32 0, i32 1
  %86 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load63 = load i8, ptr %vlan_valid, align 1
  %87 = and i8 %bf.load63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool66.not = icmp eq i8 %87, 0
  br i1 %tobool66.not, label %if.end59.if.end71_crit_edge, label %if.then67

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then67:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx69 = getelementptr %struct.sge_qset, ptr %qs, i32 0, i32 12, i32 3
  %88 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx69, align 4
  %inc70 = add i32 %89, 1
  store i32 %inc70, ptr %arrayidx69, align 4
  %vlan = getelementptr inbounds %struct.cpl_rx_pkt, ptr %cpl.0, i32 0, i32 3
  %90 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vlan, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 9
  %92 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 10
  %93 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %91, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 3
  %94 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end59.if.end71_crit_edge
  %napi72 = getelementptr inbounds %struct.sge_qset, ptr %qs, i32 0, i32 1
  %call73 = tail call i32 @napi_gro_frags(ptr noundef %napi72) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end45.cleanup_crit_edge, %if.then16, %put_page.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recycle_rx_buf(ptr nocapture noundef readonly %adap, ptr nocapture noundef %q, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.rx_desc, ptr %1, i32 %idx
  %pidx = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 5
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pidx, align 4
  %arrayidx2 = getelementptr %struct.rx_desc, ptr %1, i32 %3
  %sdesc = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 12
  %4 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdesc, align 4
  %arrayidx4 = getelementptr %struct.rx_sw_desc, ptr %5, i32 %3
  %arrayidx6 = getelementptr %struct.rx_sw_desc, ptr %5, i32 %idx
  %6 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx6, i32 24)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx2, align 4
  %addr_hi = getelementptr %struct.rx_desc, ptr %1, i32 %idx, i32 3
  %10 = ptrtoint ptr %addr_hi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_hi, align 4
  %addr_hi8 = getelementptr %struct.rx_desc, ptr %1, i32 %3, i32 3
  %12 = ptrtoint ptr %addr_hi8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %addr_hi8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %gen = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 6
  %13 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gen, align 4
  %shl = shl i32 %14, 31
  %len_gen = getelementptr %struct.rx_desc, ptr %1, i32 %3, i32 1
  %15 = ptrtoint ptr %len_gen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %len_gen, align 4
  %16 = load i32, ptr %gen, align 4
  %gen2 = getelementptr %struct.rx_desc, ptr %1, i32 %3, i32 2
  %17 = ptrtoint ptr %gen2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %gen2, align 4
  %18 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pidx, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %pidx, align 4
  %size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %21)
  %cmp = icmp eq i32 %inc, %21
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pidx, align 4
  %23 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gen, align 4
  %xor = xor i32 %24, 1
  store i32 %xor, ptr %gen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %credits = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 1
  %25 = ptrtoint ptr %credits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %credits, align 4
  %inc14 = add i32 %26, 1
  store i32 %inc14, ptr %credits, align 4
  %pend_cred = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 2
  %27 = ptrtoint ptr %pend_cred to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pend_cred, align 4
  %inc15 = add i32 %28, 1
  store i32 %inc15, ptr %pend_cred, align 4
  %div5.i = lshr i32 %inc14, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc15, i32 %div5.i)
  %cmp.not.i = icmp ult i32 %inc15, %div5.i
  br i1 %cmp.not.i, label %if.end.ring_fl_db.exit_crit_edge, label %if.then.i

if.end.ring_fl_db.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ring_fl_db.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %pend_cred to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pend_cred, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %cntxt_id.i = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 14
  %30 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cntxt_id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #11, !srcloc !93
  br label %ring_fl_db.exit

ring_fl_db.exit:                                  ; preds = %if.then.i, %if.end.ring_fl_db.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb3_process_iscsi_prov_pack(ptr noundef %pi, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %1)
  %cmp.i.not = icmp eq i16 %1, 2054
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.if.end6_crit_edge, label %if.end.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %ar_op.i = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ar_op.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ar_op.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp.not.i = icmp eq i16 %11, 1
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end3.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.arphdr, ptr %add.ptr.i.i.i, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 56
  %12 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr_len.i, align 1
  %conv4.i = zext i8 %13 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %conv4.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv4.i
  %14 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %tip.0.copyload.i = load i32, ptr %add.ptr9.i, align 1
  %iscsi_ipv4addr.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 9
  %15 = ptrtoint ptr %iscsi_ipv4addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iscsi_ipv4addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tip.0.copyload.i, i32 %16)
  %cmp10.not.i = icmp eq i32 %tip.0.copyload.i, %16
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end3.i.if.end6_crit_edge

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end13.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %sip.0.copyload.i = load i32, ptr %add.ptr5.i, align 1
  %iscsic.i = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 10
  tail call void @arp_send(i32 noundef 2, i32 noundef 2054, i32 noundef %sip.0.copyload.i, ptr noundef nonnull %4, i32 noundef %tip.0.copyload.i, ptr noundef %add.ptr.i, ptr noundef %iscsic.i, ptr noundef %add.ptr.i) #11
  br label %if.end6

if.end:                                           ; preds = %entry
  %recv = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv, align 8
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %19(ptr noundef %pi, ptr noundef %skb) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge, %if.end13.i, %if.end3.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %if.then.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_slow_intr_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_pg_chunk(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %q, ptr nocapture noundef %sd, i32 noundef %gfp, i32 noundef %order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_chunk = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7
  %0 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_chunk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = shl i32 4096, %order
  br label %if.end40

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef %order, i32 noundef 0, ptr noundef null) #11
  %2 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %pg_chunk, align 4
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %if.then.return_crit_edge, label %if.end, !prof !86

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  %call12 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  %va = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %va, align 4
  %shl = shl i32 4096, %order
  %add.ptr = getelementptr i8, ptr %call12, i32 %shl
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 -128
  %p_cnt = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %p_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr16, ptr %p_cnt, align 4
  %offset = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pg_chunk, align 4
  %alloc_size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  %10 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_size, align 4
  %call21 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef 2, i32 noundef 0) #11
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev23, i32 noundef %call21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i.not = icmp eq i32 %call21, -1
  br i1 %cmp.i.not, label %if.then32, label %cleanup, !prof !86

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pg_chunk, align 4
  tail call void @__free_pages(ptr noundef %15, i32 noundef %order) #11
  %16 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pg_chunk, align 4
  br label %return

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mapping39 = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %mapping39 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call21, ptr %mapping39, align 4
  br label %if.end40

if.end40:                                         ; preds = %cleanup, %entry.if.end40_crit_edge
  %shl47.pre-phi = phi i32 [ %.pre, %entry.if.end40_crit_edge ], [ %shl, %cleanup ]
  %18 = call ptr @memcpy(ptr %sd, ptr %pg_chunk, i32 20)
  %p_cnt42 = getelementptr inbounds %struct.fl_pg_chunk, ptr %sd, i32 0, i32 3
  %19 = ptrtoint ptr %p_cnt42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p_cnt42, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %20) #11, !srcloc !98
  %21 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %q, align 4
  %offset44 = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %offset44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset44, align 4
  %add = add i32 %24, %22
  store i32 %add, ptr %offset44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl47.pre-phi)
  %cmp = icmp eq i32 %add, %shl47.pre-phi
  br i1 %cmp, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pg_chunk, align 4
  br label %if.end57

if.else:                                          ; preds = %if.end40
  %va53 = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %va53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %va53, align 4
  %add.ptr54 = getelementptr i8, ptr %27, i32 %22
  store ptr %add.ptr54, ptr %va53, align 4
  %28 = ptrtoint ptr %pg_chunk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pg_chunk, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !88

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %29 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %35 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %36, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !86

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.43) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !128
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@alloc_pg_chunk, %if.then.i.i.i.i)) #11
          to label %if.end57 [label %if.then.i.i.i.i], !srcloc !126

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %34, i32 noundef 1) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then.i.i.i.i, %do.end5.i.i, %if.then48
  %offset58 = getelementptr inbounds %struct.fl_pg_chunk, ptr %sd, i32 0, i32 2
  %38 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp59 = icmp eq i32 %39, 0
  %40 = ptrtoint ptr %p_cnt42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p_cnt42, align 4
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %41, align 4
  br label %return

if.else62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %41, align 4
  %add64 = add i32 %44, 1
  store i32 %add64, ptr %41, align 4
  br label %return

return:                                           ; preds = %if.else62, %if.then60, %if.then32, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.else62 ], [ 0, %if.then60 ], [ -12, %if.then.return_crit_edge ], [ -5, %if.then32 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_rx_desc(ptr noundef %pdev, ptr nocapture noundef readonly %q, ptr nocapture noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %use_pages = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 8
  %0 = ptrtoint ptr %use_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %p_cnt = getelementptr inbounds %struct.fl_pg_chunk, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %p_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_cnt, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %5, align 4
  %8 = load ptr, ptr %p_cnt, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %mapping = getelementptr inbounds %struct.fl_pg_chunk, ptr %d, i32 0, i32 4
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapping, align 4
  %alloc_size = getelementptr inbounds %struct.sge_fl, ptr %q, i32 0, i32 10
  %13 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alloc_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %12, i32 noundef %14, i32 noundef 2, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !88

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !86

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.40) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_rx_desc, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !126

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %21, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end8_crit_edge

folio_put_testzero.exit.i.i.if.end8_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %21) #11
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.rx_sw_desc, ptr %d, i32 0, i32 1
  %25 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr, align 4
  %27 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %q, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #11
  %29 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d, align 4
  tail call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end8_crit_edge
  %31 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %d, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_disable_fl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_enable_ecntxt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_sge_disable_rspcntxt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !69, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 1297, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @t3_eth_xmit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @t3_eth_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 2877, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @t3_sge_err_intr_handler._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @t3_sge_err_intr_handler._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 2880, i32 3}
!16 = !{ptr @t3_sge_err_intr_handler._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @t3_sge_err_intr_handler._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 2884, i32 3}
!20 = !{ptr @t3_sge_err_intr_handler._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @t3_sge_err_intr_handler._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 2889, i32 3}
!24 = !{ptr @t3_sge_err_intr_handler._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @t3_sge_err_intr_handler._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @t3_sge_alloc_qset.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3049, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @t3_sge_alloc_qset.__key.18, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3050, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @t3_sge_alloc_qset.__key.20, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3088, i32 3}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @t3_sge_alloc_qset.__key.22, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3092, i32 2}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @t3_sge_alloc_qset.__key.24, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3093, i32 2}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @t3_sge_alloc_qset.__key.26, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3101, i32 2}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3181, i32 3}
!46 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @t3_sge_alloc_qset._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @t3_sge_alloc_qset._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3186, i32 3}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @t3_sge_alloc_qset._entry.30, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @t3_sge_alloc_qset._entry_ptr.33, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3192, i32 3}
!56 = !{ptr @t3_sge_alloc_qset._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @t3_sge_alloc_qset._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @t3_sge_prep.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 3388, i32 2}
!60 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!63 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/mm.h", i32 717, i32 2}
!67 = !{ptr @skb_queue_head_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @flit_desc_map, !71, !"flit_desc_map", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/chelsio/cxgb3/sge.c", i32 152, i32 11}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2158052702, i64 2158057268, i64 2158052739, i64 2158052795, i64 2158052829, i64 2158052853, i64 2158052894, i64 2158052915, i64 2158052943, i64 2158052977}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2154673496, i64 2154673984, i64 2154673533, i64 2154673589, i64 2154673623, i64 2154673647, i64 2154673688, i64 2154673709, i64 2154673737, i64 2154673771}
!90 = !{i64 2158072928}
!91 = !{i64 2158064230}
!92 = !{i64 2157903321}
!93 = !{i64 6117871}
!94 = !{i64 2158077755}
!95 = !{i64 2158076947}
!96 = !{i64 2158079426}
!97 = !{i64 2158097006}
!98 = !{i64 940138}
!99 = !{i64 2158043296}
!100 = !{i64 2158096543}
!101 = !{i64 2158096695}
!102 = !{i64 6118289}
!103 = !{i64 2157902931}
!104 = !{i64 837860}
!105 = !{i64 835563}
!106 = !{i64 835373}
!107 = !{i64 2158083980}
!108 = !{i64 2158084273}
!109 = !{i64 2158081094}
!110 = !{i64 2158081385}
!111 = !{i64 2158047384}
!112 = !{i64 2158046833}
!113 = !{i64 2158048329}
!114 = !{i32 0, i32 33}
!115 = !{i64 2158065071}
!116 = !{i64 2158070411}
!117 = !{i64 2158091880}
!118 = !{i64 2154655478, i64 2154655966, i64 2154655515, i64 2154655571, i64 2154655605, i64 2154655629, i64 2154655670, i64 2154655691, i64 2154655719, i64 2154655753}
!119 = !{!"branch_weights", i32 2002, i32 2000}
!120 = !{i64 2154658446, i64 2154658934, i64 2154658483, i64 2154658539, i64 2154658573, i64 2154658597, i64 2154658638, i64 2154658659, i64 2154658687, i64 2154658721}
!121 = !{i64 2158093816}
!122 = !{i64 2153378473, i64 2153378956, i64 2153378510, i64 2153378566, i64 2153378600, i64 2153378624, i64 2153378665, i64 2153378686, i64 2153378714, i64 2153378748}
!123 = !{i64 2148531099}
!124 = !{i64 2148445832, i64 2148445864, i64 2148445893, i64 2148445927, i64 2148445958, i64 2148445981}
!125 = !{i64 2148531328}
!126 = !{i64 2148924462, i64 2148924467, i64 2148924480, i64 2148924524, i64 2148924558, i64 2148924579}
!127 = !{i64 2158050581}
!128 = !{i64 2153402446, i64 2153402930, i64 2153402483, i64 2153402539, i64 2153402573, i64 2153402597, i64 2153402638, i64 2153402659, i64 2153402687, i64 2153402721}
!129 = !{i64 2148442647, i64 2148442673, i64 2148442702, i64 2148442736, i64 2148442767, i64 2148442790}
