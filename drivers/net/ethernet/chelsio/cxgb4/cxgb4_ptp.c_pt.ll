; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.172, %union.anon.173, [48 x i8], %union.anon.174, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.176, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.172 = type { ptr }
%union.anon.173 = type { i64 }
%union.anon.174 = type { %struct.anon.175 }
%struct.anon.175 = type { i32, ptr }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.178, i32, i32, i32, i16, i16, %union.anon.180, i32, %union.anon.181, %union.anon.182, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.178 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.port_info = type { ptr, i16, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.link_config, ptr, %struct.port_stats, %struct.port_dcb_info, %struct.cxgb_fcoe, i8, %struct.hwtstamp_config, i8, ptr, i32, i8, i8, i8, i8, i8, i16, i16, i32, %struct.mutex, %struct.cxgb4_ethtool_lb_test }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.port_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.port_dcb_info = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x %struct.app_priority] }
%struct.app_priority = type { i8, i8, i16 }
%struct.cxgb_fcoe = type { i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cxgb4_ethtool_lb_test = type { %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fw_ptp_cmd = type { i32, i32, %union.fw_ptp, i64 }
%union.fw_ptp = type { %struct.fw_ptp_ts }
%struct.fw_ptp_ts = type { i8, i8, i16, i32, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.193, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.193 = type { ptr }

@cxgb4_ptprx_timestamping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PTP: %s error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxgb4_ptprx_timestamping\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_ptprx_timestamping._entry_ptr = internal global ptr @cxgb4_ptprx_timestamping._entry, section ".printk_index", align 4
@cxgb4_ptp_txtype._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgb4_ptp_txtype\00", [47 x i8] zeroinitializer }, align 32
@cxgb4_ptp_txtype._entry_ptr = internal global ptr @cxgb4_ptp_txtype._entry, section ".printk_index", align 4
@cxgb4_ptp_redirect_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxgb4_ptp_redirect_rx_packet\00", [35 x i8] zeroinitializer }, align 32
@cxgb4_ptp_redirect_rx_packet._entry_ptr = internal global ptr @cxgb4_ptp_redirect_rx_packet._entry, section ".printk_index", align 4
@cxgb4_ptp_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"cxgb4_clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @cxgb4_ptp_adjfreq, ptr null, ptr @cxgb4_ptp_adjtime, ptr @cxgb4_ptp_gettime, ptr null, ptr null, ptr @cxgb4_ptp_settime, ptr @cxgb4_ptp_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cxgb4_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->ptp_lock\00", [45 x i8] zeroinitializer }, align 32
@cxgb4_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 436, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PTP %s Clock registration has failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgb4_ptp_init\00", [17 x i8] zeroinitializer }, align 32
@cxgb4_ptp_init._entry_ptr = internal global ptr @cxgb4_ptp_init._entry, section ".printk_index", align 4
@cxgb4_ptp_adjfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_ptp_adjfreq\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_ptp_adjfreq._entry_ptr = internal global ptr @cxgb4_ptp_adjfreq._entry, section ".printk_index", align 4
@cxgb4_ptp_adjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_ptp_adjtime\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_ptp_adjtime._entry_ptr = internal global ptr @cxgb4_ptp_adjtime._entry, section ".printk_index", align 4
@cxgb4_ptp_fineadjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgb4_ptp_fineadjtime\00", [42 x i8] zeroinitializer }, align 32
@cxgb4_ptp_fineadjtime._entry_ptr = internal global ptr @cxgb4_ptp_fineadjtime._entry, section ".printk_index", align 4
@cxgb4_init_ptp_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgb4_init_ptp_timer\00", [43 x i8] zeroinitializer }, align 32
@cxgb4_init_ptp_timer._entry_ptr = internal global ptr @cxgb4_init_ptp_timer._entry, section ".printk_index", align 4
@cxgb4_ptp_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgb4_ptp_settime\00", [46 x i8] zeroinitializer }, align 32
@cxgb4_ptp_settime._entry_ptr = internal global ptr @cxgb4_ptp_settime._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 144, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 165, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"cxgb4_ptp_clock_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 399, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 429, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 435, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 225, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 296, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 257, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 379, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 358, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @cxgb4_init_ptp_timer._entry, ptr @cxgb4_init_ptp_timer._entry_ptr, ptr @cxgb4_ptp_adjfreq._entry, ptr @cxgb4_ptp_adjfreq._entry_ptr, ptr @cxgb4_ptp_adjtime._entry, ptr @cxgb4_ptp_adjtime._entry_ptr, ptr @cxgb4_ptp_fineadjtime._entry, ptr @cxgb4_ptp_fineadjtime._entry_ptr, ptr @cxgb4_ptp_init._entry, ptr @cxgb4_ptp_init._entry_ptr, ptr @cxgb4_ptp_redirect_rx_packet._entry, ptr @cxgb4_ptp_redirect_rx_packet._entry_ptr, ptr @cxgb4_ptp_settime._entry, ptr @cxgb4_ptp_settime._entry_ptr, ptr @cxgb4_ptp_txtype._entry, ptr @cxgb4_ptp_txtype._entry_ptr, ptr @cxgb4_ptprx_timestamping._entry, ptr @cxgb4_ptprx_timestamping._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cxgb4_ptp_clock_info, ptr @cxgb4_ptp_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptprx_timestamping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_txtype._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_redirect_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_adjfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_adjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_fineadjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_init_ptp_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_ptp_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cxgb4_ptp_is_ptp_tx(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = add i32 %5, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %6)
  %7 = icmp ult i32 %6, 178
  br i1 %7, label %land.lhs.true3, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true3:                                   ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp4 = icmp eq i16 %9, 2048
  br i1 %cmp4, label %land.lhs.true7, label %land.lhs.true3.land.end_crit_edge, !prof !55

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i21 = zext i16 %11 to i32
  %add.ptr.i.i22 = getelementptr i8, ptr %1, i32 %conv.i.i21
  %protocol9 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i22, i32 0, i32 6
  %12 = ptrtoint ptr %protocol9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %cmp11 = icmp eq i8 %13, 17
  br i1 %cmp11, label %land.rhs, label %land.lhs.true7.land.end_crit_edge

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %15)
  %cmp14 = icmp eq i16 %15, 319
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %land.lhs.true7.land.end_crit_edge ], [ false, %land.lhs.true3.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp14, %land.rhs ]
  ret i1 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_ptp_enabled(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_enable = getelementptr i8, ptr %dev, i32 2952
  %0 = ptrtoint ptr %ptp_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptp_enable, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_flags.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %13 = add i32 %12, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %13)
  %14 = icmp ult i32 %13, 178
  br i1 %14, label %land.lhs.true3.i, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true3.i:                                 ; preds = %land.rhs
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp4.i = icmp eq i16 %16, 2048
  br i1 %cmp4.i, label %land.lhs.true7.i, label %land.lhs.true3.i.land.end_crit_edge, !prof !55

land.lhs.true3.i.land.end_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true3.i
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i21.i = zext i16 %18 to i32
  %add.ptr.i.i22.i = getelementptr i8, ptr %8, i32 %conv.i.i21.i
  %protocol9.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i22.i, i32 0, i32 6
  %19 = ptrtoint ptr %protocol9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %20)
  %cmp11.i = icmp eq i8 %20, 17
  br i1 %cmp11.i, label %land.rhs.i, label %land.lhs.true7.i.land.end_crit_edge

land.lhs.true7.i.land.end_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dest.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %22)
  %cmp14.i = icmp eq i16 %22, 319
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.lhs.true7.i.land.end_crit_edge, %land.lhs.true3.i.land.end_crit_edge, %land.rhs.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %23 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ false, %land.lhs.true7.i.land.end_crit_edge ], [ false, %land.lhs.true3.i.land.end_crit_edge ], [ false, %land.rhs.land.end_crit_edge ], [ %cmp14.i, %land.rhs.i ]
  ret i1 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cxgb4_ptp_is_ptp_rx(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = shl i8 %bf.load, 2
  %3 = and i8 %bf.clear, 60
  %shl = zext i8 %3 to i32
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr3, i32 0, i32 1
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %5)
  %cmp = icmp eq i16 %5, 319
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %7)
  %cmp7 = icmp eq i16 %7, 319
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_ptp_read_hwstamp(ptr noundef %adapter, ptr nocapture noundef readonly %pi) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tx_skb = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 66
  %0 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_tx_skb, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 7
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 1
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 14
  %add1 = add nuw nsw i32 %mul, 198952
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 128
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %9 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_id, align 1
  %conv5 = zext i8 %10 to i32
  %mul6 = shl nuw nsw i32 %conv5, 14
  %add8 = add nuw nsw i32 %mul6, 198956
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 128
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 %add8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %14 = zext i32 %13 to i64
  %15 = zext i32 %8 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %19 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %hwtstamps.i, align 8
  %20 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp_tx_skb, align 4
  tail call void @skb_tstamp_tx(ptr noundef %21, ptr noundef %hwtstamps.i) #7
  %22 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptp_tx_skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %23, i32 noundef 1) #7
  %ptp_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 67
  tail call void @_raw_spin_lock(ptr noundef %ptp_lock) #7
  %24 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ptp_tx_skb, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ptp_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ptprx_timestamping(ptr nocapture noundef readonly %pi, i8 noundef zeroext %port, i16 noundef zeroext %mode) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %2 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %c, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %conv = zext i8 %port to i32
  %or = or i32 %conv, 1050673152
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %c, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %3, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %mode, ptr %4, align 4
  %mbox = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %1, i32 noundef %12, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ptp_txtype(ptr noundef %adapter, i8 noundef zeroext %port) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %0 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %c, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %conv = zext i8 %port to i32
  %or = or i32 %conv, 1050673152
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %c, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %1, align 8
  %mbox = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %7 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adapter, i32 noundef %8, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %9 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_ptp_redirect_rx_packet(ptr noundef %adapter, ptr nocapture noundef readonly %pi) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %first_qset = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 11
  %0 = ptrtoint ptr %first_qset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %first_qset, align 1
  %idxprom = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %2 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 2
  %6 = getelementptr inbounds i8, ptr %c, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %port_id = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 7
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 1
  %conv = zext i8 %9 to i32
  %or = or i32 %conv, 1050673152
  %10 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %c, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %3, align 8
  %tx_chan = getelementptr inbounds %struct.port_info, ptr %pi, i32 0, i32 8
  %13 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_chan, align 2
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %4, align 1
  %abs_id = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 22, i32 3, i32 %idxprom, i32 0, i32 12
  %16 = ptrtoint ptr %abs_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %abs_id, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %5, align 2
  %mbox = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 6
  %19 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %adapter, i32 noundef %20, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %21 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_ptp_init(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  %c.i38 = alloca %struct.fw_ptp_cmd, align 8
  %c.i = alloca %struct.fw_ptp_cmd, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 64
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx_skb = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 66
  %2 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_tx_skb, align 4
  %ptp_clock_info = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 65
  %3 = call ptr @memcpy(ptr %ptp_clock_info, ptr @cxgb4_ptp_clock_info, i32 108)
  %ptp_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 67
  tail call void @__raw_spin_lock_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @cxgb4_ptp_init.__key, i16 noundef signext 3) #7
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call3 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %dev) #7
  %6 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %ptp_clock, align 4
  %tobool.not.i34 = icmp eq ptr %call3, null
  %cmp.i35 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i36 = or i1 %tobool.not.i34, %cmp.i35
  br i1 %spec.select.i36, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ptp_clock, align 4
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call.i) #7
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %10)
  %now.sroa.0.0.copyload45 = load i64, ptr %tmp, align 8
  %now.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %11 = ptrtoint ptr %now.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %now.sroa.5.0.copyload46 = load i32, ptr %now.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c.i) #7
  %12 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %c.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 24)
  %15 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1050673152, ptr %c.i, align 8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %12, align 4
  %mbox.i = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 6
  %17 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %adapter, i32 noundef %18, ptr noundef nonnull %c.i, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i37 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i37, label %do.end.i, label %if.end12.cxgb4_init_ptp_timer.exit_crit_edge

if.end12.cxgb4_init_ptp_timer.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cxgb4_init_ptp_timer.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 4
  %19 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev_dev.i, align 16
  %sub.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %sub.i) #10
  br label %cxgb4_init_ptp_timer.exit

cxgb4_init_ptp_timer.exit:                        ; preds = %do.end.i, %if.end12.cxgb4_init_ptp_timer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c.i38) #7
  %21 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i38, i32 0, i32 1
  %22 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i38, i32 0, i32 2
  %23 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i38, i32 0, i32 2, i32 0, i32 4
  %24 = call ptr @memset(ptr %22, i32 0, i32 24)
  %25 = ptrtoint ptr %c.i38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1050673152, ptr %c.i38, align 8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %21, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 21, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %now.sroa.0.0.copyload45)
  %cmp.i.i = icmp sgt i64 %now.sroa.0.0.copyload45, 9223372035
  br i1 %cmp.i.i, label %cxgb4_init_ptp_timer.exit.timespec64_to_ns.exit.i_crit_edge, label %if.end.i.i

cxgb4_init_ptp_timer.exit.timespec64_to_ns.exit.i_crit_edge: ; preds = %cxgb4_init_ptp_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end.i.i:                                       ; preds = %cxgb4_init_ptp_timer.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %now.sroa.0.0.copyload45)
  %cmp2.i.i = icmp slt i64 %now.sroa.0.0.copyload45, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.timespec64_to_ns.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul nsw i64 %now.sroa.0.0.copyload45, 1000000000
  %conv.i.i = sext i32 %now.sroa.5.0.copyload46 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  br label %timespec64_to_ns.exit.i

timespec64_to_ns.exit.i:                          ; preds = %if.end4.i.i, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge, %cxgb4_init_ptp_timer.exit.timespec64_to_ns.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end4.i.i ], [ 9223372036854775807, %cxgb4_init_ptp_timer.exit.timespec64_to_ns.exit.i_crit_edge ], [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.i_crit_edge ]
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %retval.0.i.i, ptr %23, align 8
  %29 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mbox.i, align 8
  %call.i.i40 = call i32 @t4_wr_mbox_meat(ptr noundef %adapter, i32 noundef %30, ptr noundef nonnull %c.i38, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp.i41 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp.i41, label %if.then16, label %cxgb4_ptp_settime.exit

cxgb4_ptp_settime.exit:                           ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i38) #7
  br label %cleanup

if.then16:                                        ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev.i42 = getelementptr %struct.adapter, ptr %adapter, i32 0, i32 4
  %31 = ptrtoint ptr %pdev_dev.i42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev_dev.i42, align 16
  %sub.i43 = sub i32 0, %call.i.i40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %sub.i43) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i38) #7
  %33 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptp_clock, align 4
  %call18 = call i32 @ptp_clock_unregister(ptr noundef %34) #7
  %35 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ptp_clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cxgb4_ptp_settime.exit, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #2 align 64 {
entry:
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -28808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %0 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %c, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %5 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1050673152, ptr %c, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 21, ptr %1, align 8
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %9)
  %cmp.i = icmp sgt i64 %9, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %9)
  %cmp2.i = icmp slt i64 %9, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i64 %9, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %11 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %retval.0.i, ptr %2, align 8
  %mbox = getelementptr i8, ptr %ptp, i32 -28784
  %13 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %add.ptr, i32 noundef %14, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %timespec64_to_ns.exit.if.end_crit_edge

timespec64_to_ns.exit.if.end_crit_edge:           ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr i8, ptr %ptp, i32 -28792
  %15 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev, align 16
  %sub = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %timespec64_to_ns.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_ptp_stop(ptr nocapture noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tx_skb = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 66
  %0 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_tx_skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #7
  %2 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_tx_skb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptp_clock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 64
  %3 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_clock, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %4) #7
  %5 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ptp_clock, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_wr_mbox_meat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ptp_adjfreq(ptr noundef %ptp, i32 noundef %ppb) #2 align 64 {
entry:
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -28808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %0 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %c, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1050673152, ptr %c, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %1, align 8
  %ppb.lobit = lshr i32 %ppb, 31
  %9 = trunc i32 %ppb.lobit to i8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %2, align 1
  %11 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %3, align 4
  %mbox = getelementptr i8, ptr %ptp, i32 -28784
  %13 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %add.ptr, i32 noundef %14, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %do.end, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr i8, ptr %ptp, i32 -28792
  %15 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev, align 16
  %sub9 = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %sub9) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #2 align 64 {
entry:
  %c.i = alloca %struct.fw_ptp_cmd, align 8
  %c = alloca %struct.fw_ptp_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -28808
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #7
  %0 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %0)
  %cmp1 = icmp sgt i64 %0, 10000000
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %entry
  %1 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 4
  %2 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %c, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 24)
  %7 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1050673152, ptr %c, align 8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %4, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %3, align 8
  %delta.lobit = lshr i64 %delta, 63
  %10 = trunc i64 %delta.lobit to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %2, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %0, ptr %1, align 8
  %mbox = getelementptr i8, ptr %ptp, i32 -28784
  %13 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbox, align 8
  %call.i = call i32 @t4_wr_mbox_meat(ptr noundef %add.ptr, i32 noundef %14, ptr noundef nonnull %c, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11 = icmp slt i32 %call.i, 0
  br i1 %cmp11, label %do.end, label %if.then2.if.end17_crit_edge

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev = getelementptr i8, ptr %ptp, i32 -28792
  %15 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev_dev, align 16
  %sub14 = sub i32 0, %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %sub14) #10
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c.i) #7
  %17 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i, i32 0, i32 2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.fw_ptp_cmd, ptr %c.i, i32 0, i32 2, i32 0, i32 4
  %21 = call ptr @memset(ptr %18, i32 0, i32 24)
  %22 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1050673152, ptr %c.i, align 8
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %17, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 18, ptr %18, align 8
  %delta.lobit.i = lshr i64 %delta, 63
  %25 = trunc i64 %delta.lobit.i to i8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %19, align 1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %0, ptr %20, align 8
  %mbox.i = getelementptr i8, ptr %ptp, i32 -28784
  %28 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mbox.i, align 8
  %call.i.i = call i32 @t4_wr_mbox_meat(ptr noundef %add.ptr, i32 noundef %29, ptr noundef nonnull %c.i, i32 noundef 32, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.else.cxgb4_ptp_fineadjtime.exit_crit_edge

if.else.cxgb4_ptp_fineadjtime.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cxgb4_ptp_fineadjtime.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pdev_dev.i = getelementptr i8, ptr %ptp, i32 -28792
  %30 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev_dev.i, align 16
  %sub8.i = sub i32 0, %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %sub8.i) #10
  br label %cxgb4_ptp_fineadjtime.exit

cxgb4_ptp_fineadjtime.exit:                       ; preds = %do.end.i, %if.else.cxgb4_ptp_fineadjtime.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i) #7
  br label %if.end17

if.end17:                                         ; preds = %cxgb4_ptp_fineadjtime.exit, %do.end, %if.then2.if.end17_crit_edge
  %err.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %if.then2.if.end17_crit_edge ], [ %call.i.i, %cxgb4_ptp_fineadjtime.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_ptp_gettime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef writeonly %ts) #2 align 64 {
entry:
  %tmp3 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -28808
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 199056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 199060
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %6 = zext i32 %5 to i64
  %7 = zext i32 %2 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp3) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp3, i64 noundef %10) #7
  %11 = call ptr @memcpy(ptr %ts, ptr %tmp3, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp3) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxgb4_ptp_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %request, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cxgb4_ptprx_timestamping._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cxgb4_ptprx_timestamping._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 165, i32 3}
!10 = !{ptr @cxgb4_ptp_txtype._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cxgb4_ptp_txtype._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 191, i32 3}
!14 = !{ptr @cxgb4_ptp_redirect_rx_packet._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cxgb4_ptp_redirect_rx_packet._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cxgb4_ptp_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 429, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 435, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cxgb4_ptp_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cxgb4_ptp_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cxgb4_ptp_clock_info, !25, !"cxgb4_ptp_clock_info", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 399, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 225, i32 3}
!28 = !{ptr @cxgb4_ptp_adjfreq._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cxgb4_ptp_adjfreq._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 296, i32 4}
!32 = !{ptr @cxgb4_ptp_adjtime._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cxgb4_ptp_adjtime._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 257, i32 3}
!36 = !{ptr @cxgb4_ptp_fineadjtime._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cxgb4_ptp_fineadjtime._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 379, i32 3}
!40 = !{ptr @cxgb4_init_ptp_timer._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cxgb4_init_ptp_timer._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_ptp.c", i32 358, i32 3}
!44 = !{ptr @cxgb4_ptp_settime._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cxgb4_ptp_settime._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i8 0, i8 2}
!57 = !{i64 6291470}
!58 = !{i64 2159966702}
