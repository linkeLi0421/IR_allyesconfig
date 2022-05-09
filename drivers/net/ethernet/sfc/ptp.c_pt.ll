; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_hw_stat_desc = type { ptr, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efx_channel_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%union.efx_dword = type { [1 x i32] }
%struct.efx_ptp_data = type { ptr, ptr, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, %struct.list_head, %struct.spinlock, [8 x %struct.efx_ptp_event_rx], ptr, %struct.work_struct, i8, i32, i32, i8, %struct.hwtstamp_config, i8, i32, ptr, ptr, %struct.anon.149, i32, i32, %struct.anon.150, [3 x %union.efx_qword], i32, i32, %struct.efx_buffer, %struct.pps_event_time, i32, i64, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, i8, [63 x %union.efx_dword], i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x %struct.efx_ptp_timeset], ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.efx_ptp_event_rx = type { %struct.list_head, i32, i32, i64, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.anon.149 = type { i32, i32, i32, i32 }
%struct.anon.150 = type { i32, i32, i32, i32, i32, i32 }
%union.efx_qword = type { [1 x i64] }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.efx_ptp_timeset = type { i32, i32, i32, i32, i32, i32 }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.efx_mcdi_data = type { %struct.efx_mcdi_iface, %struct.efx_mcdi_mon, i32 }
%struct.efx_mcdi_iface = type { ptr, i32, i32, %struct.wait_queue_head, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.timer_list, ptr, i8, i32, i32, %struct.wait_queue_head }
%struct.efx_mcdi_mon = type { %struct.efx_buffer, %struct.mutex, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.158 }
%union.anon.158 = type { %struct.pps_event_time }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.efx_ef10_nic_data = type { %struct.efx_buffer, i16, i32, i32, i32, ptr, ptr, i32, [16 x i32], i16, i8, ptr, [95 x i64], i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, [6 x i8], i32, ptr, [6 x i8], %struct.list_head, %struct.mutex, [16 x %struct.efx_udp_tunnel], i8, %struct.mutex, i64 }
%struct.efx_udp_tunnel = type { i16, i16 }
%struct.ifreq = type { %union.anon.129, %union.anon.130 }
%union.anon.129 = type { [16 x i8] }
%union.anon.130 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@efx_ptp_stat_desc = internal constant { [14 x %struct.efx_hw_stat_desc], [48 x i8] } { [14 x %struct.efx_hw_stat_desc] [%struct.efx_hw_stat_desc { ptr @.str.15, i16 0, i16 1080 }, %struct.efx_hw_stat_desc { ptr @.str.16, i16 0, i16 1084 }, %struct.efx_hw_stat_desc { ptr @.str.17, i16 0, i16 1088 }, %struct.efx_hw_stat_desc { ptr @.str.18, i16 0, i16 1092 }, %struct.efx_hw_stat_desc { ptr @.str.19, i16 0, i16 1096 }, %struct.efx_hw_stat_desc { ptr @.str.20, i16 0, i16 1100 }, %struct.efx_hw_stat_desc { ptr @.str.21, i16 0, i16 1104 }, %struct.efx_hw_stat_desc { ptr @.str.22, i16 0, i16 1108 }, %struct.efx_hw_stat_desc { ptr @.str.23, i16 0, i16 1112 }, %struct.efx_hw_stat_desc { ptr @.str.24, i16 32, i16 4 }, %struct.efx_hw_stat_desc { ptr @.str.25, i16 32, i16 8 }, %struct.efx_hw_stat_desc { ptr @.str.26, i16 32, i16 12 }, %struct.efx_hw_stat_desc { ptr @.str.27, i16 32, i16 16 }, %struct.efx_hw_stat_desc { ptr @.str.28, i16 32, i16 20 }], [48 x i8] zeroinitializer }, align 32
@efx_ptp_stat_mask = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 -1], [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sfc_ptp\00", [24 x i8] zeroinitializer }, align 32
@efx_ptp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ptp->work)\00", [34 x i8] zeroinitializer }, align 32
@efx_ptp_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ptp->evt_lock\00", [17 x i8] zeroinitializer }, align 32
@efx_phc_clock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"sfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 0, i32 0, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @efx_phc_adjfreq, ptr null, ptr @efx_phc_adjtime, ptr @efx_phc_gettime, ptr null, ptr null, ptr @efx_phc_settime, ptr @efx_phc_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@efx_ptp_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ptp->pps_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sfc_pps\00", [24 x i8] zeroinitializer }, align 32
@efx_ptp_get_ts_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/ethernet/sfc/ptp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Received PTP event but PTP not set up\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PTP out of sequence event %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP unknown event %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PTP too many event fragments\0A\00", [34 x i8] zeroinitializer }, align 32
@efx_ptp_channel_type = internal constant { %struct.efx_channel_type, [32 x i8] } { %struct.efx_channel_type { ptr @efx_ptp_handle_no_channel, ptr @efx_ptp_probe_channel, ptr @efx_ptp_remove_channel, ptr @efx_ptp_get_channel_name, ptr null, ptr @efx_ptp_rx, ptr @efx_ptp_want_txqs, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to restart PTP.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ptp_good_syncs\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ptp_fast_syncs\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ptp_bad_syncs\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ptp_sync_timeouts\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ptp_no_time_syncs\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ptp_invalid_sync_windows\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_undersize_sync_windows\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ptp_oversize_sync_windows\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptp_rx_no_timestamp\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ptp_tx_timestamp_packets\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ptp_rx_timestamp_packets\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ptp_timestamp_packets\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ptp_filter_matches\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ptp_non_filter_matches\00", [41 x i8] zeroinitializer }, align 32
@efx_ptp_mac_nic_to_ktime_correction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@efx_ptp_xmit_skb_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PTP channel has no timestamped tx queue\0A\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PTP rx event dropped\0A\00", [42 x i8] zeroinitializer }, align 32
@efx_ptp_match_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@efx_ptp_get_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 651, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no PTP support\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efx_ptp_get_attributes\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efx_ptp_get_attributes._entry_ptr = internal global ptr @efx_ptp_get_attributes._entry, section ".printk_index", align 4
@efx_ptp_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.36, ptr @.str.8, i32 827, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efx_ptp_disable\00", [16 x i8] zeroinitializer }, align 32
@efx_ptp_disable._entry_ptr = internal global ptr @efx_ptp_disable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PTP no suitable synchronisations\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PTP bad synchronisation seconds\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ptp_event_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PTP event queue overflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PTP unexpected event length: got %d expected %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PTP error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ERROR: PTP requires MSI-X and 1 additional interruptvector. PTP disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to probe PTP, rc=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-ptp\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967295]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967258, i64 4294967295]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967258, i64 4294967295]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967258, i64 4294967295]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"efx_ptp_stat_desc\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 375, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"efx_ptp_stat_mask\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 392, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1461, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1475, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1481, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"efx_phc_clock_info\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1423, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1504, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1505, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1785, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1919, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1932, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1951, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1957, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"efx_ptp_channel_type\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 2174, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 2198, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 376, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 377, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 378, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 379, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 380, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 381, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 382, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 383, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 384, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 385, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 386, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 387, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 388, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 389, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1984, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1098, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1170, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 651, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 827, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 983, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 998, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 156, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1890, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1844, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1903, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 848, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1551, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [34 x i8] c"../drivers/net/ethernet/sfc/ptp.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1590, i32 21 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @efx_ptp_disable._entry, ptr @efx_ptp_disable._entry_ptr, ptr @efx_ptp_get_attributes._entry, ptr @efx_ptp_get_attributes._entry_ptr, ptr @efx_ptp_stat_desc, ptr @efx_ptp_stat_mask, ptr @.str, ptr @.str.1, ptr @efx_ptp_probe.__key, ptr @.str.2, ptr @efx_ptp_probe.__key.3, ptr @.str.4, ptr @efx_phc_clock_info, ptr @efx_ptp_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @efx_ptp_channel_type, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @skb_queue_head_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_stat_desc to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_stat_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_phc_clock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_channel_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_get_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efx_ptp_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @efx_ptp_use_mac_tx_timestamps(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %check_caps = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %check_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %check_caps, align 4
  %call = tail call i32 %3(ptr noundef %efx, i8 noundef zeroext 8, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_describe_stats(ptr nocapture noundef readonly %efx, ptr noundef %strings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @efx_nic_describe_stats(ptr noundef nonnull @efx_ptp_stat_desc, i32 noundef 14, ptr noundef nonnull @efx_ptp_stat_mask, ptr noundef %strings) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_describe_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_update_stats(ptr noundef %efx, ptr noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [16 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #14
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 360287970189639680, ptr %inbuf, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %outbuf) #14
  %1 = call ptr @memset(ptr %outbuf, i32 0, i32 64)
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %2 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.034)
  %tobool1.not = icmp ult i32 %i.034, 9
  br i1 %tobool1.not, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_data, align 4
  %offset = getelementptr [14 x %struct.efx_hw_stat_desc], ptr @efx_ptp_stat_desc, i32 0, i32 %i.034, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %conv6 = zext i32 %9 to i64
  %arrayidx7 = getelementptr i64, ptr %stats, i32 %i.034
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv6, ptr %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body:                                          ; preds = %for.inc
  %call = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 64, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %do.body.if.end21_crit_edge, label %if.then19

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = call ptr @memset(ptr %outbuf, i32 0, i32 64)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body.if.end21_crit_edge
  call void @efx_nic_update_stats(ptr noundef nonnull @efx_ptp_stat_desc, i32 noundef 14, ptr noundef nonnull @efx_ptp_stat_mask, ptr noundef %stats, ptr noundef nonnull %outbuf, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %outbuf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_update_stats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @efx_ptp_channel(ptr nocapture noundef readonly %efx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %channel = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @efx_ptp_nic_to_kernel_time(ptr nocapture noundef readonly %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 123
  %2 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_data, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %check_caps.i = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %check_caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %check_caps.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 8, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %completed_timestamp_major = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 23
  %8 = ptrtoint ptr %completed_timestamp_major to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %completed_timestamp_major, align 4
  %completed_timestamp_minor = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 24
  %10 = ptrtoint ptr %completed_timestamp_minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completed_timestamp_minor, align 8
  %general_tx = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 23, i32 4
  %12 = ptrtoint ptr %general_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %general_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i = icmp sgt i32 %9, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool1.not.i = icmp ult i32 %9, 65536
  br i1 %tobool1.not.i, label %if.then.i.if.end30.i_crit_edge, label %land.rhs.i

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b47.i = load i1, ptr @efx_ptp_mac_nic_to_ktime_correction.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then9.i, !prof !122

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_ptp_mac_nic_to_ktime_correction.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 568, i32 noundef 9, ptr noundef null) #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end30.i_crit_edge, %if.then.i.if.end30.i_crit_edge
  %14 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp_data, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end30.i.last_sync_timestamp_major.exit.i_crit_edge, label %efx_ptp_channel.exit.i.i

if.end30.i.last_sync_timestamp_major.exit.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %last_sync_timestamp_major.exit.i

efx_ptp_channel.exit.i.i:                         ; preds = %if.end30.i
  %channel.i.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %efx_ptp_channel.exit.i.i.last_sync_timestamp_major.exit.i_crit_edge, label %if.then.i.i

efx_ptp_channel.exit.i.i.last_sync_timestamp_major.exit.i_crit_edge: ; preds = %efx_ptp_channel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %last_sync_timestamp_major.exit.i

if.then.i.i:                                      ; preds = %efx_ptp_channel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sync_timestamp_major.i.i = getelementptr inbounds %struct.efx_channel, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %sync_timestamp_major.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync_timestamp_major.i.i, align 4
  br label %last_sync_timestamp_major.exit.i

last_sync_timestamp_major.exit.i:                 ; preds = %if.then.i.i, %efx_ptp_channel.exit.i.i.last_sync_timestamp_major.exit.i_crit_edge, %if.end30.i.last_sync_timestamp_major.exit.i_crit_edge
  %major.0.i.i = phi i32 [ %19, %if.then.i.i ], [ 0, %efx_ptp_channel.exit.i.i.last_sync_timestamp_major.exit.i_crit_edge ], [ 0, %if.end30.i.last_sync_timestamp_major.exit.i_crit_edge ]
  %sub.i = sub i32 %9, %major.0.i.i
  %sext.i = shl i32 %sub.i, 16
  %conv38.i = ashr exact i32 %sext.i, 16
  %add.i = add i32 %conv38.i, %major.0.i.i
  %nic_to_kernel_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nic_to_kernel_time.i, align 8
  %call39.i = tail call i64 %21(i32 noundef %add.i, i32 noundef %11, i32 noundef %13) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nic_to_kernel_time = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %nic_to_kernel_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nic_to_kernel_time, align 8
  %completed_timestamp_major3 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 23
  %24 = ptrtoint ptr %completed_timestamp_major3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %completed_timestamp_major3, align 4
  %completed_timestamp_minor4 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 24
  %26 = ptrtoint ptr %completed_timestamp_minor4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %completed_timestamp_minor4, align 8
  %general_tx6 = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 23, i32 4
  %28 = ptrtoint ptr %general_tx6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %general_tx6, align 4
  %call7 = tail call i64 %23(i32 noundef %25, i32 noundef %27, i32 noundef %29) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %last_sync_timestamp_major.exit.i, %if.then.if.end_crit_edge
  %kt.0 = phi i64 [ %call7, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ %call39.i, %last_sync_timestamp_major.exit.i ]
  ret i64 %kt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_probe(ptr noundef %efx, ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i148 = alloca [2 x %union.efx_dword], align 8
  %outbuf.i149 = alloca [6 x %union.efx_dword], align 4
  %out_len.i150 = alloca i32, align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [6 x %union.efx_dword], align 4
  %out_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1408) #17
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %1 = ptrtoint ptr %ptp_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %efx, ptr %call7.i.i, align 8
  %channel3 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %channel3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %channel, ptr %channel3, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %5, i32 0, i32 118
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp sgt i32 %7, 3
  %rx_ts_inline = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 2
  %frombool = zext i1 %cmp to i8
  %8 = ptrtoint ptr %rx_ts_inline to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %rx_ts_inline, align 8
  %start = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 27
  %call5 = tail call i32 @efx_nic_alloc_buffer(ptr noundef %efx, ptr noundef %start, i32 noundef 4, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail1

if.end8:                                          ; preds = %if.end
  %rxq = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %9 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rxq, ptr %rxq, align 4
  %prev.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rxq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i, align 4
  %txq = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 4
  %lock.i141 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i141, ptr noundef nonnull @.str.29, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %12 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i142 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i142 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txq, ptr %prev.i.i142, align 8
  %qlen.i.i143 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %qlen.i.i143 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i143, align 4
  %call9 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #14
  %workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %workwq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9, ptr %workwq, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.fail2_crit_edge, label %if.end13

if.end8.fail2_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail2

if.end13:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %check_caps.i = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 35
  %18 = ptrtoint ptr %check_caps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %check_caps.i, align 4
  %call.i = tail call i32 %19(ptr noundef %efx, i8 noundef zeroext 8, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.end13.do.body_crit_edge, label %if.then15

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %sync_events_state = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %20 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sync_events_state, align 32
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.end13.do.body_crit_edge
  %efx_ptp_xmit_skb_queue.sink = phi ptr [ @efx_ptp_xmit_skb_queue, %if.then15 ], [ @efx_ptp_xmit_skb_mc, %if.end13.do.body_crit_edge ]
  %21 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 47
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %efx_ptp_xmit_skb_queue.sink, ptr %21, align 4
  %work = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #14
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @efx_ptp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry21 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry21, ptr %entry21, align 8
  %prev.i = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 10, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @efx_ptp_worker, ptr %func, align 8
  %config = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %config, align 8
  %tx_type = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_type, align 4
  %rx_filter = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 15, i32 2
  %29 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rx_filter, align 8
  %evt_list = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %evt_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %evt_list, ptr %evt_list, align 4
  %prev.i145 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %evt_list, ptr %prev.i145, align 8
  %evt_free_list = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %evt_free_list, ptr %evt_free_list, align 4
  %prev.i146 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %evt_free_list, ptr %prev.i146, align 8
  %evt_lock = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %evt_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @efx_ptp_probe.__key.3, i16 noundef signext 3) #14
  %arrayidx = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 0
  %34 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %evt_free_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %evt_free_list, ptr noundef %35) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add.exit_crit_edge

do.body.list_add.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %arrayidx, align 8
  %prev3.i.i = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %evt_free_list, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx, ptr %evt_free_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body.list_add.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1, ptr noundef %evt_free_list, ptr noundef %41) #14
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add.exit.list_add.exit.1_crit_edge

list_add.exit.list_add.exit.1_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.1

if.end.i.i.1:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.1 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx.1, ptr %prev1.i.i.1, align 4
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %arrayidx.1, align 8
  %prev3.i.i.1 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %evt_free_list, ptr %prev3.i.i.1, align 4
  %45 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx.1, ptr %evt_free_list, align 4
  br label %list_add.exit.1

list_add.exit.1:                                  ; preds = %if.end.i.i.1, %list_add.exit.list_add.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 2
  %46 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.2, ptr noundef %evt_free_list, ptr noundef %47) #14
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add.exit.1.list_add.exit.2_crit_edge

list_add.exit.1.list_add.exit.2_crit_edge:        ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.2

if.end.i.i.2:                                     ; preds = %list_add.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.2 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.2, ptr %prev1.i.i.2, align 4
  %49 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %arrayidx.2, align 8
  %prev3.i.i.2 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 2, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %evt_free_list, ptr %prev3.i.i.2, align 4
  %51 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %arrayidx.2, ptr %evt_free_list, align 4
  br label %list_add.exit.2

list_add.exit.2:                                  ; preds = %if.end.i.i.2, %list_add.exit.1.list_add.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 3
  %52 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.3, ptr noundef %evt_free_list, ptr noundef %53) #14
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add.exit.2.list_add.exit.3_crit_edge

list_add.exit.2.list_add.exit.3_crit_edge:        ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.3

if.end.i.i.3:                                     ; preds = %list_add.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.3 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx.3, ptr %prev1.i.i.3, align 4
  %55 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %arrayidx.3, align 8
  %prev3.i.i.3 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 3, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %evt_free_list, ptr %prev3.i.i.3, align 4
  %57 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %arrayidx.3, ptr %evt_free_list, align 4
  br label %list_add.exit.3

list_add.exit.3:                                  ; preds = %if.end.i.i.3, %list_add.exit.2.list_add.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 4
  %58 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.4, ptr noundef %evt_free_list, ptr noundef %59) #14
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add.exit.3.list_add.exit.4_crit_edge

list_add.exit.3.list_add.exit.4_crit_edge:        ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.4

if.end.i.i.4:                                     ; preds = %list_add.exit.3
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.4 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.4, ptr %prev1.i.i.4, align 4
  %61 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %arrayidx.4, align 8
  %prev3.i.i.4 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 4, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %evt_free_list, ptr %prev3.i.i.4, align 4
  %63 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx.4, ptr %evt_free_list, align 4
  br label %list_add.exit.4

list_add.exit.4:                                  ; preds = %if.end.i.i.4, %list_add.exit.3.list_add.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 5
  %64 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.5, ptr noundef %evt_free_list, ptr noundef %65) #14
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add.exit.4.list_add.exit.5_crit_edge

list_add.exit.4.list_add.exit.5_crit_edge:        ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.5

if.end.i.i.5:                                     ; preds = %list_add.exit.4
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.5 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx.5, ptr %prev1.i.i.5, align 4
  %67 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %arrayidx.5, align 8
  %prev3.i.i.5 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 5, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %evt_free_list, ptr %prev3.i.i.5, align 4
  %69 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx.5, ptr %evt_free_list, align 4
  br label %list_add.exit.5

list_add.exit.5:                                  ; preds = %if.end.i.i.5, %list_add.exit.4.list_add.exit.5_crit_edge
  %arrayidx.6 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 6
  %70 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.6, ptr noundef %evt_free_list, ptr noundef %71) #14
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add.exit.5.list_add.exit.6_crit_edge

list_add.exit.5.list_add.exit.6_crit_edge:        ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.6

if.end.i.i.6:                                     ; preds = %list_add.exit.5
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.6 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx.6, ptr %prev1.i.i.6, align 4
  %73 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %arrayidx.6, align 8
  %prev3.i.i.6 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 6, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %evt_free_list, ptr %prev3.i.i.6, align 4
  %75 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %arrayidx.6, ptr %evt_free_list, align 4
  br label %list_add.exit.6

list_add.exit.6:                                  ; preds = %if.end.i.i.6, %list_add.exit.5.list_add.exit.6_crit_edge
  %arrayidx.7 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 7
  %76 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.7 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.7, ptr noundef %evt_free_list, ptr noundef %77) #14
  br i1 %call.i.i.7, label %if.end.i.i.7, label %list_add.exit.6.list_add.exit.7_crit_edge

list_add.exit.6.list_add.exit.7_crit_edge:        ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit.7

if.end.i.i.7:                                     ; preds = %list_add.exit.6
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.7 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx.7, ptr %prev1.i.i.7, align 4
  %79 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %arrayidx.7, align 8
  %prev3.i.i.7 = getelementptr %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 8, i32 7, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %evt_free_list, ptr %prev3.i.i.7, align 4
  %81 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %arrayidx.7, ptr %evt_free_list, align 4
  br label %list_add.exit.7

list_add.exit.7:                                  ; preds = %if.end.i.i.7, %list_add.exit.6.list_add.exit.7_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #14
  %82 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 1585267068834414592, ptr %inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outbuf.i) #14
  %83 = call ptr @memset(ptr %outbuf.i, i32 0, i32 24)
  %84 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ptp_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len.i) #14
  %86 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %out_len.i, align 4, !annotation !123
  %call.i147 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 24, ptr noundef nonnull %out_len.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i = icmp eq i32 %call.i147, 0
  br i1 %cmp.i, label %if.end22.i, label %if.else.i

if.else.i:                                        ; preds = %list_add.exit.7
  %87 = zext i32 %call.i147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i147, label %efx_ptp_get_attributes.exit [
    i32 -22, label %if.else.i.sw.bb24.i_crit_edge
    i32 -1, label %do.end19.i
  ]

if.else.i.sw.bb24.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24.i

do.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %88 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #18
  br label %efx_ptp_get_attributes.exit.thread

if.end22.i:                                       ; preds = %list_add.exit.7
  %90 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %outbuf.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %92, label %if.end22.i.efx_ptp_get_attributes.exit.thread_crit_edge [
    i32 2, label %if.end22.i.land.lhs.true.sink.split.i_crit_edge
    i32 0, label %if.end22.i.sw.bb24.i_crit_edge
    i32 3, label %sw.bb31.i
  ]

if.end22.i.sw.bb24.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24.i

if.end22.i.land.lhs.true.sink.split.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.sink.split.i

if.end22.i.efx_ptp_get_attributes.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_get_attributes.exit.thread

sw.bb24.i:                                        ; preds = %if.end22.i.sw.bb24.i_crit_edge, %if.else.i.sw.bb24.i_crit_edge
  %ns_to_nic_time25.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 18
  %94 = ptrtoint ptr %ns_to_nic_time25.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @efx_ptp_ns_to_s_ns, ptr %ns_to_nic_time25.i, align 4
  %nic_to_kernel_time26.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 19
  %95 = ptrtoint ptr %nic_to_kernel_time26.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @efx_ptp_s_ns_to_ktime_correction, ptr %nic_to_kernel_time26.i, align 8
  %nic_time27.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20
  %96 = ptrtoint ptr %nic_time27.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1000000000, ptr %nic_time27.i, align 4
  %sync_event_minor_shift30.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 3
  %97 = ptrtoint ptr %sync_event_minor_shift30.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 22, ptr %sync_event_minor_shift30.i, align 4
  %sync_event_diff_min.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 1
  %98 = ptrtoint ptr %sync_event_diff_min.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 900000000, ptr %sync_event_diff_min.i, align 4
  %sync_event_diff_max.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 2
  %99 = ptrtoint ptr %sync_event_diff_max.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 350000000, ptr %sync_event_diff_max.i, align 4
  br i1 %cmp.i, label %sw.bb24.i.land.lhs.true.i_crit_edge, label %sw.bb24.i.if.else70.sink.split.i_crit_edge

sw.bb24.i.if.else70.sink.split.i_crit_edge:       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else70.sink.split.i

sw.bb24.i.land.lhs.true.i_crit_edge:              ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

sw.bb31.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.sink.split.i

land.lhs.true.sink.split.i:                       ; preds = %sw.bb31.i, %if.end22.i.land.lhs.true.sink.split.i_crit_edge
  %efx_ptp_ns_to_s27.sink.i = phi ptr [ @efx_ptp_ns_to_s_qns, %sw.bb31.i ], [ @efx_ptp_ns_to_s27, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %efx_ptp_s27_to_ktime_correction.sink.i = phi ptr [ @efx_ptp_s_qns_to_ktime_correction, %sw.bb31.i ], [ @efx_ptp_s27_to_ktime_correction, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %.sink133.i = phi i32 [ -294967296, %sw.bb31.i ], [ 134217728, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %.sink132.i = phi i32 [ 24, %sw.bb31.i ], [ 19, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %.sink131.i = phi i32 [ -694967296, %sw.bb31.i ], [ 120795956, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1400000000, %sw.bb31.i ], [ 46976204, %if.end22.i.land.lhs.true.sink.split.i_crit_edge ]
  %ns_to_nic_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 18
  %100 = ptrtoint ptr %ns_to_nic_time.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %efx_ptp_ns_to_s27.sink.i, ptr %ns_to_nic_time.i, align 4
  %nic_to_kernel_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 19
  %101 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %efx_ptp_s27_to_ktime_correction.sink.i, ptr %nic_to_kernel_time.i, align 8
  %nic_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20
  %102 = ptrtoint ptr %nic_time.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink133.i, ptr %nic_time.i, align 4
  %sync_event_minor_shift.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 3
  %103 = ptrtoint ptr %sync_event_minor_shift.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink132.i, ptr %sync_event_minor_shift.i, align 4
  %sync_event_diff_min.c127.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 1
  %104 = ptrtoint ptr %sync_event_diff_min.c127.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink131.i, ptr %sync_event_diff_min.c127.i, align 4
  %sync_event_diff_max.c130.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 20, i32 2
  %105 = ptrtoint ptr %sync_event_diff_max.c130.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink.i, ptr %sync_event_diff_max.c130.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.sink.split.i, %sw.bb24.i.land.lhs.true.i_crit_edge
  %106 = ptrtoint ptr %out_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %out_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %107)
  %cmp51.i = icmp ugt i32 %107, 7
  br i1 %cmp51.i, label %land.lhs.true62.i, label %land.lhs.true.i.if.else70.sink.split.i_crit_edge

land.lhs.true.i.if.else70.sink.split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else70.sink.split.i

land.lhs.true62.i:                                ; preds = %land.lhs.true.i
  %add.ptr54.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %108 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr54.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #14
  %min_synchronisation_ns.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 21
  %111 = ptrtoint ptr %min_synchronisation_ns.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %min_synchronisation_ns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %107)
  %cmp63.i = icmp ugt i32 %107, 23
  br i1 %cmp63.i, label %if.end72.i, label %land.lhs.true62.i.if.end72.i.thread_crit_edge

land.lhs.true62.i.if.end72.i.thread_crit_edge:    ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i.thread

if.else70.sink.split.i:                           ; preds = %land.lhs.true.i.if.else70.sink.split.i_crit_edge, %sw.bb24.i.if.else70.sink.split.i_crit_edge
  %min_synchronisation_ns59.c.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 21
  %112 = ptrtoint ptr %min_synchronisation_ns59.c.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 120, ptr %min_synchronisation_ns59.c.i, align 4
  br label %if.end72.i.thread

if.end72.i.thread:                                ; preds = %if.else70.sink.split.i, %land.lhs.true62.i.if.end72.i.thread_crit_edge
  %capabilities71.i158 = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 22
  %113 = ptrtoint ptr %capabilities71.i158 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %capabilities71.i158, align 8
  %adjfreq_ppb_shift77.i161 = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 29
  br label %if.else76.i

if.end72.i:                                       ; preds = %land.lhs.true62.i
  %add.ptr66.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 2
  %114 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr66.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #14
  %capabilities71.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 22
  %117 = ptrtoint ptr %capabilities71.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %capabilities71.i, align 8
  %and74.i = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool.not.i = icmp eq i32 %and74.i, 0
  %adjfreq_ppb_shift77.i = getelementptr inbounds %struct.efx_ptp_data, ptr %85, i32 0, i32 29
  br i1 %tobool.not.i, label %if.end72.i.if.else76.i_crit_edge, label %if.then75.i

if.end72.i.if.else76.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else76.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %adjfreq_ppb_shift77.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 22, ptr %adjfreq_ppb_shift77.i, align 8
  br label %efx_ptp_get_attributes.exit.thread166

if.else76.i:                                      ; preds = %if.end72.i.if.else76.i_crit_edge, %if.end72.i.thread
  %adjfreq_ppb_shift77.i162 = phi ptr [ %adjfreq_ppb_shift77.i161, %if.end72.i.thread ], [ %adjfreq_ppb_shift77.i, %if.end72.i.if.else76.i_crit_edge ]
  %119 = ptrtoint ptr %adjfreq_ppb_shift77.i162 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 26, ptr %adjfreq_ppb_shift77.i162, align 8
  br label %efx_ptp_get_attributes.exit.thread166

efx_ptp_get_attributes.exit.thread:               ; preds = %if.end22.i.efx_ptp_get_attributes.exit.thread_crit_edge, %do.end19.i
  %retval.0.i.ph = phi i32 [ -34, %if.end22.i.efx_ptp_get_attributes.exit.thread_crit_edge ], [ -1, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  br label %fail3

efx_ptp_get_attributes.exit.thread166:            ; preds = %if.else76.i, %if.then75.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  br label %if.end34

efx_ptp_get_attributes.exit:                      ; preds = %if.else.i
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 24, i32 noundef %call.i147) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp32 = icmp slt i32 %call.i147, 0
  br i1 %cmp32, label %efx_ptp_get_attributes.exit.fail3_crit_edge, label %efx_ptp_get_attributes.exit.if.end34_crit_edge

efx_ptp_get_attributes.exit.if.end34_crit_edge:   ; preds = %efx_ptp_get_attributes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

efx_ptp_get_attributes.exit.fail3_crit_edge:      ; preds = %efx_ptp_get_attributes.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail3

if.end34:                                         ; preds = %efx_ptp_get_attributes.exit.if.end34_crit_edge, %efx_ptp_get_attributes.exit.thread166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i148) #14
  %120 = ptrtoint ptr %inbuf.i148 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 1657324662872342528, ptr %inbuf.i148, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outbuf.i149) #14
  %121 = call ptr @memset(ptr %outbuf.i149, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len.i150) #14
  %122 = ptrtoint ptr %out_len.i150 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %out_len.i150, align 4, !annotation !123
  %call.i151 = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i148, i32 noundef 8, ptr noundef nonnull %outbuf.i149, i32 noundef 24, ptr noundef nonnull %out_len.i150) #14
  %123 = zext i32 %call.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call.i151, label %efx_ptp_get_timestamp_corrections.exit [
    i32 0, label %if.then.i
    i32 -22, label %if.then63.i
  ]

if.then.i:                                        ; preds = %if.end34
  %124 = ptrtoint ptr %outbuf.i149 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %outbuf.i149, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #14
  %127 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ptp_data, align 4
  %ts_corrections.i = getelementptr inbounds %struct.efx_ptp_data, ptr %128, i32 0, i32 23
  %129 = ptrtoint ptr %ts_corrections.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %ts_corrections.i, align 4
  %add.ptr13.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i149, i32 1
  %130 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr13.i, align 4
  %132 = call i32 @llvm.bswap.i32(i32 %131) #14
  %133 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ptp_data, align 4
  %ptp_rx.i = getelementptr inbounds %struct.efx_ptp_data, ptr %134, i32 0, i32 23, i32 1
  %135 = ptrtoint ptr %ptp_rx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %132, ptr %ptp_rx.i, align 4
  %add.ptr20.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i149, i32 2
  %136 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr20.i, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #14
  %139 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ptp_data, align 4
  %pps_out.i = getelementptr inbounds %struct.efx_ptp_data, ptr %140, i32 0, i32 23, i32 2
  %141 = ptrtoint ptr %pps_out.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %138, ptr %pps_out.i, align 4
  %add.ptr27.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i149, i32 3
  %142 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %add.ptr27.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #14
  %145 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ptp_data, align 4
  %pps_in.i = getelementptr inbounds %struct.efx_ptp_data, ptr %146, i32 0, i32 23, i32 3
  %147 = ptrtoint ptr %pps_in.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %pps_in.i, align 4
  %148 = ptrtoint ptr %out_len.i150 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %out_len.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %149)
  %cmp33.i = icmp ugt i32 %149, 23
  br i1 %cmp33.i, label %if.then34.i, label %if.else.i153

if.then34.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr36.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i149, i32 4
  %150 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr36.i, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151) #14
  %153 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ptp_data, align 4
  %general_tx.i = getelementptr inbounds %struct.efx_ptp_data, ptr %154, i32 0, i32 23, i32 4
  %155 = ptrtoint ptr %general_tx.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %general_tx.i, align 4
  %add.ptr43.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i149, i32 5
  %156 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr43.i, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #14
  %159 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ptp_data, align 4
  br label %efx_ptp_get_timestamp_corrections.exit.thread

if.else.i153:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ptp_data, align 4
  %ts_corrections50.i = getelementptr inbounds %struct.efx_ptp_data, ptr %162, i32 0, i32 23
  %163 = ptrtoint ptr %ts_corrections50.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ts_corrections50.i, align 4
  %general_tx54.i = getelementptr inbounds %struct.efx_ptp_data, ptr %162, i32 0, i32 23, i32 4
  %165 = ptrtoint ptr %general_tx54.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %general_tx54.i, align 4
  %166 = load ptr, ptr %ptp_data, align 4
  %ptp_rx57.i = getelementptr inbounds %struct.efx_ptp_data, ptr %166, i32 0, i32 23, i32 1
  %167 = ptrtoint ptr %ptp_rx57.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ptp_rx57.i, align 4
  br label %efx_ptp_get_timestamp_corrections.exit.thread

if.then63.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %169 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ptp_data, align 4
  %ts_corrections65.i = getelementptr inbounds %struct.efx_ptp_data, ptr %170, i32 0, i32 23
  %171 = ptrtoint ptr %ts_corrections65.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %ts_corrections65.i, align 4
  %172 = load ptr, ptr %ptp_data, align 4
  %ptp_rx69.i = getelementptr inbounds %struct.efx_ptp_data, ptr %172, i32 0, i32 23, i32 1
  %173 = ptrtoint ptr %ptp_rx69.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %ptp_rx69.i, align 4
  %174 = load ptr, ptr %ptp_data, align 4
  %pps_out72.i = getelementptr inbounds %struct.efx_ptp_data, ptr %174, i32 0, i32 23, i32 2
  %175 = ptrtoint ptr %pps_out72.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %pps_out72.i, align 4
  %176 = load ptr, ptr %ptp_data, align 4
  %pps_in75.i = getelementptr inbounds %struct.efx_ptp_data, ptr %176, i32 0, i32 23, i32 3
  %177 = ptrtoint ptr %pps_in75.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %pps_in75.i, align 4
  %178 = load ptr, ptr %ptp_data, align 4
  %general_tx78.i = getelementptr inbounds %struct.efx_ptp_data, ptr %178, i32 0, i32 23, i32 4
  %179 = ptrtoint ptr %general_tx78.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %general_tx78.i, align 4
  %180 = load ptr, ptr %ptp_data, align 4
  br label %efx_ptp_get_timestamp_corrections.exit.thread

efx_ptp_get_timestamp_corrections.exit.thread:    ; preds = %if.then63.i, %if.else.i153, %if.then34.i
  %.sink172 = phi ptr [ %160, %if.then34.i ], [ %166, %if.else.i153 ], [ %180, %if.then63.i ]
  %.sink = phi i32 [ %158, %if.then34.i ], [ %168, %if.else.i153 ], [ 0, %if.then63.i ]
  %general_rx.i = getelementptr inbounds %struct.efx_ptp_data, ptr %.sink172, i32 0, i32 23, i32 5
  %181 = ptrtoint ptr %general_rx.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %.sink, ptr %general_rx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i150) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf.i149) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i148) #14
  br label %if.end38

efx_ptp_get_timestamp_corrections.exit:           ; preds = %if.end34
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %outbuf.i149, i32 noundef 24, i32 noundef %call.i151) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i150) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outbuf.i149) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp36 = icmp slt i32 %call.i151, 0
  br i1 %cmp36, label %efx_ptp_get_timestamp_corrections.exit.fail3_crit_edge, label %efx_ptp_get_timestamp_corrections.exit.if.end38_crit_edge

efx_ptp_get_timestamp_corrections.exit.if.end38_crit_edge: ; preds = %efx_ptp_get_timestamp_corrections.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

efx_ptp_get_timestamp_corrections.exit.fail3_crit_edge: ; preds = %efx_ptp_get_timestamp_corrections.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail3

if.end38:                                         ; preds = %efx_ptp_get_timestamp_corrections.exit.if.end38_crit_edge, %efx_ptp_get_timestamp_corrections.exit.thread
  %mcdi = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 77
  %182 = ptrtoint ptr %mcdi to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mcdi, align 4
  %fn_flags = getelementptr inbounds %struct.efx_mcdi_data, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %fn_flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %fn_flags, align 4
  %and = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end38.if.end72_crit_edge, label %if.then40

if.end38.if.end72_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then40:                                        ; preds = %if.end38
  %phc_clock_info = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 32
  %186 = call ptr @memcpy(ptr %phc_clock_info, ptr @efx_phc_clock_info, i32 108)
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %187 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  %call42 = call ptr @ptp_clock_register(ptr noundef %phc_clock_info, ptr noundef %dev) #14
  %phc_clock = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 31
  %189 = ptrtoint ptr %phc_clock to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call42, ptr %phc_clock, align 8
  %cmp.i155 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %190 = ptrtoint ptr %call42 to i32
  br label %fail3

if.else48:                                        ; preds = %if.then40
  %tobool50.not = icmp eq ptr %call42, null
  br i1 %tobool50.not, label %if.else48.if.end72_crit_edge, label %do.body52

if.else48.if.end72_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

do.body52:                                        ; preds = %if.else48
  %pps_work = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 33
  call void @__init_work(ptr noundef %pps_work, i32 noundef 0) #14
  %191 = ptrtoint ptr %pps_work to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -64, ptr %pps_work, align 8
  %lockdep_map58 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 33, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map58, ptr noundef nonnull @.str.6, ptr noundef nonnull @efx_ptp_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry60 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 33, i32 1
  %192 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i156 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 33, i32 1, i32 1
  %193 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %entry60, ptr %prev.i156, align 8
  %func62 = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 33, i32 2
  %194 = ptrtoint ptr %func62 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @efx_ptp_pps_worker, ptr %func62, align 4
  %call65 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.7) #14
  %pps_workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 34
  %195 = ptrtoint ptr %pps_workwq to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call65, ptr %pps_workwq, align 4
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %if.then68, label %do.body52.if.end72_crit_edge

do.body52.if.end72_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then68:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #16
  %196 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ptp_data, align 4
  %phc_clock74 = getelementptr inbounds %struct.efx_ptp_data, ptr %197, i32 0, i32 31
  %198 = ptrtoint ptr %phc_clock74 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %phc_clock74, align 8
  %call75 = call i32 @ptp_clock_unregister(ptr noundef %199) #14
  br label %fail3

if.end72:                                         ; preds = %do.body52.if.end72_crit_edge, %if.else48.if.end72_crit_edge, %if.end38.if.end72_crit_edge
  %nic_ts_enabled = getelementptr inbounds %struct.efx_ptp_data, ptr %call7.i.i, i32 0, i32 35
  %200 = ptrtoint ptr %nic_ts_enabled to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %nic_ts_enabled, align 8
  br label %cleanup

fail3:                                            ; preds = %if.then68, %if.then45, %efx_ptp_get_timestamp_corrections.exit.fail3_crit_edge, %efx_ptp_get_attributes.exit.fail3_crit_edge, %efx_ptp_get_attributes.exit.thread
  %rc.0 = phi i32 [ %call.i147, %efx_ptp_get_attributes.exit.fail3_crit_edge ], [ %call.i151, %efx_ptp_get_timestamp_corrections.exit.fail3_crit_edge ], [ %190, %if.then45 ], [ -12, %if.then68 ], [ %retval.0.i.ph, %efx_ptp_get_attributes.exit.thread ]
  %201 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ptp_data, align 4
  %workwq77 = getelementptr inbounds %struct.efx_ptp_data, ptr %202, i32 0, i32 9
  %203 = ptrtoint ptr %workwq77 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %workwq77, align 8
  call void @destroy_workqueue(ptr noundef %204) #14
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end8.fail2_crit_edge
  %rc.1 = phi i32 [ %rc.0, %fail3 ], [ -12, %if.end8.fail2_crit_edge ]
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %start) #14
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %rc.2 = phi i32 [ %call5, %if.end.fail1_crit_edge ], [ %rc.1, %fail2 ]
  %205 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ptp_data, align 4
  call void @kfree(ptr noundef %206) #14
  %207 = ptrtoint ptr %ptp_data to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %ptp_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end72, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %fail1 ], [ 0, %if.end72 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_xmit_skb_queue(ptr nocapture noundef readonly %efx, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data1, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %3 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1536
  br i1 %cmp.not.i, label %if.end.i, label %entry.efx_tx_csum_type_skb.exit_crit_edge

entry.efx_tx_csum_type_skb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_tx_csum_type_skb.exit

if.end.i:                                         ; preds = %entry
  %4 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end.i.efx_tx_csum_type_skb.exit_crit_edge, label %land.lhs.true.i

if.end.i.efx_tx_csum_type_skb.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_tx_csum_type_skb.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 8
  %conv.i.i = zext i16 %7 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %12 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub.ptr.sub.i.i)
  %cmp8.i = icmp eq i32 %sub.i.i, %sub.ptr.sub.i.i
  br i1 %cmp8.i, label %if.then10.i, label %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge

land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_tx_csum_type_skb.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_segs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp13.i = icmp ugt i16 %17, 1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.then10.i.if.end24.i_crit_edge

if.then10.i.if.end24.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

land.lhs.true15.i:                                ; preds = %if.then10.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gso_type.i, align 8
  %20 = and i32 %19, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %.not.i = icmp eq i32 %20, 2048
  br i1 %.not.i, label %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge, label %land.lhs.true15.i.if.end24.i_crit_edge

land.lhs.true15.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.i

land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_tx_csum_type_skb.exit

if.end24.i:                                       ; preds = %land.lhs.true15.i.if.end24.i_crit_edge, %if.then10.i.if.end24.i_crit_edge
  br label %efx_tx_csum_type_skb.exit

efx_tx_csum_type_skb.exit:                        ; preds = %if.end24.i, %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge, %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge, %if.end.i.efx_tx_csum_type_skb.exit_crit_edge, %entry.efx_tx_csum_type_skb.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end24.i ], [ 0, %entry.efx_tx_csum_type_skb.exit_crit_edge ], [ 1, %land.lhs.true.i.efx_tx_csum_type_skb.exit_crit_edge ], [ 1, %if.end.i.efx_tx_csum_type_skb.exit_crit_edge ], [ 3, %land.lhs.true15.i.efx_tx_csum_type_skb.exit_crit_edge ]
  %channel = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel, align 4
  %arrayidx.i = getelementptr %struct.efx_channel, ptr %22, i32 0, i32 47, i32 %retval.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %efx_tx_csum_type_skb.exit.land.end_crit_edge, label %land.lhs.true

efx_tx_csum_type_skb.exit.land.end_crit_edge:     ; preds = %efx_tx_csum_type_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true:                                    ; preds = %efx_tx_csum_type_skb.exit
  %timestamping = getelementptr inbounds %struct.efx_tx_queue, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %timestamping, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool4.not = icmp eq i8 %26, 0
  br i1 %tobool4.not, label %land.lhs.true.land.end_crit_edge, label %if.then

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type.i, align 4
  %tx_enqueue.i = getelementptr inbounds %struct.efx_nic_type, ptr %30, i32 0, i32 52
  %31 = ptrtoint ptr %tx_enqueue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_enqueue.i, align 8
  %call.i = tail call i32 %32(ptr noundef nonnull %24, ptr noundef %skb) #14
  br label %if.end42

land.end:                                         ; preds = %land.lhs.true.land.end_crit_edge, %efx_tx_csum_type_skb.exit.land.end_crit_edge
  %.b49 = load i1, ptr @efx_ptp_xmit_skb_queue.__already_done, align 1
  br i1 %.b49, label %land.end.if.end34_crit_edge, label %if.then13, !prof !122

land.end.if.end34_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_ptp_xmit_skb_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1098, i32 noundef 9, ptr noundef nonnull @.str.30) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %land.end.if.end34_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_xmit_skb_mc(ptr noundef %efx, ptr noundef %skb) #0 align 64 {
entry:
  %timestamps = alloca %struct.skb_shared_hwtstamps, align 8
  %txtime = alloca [2 x %union.efx_dword], align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamps) #14
  %2 = ptrtoint ptr %timestamps to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %timestamps, align 8, !annotation !123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txtime) #14
  %3 = ptrtoint ptr %txtime to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %txtime, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #14
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !123
  %txbuf = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 50331648, ptr %txbuf, align 4
  %add.ptr5 = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr5, align 4
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len10, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr14 = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 36, i32 2
  %10 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr14, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not = icmp eq i8 %14, 0
  br i1 %cmp.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.then.if.end24_crit_edge, label %cond.true.i

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cond.true.i:                                      ; preds = %if.then
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %16) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.fail_crit_edge, label %cond.true.i.if.end24_crit_edge

cond.true.i.if.end24_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cond.true.i.fail_crit_edge:                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end24:                                         ; preds = %cond.true.i.if.end24_crit_edge, %if.then.if.end24_crit_edge, %entry.if.end24_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %18 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %18)
  %cmp26 = icmp eq i16 %18, 1536
  br i1 %cmp26, label %if.then28, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @skb_checksum_help(ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.then28.if.end34_crit_edge, label %if.then28.fail_crit_edge

if.then28.fail_crit_edge:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.end34:                                         ; preds = %if.then28.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %add.ptr37 = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 36, i32 3
  %19 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len10, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = call ptr @memcpy(ptr %add.ptr37, ptr %22, i32 %20)
  %24 = load i32, ptr %len10, align 4
  %add = add i32 %24, 12
  %call43 = call i32 @efx_mcdi_rpc(ptr noundef %efx, i32 noundef 11, ptr noundef %txbuf, i32 noundef %add, ptr noundef nonnull %txtime, i32 noundef 8, ptr noundef nonnull %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end47, label %if.end34.fail_crit_edge

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %nic_to_kernel_time = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %nic_to_kernel_time to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nic_to_kernel_time, align 8
  %27 = ptrtoint ptr %txtime to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txtime, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %add.ptr52 = getelementptr inbounds %union.efx_dword, ptr %txtime, i32 1
  %30 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr52, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %ts_corrections = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 23
  %33 = ptrtoint ptr %ts_corrections to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ts_corrections, align 4
  %call56 = call i64 %26(i32 noundef %29, i32 noundef %32, i32 noundef %34) #14
  %35 = ptrtoint ptr %timestamps to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call56, ptr %timestamps, align 8
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef nonnull %timestamps) #14
  br label %fail

fail:                                             ; preds = %if.end47, %if.end34.fail_crit_edge, %if.then28.fail_crit_edge, %cond.true.i.fail_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txtime) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamps) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_worker(ptr noundef %work) #0 align 64 {
entry:
  %tempq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -444
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tempq) #14
  %2 = getelementptr inbounds i8, ptr %tempq, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %reset_required = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %reset_required to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset_required, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call fastcc i32 @efx_ptp_stop(ptr noundef %1)
  %call2 = tail call fastcc i32 @efx_ptp_start(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_data.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 123
  %6 = ptrtoint ptr %ptp_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_data.i, align 4
  %rx_ts_inline.i = getelementptr inbounds %struct.efx_ptp_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rx_ts_inline.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rx_ts_inline.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.efx_ptp_drop_time_expired_events.exit_crit_edge

if.end.efx_ptp_drop_time_expired_events.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_drop_time_expired_events.exit

if.end.i:                                         ; preds = %if.end
  %evt_lock.i = getelementptr inbounds %struct.efx_ptp_data, ptr %7, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %evt_lock.i) #14
  %evt_list.i = getelementptr inbounds %struct.efx_ptp_data, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %evt_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %evt_list.i, align 4
  %cmp.i.not26.i = icmp eq ptr %11, %evt_list.i
  br i1 %cmp.i.not26.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %evt_free_list.i = getelementptr inbounds %struct.efx_ptp_data, ptr %7, i32 0, i32 6
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cursor.027.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %next.029.i, %if.end9.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %cursor.027.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %next.029.i = load ptr, ptr %cursor.027.i, align 4
  %expiry.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %cursor.027.i, i32 0, i32 4
  %13 = ptrtoint ptr %expiry.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %expiry.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then5.i, label %for.body.i.if.end9.i_crit_edge

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then5.i:                                       ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.027.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then5.i.__list_del_entry.exit.i.i_crit_edge

if.then5.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.027.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %cursor.027.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cursor.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then5.i.__list_del_entry.exit.i.i_crit_edge
  %22 = ptrtoint ptr %evt_free_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %evt_free_list.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cursor.027.i, ptr noundef %evt_free_list.i, ptr noundef %23) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cursor.027.i, ptr %prev1.i.i2.i.i, align 4
  %25 = ptrtoint ptr %cursor.027.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %cursor.027.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.027.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %evt_free_list.i, ptr %prev3.i.i.i.i, align 4
  %27 = ptrtoint ptr %evt_free_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %cursor.027.i, ptr %evt_free_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %28 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %list_move.exit.i.if.end9.i_crit_edge, label %if.then7.i

list_move.exit.i.if.end9.i_crit_edge:             ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then7.i:                                       ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.31) #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %list_move.exit.i.if.end9.i_crit_edge, %for.body.i.if.end9.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %next.029.i, %evt_list.i
  br i1 %cmp.i.not.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %evt_lock.i) #14
  br label %efx_ptp_drop_time_expired_events.exit

efx_ptp_drop_time_expired_events.exit:            ; preds = %for.end.i, %if.end.efx_ptp_drop_time_expired_events.exit_crit_edge
  %32 = ptrtoint ptr %tempq to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tempq, ptr %tempq, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %tempq, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tempq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tempq, i32 0, i32 1
  %34 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %qlen.i, align 4
  %35 = ptrtoint ptr %ptp_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptp_data.i, align 4
  %rxq.i = getelementptr inbounds %struct.efx_ptp_data, ptr %36, i32 0, i32 3
  %call43.i = call ptr @skb_dequeue(ptr noundef %rxq.i) #14
  %tobool.not44.i = icmp eq ptr %call43.i, null
  br i1 %tobool.not44.i, label %efx_ptp_drop_time_expired_events.exit.efx_ptp_process_events.exit_crit_edge, label %while.body.lr.ph.i

efx_ptp_drop_time_expired_events.exit.efx_ptp_process_events.exit_crit_edge: ; preds = %efx_ptp_drop_time_expired_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_process_events.exit

while.body.lr.ph.i:                               ; preds = %efx_ptp_drop_time_expired_events.exit
  %rx_no_timestamp.i = getelementptr inbounds %struct.efx_ptp_data, ptr %36, i32 0, i32 45
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call45.i = phi ptr [ %call43.i, %while.body.lr.ph.i ], [ %call.i, %cleanup.i.while.body.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.sk_buff, ptr %call45.i, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i23 = icmp eq i32 %38, 3
  br i1 %cmp.i23, label %while.body.i.cleanup.i_crit_edge, label %if.else.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  %39 = ptrtoint ptr %ptp_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptp_data.i, align 4
  %rx_ts_inline.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %rx_ts_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rx_ts_inline.i.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end28.i.i_crit_edge, label %land.rhs.i.i

if.else.i.if.end28.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b87.i.i = load i1, ptr @efx_ptp_match_rx.__already_done, align 1
  br i1 %.b87.i.i, label %land.rhs.i.i.if.end28.i.i_crit_edge, label %if.then.i.i, !prof !122

land.rhs.i.i.if.end28.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_ptp_match_rx.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1187, i32 noundef 9, ptr noundef null) #14
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end28.i.i_crit_edge, %if.else.i.if.end28.i.i_crit_edge
  %evt_lock.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %40, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %evt_lock.i.i) #14
  %evt_list.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %evt_list.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %evt_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %44, %evt_list.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %evt_lock.i.i) #14
  br i1 %cmp.i.not.i.i, label %if.end28.i.i.if.else4.i_crit_edge, label %if.end43.i.i

if.end28.i.i.if.else4.i_crit_edge:                ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else4.i

if.end43.i.i:                                     ; preds = %if.end28.i.i
  call void @_raw_spin_lock_bh(ptr noundef %evt_lock.i.i) #14
  %45 = ptrtoint ptr %evt_list.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %evt_list.i.i, align 4
  %cmp.i88.not96.i.i = icmp eq ptr %46, %evt_list.i.i
  br i1 %cmp.i88.not96.i.i, label %if.end43.i.i.efx_ptp_match_rx.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end43.i.i.efx_ptp_match_rx.exit.i_crit_edge:   ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_match_rx.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end43.i.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call45.i, i32 0, i32 3
  %47 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cb.i.i, align 4
  %arrayidx55.i.i = getelementptr %struct.sk_buff, ptr %call45.i, i32 0, i32 3, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cursor.097.i.i = phi ptr [ %46, %for.body.lr.ph.i.i ], [ %next.098.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %cursor.097.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %next.098.i.i = load ptr, ptr %cursor.097.i.i, align 4
  %seq0.i.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %cursor.097.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %seq0.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seq0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %48)
  %cmp.i.i = icmp eq i32 %51, %48
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %seq1.i.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %cursor.097.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seq1.i.i, align 4
  %54 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx55.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp56.i.i = icmp eq i32 %53, %55
  br i1 %cmp56.i.i, label %if.then57.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call45.i, i32 0, i32 17
  %56 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 7
  %hwtimestamp.i.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %cursor.097.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %hwtimestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %hwtimestamp.i.i, align 8
  %60 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %hwtstamps.i.i.i, align 8
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %state.i, align 4
  %evt_free_list.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %40, i32 0, i32 6
  %call.i.i.i.i24 = call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.097.i.i) #14
  br i1 %call.i.i.i.i24, label %if.end.i.i.i.i25, label %if.then57.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then57.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i25:                                 ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.097.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i, align 4
  %64 = ptrtoint ptr %cursor.097.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cursor.097.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i25, %if.then57.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %68 = ptrtoint ptr %evt_free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %evt_free_list.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %cursor.097.i.i, ptr noundef %evt_free_list.i.i, ptr noundef %69) #14
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.if.then3.i_crit_edge

__list_del_entry.exit.i.i.i.if.then3.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %cursor.097.i.i, ptr %prev1.i.i2.i.i.i, align 4
  %71 = ptrtoint ptr %cursor.097.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %cursor.097.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.097.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %evt_free_list.i.i, ptr %prev3.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %evt_free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %cursor.097.i.i, ptr %evt_free_list.i.i, align 4
  br label %if.then3.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %cmp.i88.not.i.i = icmp eq ptr %next.098.i.i, %evt_list.i.i
  br i1 %cmp.i88.not.i.i, label %cleanup.i.i.efx_ptp_match_rx.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cleanup.i.i.efx_ptp_match_rx.exit.i_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_match_rx.exit.i

efx_ptp_match_rx.exit.i:                          ; preds = %cleanup.i.i.efx_ptp_match_rx.exit.i_crit_edge, %if.end43.i.i.efx_ptp_match_rx.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %evt_lock.i.i) #14
  br label %if.else4.i

if.then3.i:                                       ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.if.then3.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %evt_lock.i.i) #14
  br label %cleanup.i

if.else4.i:                                       ; preds = %efx_ptp_match_rx.exit.i, %if.end28.i.i.if.else4.i_crit_edge
  %expiry.i26 = getelementptr inbounds %struct.sk_buff, ptr %call45.i, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %expiry.i26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %expiry.i26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub.i27 = sub i32 %75, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i27)
  %cmp5.i = icmp slt i32 %sub.i27, 0
  br i1 %cmp5.i, label %if.then6.i, label %cleanup.thread.i

if.then6.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %state.i, align 4
  %78 = ptrtoint ptr %rx_no_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_no_timestamp.i, align 8
  %inc.i = add i32 %79, 1
  store i32 %inc.i, ptr %rx_no_timestamp.i, align 8
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @skb_queue_head(ptr noundef %rxq.i, ptr noundef nonnull %call45.i) #14
  br label %efx_ptp_process_events.exit

cleanup.i:                                        ; preds = %if.then6.i, %if.then3.i, %while.body.i.cleanup.i_crit_edge
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i, align 4
  %82 = ptrtoint ptr %call45.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %tempq, ptr %call45.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %call45.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call45.i, ptr %prev.i, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call45.i, ptr %81, align 4
  %85 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qlen.i, align 4
  %add.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i, align 4
  %call.i = call ptr @skb_dequeue(ptr noundef %rxq.i) #14
  %tobool.not.i28 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i28, label %cleanup.i.efx_ptp_process_events.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.efx_ptp_process_events.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_process_events.exit

efx_ptp_process_events.exit:                      ; preds = %cleanup.i.efx_ptp_process_events.exit_crit_edge, %cleanup.thread.i, %efx_ptp_drop_time_expired_events.exit.efx_ptp_process_events.exit_crit_edge
  %txq = getelementptr i8, ptr %work, i32 -376
  %call337 = call ptr @skb_dequeue(ptr noundef %txq) #14
  %tobool4.not38 = icmp eq ptr %call337, null
  br i1 %tobool4.not38, label %efx_ptp_process_events.exit.while.cond5.preheader_crit_edge, label %while.body.lr.ph

efx_ptp_process_events.exit.while.cond5.preheader_crit_edge: ; preds = %efx_ptp_process_events.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond5.preheader

while.body.lr.ph:                                 ; preds = %efx_ptp_process_events.exit
  %xmit_skb = getelementptr i8, ptr %work, i32 960
  br label %while.body

while.cond5.preheader:                            ; preds = %while.body.while.cond5.preheader_crit_edge, %efx_ptp_process_events.exit.while.cond5.preheader_crit_edge
  %87 = ptrtoint ptr %tempq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tempq, align 4
  %cmp.i.i2940 = icmp eq ptr %88, %tempq
  %tobool.not.i303341 = icmp eq ptr %88, null
  %tobool.not.i3042 = or i1 %cmp.i.i2940, %tobool.not.i303341
  br i1 %tobool.not.i3042, label %while.cond5.preheader.cleanup_crit_edge, label %while.cond5.preheader.while.body8_crit_edge

while.cond5.preheader.while.body8_crit_edge:      ; preds = %while.cond5.preheader
  br label %while.body8

while.cond5.preheader.cleanup_crit_edge:          ; preds = %while.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call339 = phi ptr [ %call337, %while.body.lr.ph ], [ %call3, %while.body.while.body_crit_edge ]
  %89 = ptrtoint ptr %xmit_skb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %xmit_skb, align 4
  call void %90(ptr noundef %1, ptr noundef nonnull %call339) #14
  %call3 = call ptr @skb_dequeue(ptr noundef %txq) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.body.while.cond5.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.cond5.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond5.preheader

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond5.preheader.while.body8_crit_edge
  %91 = phi ptr [ %101, %while.body8.while.body8_crit_edge ], [ %88, %while.cond5.preheader.while.body8_crit_edge ]
  %92 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %91, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %91, i32 0, i32 1
  %96 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %91, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %95, i32 0, i32 1
  %98 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %97, ptr %prev17.i.i, align 4
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %95, ptr %97, align 8
  call fastcc void @local_bh_disable() #14
  %call.i32 = call i32 @netif_receive_skb(ptr noundef nonnull %91) #14
  call fastcc void @local_bh_enable() #14
  %100 = ptrtoint ptr %tempq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tempq, align 4
  %cmp.i.i29 = icmp eq ptr %101, %tempq
  %tobool.not.i3033 = icmp eq ptr %101, null
  %tobool.not.i30 = or i1 %cmp.i.i29, %tobool.not.i3033
  br i1 %tobool.not.i30, label %while.body8.cleanup_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body8

while.body8.cleanup_crit_edge:                    ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %while.body8.cleanup_crit_edge, %while.cond5.preheader.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tempq) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_pps_worker(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %ptp_evt = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -776
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ptp_evt) #14
  %2 = ptrtoint ptr %ptp_evt to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ptp_evt, align 8
  %call = tail call fastcc i32 @efx_ptp_synchronize(ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %ptp_evt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %ptp_evt, align 8
  %4 = getelementptr inbounds %struct.ptp_clock_event, ptr %ptp_evt, i32 0, i32 2
  %host_time_pps = getelementptr i8, ptr %work, i32 -144
  %5 = call ptr @memcpy(ptr %4, ptr %host_time_pps, i32 16)
  %phc_clock = getelementptr i8, ptr %work, i32 -112
  %6 = ptrtoint ptr %phc_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phc_clock, align 8
  call void @ptp_clock_event(ptr noundef %7, ptr noundef nonnull %ptp_evt) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ptp_evt) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_remove(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #14
  %2 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 144115188075855872, ptr %inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #14
  %3 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %outbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -114
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %spec.select.i, label %if.then14.i [
    i32 -38, label %if.end.do.end13.i_crit_edge
    i32 -1, label %if.end.do.end13.i_crit_edge38
    i32 0, label %if.end.efx_ptp_disable.exit_crit_edge
  ]

if.end.efx_ptp_disable.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_disable.exit

if.end.do.end13.i_crit_edge38:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

if.end.do.end13.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.end.do.end13.i_crit_edge, %if.end.do.end13.i_crit_edge38
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %5 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #18
  br label %efx_ptp_disable.exit

if.then14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, i32 noundef %spec.select.i) #14
  br label %efx_ptp_disable.exit

efx_ptp_disable.exit:                             ; preds = %if.then14.i, %do.end13.i, %if.end.efx_ptp_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  %7 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_data, align 4
  %work = getelementptr inbounds %struct.efx_ptp_data, ptr %8, i32 0, i32 10
  %call2 = call zeroext i1 @cancel_work_sync(ptr noundef %work) #14
  %9 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_data, align 4
  %pps_workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %10, i32 0, i32 34
  %11 = ptrtoint ptr %pps_workwq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pps_workwq, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %efx_ptp_disable.exit.if.end8_crit_edge, label %if.then5

efx_ptp_disable.exit.if.end8_crit_edge:           ; preds = %efx_ptp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %efx_ptp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pps_work = getelementptr inbounds %struct.efx_ptp_data, ptr %10, i32 0, i32 33
  %call7 = call zeroext i1 @cancel_work_sync(ptr noundef %pps_work) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %efx_ptp_disable.exit.if.end8_crit_edge
  %13 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_data, align 4
  %rxq = getelementptr inbounds %struct.efx_ptp_data, ptr %14, i32 0, i32 3
  call void @skb_queue_purge(ptr noundef %rxq) #14
  %15 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_data, align 4
  %txq = getelementptr inbounds %struct.efx_ptp_data, ptr %16, i32 0, i32 4
  call void @skb_queue_purge(ptr noundef %txq) #14
  %17 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptp_data, align 4
  %phc_clock = getelementptr inbounds %struct.efx_ptp_data, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %phc_clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phc_clock, align 8
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end8.if.end19_crit_edge, label %if.then13

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %pps_workwq15 = getelementptr inbounds %struct.efx_ptp_data, ptr %18, i32 0, i32 34
  %21 = ptrtoint ptr %pps_workwq15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pps_workwq15, align 4
  call void @destroy_workqueue(ptr noundef %22) #14
  %23 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptp_data, align 4
  %phc_clock17 = getelementptr inbounds %struct.efx_ptp_data, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %phc_clock17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phc_clock17, align 8
  %call18 = call i32 @ptp_clock_unregister(ptr noundef %26) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end8.if.end19_crit_edge
  %27 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptp_data, align 4
  %workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %workwq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %workwq, align 8
  call void @destroy_workqueue(ptr noundef %30) #14
  %31 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptp_data, align 4
  %start = getelementptr inbounds %struct.efx_ptp_data, ptr %32, i32 0, i32 27
  call void @efx_nic_free_buffer(ptr noundef %efx, ptr noundef %start) #14
  %33 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptp_data, align 4
  call void @kfree(ptr noundef %34) #14
  %35 = ptrtoint ptr %ptp_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ptp_data, align 4
  br label %return

return:                                           ; preds = %if.end19, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @efx_ptp_is_ptp_tx(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true3

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = add i32 %5, -63
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %6)
  %7 = icmp ult i32 %6, 178
  br i1 %7, label %land.lhs.true7, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp8 = icmp eq i16 %9, 2048
  br i1 %cmp8, label %land.lhs.true12, label %land.lhs.true7.land.end_crit_edge, !prof !122

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp.i.not = icmp eq i16 %11, -1
  br i1 %cmp.i.not, label %land.lhs.true12.land.end_crit_edge, label %land.lhs.true14

land.lhs.true12.land.end_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %conv.i = zext i16 %11 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i)
  %cmp16 = icmp ugt i32 %sub.i, 19
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true14.land.end_crit_edge

land.lhs.true14.land.end_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv1.i
  %protocol20 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %protocol20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %protocol20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %17)
  %cmp22 = icmp eq i8 %17, 17
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true18.land.end_crit_edge

land.lhs.true18.land.end_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.lhs.true24:                                  ; preds = %land.lhs.true18
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i, align 8
  %sub.i44 = sub i32 %5, %19
  %add.ptr.i.i47 = getelementptr i8, ptr %15, i32 %conv.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i47 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 8
  %add = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i44, i32 %add)
  %cmp27.not = icmp ult i32 %sub.i44, %add
  br i1 %cmp27.not, label %land.lhs.true24.land.end_crit_edge, label %land.rhs

land.lhs.true24.land.end_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i47, i32 0, i32 1
  %22 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %23)
  %cmp31 = icmp eq i16 %23, 319
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true24.land.end_crit_edge, %land.lhs.true18.land.end_crit_edge, %land.lhs.true14.land.end_crit_edge, %land.lhs.true12.land.end_crit_edge, %land.lhs.true7.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %24 = phi i1 [ false, %land.lhs.true24.land.end_crit_edge ], [ false, %land.lhs.true18.land.end_crit_edge ], [ false, %land.lhs.true14.land.end_crit_edge ], [ false, %land.lhs.true12.land.end_crit_edge ], [ false, %land.lhs.true7.land.end_crit_edge ], [ false, %land.lhs.true3.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp31, %land.rhs ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_tx(ptr nocapture noundef readonly %efx, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %txq = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %7)
  %cmp = icmp eq i16 %7, 319
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %9)
  %cmp2 = icmp ult i32 %9, 241
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_flags.i, align 1
  %14 = or i8 %13, 4
  store i8 %14, ptr %tx_flags.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %workwq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workwq, align 8
  %work = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_ptp_get_mode(ptr nocapture noundef readonly %efx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %mode = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_change_mode(ptr noundef %efx, i1 noundef zeroext %enable_wanted, i32 noundef %new_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable_wanted to i8
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %enabled = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp.not = icmp eq i8 %3, %frombool
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  br i1 %enable_wanted, label %land.lhs.true, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mode = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %new_mode)
  %cmp7.not = icmp eq i32 %5, %new_mode
  br i1 %cmp7.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.then10_crit_edge

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  br i1 %enable_wanted, label %if.then.if.then10_crit_edge, label %if.end44

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.then10:                                        ; preds = %if.then.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool13.not = icmp eq i8 %3, 0
  br i1 %tobool13.not, label %if.then10.if.end26_crit_edge, label %land.lhs.true15

if.then10.if.end26_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

land.lhs.true15:                                  ; preds = %if.then10
  %mode17 = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %mode17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_mode)
  %cmp18.not = icmp eq i32 %7, %new_mode
  br i1 %cmp18.not, label %land.lhs.true15.if.end26_crit_edge, label %if.then20

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then20:                                        ; preds = %land.lhs.true15
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  %call = tail call fastcc i32 @efx_ptp_stop(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23.not = icmp eq i32 %call, 0
  br i1 %cmp23.not, label %if.then20.if.end26_crit_edge, label %if.then20.return_crit_edge

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %land.lhs.true15.if.end26_crit_edge, %if.then10.if.end26_crit_edge
  %9 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_data, align 4
  %mode28 = getelementptr inbounds %struct.efx_ptp_data, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %mode28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_mode, ptr %mode28, align 8
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %12 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end26.if.then35_crit_edge, label %if.end32

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end32:                                         ; preds = %if.end26
  %call31 = tail call fastcc i32 @efx_ptp_start(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp eq i32 %call31, 0
  br i1 %cmp33, label %if.end32.if.then35_crit_edge, label %if.end32.return_crit_edge

if.end32.return_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  %call36 = tail call fastcc i32 @efx_ptp_synchronize(ptr noundef %efx, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.then35.cleanup_crit_edge, label %if.then39

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call fastcc i32 @efx_ptp_stop(ptr noundef %efx)
  br label %return

if.end44:                                         ; preds = %if.then
  %call43 = tail call fastcc i32 @efx_ptp_stop(ptr noundef %efx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45.not = icmp eq i32 %call43, 0
  br i1 %cmp45.not, label %if.end44.cleanup_crit_edge, label %if.end44.return_crit_edge

if.end44.return_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %if.then35.cleanup_crit_edge
  %16 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptp_data, align 4
  %enabled51 = getelementptr inbounds %struct.efx_ptp_data, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %enabled51 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %enabled51, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.end44.return_crit_edge, %if.then39, %if.end32.return_crit_edge, %if.then20.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ %call43, %if.end44.return_crit_edge ], [ %call, %if.then20.return_crit_edge ], [ %call31, %if.end32.return_crit_edge ], [ %call36, %if.then39 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ptp_stop(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #14
  %2 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 144115188075855872, ptr %inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #14
  %3 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %outbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -114
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  %4 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %spec.select.i, label %if.then14.i [
    i32 -38, label %if.end.do.end13.i_crit_edge
    i32 -1, label %if.end.do.end13.i_crit_edge44
    i32 0, label %if.end.efx_ptp_disable.exit_crit_edge
  ]

if.end.efx_ptp_disable.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_disable.exit

if.end.do.end13.i_crit_edge44:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

if.end.do.end13.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.end.do.end13.i_crit_edge, %if.end.do.end13.i_crit_edge44
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %5 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #18
  br label %efx_ptp_disable.exit

if.then14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, i32 noundef %spec.select.i) #14
  br label %efx_ptp_disable.exit

efx_ptp_disable.exit:                             ; preds = %if.then14.i, %do.end13.i, %if.end.efx_ptp_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  %7 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_data, align 4
  %rxfilter_installed.i = getelementptr inbounds %struct.efx_ptp_data, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %rxfilter_installed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxfilter_installed.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %efx_ptp_disable.exit.efx_ptp_remove_multicast_filters.exit_crit_edge, label %if.then.i

efx_ptp_disable.exit.efx_ptp_remove_multicast_filters.exit_crit_edge: ; preds = %efx_ptp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_remove_multicast_filters.exit

if.then.i:                                        ; preds = %efx_ptp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  %rxfilter_general.i = getelementptr inbounds %struct.efx_ptp_data, ptr %8, i32 0, i32 13
  %11 = ptrtoint ptr %rxfilter_general.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxfilter_general.i, align 8
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i.i, align 4
  %filter_remove_safe.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %14, i32 0, i32 78
  %15 = ptrtoint ptr %filter_remove_safe.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %filter_remove_safe.i.i, align 8
  %call.i.i = call i32 %16(ptr noundef %efx, i32 noundef 3, i32 noundef %12) #14
  %rxfilter_event.i = getelementptr inbounds %struct.efx_ptp_data, ptr %8, i32 0, i32 12
  %17 = ptrtoint ptr %rxfilter_event.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxfilter_event.i, align 4
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type.i.i, align 4
  %filter_remove_safe.i9.i = getelementptr inbounds %struct.efx_nic_type, ptr %20, i32 0, i32 78
  %21 = ptrtoint ptr %filter_remove_safe.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %filter_remove_safe.i9.i, align 8
  %call.i10.i = call i32 %22(ptr noundef %efx, i32 noundef 3, i32 noundef %18) #14
  %23 = ptrtoint ptr %rxfilter_installed.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rxfilter_installed.i, align 4
  br label %efx_ptp_remove_multicast_filters.exit

efx_ptp_remove_multicast_filters.exit:            ; preds = %if.then.i, %efx_ptp_disable.exit.efx_ptp_remove_multicast_filters.exit_crit_edge
  %24 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptp_data, align 4
  %rxq = getelementptr inbounds %struct.efx_ptp_data, ptr %25, i32 0, i32 3
  %call2.i = call ptr @skb_dequeue(ptr noundef %rxq) #14
  %tobool.not3.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not3.i, label %efx_ptp_remove_multicast_filters.exit.efx_ptp_deliver_rx_queue.exit_crit_edge, label %efx_ptp_remove_multicast_filters.exit.while.body.i_crit_edge

efx_ptp_remove_multicast_filters.exit.while.body.i_crit_edge: ; preds = %efx_ptp_remove_multicast_filters.exit
  br label %while.body.i

efx_ptp_remove_multicast_filters.exit.efx_ptp_deliver_rx_queue.exit_crit_edge: ; preds = %efx_ptp_remove_multicast_filters.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_deliver_rx_queue.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %efx_ptp_remove_multicast_filters.exit.while.body.i_crit_edge
  %call4.i = phi ptr [ %call.i29, %while.body.i.while.body.i_crit_edge ], [ %call2.i, %efx_ptp_remove_multicast_filters.exit.while.body.i_crit_edge ]
  call fastcc void @local_bh_disable() #14
  %call1.i = call i32 @netif_receive_skb(ptr noundef nonnull %call4.i) #14
  call fastcc void @local_bh_enable() #14
  %call.i29 = call ptr @skb_dequeue(ptr noundef %rxq) #14
  %tobool.not.i30 = icmp eq ptr %call.i29, null
  br i1 %tobool.not.i30, label %while.body.i.efx_ptp_deliver_rx_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.efx_ptp_deliver_rx_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_deliver_rx_queue.exit

efx_ptp_deliver_rx_queue.exit:                    ; preds = %while.body.i.efx_ptp_deliver_rx_queue.exit_crit_edge, %efx_ptp_remove_multicast_filters.exit.efx_ptp_deliver_rx_queue.exit_crit_edge
  %26 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptp_data, align 4
  %txq = getelementptr inbounds %struct.efx_ptp_data, ptr %27, i32 0, i32 4
  call void @skb_queue_purge(ptr noundef %txq) #14
  %28 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptp_data, align 4
  %evt_lock = getelementptr inbounds %struct.efx_ptp_data, ptr %29, i32 0, i32 7
  call void @_raw_spin_lock_bh(ptr noundef %evt_lock) #14
  %30 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptp_data, align 4
  %evt_list = getelementptr inbounds %struct.efx_ptp_data, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %evt_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %evt_list, align 4
  %cmp.i31.not35 = icmp eq ptr %33, %evt_list
  br i1 %cmp.i31.not35, label %efx_ptp_deliver_rx_queue.exit.for.end_crit_edge, label %efx_ptp_deliver_rx_queue.exit.for.body_crit_edge

efx_ptp_deliver_rx_queue.exit.for.body_crit_edge: ; preds = %efx_ptp_deliver_rx_queue.exit
  br label %for.body

efx_ptp_deliver_rx_queue.exit.for.end_crit_edge:  ; preds = %efx_ptp_deliver_rx_queue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %efx_ptp_deliver_rx_queue.exit.for.body_crit_edge
  %34 = phi ptr [ %49, %list_move.exit.for.body_crit_edge ], [ %31, %efx_ptp_deliver_rx_queue.exit.for.body_crit_edge ]
  %cursor.036 = phi ptr [ %next.038, %list_move.exit.for.body_crit_edge ], [ %33, %efx_ptp_deliver_rx_queue.exit.for.body_crit_edge ]
  %35 = ptrtoint ptr %cursor.036 to i32
  call void @__asan_load4_noabort(i32 %35)
  %next.038 = load ptr, ptr %cursor.036, align 4
  %evt_free_list = getelementptr inbounds %struct.efx_ptp_data, ptr %34, i32 0, i32 6
  %call.i.i32 = call zeroext i1 @__list_del_entry_valid(ptr noundef %cursor.036) #14
  br i1 %call.i.i32, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.036, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %cursor.036 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cursor.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %42 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %evt_free_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %cursor.036, ptr noundef %evt_free_list, ptr noundef %43) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %cursor.036, ptr %prev1.i.i2.i, align 4
  %45 = ptrtoint ptr %cursor.036 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %cursor.036, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.036, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %evt_free_list, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %evt_free_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %cursor.036, ptr %evt_free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %48 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptp_data, align 4
  %evt_list8 = getelementptr inbounds %struct.efx_ptp_data, ptr %49, i32 0, i32 5
  %cmp.i31.not = icmp eq ptr %next.038, %evt_list8
  br i1 %cmp.i31.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %efx_ptp_deliver_rx_queue.exit.for.end_crit_edge
  %.lcssa = phi ptr [ %31, %efx_ptp_deliver_rx_queue.exit.for.end_crit_edge ], [ %49, %list_move.exit.for.end_crit_edge ]
  %evt_lock13 = getelementptr inbounds %struct.efx_ptp_data, ptr %.lcssa, i32 0, i32 7
  call void @_raw_spin_unlock_bh(ptr noundef %evt_lock13) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ptp_start(ptr noundef %efx) unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [4 x %union.efx_dword], align 4
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %rxfilter.i = alloca %struct.efx_filter_spec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %reset_required = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reset_required to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reset_required, align 8
  %3 = load ptr, ptr %ptp_data, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rxfilter.i) #14
  %channel.i = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %rxfilter_installed.i = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rxfilter_installed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rxfilter_installed.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %channel.i.i = getelementptr %struct.efx_channel, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel.i.i, align 4
  %rss_context.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %rxfilter.i, i32 0, i32 1
  %bf.value7.i.i = and i32 %9, 4095
  %bf.set.i.i = or i32 %bf.value7.i.i, 640450560
  %10 = call ptr @memset(ptr %rss_context.i.i, i32 0, i32 64)
  %11 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.set.i.i, ptr %rxfilter.i, align 4
  %ether_type.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %rxfilter.i, i32 0, i32 6
  %12 = ptrtoint ptr %ether_type.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2048, ptr %ether_type.i.i, align 4
  %ip_proto.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %rxfilter.i, i32 0, i32 7
  %13 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %ip_proto.i.i, align 2
  %loc_host.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %rxfilter.i, i32 0, i32 8
  %14 = ptrtoint ptr %loc_host.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -536870527, ptr %loc_host.i.i, align 4
  %loc_port.i.i = getelementptr inbounds %struct.efx_filter_spec, ptr %rxfilter.i, i32 0, i32 10
  %15 = ptrtoint ptr %loc_port.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 319, ptr %loc_port.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i.i, align 4
  %filter_insert.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 77
  %18 = ptrtoint ptr %filter_insert.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filter_insert.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %efx, ptr noundef nonnull %rxfilter.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i, label %if.end.i.efx_ptp_insert_multicast_filters.exit_crit_edge, label %if.end10.i

if.end.i.efx_ptp_insert_multicast_filters.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %efx_ptp_insert_multicast_filters.exit

if.end10.i:                                       ; preds = %if.end.i
  %rxfilter_event.i = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %rxfilter_event.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i, ptr %rxfilter_event.i, align 4
  %21 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel.i, align 4
  %channel.i46.i = getelementptr %struct.efx_channel, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %channel.i46.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel.i46.i, align 4
  %bf.value7.i48.i = and i32 %24, 4095
  %bf.set.i51.i = or i32 %bf.value7.i48.i, 640450560
  %25 = call ptr @memset(ptr %rss_context.i.i, i32 0, i32 64)
  %26 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.set.i51.i, ptr %rxfilter.i, align 4
  %27 = ptrtoint ptr %ether_type.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2048, ptr %ether_type.i.i, align 4
  %28 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 17, ptr %ip_proto.i.i, align 2
  %29 = ptrtoint ptr %loc_host.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -536870527, ptr %loc_host.i.i, align 4
  %30 = ptrtoint ptr %loc_port.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 320, ptr %loc_port.i.i, align 4
  %31 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type.i.i, align 4
  %filter_insert.i57.i = getelementptr inbounds %struct.efx_nic_type, ptr %32, i32 0, i32 77
  %33 = ptrtoint ptr %filter_insert.i57.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %filter_insert.i57.i, align 4
  %call.i58.i = call i32 %34(ptr noundef %efx, ptr noundef nonnull %rxfilter.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp19.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp19.i, label %fail.i, label %if.end21.i

if.end21.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %rxfilter_general.i = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 13
  %35 = ptrtoint ptr %rxfilter_general.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i58.i, ptr %rxfilter_general.i, align 8
  %36 = ptrtoint ptr %rxfilter_installed.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %rxfilter_installed.i, align 4
  br label %if.end

fail.i:                                           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %rxfilter_event.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxfilter_event.i, align 4
  %39 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %type.i.i, align 4
  %filter_remove_safe.i.i = getelementptr inbounds %struct.efx_nic_type, ptr %40, i32 0, i32 78
  %41 = ptrtoint ptr %filter_remove_safe.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %filter_remove_safe.i.i, align 8
  %call.i60.i = call i32 %42(ptr noundef %efx, i32 noundef 3, i32 noundef %38) #14
  br label %efx_ptp_insert_multicast_filters.exit

efx_ptp_insert_multicast_filters.exit:            ; preds = %fail.i, %if.end.i.efx_ptp_insert_multicast_filters.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i58.i, %fail.i ], [ %call.i.i, %if.end.i.efx_ptp_insert_multicast_filters.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rxfilter.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.end21.i, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rxfilter.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inbuf.i) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #14
  %43 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %outbuf.i, align 8
  %44 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16777216, ptr %inbuf.i, align 4
  %add.ptr3.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 1
  %45 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %add.ptr3.i, align 4
  %46 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptp_data, align 4
  %channel.i14 = getelementptr inbounds %struct.efx_ptp_data, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %channel.i14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channel.i14, align 4
  %tobool.not.i15 = icmp eq ptr %49, null
  br i1 %tobool.not.i15, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %channel10.i = getelementptr inbounds %struct.efx_channel, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %channel10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel10.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %51, %cond.true.i ], [ 0, %if.end.cond.end.i_crit_edge ]
  %52 = call i32 @llvm.bswap.i32(i32 %cond.i) #14
  %add.ptr13.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 2
  %53 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %add.ptr13.i, align 4
  %mode.i = getelementptr inbounds %struct.efx_ptp_data, ptr %47, i32 0, i32 17
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #14
  %add.ptr24.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i, i32 3
  %57 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %add.ptr24.i, align 4
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 16, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -114
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool35.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool35.not.i, label %if.end3, label %fail

if.end3:                                          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #14
  %evt_frag_idx = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 25
  %58 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %evt_frag_idx, align 8
  %current_adjfreq = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 30
  %59 = ptrtoint ptr %current_adjfreq to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %current_adjfreq, align 8
  br label %cleanup

fail:                                             ; preds = %cond.end.i
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 16, ptr noundef nonnull %outbuf.i, i32 noundef 8, i32 noundef %spec.select.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inbuf.i) #14
  %60 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptp_data, align 4
  %rxfilter_installed.i18 = getelementptr inbounds %struct.efx_ptp_data, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %rxfilter_installed.i18 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rxfilter_installed.i18, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i19 = icmp eq i8 %63, 0
  br i1 %tobool.not.i19, label %fail.cleanup_crit_edge, label %if.then.i25

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i25:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  %rxfilter_general.i20 = getelementptr inbounds %struct.efx_ptp_data, ptr %61, i32 0, i32 13
  %64 = ptrtoint ptr %rxfilter_general.i20 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rxfilter_general.i20, align 8
  %type.i.i21 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %66 = ptrtoint ptr %type.i.i21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %type.i.i21, align 4
  %filter_remove_safe.i.i22 = getelementptr inbounds %struct.efx_nic_type, ptr %67, i32 0, i32 78
  %68 = ptrtoint ptr %filter_remove_safe.i.i22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %filter_remove_safe.i.i22, align 8
  %call.i.i23 = call i32 %69(ptr noundef %efx, i32 noundef 3, i32 noundef %65) #14
  %rxfilter_event.i24 = getelementptr inbounds %struct.efx_ptp_data, ptr %61, i32 0, i32 12
  %70 = ptrtoint ptr %rxfilter_event.i24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rxfilter_event.i24, align 4
  %72 = ptrtoint ptr %type.i.i21 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %type.i.i21, align 4
  %filter_remove_safe.i9.i = getelementptr inbounds %struct.efx_nic_type, ptr %73, i32 0, i32 78
  %74 = ptrtoint ptr %filter_remove_safe.i9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %filter_remove_safe.i9.i, align 8
  %call.i10.i = call i32 %75(ptr noundef %efx, i32 noundef 3, i32 noundef %71) #14
  %76 = ptrtoint ptr %rxfilter_installed.i18 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %rxfilter_installed.i18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %fail.cleanup_crit_edge, %if.end3, %efx_ptp_insert_multicast_filters.exit
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %retval.0.i, %efx_ptp_insert_multicast_filters.exit ], [ %spec.select.i, %fail.cleanup_crit_edge ], [ %spec.select.i, %if.then.i25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_ptp_synchronize(ptr noundef %efx, i32 noundef %num_readings) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i117 = alloca %struct.timespec64, align 8
  %tmp4.i = alloca %struct.timespec64, align 8
  %tmp69.i = alloca %struct.timespec64, align 8
  %snap.i42.i = alloca %struct.system_time_snapshot, align 8
  %tmp.i43.i = alloca %struct.timespec64, align 8
  %snap.i.i = alloca %struct.system_time_snapshot, align 8
  %tmp.i.i = alloca %struct.timespec64, align 8
  %dividend.addr.i.i23.i = alloca i64, align 8
  %dividend.addr.i.i.i = alloca i64, align 8
  %synch_buf = alloca [60 x %union.efx_dword], align 4
  %response_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %synch_buf) #14
  %2 = getelementptr inbounds i8, ptr %synch_buf, i32 20
  %3 = call ptr @memset(ptr %2, i32 0, i32 220)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response_length) #14
  %4 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %response_length, align 4, !annotation !123
  %start1 = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %start1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start1, align 8
  %7 = ptrtoint ptr %synch_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 117440512, ptr %synch_buf, align 4
  %add.ptr4 = getelementptr inbounds %union.efx_dword, ptr %synch_buf, i32 1
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %add.ptr4, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %num_readings)
  %add.ptr11 = getelementptr inbounds %union.efx_dword, ptr %synch_buf, i32 2
  %10 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr11, align 4
  %dma_addr = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %add.ptr23 = getelementptr inbounds %union.efx_dword, ptr %synch_buf, i32 3
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr23, align 4
  %arrayidx40 = getelementptr inbounds %union.efx_dword, ptr %synch_buf, i32 4
  %15 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx40, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %6, align 4
  %call = call i32 @efx_mcdi_rpc_start(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %synch_buf, i32 noundef 20) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, 1
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not135 = icmp eq i32 %19, 0
  br i1 %tobool.not135, label %entry.land.rhs_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %loops.0136 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 4294960) #14
  %inc = add i32 %loops.0136, 1
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %6, align 4
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %loops.0.lcssa = phi i32 [ %loops.0136, %land.rhs.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %loops.0.lcssa)
  %cmp64 = icmp ult i32 %loops.0.lcssa, 2
  br i1 %cmp64, label %while.end.if.then_crit_edge, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %entry.if.then_crit_edge
  %fast_syncs = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 38
  %24 = ptrtoint ptr %fast_syncs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fast_syncs, align 4
  %inc66 = add i32 %25, 1
  store i32 %inc66, ptr %fast_syncs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub67 = sub i32 %26, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub67)
  %cmp68 = icmp slt i32 %sub67, 0
  br i1 %cmp68, label %if.end.do.end75_crit_edge, label %if.then70

if.end.do.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end75

if.then70:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sync_timeouts = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 40
  %27 = ptrtoint ptr %sync_timeouts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_timeouts, align 4
  %inc71 = add i32 %28, 1
  store i32 %inc71, ptr %sync_timeouts, align 4
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %if.end.do.end75_crit_edge
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool77.not = icmp eq i32 %30, 0
  br i1 %tobool77.not, label %do.end75.if.end79_crit_edge, label %if.then78

do.end75.if.end79_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then78:                                        ; preds = %do.end75
  %31 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptp_data, align 4
  %start.i = getelementptr inbounds %struct.efx_ptp_data, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %start.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %snap.i.i) #14
  %35 = call ptr @memset(ptr %snap.i.i, i32 255, i32 40)
  call void @ktime_get_snapshot(ptr noundef nonnull %snap.i.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #14
  %real.i.i = getelementptr inbounds %struct.system_time_snapshot, ptr %snap.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %real.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %real.i.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, i64 noundef %37) #14
  %38 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %now.sroa.0.0.copyload67.i = load i64, ptr %tmp.i.i, align 8
  %now.sroa.11.0.tmp.i.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 8
  %39 = ptrtoint ptr %now.sroa.11.0.tmp.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %now.sroa.11.0.copyload70.i = load i32, ptr %now.sroa.11.0.tmp.i.sroa_idx.i, align 8
  %now.sroa.16.0.tmp.i.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i.i, i32 12
  %40 = ptrtoint ptr %now.sroa.16.0.tmp.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %now.sroa.16.0.copyload75.i = load i32, ptr %now.sroa.16.0.tmp.i.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %snap.i.i) #14
  %conv.i.i = sext i32 %now.sroa.11.0.copyload70.i to i64
  %add.i.i = add nsw i64 %conv.i.i, 250000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #14
  %41 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add.i.i, ptr %dividend.addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i.i)
  %cmp1.i.i.i = icmp ugt i64 %add.i.i, 999999999
  %extract.t.i.i = trunc i64 %add.i.i to i32
  br i1 %cmp1.i.i.i, label %if.then78.while.body.i.i.i_crit_edge, label %if.then78.timespec64_add_ns.exit.i_crit_edge

if.then78.timespec64_add_ns.exit.i_crit_edge:     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_add_ns.exit.i

if.then78.while.body.i.i.i_crit_edge:             ; preds = %if.then78
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then78.while.body.i.i.i_crit_edge
  %ret.02.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.then78.while.body.i.i.i_crit_edge ]
  %42 = phi i64 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %if.then78.while.body.i.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i, i64 %42) #14, !srcloc !125
  %43 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dividend.addr.i.i.i, align 8
  %sub.i.i.i = add i64 %44, -1000000000
  store i64 %sub.i.i.i, ptr %dividend.addr.i.i.i, align 8
  %inc.i.i.i = add i32 %ret.02.i.i.i, 1
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i, 999999999
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

__iter_div_u64_rem.exit.loopexit.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t7.le.i.i = trunc i64 %sub.i.i.i to i32
  br label %timespec64_add_ns.exit.i

timespec64_add_ns.exit.i:                         ; preds = %__iter_div_u64_rem.exit.loopexit.i.i, %if.then78.timespec64_add_ns.exit.i_crit_edge
  %.lcssa.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.then78.timespec64_add_ns.exit.i_crit_edge ], [ %extract.t7.le.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  %ret.0.lcssa.i.i.i = phi i32 [ 0, %if.then78.timespec64_add_ns.exit.i_crit_edge ], [ %inc.i.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #14
  %conv1.i.i = zext i32 %ret.0.lcssa.i.i.i to i64
  %add2.i.i = add i64 %now.sroa.0.0.copyload67.i, %conv1.i.i
  %real.i44.i = getelementptr inbounds %struct.system_time_snapshot, ptr %snap.i42.i, i32 0, i32 1
  %now.sroa.11.0.tmp.i43.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i43.i, i32 8
  %now.sroa.16.0.tmp.i43.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i43.i, i32 12
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end15.i, %timespec64_add_ns.exit.i
  %now.sroa.0.0.i = phi i64 [ %now.sroa.0.0.copyload67.i, %timespec64_add_ns.exit.i ], [ %now.sroa.0.0.copyload68.i, %do.end15.i ]
  %now.sroa.11.0.i = phi i32 [ %now.sroa.11.0.copyload70.i, %timespec64_add_ns.exit.i ], [ %now.sroa.11.0.copyload71.i, %do.end15.i ]
  %now.sroa.16.0.i = phi i32 [ %now.sroa.16.0.copyload75.i, %timespec64_add_ns.exit.i ], [ %now.sroa.16.0.copyload76.i, %do.end15.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %now.sroa.0.0.i, i64 %add2.i.i)
  %cmp.i.i = icmp slt i64 %now.sroa.0.0.i, %add2.i.i
  br i1 %cmp.i.i, label %while.cond.i.do.end.i_crit_edge, label %if.end.i.i

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %now.sroa.0.0.i, i64 %add2.i.i)
  %cmp4.i.i = icmp sle i64 %now.sroa.0.0.i, %add2.i.i
  %sub.i.i = sub i32 %now.sroa.11.0.i, %.lcssa.i.off0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i = icmp slt i32 %sub.i.i, 0
  %or.cond.i = select i1 %cmp4.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i.i.if.end79_crit_edge

if.end.i.i.if.end79_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %do.end.i.if.end79_crit_edge, label %while.body.i

do.end.i.if.end79_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

while.body.i:                                     ; preds = %do.end.i
  %conv.i25.i = sext i32 %now.sroa.11.0.i to i64
  %add.i26.i = add nsw i64 %conv.i25.i, 200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i23.i) #14
  %47 = ptrtoint ptr %dividend.addr.i.i23.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %add.i26.i, ptr %dividend.addr.i.i23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i26.i)
  %cmp1.i.i27.i = icmp ugt i64 %add.i26.i, 999999999
  %extract.t.i28.i = trunc i64 %add.i26.i to i32
  br i1 %cmp1.i.i27.i, label %while.body.i.while.body.i.i33.i_crit_edge, label %while.body.i.timespec64_add_ns.exit40.i_crit_edge

while.body.i.timespec64_add_ns.exit40.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_add_ns.exit40.i

while.body.i.while.body.i.i33.i_crit_edge:        ; preds = %while.body.i
  br label %while.body.i.i33.i

while.body.i.i33.i:                               ; preds = %while.body.i.i33.i.while.body.i.i33.i_crit_edge, %while.body.i.while.body.i.i33.i_crit_edge
  %ret.02.i.i29.i = phi i32 [ %inc.i.i31.i, %while.body.i.i33.i.while.body.i.i33.i_crit_edge ], [ 0, %while.body.i.while.body.i.i33.i_crit_edge ]
  %48 = phi i64 [ %sub.i.i30.i, %while.body.i.i33.i.while.body.i.i33.i_crit_edge ], [ %add.i26.i, %while.body.i.while.body.i.i33.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i23.i, i64 %48) #14, !srcloc !125
  %49 = ptrtoint ptr %dividend.addr.i.i23.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dividend.addr.i.i23.i, align 8
  %sub.i.i30.i = add i64 %50, -1000000000
  store i64 %sub.i.i30.i, ptr %dividend.addr.i.i23.i, align 8
  %inc.i.i31.i = add i32 %ret.02.i.i29.i, 1
  %cmp.i.i32.i = icmp ugt i64 %sub.i.i30.i, 999999999
  br i1 %cmp.i.i32.i, label %while.body.i.i33.i.while.body.i.i33.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i35.i

while.body.i.i33.i.while.body.i.i33.i_crit_edge:  ; preds = %while.body.i.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i33.i

__iter_div_u64_rem.exit.loopexit.i35.i:           ; preds = %while.body.i.i33.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t7.le.i34.i = trunc i64 %sub.i.i30.i to i32
  br label %timespec64_add_ns.exit40.i

timespec64_add_ns.exit40.i:                       ; preds = %__iter_div_u64_rem.exit.loopexit.i35.i, %while.body.i.timespec64_add_ns.exit40.i_crit_edge
  %.lcssa.i.off0.i36.i = phi i32 [ %extract.t.i28.i, %while.body.i.timespec64_add_ns.exit40.i_crit_edge ], [ %extract.t7.le.i34.i, %__iter_div_u64_rem.exit.loopexit.i35.i ]
  %ret.0.lcssa.i.i37.i = phi i32 [ 0, %while.body.i.timespec64_add_ns.exit40.i_crit_edge ], [ %inc.i.i31.i, %__iter_div_u64_rem.exit.loopexit.i35.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i23.i) #14
  %conv1.i38.i = zext i32 %ret.0.lcssa.i.i37.i to i64
  %add2.i39.i = add i64 %now.sroa.0.0.i, %conv1.i38.i
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end11.i.do.body3.i_crit_edge, %timespec64_add_ns.exit40.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %snap.i42.i) #14
  %51 = call ptr @memset(ptr %snap.i42.i, i32 255, i32 40)
  call void @ktime_get_snapshot(ptr noundef nonnull %snap.i42.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i43.i) #14
  %52 = ptrtoint ptr %real.i44.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %real.i44.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i43.i, i64 noundef %53) #14
  %54 = ptrtoint ptr %tmp.i43.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %now.sroa.0.0.copyload68.i = load i64, ptr %tmp.i43.i, align 8
  %55 = ptrtoint ptr %now.sroa.11.0.tmp.i43.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %now.sroa.11.0.copyload71.i = load i32, ptr %now.sroa.11.0.tmp.i43.sroa_idx.i, align 8
  %56 = ptrtoint ptr %now.sroa.16.0.tmp.i43.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %now.sroa.16.0.copyload76.i = load i32, ptr %now.sroa.16.0.tmp.i43.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i43.i) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %snap.i42.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %now.sroa.0.0.copyload68.i, i64 %add2.i39.i)
  %cmp.i45.i = icmp slt i64 %now.sroa.0.0.copyload68.i, %add2.i39.i
  br i1 %cmp.i45.i, label %do.body3.i.do.end11.i_crit_edge, label %if.end.i47.i

do.body3.i.do.end11.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

if.end.i47.i:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %now.sroa.0.0.copyload68.i, i64 %add2.i39.i)
  %cmp4.i46.i = icmp sle i64 %now.sroa.0.0.copyload68.i, %add2.i39.i
  %sub.i50.i = sub i32 %now.sroa.11.0.copyload71.i, %.lcssa.i.off0.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i50.i)
  %cmp7.i = icmp slt i32 %sub.i50.i, 0
  %or.cond88.i = select i1 %cmp4.i46.i, i1 %cmp7.i, i1 false
  br i1 %or.cond88.i, label %if.end.i47.i.do.end11.i_crit_edge, label %if.end.i47.i.do.end15.i_crit_edge

if.end.i47.i.do.end15.i_crit_edge:                ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15.i

if.end.i47.i.do.end11.i_crit_edge:                ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i47.i.do.end11.i_crit_edge, %do.body3.i.do.end11.i_crit_edge
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %34, align 4
  %tobool13.not.i = icmp eq i32 %58, 0
  br i1 %tobool13.not.i, label %do.end11.i.do.end15.i_crit_edge, label %do.end11.i.do.body3.i_crit_edge

do.end11.i.do.body3.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

do.end11.i.do.end15.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end11.i.do.end15.i_crit_edge, %if.end.i47.i.do.end15.i_crit_edge
  %.tr.i = trunc i64 %now.sroa.0.0.copyload68.i to i32
  %59 = shl i32 %.tr.i, 30
  %conv18.i = or i32 %59, %now.sroa.11.0.copyload71.i
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type.i, align 4
  %ptp_write_host_time.i = getelementptr inbounds %struct.efx_nic_type, ptr %61, i32 0, i32 91
  %62 = ptrtoint ptr %ptp_write_host_time.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ptp_write_host_time.i, align 4
  call void %63(ptr noundef %efx, i32 noundef %conv18.i) #14
  br label %while.cond.i

if.end79:                                         ; preds = %do.end.i.if.end79_crit_edge, %if.end.i.i.if.end79_crit_edge, %do.end75.if.end79_crit_edge
  %last_time.sroa.0.0 = phi i64 [ 0, %do.end75.if.end79_crit_edge ], [ %now.sroa.0.0.i, %if.end.i.i.if.end79_crit_edge ], [ %now.sroa.0.0.i, %do.end.i.if.end79_crit_edge ]
  %last_time.sroa.6.0 = phi i32 [ 0, %do.end75.if.end79_crit_edge ], [ %now.sroa.11.0.i, %if.end.i.i.if.end79_crit_edge ], [ %now.sroa.11.0.i, %do.end.i.if.end79_crit_edge ]
  %last_time.sroa.8.0 = phi i32 [ 0, %do.end75.if.end79_crit_edge ], [ %now.sroa.16.0.i, %if.end.i.i.if.end79_crit_edge ], [ %now.sroa.16.0.i, %do.end.i.if.end79_crit_edge ]
  %call81 = call i32 @efx_mcdi_rpc_finish(ptr noundef %efx, i32 noundef 11, i32 noundef 20, ptr noundef nonnull %synch_buf, i32 noundef 240, ptr noundef nonnull %response_length) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end79.if.then96_crit_edge

if.end79.if.then96_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then96

if.then84:                                        ; preds = %if.end79
  %64 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %response_length, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp69.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %65)
  %cmp.i118 = icmp ugt i32 %65, 259
  %div.i = udiv i32 %65, 20
  %cond.i = select i1 %cmp.i118, i32 12, i32 %div.i
  %66 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ptp_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp1.i = icmp eq i32 %cond.i, 0
  br i1 %cmp1.i, label %if.then84.if.else_crit_edge, label %for.body.lr.ph.i

if.then84.if.else_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.then84
  %nic_to_kernel_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 19
  %wait.sroa.4.0.tmp4.sroa_idx.i = getelementptr inbounds i8, ptr %tmp4.i, i32 8
  %min_synchronisation_ns.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 21
  %undersize_sync_windows.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 43
  %oversize_sync_windows.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 44
  %invalid_sync_windows.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %last_good.0134.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %last_good.1.i, %if.end25.i.for.body.i_crit_edge ]
  %ngood.0133.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ngood.1.i, %if.end25.i.for.body.i_crit_edge ]
  %i.0132.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %if.end25.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.0132.i, 20
  %add.ptr3.i = getelementptr i8, ptr %synch_buf, i32 %mul.i
  %arrayidx.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i
  %68 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr3.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #14
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.i, align 4
  %add.ptr1.i.i = getelementptr %union.efx_dword, ptr %add.ptr3.i, i32 1
  %72 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr1.i.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #14
  %major.i.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i, i32 1
  %75 = ptrtoint ptr %major.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %major.i.i, align 4
  %add.ptr5.i.i = getelementptr %union.efx_dword, ptr %add.ptr3.i, i32 2
  %76 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr5.i.i, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #14
  %minor.i.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i, i32 2
  %79 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %minor.i.i, align 4
  %add.ptr9.i.i = getelementptr %union.efx_dword, ptr %add.ptr3.i, i32 3
  %80 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr9.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #14
  %host_end.i.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i, i32 3
  %83 = ptrtoint ptr %host_end.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %host_end.i.i, align 4
  %add.ptr13.i.i = getelementptr %union.efx_dword, ptr %add.ptr3.i, i32 4
  %84 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr13.i.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #14
  %wait.i.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i, i32 4
  %87 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %wait.i.i, align 4
  %and18.i.i = and i32 %70, 1073741823
  %and20.i.i = and i32 %82, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i.i, i32 %and18.i.i)
  %cmp.i.i120 = icmp ult i32 %and20.i.i, %and18.i.i
  %add.i.i121 = add nuw nsw i32 %and20.i.i, 1000000000
  %spec.select.i.i = select i1 %cmp.i.i120, i32 %add.i.i121, i32 %and20.i.i
  %sub.i.i122 = sub nsw i32 %spec.select.i.i, %and18.i.i
  %window.i.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %i.0132.i, i32 5
  %88 = ptrtoint ptr %window.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.i.i122, ptr %window.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp4.i) #14
  %89 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nic_to_kernel_time.i, align 8
  %call.i = call i64 %90(i32 noundef 0, i32 noundef %86, i32 noundef 0) #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp4.i, i64 noundef %call.i) #14
  %91 = ptrtoint ptr %wait.sroa.4.0.tmp4.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %wait.sroa.4.0.copyload83.i = load i32, ptr %wait.sroa.4.0.tmp4.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp4.i) #14
  %92 = ptrtoint ptr %window.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %window.i.i, align 4
  %sub11.i = sub i32 %93, %wait.sroa.4.0.copyload83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %93)
  %cmp12.i = icmp slt i32 %93, 200
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %invalid_sync_windows.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %invalid_sync_windows.i, align 4
  %inc.i = add i32 %95, 1
  store i32 %inc.i, ptr %invalid_sync_windows.i, align 4
  br label %if.end25.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %sub11.i)
  %cmp14.i = icmp sgt i32 %sub11.i, 999
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %oversize_sync_windows.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %oversize_sync_windows.i, align 4
  %inc16.i = add i32 %97, 1
  store i32 %inc16.i, ptr %oversize_sync_windows.i, align 4
  br label %if.end25.i

if.else17.i:                                      ; preds = %if.else.i
  %98 = ptrtoint ptr %min_synchronisation_ns.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %min_synchronisation_ns.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11.i, i32 %99)
  %cmp18.i = icmp ult i32 %sub11.i, %99
  br i1 %cmp18.i, label %if.then19.i, label %if.else21.i

if.then19.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %undersize_sync_windows.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %undersize_sync_windows.i, align 8
  %inc20.i = add i32 %101, 1
  store i32 %inc20.i, ptr %undersize_sync_windows.i, align 8
  br label %if.end25.i

if.else21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc22.i = add i32 %ngood.0133.i, 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else21.i, %if.then19.i, %if.then15.i, %if.then13.i
  %ngood.1.i = phi i32 [ %ngood.0133.i, %if.then13.i ], [ %ngood.0133.i, %if.then15.i ], [ %ngood.0133.i, %if.then19.i ], [ %inc22.i, %if.else21.i ]
  %last_good.1.i = phi i32 [ %last_good.0134.i, %if.then13.i ], [ %last_good.0134.i, %if.then15.i ], [ %last_good.0134.i, %if.then19.i ], [ %i.0132.i, %if.else21.i ]
  %inc26.i = add nuw nsw i32 %i.0132.i, 1
  %exitcond.not.i = icmp eq i32 %inc26.i, %cond.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end25.i.for.body.i_crit_edge

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngood.1.i)
  %cmp27.i = icmp eq i32 %ngood.1.i, 0
  br i1 %cmp27.i, label %do.body.i, label %if.end31.i

do.body.i:                                        ; preds = %for.end.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %102 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i123 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i123, label %do.body.i.if.else_crit_edge, label %do.body.i.if.else.sink.split_crit_edge

do.body.i.if.else.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.sink.split

do.body.i.if.else_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end31.i:                                       ; preds = %for.end.i
  %arrayidx33.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %last_good.1.i
  %104 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx33.i, align 4
  %shr.i = lshr i32 %105, 30
  %106 = trunc i64 %last_time.sroa.0.0 to i32
  %conv.i = and i32 %106, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %shr.i)
  %cmp35.not.i = icmp eq i32 %conv.i, %shr.i
  br i1 %cmp35.not.i, label %if.end31.i.if.end93_crit_edge, label %land.lhs.true.i

if.end31.i.if.end93_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

land.lhs.true.i:                                  ; preds = %if.end31.i
  %add.i = add nuw nsw i32 %shr.i, 1
  %and37.i = and i32 %add.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and37.i, i32 %conv.i)
  %cmp38.not.i = icmp eq i32 %and37.i, %conv.i
  br i1 %cmp38.not.i, label %land.lhs.true.i.if.end93_crit_edge, label %do.body41.i

land.lhs.true.i.if.end93_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

do.body41.i:                                      ; preds = %land.lhs.true.i
  %msg_enable42.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %107 = ptrtoint ptr %msg_enable42.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_enable42.i, align 4
  %and43.i = and i32 %108, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body41.i.if.else_crit_edge, label %do.body41.i.if.else.sink.split_crit_edge

do.body41.i.if.else.sink.split_crit_edge:         ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.sink.split

do.body41.i.if.else_crit_edge:                    ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else.sink.split:                               ; preds = %do.body41.i.if.else.sink.split_crit_edge, %do.body.i.if.else.sink.split_crit_edge
  %.str.37.sink = phi ptr [ @.str.37, %do.body.i.if.else.sink.split_crit_edge ], [ @.str.38, %do.body41.i.if.else.sink.split_crit_edge ]
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %109 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net_dev.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %110, ptr noundef nonnull %.str.37.sink) #18
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %do.body41.i.if.else_crit_edge, %do.body.i.if.else_crit_edge, %if.then84.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp69.i)
  %no_time_syncs = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 41
  %111 = ptrtoint ptr %no_time_syncs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %no_time_syncs, align 8
  %inc91 = add i32 %112, 1
  store i32 %inc91, ptr %no_time_syncs, align 8
  br label %if.then96

if.end93:                                         ; preds = %land.lhs.true.i.if.end93_crit_edge, %if.end31.i.if.end93_crit_edge
  %sub51.i = sub i32 %106, %shr.i
  %and52.i = and i32 %sub51.i, 1
  %conv53.i = zext i32 %and52.i to i64
  %and60.i = and i32 %105, 1073741823
  %113 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %nic_to_kernel_time.i, align 8
  %major.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %last_good.1.i, i32 1
  %115 = ptrtoint ptr %major.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %major.i, align 4
  %minor.i = getelementptr %struct.efx_ptp_data, ptr %67, i32 0, i32 46, i32 %last_good.1.i, i32 2
  %117 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %minor.i, align 4
  %call68.i = call i64 %114(i32 noundef %116, i32 noundef %118, i32 noundef 0) #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp69.i, i64 noundef %call68.i) #14
  %tv_nsec70.i = getelementptr inbounds %struct.timespec64, ptr %tmp69.i, i32 0, i32 1
  %119 = ptrtoint ptr %tv_nsec70.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tv_nsec70.i, align 8
  %host_time_pps.i = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 28
  %121 = ptrtoint ptr %host_time_pps.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %last_time.sroa.0.0, ptr %host_time_pps.i, align 8
  %last_time.sroa.6.0.host_time_pps.i.sroa_idx = getelementptr inbounds %struct.efx_ptp_data, ptr %67, i32 0, i32 28, i32 0, i32 1
  %122 = ptrtoint ptr %last_time.sroa.6.0.host_time_pps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %last_time.sroa.6.0, ptr %last_time.sroa.6.0.host_time_pps.i.sroa_idx, align 8
  %last_time.sroa.8.0.host_time_pps.i.sroa_idx = getelementptr inbounds i8, ptr %host_time_pps.i, i32 12
  %123 = ptrtoint ptr %last_time.sroa.8.0.host_time_pps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %last_time.sroa.8.0, ptr %last_time.sroa.8.0.host_time_pps.i.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i117) #14
  %124 = ptrtoint ptr %last_time.sroa.6.0.host_time_pps.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %124)
  %.unpack4.i.i = load i64, ptr %last_time.sroa.6.0.host_time_pps.i.sroa_idx, align 8
  %lhs.sroa.2.8.extract.shift.i.i.i = lshr i64 %.unpack4.i.i, 32
  %lhs.sroa.2.8.extract.trunc.i.i.i = trunc i64 %lhs.sroa.2.8.extract.shift.i.i.i to i32
  %125 = call ptr @memset(ptr %tmp.i.i117, i32 255, i32 16)
  %sub.i.i.i124 = sub i64 %last_time.sroa.0.0, %conv53.i
  %126 = add i32 %last_time.sroa.6.0, %120
  %add72.neg.i = sub i32 %and60.i, %126
  %sub3.i.i.i = add i32 %add72.neg.i, %lhs.sroa.2.8.extract.trunc.i.i.i
  %conv.i.i.i = sext i32 %sub3.i.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp.i.i117, i64 noundef %sub.i.i.i124, i64 noundef %conv.i.i.i) #14
  %127 = call ptr @memcpy(ptr %host_time_pps.i, ptr %tmp.i.i117, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i117) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp69.i)
  %good_syncs = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 37
  br label %if.end98

if.then96:                                        ; preds = %if.else, %if.end79.if.then96_crit_edge
  %rc.0.ph = phi i32 [ %call81, %if.end79.if.then96_crit_edge ], [ -11, %if.else ]
  %bad_syncs = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 39
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end93
  %good_syncs.sink140 = phi ptr [ %good_syncs, %if.end93 ], [ %bad_syncs, %if.then96 ]
  %rc.0133 = phi i32 [ 0, %if.end93 ], [ %rc.0.ph, %if.then96 ]
  %128 = ptrtoint ptr %good_syncs.sink140 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %good_syncs.sink140, align 8
  %inc90 = add i32 %129, 1
  store i32 %inc90, ptr %good_syncs.sink140, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response_length) #14
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %synch_buf) #14
  ret i32 %rc.0133
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_get_ts_info(ptr noundef %efx, ptr nocapture noundef %ts_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %primary1 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 2
  %2 = ptrtoint ptr %primary1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary1, align 8
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @efx_ptp_get_ts_info.__already_done, align 1
  br i1 %.b79, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !122

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @efx_ptp_get_ts_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1785, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 1785) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %tobool38.not = icmp eq ptr %1, null
  br i1 %tobool38.not, label %if.end30.cleanup_crit_edge, label %if.end40

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %so_timestamping, align 4
  %or = or i32 %5, 69
  store i32 %or, ptr %so_timestamping, align 4
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i, align 4
  %check_caps.i = getelementptr inbounds %struct.efx_nic_type, ptr %7, i32 0, i32 35
  %8 = ptrtoint ptr %check_caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %check_caps.i, align 4
  %call.i = tail call i32 %9(ptr noundef %efx, i8 noundef zeroext 8, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.end40.if.end49_crit_edge, label %if.then42

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then42:                                        ; preds = %if.end40
  %nic_data43 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 76
  %10 = ptrtoint ptr %nic_data43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nic_data43, align 8
  %licensed_features = getelementptr inbounds %struct.efx_ef10_nic_data, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %licensed_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %licensed_features, align 8
  %and = and i64 %13, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool44.not = icmp eq i64 %and, 0
  br i1 %tobool44.not, label %if.then45, label %if.then42.if.end49_crit_edge

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %so_timestamping, align 4
  %and47 = and i32 %15, -2
  store i32 %and47, ptr %so_timestamping, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.then42.if.end49_crit_edge, %if.end40.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %3, null
  br i1 %tobool50.not, label %if.end49.if.end60_crit_edge, label %land.lhs.true

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end49
  %ptp_data51 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 123
  %16 = ptrtoint ptr %ptp_data51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptp_data51, align 4
  %tobool52.not = icmp eq ptr %17, null
  br i1 %tobool52.not, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true53

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true53:                                  ; preds = %land.lhs.true
  %phc_clock = getelementptr inbounds %struct.efx_ptp_data, ptr %17, i32 0, i32 31
  %18 = ptrtoint ptr %phc_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phc_clock, align 8
  %tobool55.not = icmp eq ptr %19, null
  br i1 %tobool55.not, label %land.lhs.true53.if.end60_crit_edge, label %if.then56

land.lhs.true53.if.end60_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #16
  %call59 = tail call i32 @ptp_clock_index(ptr noundef nonnull %19) #14
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %20 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call59, ptr %phc_index, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %land.lhs.true53.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %if.end49.if.end60_crit_edge
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 3
  %21 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %tx_types, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %type = getelementptr inbounds %struct.efx_nic, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %hwtstamp_filters = getelementptr inbounds %struct.efx_nic_type, ptr %25, i32 0, i32 137
  %26 = ptrtoint ptr %hwtstamp_filters to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hwtstamp_filters, align 8
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 5
  %28 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_set_ts_config(ptr noundef %efx, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !123
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !123
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !123
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %5 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #19, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !122

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #14
  %10 = call i32 @llvm.read_register.i32(metadata !112) #14
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !127
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %8, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !122

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i = icmp ult i32 %15, 2
  br i1 %switch.i, label %if.end.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %ptp_set_ts_config.i = getelementptr inbounds %struct.efx_nic_type, ptr %17, i32 0, i32 93
  %18 = ptrtoint ptr %ptp_set_ts_config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_set_ts_config.i, align 4
  %call.i = call i32 %19(ptr noundef %efx, ptr noundef nonnull %config) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i17, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i17:                                      ; preds = %if.end.i
  %20 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp_data, align 4
  %config.i = getelementptr inbounds %struct.efx_ptp_data, ptr %21, i32 0, i32 15
  %22 = call ptr @memcpy(ptr %config.i, ptr %config, i32 12)
  %23 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #14
  %call.i.i16 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i16, label %if.then.i17.cleanup_crit_edge, label %if.end.i.i20

if.then.i17.cleanup_crit_edge:                    ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i20:                                     ; preds = %if.then.i17
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 12, i32 -1226833920) #19, !srcloc !130
  %asmresult.i.i18 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i18)
  %cmp.i.i19 = icmp eq i32 %asmresult.i.i18, 0
  br i1 %cmp.i.i19, label %copy_to_user.exit, label %if.end.i.i20.cleanup_crit_edge

if.end.i.i20.cleanup_crit_edge:                   ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #14
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %24, ptr noundef nonnull %config, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool9.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i20.cleanup_crit_edge, %if.then.i17.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -34, %if.end3.cleanup_crit_edge ], [ -14, %if.then.i17.cleanup_crit_edge ], [ -14, %if.end.i.i20.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_ptp_get_ts_config(ptr nocapture noundef readonly %efx, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %2 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifr_ifru, align 4
  %config = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 15
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.return_crit_edge, label %if.end.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i:                                       ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 12, i32 -1226833920) #19, !srcloc !130
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %config, i32 noundef 12) #14
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %config, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool2.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %copy_to_user.exit, %if.end.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -14, %if.end.return_crit_edge ], [ -14, %if.end.i.i.return_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_event(ptr noundef %efx, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data, align 4
  %arrayidx = getelementptr [2 x i32], ptr %ev, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 255
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %ptp_warned = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 124
  %5 = ptrtoint ptr %ptp_warned to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ptp_warned, align 32, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and3 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %9 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.10) #18
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %11 = ptrtoint ptr %ptp_warned to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ptp_warned, align 32
  br label %cleanup

if.end8:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %evt_frag_idx = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evt_frag_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %evt_code = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 26
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %evt_code to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %evt_code, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end11
  %17 = ptrtoint ptr %evt_code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %evt_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and)
  %cmp14.not = icmp eq i32 %18, %and
  br i1 %cmp14.not, label %if.else.if.end27_crit_edge, label %do.body16

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

do.body16:                                        ; preds = %if.else
  %msg_enable17 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %19 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable17, align 4
  %and18 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body16.do.end24_crit_edge, label %if.then20

do.body16.do.end24_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev21 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %21 = ptrtoint ptr %net_dev21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_dev21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %and) #18
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body16.do.end24_crit_edge
  %23 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %evt_frag_idx, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.else.if.end27_crit_edge, %if.then12
  %24 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %evt_frag_idx, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %evt_frag_idx, align 8
  %arrayidx29 = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 24, i32 %25
  %26 = ptrtoint ptr %ev to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ev, align 8
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx29, align 8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.then34, label %if.else47

if.then34:                                        ; preds = %if.end27
  %trunc = trunc i32 %shr to i8
  %32 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %trunc, label %do.body37 [
    i8 13, label %sw.bb
    i8 14, label %sw.bb35
    i8 15, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.then34
  %rx_ts_inline.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %rx_ts_inline.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_ts_inline.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.bb
  %.b121.i = load i1, ptr @ptp_event_rx.__already_done, align 1
  br i1 %.b121.i, label %land.rhs.i.sw.epilog_crit_edge, label %if.then.i, !prof !122

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ptp_event_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1859, i32 noundef 9, ptr noundef null) #14
  br label %sw.epilog

if.end38.i:                                       ; preds = %sw.bb
  %35 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %evt_frag_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 3
  br i1 %cmp.not.i, label %if.end40.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end38.i
  %37 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptp_data, align 4
  %msg_enable.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %39 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then39.i.ptp_event_failure.exit.i_crit_edge, label %if.then.i.i

if.then39.i.ptp_event_failure.exit.i_crit_edge:   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ptp_event_failure.exit.i

if.then.i.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %41 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev.i.i, align 4
  %evt_frag_idx.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %38, i32 0, i32 25
  %43 = ptrtoint ptr %evt_frag_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %evt_frag_idx.i.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.43, i32 noundef %44, i32 noundef 3) #18
  br label %ptp_event_failure.exit.i

ptp_event_failure.exit.i:                         ; preds = %if.then.i.i, %if.then39.i.ptp_event_failure.exit.i_crit_edge
  %reset_required.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %38, i32 0, i32 11
  %45 = ptrtoint ptr %reset_required.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %reset_required.i.i, align 8
  %workwq.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %38, i32 0, i32 9
  %46 = ptrtoint ptr %workwq.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %workwq.i.i, align 8
  %work.i.i = getelementptr inbounds %struct.efx_ptp_data, ptr %38, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work.i.i) #14
  br label %sw.epilog

if.end40.i:                                       ; preds = %if.end38.i
  %evt_lock.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %evt_lock.i) #14
  %evt_free_list.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %evt_free_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %evt_free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, %evt_free_list.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.end40.i
  %call.i.i123.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %49) #14
  br i1 %call.i.i123.i, label %if.end.i.i.i, label %if.then42.i.list_del.exit.i_crit_edge

if.then42.i.list_del.exit.i_crit_edge:            ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then42.i.list_del.exit.i_crit_edge
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %evt_frags.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 24
  %arrayidx.i = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 24, i32 2
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %seq0.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %49, i32 0, i32 1
  %61 = ptrtoint ptr %seq0.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %seq0.i, align 8
  %arrayidx48.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx48.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #14
  %shr.i = lshr i32 %64, 4
  %and50.i = and i32 %shr.i, 255
  %arrayidx52.i = getelementptr %struct.efx_ptp_data, ptr %1, i32 0, i32 24, i32 1
  %arrayidx53.i = getelementptr [2 x i32], ptr %arrayidx52.i, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx53.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  %68 = shl i32 %67, 4
  %shl57.i = and i32 %68, 65280
  %or58.i = or i32 %shl57.i, %and50.i
  %arrayidx61.i = getelementptr [2 x i32], ptr %evt_frags.i, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx61.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #14
  %72 = shl i32 %71, 12
  %shl65.i = and i32 %72, 16711680
  %or66.i = or i32 %or58.i, %shl65.i
  %seq1.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %49, i32 0, i32 2
  %73 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or66.i, ptr %seq1.i, align 4
  %74 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ptp_data, align 4
  %nic_to_kernel_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nic_to_kernel_time.i, align 8
  %78 = ptrtoint ptr %evt_frags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %evt_frags.i, align 8
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #14
  %81 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx52.i, align 8
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #14
  %ptp_rx.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 23, i32 1
  %84 = ptrtoint ptr %ptp_rx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ptp_rx.i, align 4
  %call79.i = tail call i64 %77(i32 noundef %80, i32 noundef %83, i32 noundef %85) #14
  %hwtimestamp.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %49, i32 0, i32 3
  %86 = ptrtoint ptr %hwtimestamp.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %call79.i, ptr %hwtimestamp.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %87, 1
  %expiry.i = getelementptr inbounds %struct.efx_ptp_event_rx, ptr %49, i32 0, i32 4
  %88 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i, ptr %expiry.i, align 8
  %evt_list.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 5
  %prev.i124.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i124.i, align 4
  %call.i.i125.i = tail call zeroext i1 @__list_add_valid(ptr noundef %49, ptr noundef %90, ptr noundef %evt_list.i) #14
  br i1 %call.i.i125.i, label %if.end.i.i126.i, label %list_del.exit.i.list_add_tail.exit.i_crit_edge

list_del.exit.i.list_add_tail.exit.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i126.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %prev.i124.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %49, ptr %prev.i124.i, align 4
  %92 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %evt_list.i, ptr %49, align 4
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %49, ptr %90, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i126.i, %list_del.exit.i.list_add_tail.exit.i_crit_edge
  %workwq.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 9
  %95 = ptrtoint ptr %workwq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %workwq.i, align 8
  %work.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %96, ptr noundef %work.i) #14
  br label %if.end94.i

if.else.i:                                        ; preds = %if.end40.i
  %call83.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.else.i.if.end94.i_crit_edge, label %do.body86.i

if.else.i.if.end94.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94.i

do.body86.i:                                      ; preds = %if.else.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %97 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable.i, align 4
  %and87.i = and i32 %98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %do.body86.i.if.end94.i_crit_edge, label %if.then89.i

do.body86.i.if.end94.i_crit_edge:                 ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94.i

if.then89.i:                                      ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %99 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %100, ptr noundef nonnull @.str.42) #18
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then89.i, %do.body86.i.if.end94.i_crit_edge, %if.else.i.if.end94.i_crit_edge, %list_add_tail.exit.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %evt_lock.i) #14
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.then34
  %evt_frags.i96 = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 24
  %101 = ptrtoint ptr %evt_frags.i96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %evt_frags.i96, align 8
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #14
  %104 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %evt_frag_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.not.i98 = icmp eq i32 %105, 1
  br i1 %cmp.not.i98, label %do.body.i, label %if.then.i103

if.then.i103:                                     ; preds = %sw.bb35
  %106 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ptp_data, align 4
  %msg_enable.i.i100 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %108 = ptrtoint ptr %msg_enable.i.i100 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_enable.i.i100, align 4
  %and.i.i101 = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool.not.i.i102 = icmp eq i32 %and.i.i101, 0
  br i1 %tobool.not.i.i102, label %if.then.i103.ptp_event_failure.exit.i111_crit_edge, label %if.then.i.i106

if.then.i103.ptp_event_failure.exit.i111_crit_edge: ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %ptp_event_failure.exit.i111

if.then.i.i106:                                   ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i.i104 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %110 = ptrtoint ptr %net_dev.i.i104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %net_dev.i.i104, align 4
  %evt_frag_idx.i.i105 = getelementptr inbounds %struct.efx_ptp_data, ptr %107, i32 0, i32 25
  %112 = ptrtoint ptr %evt_frag_idx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %evt_frag_idx.i.i105, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %111, ptr noundef nonnull @.str.43, i32 noundef %113, i32 noundef 1) #18
  br label %ptp_event_failure.exit.i111

ptp_event_failure.exit.i111:                      ; preds = %if.then.i.i106, %if.then.i103.ptp_event_failure.exit.i111_crit_edge
  %reset_required.i.i107 = getelementptr inbounds %struct.efx_ptp_data, ptr %107, i32 0, i32 11
  %114 = ptrtoint ptr %reset_required.i.i107 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %reset_required.i.i107, align 8
  %workwq.i.i108 = getelementptr inbounds %struct.efx_ptp_data, ptr %107, i32 0, i32 9
  %115 = ptrtoint ptr %workwq.i.i108 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %workwq.i.i108, align 8
  %work.i.i109 = getelementptr inbounds %struct.efx_ptp_data, ptr %107, i32 0, i32 10
  %call.i.i.i110 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %work.i.i109) #14
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb35
  %msg_enable.i112 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %117 = ptrtoint ptr %msg_enable.i112 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msg_enable.i112, align 4
  %and2.i = and i32 %118, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i113 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i113, label %do.body.i.sw.epilog_crit_edge, label %if.then3.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev.i114 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %119 = ptrtoint ptr %net_dev.i114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net_dev.i114, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %120, ptr noundef nonnull @.str.44, i32 noundef %103) #18
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.then34
  %nic_ts_enabled.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 35
  %121 = ptrtoint ptr %nic_ts_enabled.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %nic_ts_enabled.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i115 = icmp eq i8 %122, 0
  br i1 %tobool.not.i115, label %sw.bb36.sw.epilog_crit_edge, label %if.then.i117

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then.i117:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  %pps_workwq.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 34
  %123 = ptrtoint ptr %pps_workwq.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pps_workwq.i, align 4
  %pps_work.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 33
  %call.i.i116 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %124, ptr noundef %pps_work.i) #14
  br label %sw.epilog

do.body37:                                        ; preds = %if.then34
  %msg_enable38 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %125 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %msg_enable38, align 4
  %and39 = and i32 %126, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.sw.epilog_crit_edge, label %if.then41

do.body37.sw.epilog_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev42 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %127 = ptrtoint ptr %net_dev42 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net_dev42, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %128, ptr noundef nonnull @.str.12, i32 noundef %and) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then41, %do.body37.sw.epilog_crit_edge, %if.then.i117, %sw.bb36.sw.epilog_crit_edge, %if.then3.i, %do.body.i.sw.epilog_crit_edge, %ptp_event_failure.exit.i111, %if.end94.i, %ptp_event_failure.exit.i, %if.then.i, %land.rhs.i.sw.epilog_crit_edge
  %129 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %evt_frag_idx, align 8
  br label %cleanup

if.else47:                                        ; preds = %if.end27
  %130 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %evt_frag_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp49 = icmp eq i32 %131, 3
  br i1 %cmp49, label %do.body51, label %if.else47.cleanup_crit_edge

if.else47.cleanup_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body51:                                        ; preds = %if.else47
  %msg_enable52 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %132 = ptrtoint ptr %msg_enable52 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %msg_enable52, align 4
  %and53 = and i32 %133, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end59_crit_edge, label %if.then55

do.body51.do.end59_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end59

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev56 = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %134 = ptrtoint ptr %net_dev56 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %net_dev56, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %135, ptr noundef nonnull @.str.13) #18
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body51.do.end59_crit_edge
  %136 = ptrtoint ptr %evt_frag_idx to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %evt_frag_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.else47.cleanup_crit_edge, %sw.epilog, %if.end8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_time_sync_event(ptr noundef %channel, ptr nocapture noundef readonly %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 123
  %2 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_data, align 4
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ev, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %sync_timestamp_major = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 49
  %7 = ptrtoint ptr %sync_timestamp_major to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sync_timestamp_major, align 4
  %arrayidx2 = getelementptr [2 x i32], ptr %ev, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shr = lshr i32 %10, 4
  %and5 = and i32 %shr, 252
  %sync_event_minor_shift = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %sync_event_minor_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sync_event_minor_shift, align 4
  %shl6 = shl i32 %and5, %12
  %sync_timestamp_minor = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 50
  %13 = ptrtoint ptr %sync_timestamp_minor to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl6, ptr %sync_timestamp_minor, align 8
  %sync_events_state = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sync_events_state, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %sync_events_state, i32 1, i32 3, i32 1) #14
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sync_events_state, i32 2, i32 3) #14, !srcloc !132
  %asmresult.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__efx_rx_skb_attach_timestamp(ptr nocapture noundef readonly %channel, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 123
  %2 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_data, align 4
  %sync_events_state = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 48
  %4 = ptrtoint ptr %sync_events_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_events_state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %rx_packet_ts_offset.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 62
  %10 = ptrtoint ptr %rx_packet_ts_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_packet_ts_offset.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %add.ptr.i, i32 %11
  %12 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i52, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  %sync_timestamp_minor = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 50
  %15 = ptrtoint ptr %sync_timestamp_minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync_timestamp_minor, align 8
  %sub = sub i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4 = icmp ult i32 %14, %16
  br i1 %cmp4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %nic_time = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %nic_time to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nic_time, align 4
  %add = add i32 %18, %sub
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %diff.0 = phi i32 [ %add, %if.then5 ], [ %sub, %if.end.if.end6_crit_edge ]
  %nic_time8 = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 20
  %19 = ptrtoint ptr %nic_time8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nic_time8, align 4
  %sub10 = sub i32 %20, %diff.0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub10)
  %cmp11.not = icmp uge i32 %16, %sub10
  %cond = zext i1 %cmp11.not to i32
  %sync_event_diff_max = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 20, i32 2
  %21 = ptrtoint ptr %sync_event_diff_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_event_diff_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %diff.0, i32 %22)
  %cmp13.not = icmp ugt i32 %diff.0, %22
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %sync_timestamp_major = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 49
  %23 = ptrtoint ptr %sync_timestamp_major to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sync_timestamp_major, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end6
  %sync_event_diff_min = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %sync_event_diff_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sync_event_diff_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %diff.0, i32 %26)
  %cmp17.not = icmp ult i32 %diff.0, %26
  br i1 %cmp17.not, label %if.else.cleanup_crit_edge, label %if.then18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sync_timestamp_major19 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 49
  %27 = ptrtoint ptr %sync_timestamp_major19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_timestamp_major19, align 4
  %sub20 = add i32 %28, -1
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then14
  %.pn = phi i32 [ %24, %if.then14 ], [ %sub20, %if.then18 ]
  %pkt_timestamp_major.0 = add i32 %.pn, %cond
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 7
  %nic_to_kernel_time = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 19
  %31 = ptrtoint ptr %nic_to_kernel_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nic_to_kernel_time, align 8
  %general_rx = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 23, i32 5
  %33 = ptrtoint ptr %general_rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %general_rx, align 4
  %call26 = tail call i64 %32(i32 noundef %pkt_timestamp_major.0, i32 noundef %14, i32 noundef %34) #14
  %35 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call26, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_defer_probe_with_channel(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #14
  %0 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 144115188075855872, ptr %inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #14
  %1 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %outbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc_quiet(ptr noundef %efx, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -114
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  %2 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %spec.select.i, label %if.then14.i [
    i32 -38, label %entry.do.end13.i_crit_edge
    i32 -1, label %entry.do.end13.i_crit_edge3
    i32 0, label %if.then
  ]

entry.do.end13.i_crit_edge3:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

entry.do.end13.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

do.end13.i:                                       ; preds = %entry.do.end13.i_crit_edge, %entry.do.end13.i_crit_edge3
  %pci_dev.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 4
  %3 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.32) #18
  br label %efx_ptp_disable.exit.thread

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @efx_mcdi_display_error(ptr noundef %efx, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, i32 noundef %spec.select.i) #14
  br label %efx_ptp_disable.exit.thread

efx_ptp_disable.exit.thread:                      ; preds = %if.then14.i, %do.end13.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  %arrayidx = getelementptr %struct.efx_nic, ptr %efx, i32 0, i32 27, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @efx_ptp_channel_type, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %efx_ptp_disable.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_start_datapath(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_data.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 123
  %0 = ptrtoint ptr %ptp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %land.lhs.true.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true.i:                                  ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.efx_ptp_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end3_crit_edge, label %efx_ptp_restart.exit

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

efx_ptp_restart.exit:                             ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @efx_ptp_start(ptr noundef %efx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %efx_ptp_restart.exit.if.end3_crit_edge, label %do.body

efx_ptp_restart.exit.if.end3_crit_edge:           ; preds = %efx_ptp_restart.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

do.body:                                          ; preds = %efx_ptp_restart.exit
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.if.end3_crit_edge, label %if.then2

do.body.if.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %do.body.if.end3_crit_edge, %efx_ptp_restart.exit.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type, align 4
  %ptp_set_ts_sync_events = getelementptr inbounds %struct.efx_nic_type, ptr %9, i32 0, i32 92
  %10 = ptrtoint ptr %ptp_set_ts_sync_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp_set_ts_sync_events, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 %11(ptr noundef %efx, i1 noundef zeroext true, i1 noundef zeroext true) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_ptp_stop_datapath(ptr noundef %efx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %ptp_set_ts_sync_events = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 92
  %2 = ptrtoint ptr %ptp_set_ts_sync_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_set_ts_sync_events, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %3(ptr noundef %efx, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @efx_ptp_stop(ptr noundef %efx)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_quiet(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_mcdi_display_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_ns_to_s27(i64 noundef %ns, ptr nocapture noundef writeonly %nic_major, ptr nocapture noundef writeonly %nic_minor) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #14
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %ns) #14
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %conv = trunc i64 %2 to i32
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec, align 8
  %conv1 = sext i32 %4 to i64
  %mul = mul i64 %conv1, 9223372037
  %add = add i64 %mul, 34359738368
  %shr = lshr i64 %add, 36
  %conv2 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %conv2)
  %cmp = icmp ugt i32 %conv2, 134217727
  %sub = add nsw i32 %conv2, -134217728
  %inc = zext i1 %cmp to i32
  %maj.0 = add i32 %inc, %conv
  %min.0 = select i1 %cmp, i32 %sub, i32 %conv2
  %5 = ptrtoint ptr %nic_major to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %maj.0, ptr %nic_major, align 4
  %6 = ptrtoint ptr %nic_minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %min.0, ptr %nic_minor, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @efx_ptp_s27_to_ktime_correction(i32 noundef %nic_major, i32 noundef %nic_minor, i32 noundef %correction) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %correction, %nic_minor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add1 = add nsw i32 %add, 134217728
  %dec = add i32 %nic_major, -1
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217727, i32 %add)
  %cmp2 = icmp ugt i32 %add, 134217727
  br i1 %cmp2, label %if.then3, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add nsw i32 %add, -134217728
  %inc = add i32 %nic_major, 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else.if.end4_crit_edge, %if.then
  %nic_minor.addr.0 = phi i32 [ %add1, %if.then ], [ %sub, %if.then3 ], [ %add, %if.else.if.end4_crit_edge ]
  %nic_major.addr.0 = phi i32 [ %dec, %if.then ], [ %inc, %if.then3 ], [ %nic_major, %if.else.if.end4_crit_edge ]
  %conv.i = zext i32 %nic_minor.addr.0 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  %add.i = add nuw nsw i64 %mul.i, 67108864
  %shr.i = lshr i64 %add.i, 27
  %conv2.i = zext i32 %nic_major.addr.0 to i64
  %mul.i.i = mul nuw nsw i64 %conv2.i, 1000000000
  %conv.i.i = and i64 %shr.i, 4294967295
  %add.i.i = add nuw nsw i64 %conv.i.i, %mul.i.i
  ret i64 %add.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_ns_to_s_ns(i64 noundef %ns, ptr nocapture noundef writeonly %nic_major, ptr nocapture noundef writeonly %nic_minor) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #14
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %ns) #14
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %nic_major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %nic_major, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %6 = ptrtoint ptr %nic_minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nic_minor, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @efx_ptp_s_ns_to_ktime_correction(i32 noundef %nic_major, i32 noundef %nic_minor, i32 noundef %correction) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %nic_major to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  %conv.i = zext i32 %nic_minor to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %correction)
  %cmp = icmp sgt i32 %correction, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv29 = zext i32 %correction to i64
  %add = add nuw nsw i64 %add.i, %conv29
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 0, %correction
  %conv3 = sext i32 %sub to i64
  %sub4 = sub nsw i64 %add.i, %conv3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %kt.0 = phi i64 [ %add, %if.then ], [ %sub4, %if.else ]
  ret i64 %kt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_ns_to_s_qns(i64 noundef %ns, ptr nocapture noundef writeonly %nic_major, ptr nocapture noundef writeonly %nic_minor) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #14
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %ns) #14
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %nic_major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %nic_major, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %mul = shl i32 %5, 2
  %6 = ptrtoint ptr %nic_minor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %nic_minor, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @efx_ptp_s_qns_to_ktime_correction(i32 noundef %nic_major, i32 noundef %nic_minor, i32 noundef %correction) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %nic_minor, 2
  %div135 = lshr i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %correction)
  %cmp = icmp sgt i32 %correction, 0
  %cond.in.v = select i1 %cmp, i32 2, i32 -2
  %cond.in = add i32 %cond.in.v, %correction
  %cond = sdiv i32 %cond.in, 4
  %conv14 = zext i32 %nic_major to i64
  %mul.i = mul nuw nsw i64 %conv14, 1000000000
  %conv.i = zext i32 %div135 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %cond.in)
  %cmp15 = icmp sgt i32 %cond.in, -4
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv17 = sext i32 %cond to i64
  %add18 = add nsw i64 %add.i, %conv17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sub19 = sub nsw i32 0, %cond
  %0 = zext i32 %sub19 to i64
  %sub21 = sub nsw i64 %add.i, %0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %kt.0 = phi i64 [ %add18, %if.then ], [ %sub21, %if.else ]
  ret i64 %kt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_phc_adjfreq(ptr nocapture noundef %ptp, i32 noundef %delta) #0 align 64 {
entry:
  %inadj = alloca [6 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -668
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inadj) #14
  %2 = tail call i32 @llvm.smax.i32(i32 %delta, i32 -1000000)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 1000000)
  %conv = sext i32 %3 to i64
  %mul = mul nsw i64 %conv, 73786976294
  %adjfreq_ppb_shift = getelementptr i8, ptr %ptp, i32 -20
  %4 = ptrtoint ptr %adjfreq_ppb_shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjfreq_ppb_shift, align 8
  %sub = add i32 %5, -1
  %shl = shl nuw i32 1, %sub
  %conv5 = sext i32 %shl to i64
  %add = add nsw i64 %mul, %conv5
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %add, %sh_prom
  %6 = ptrtoint ptr %inadj to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100663296, ptr %inadj, align 4
  %add.ptr10 = getelementptr inbounds %union.efx_dword, ptr %inadj, i32 1
  %7 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %add.ptr10, align 4
  %conv16 = trunc i64 %shr to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv16)
  %add.ptr21 = getelementptr inbounds %union.efx_dword, ptr %inadj, i32 2
  %9 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr21, align 4
  %shr27 = lshr i64 %shr, 32
  %conv28 = trunc i64 %shr27 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %arrayidx35 = getelementptr inbounds %union.efx_dword, ptr %inadj, i32 3
  %11 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx35, align 4
  %add.ptr43 = getelementptr inbounds %union.efx_dword, ptr %inadj, i32 4
  %12 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %add.ptr43, align 4
  %add.ptr49 = getelementptr inbounds %union.efx_dword, ptr %inadj, i32 5
  %13 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr49, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %inadj, i32 noundef 24, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54.not = icmp eq i32 %call, 0
  br i1 %cmp54.not, label %if.end57, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end57:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %current_adjfreq = getelementptr i8, ptr %ptp, i32 -12
  %14 = ptrtoint ptr %current_adjfreq to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shr, ptr %current_adjfreq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inadj) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_phc_adjtime(ptr nocapture noundef readonly %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %nic_major = alloca i32, align 4
  %nic_minor = alloca i32, align 4
  %inbuf = alloca [6 x %union.efx_dword], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_major) #14
  %0 = ptrtoint ptr %nic_major to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nic_major, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_minor) #14
  %1 = ptrtoint ptr %nic_minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nic_minor, align 4, !annotation !123
  %add.ptr = getelementptr i8, ptr %ptp, i32 -668
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inbuf) #14
  %ptp_data2 = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 123
  %4 = ptrtoint ptr %ptp_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_data2, align 4
  %ns_to_nic_time = getelementptr inbounds %struct.efx_ptp_data, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %ns_to_nic_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_to_nic_time, align 4
  call void %7(i64 noundef %delta, ptr noundef nonnull %nic_major, ptr noundef nonnull %nic_minor) #14
  %8 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100663296, ptr %inbuf, align 4
  %add.ptr6 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 1
  %9 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %add.ptr6, align 4
  %current_adjfreq = getelementptr i8, ptr %ptp, i32 -12
  %10 = ptrtoint ptr %current_adjfreq to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %current_adjfreq, align 8
  %conv = trunc i64 %11 to i32
  %12 = call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr15 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 2
  %13 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr15, align 4
  %shr22 = lshr i64 %11, 32
  %conv23 = trunc i64 %shr22 to i32
  %14 = call i32 @llvm.bswap.i32(i32 %conv23)
  %arrayidx30 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 3
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx30, align 4
  %16 = ptrtoint ptr %nic_major to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nic_major, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr42 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 4
  %19 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr42, align 4
  %20 = ptrtoint ptr %nic_minor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nic_minor, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %add.ptr52 = getelementptr inbounds %union.efx_dword, ptr %inbuf, i32 5
  %23 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr52, align 4
  %call = call i32 @efx_mcdi_rpc(ptr noundef %3, i32 noundef 11, ptr noundef nonnull %inbuf, i32 noundef 24, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inbuf) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_minor) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_major) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_phc_gettime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %inbuf = alloca [2 x %union.efx_dword], align 8
  %outbuf = alloca [2 x %union.efx_dword], align 8
  %tmp20 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -668
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf) #14
  %2 = ptrtoint ptr %inbuf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 288230376151711744, ptr %inbuf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf) #14
  %3 = ptrtoint ptr %outbuf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %outbuf, align 8
  %call = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %inbuf, i32 noundef 8, ptr noundef nonnull %outbuf, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nic_to_kernel_time = getelementptr i8, ptr %ptp, i32 -140
  %4 = ptrtoint ptr %nic_to_kernel_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_to_kernel_time, align 8
  %6 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outbuf, align 8
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr15 = getelementptr inbounds %union.efx_dword, ptr %outbuf, i32 1
  %9 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr15, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %call19 = call i64 %5(i32 noundef %8, i32 noundef %11, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp20) #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp20, i64 noundef %call19) #14
  %12 = call ptr @memcpy(ptr %ts, ptr %tmp20, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_phc_settime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %e_ts) #0 align 64 {
entry:
  %nic_major.i = alloca i32, align 4
  %nic_minor.i = alloca i32, align 4
  %inbuf.i16 = alloca [6 x %union.efx_dword], align 4
  %inbuf.i = alloca [2 x %union.efx_dword], align 8
  %outbuf.i = alloca [2 x %union.efx_dword], align 8
  %tmp20.i = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -668
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inbuf.i) #14
  %2 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 288230376151711744, ptr %inbuf.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outbuf.i) #14
  %3 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %outbuf.i, align 8
  %call.i = call i32 @efx_mcdi_rpc(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %inbuf.i, i32 noundef 8, ptr noundef nonnull %outbuf.i, i32 noundef 8, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end, label %efx_phc_gettime.exit

efx_phc_gettime.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nic_to_kernel_time.i = getelementptr i8, ptr %ptp, i32 -140
  %4 = ptrtoint ptr %nic_to_kernel_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_to_kernel_time.i, align 8
  %6 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outbuf.i, align 8
  %8 = call i32 @llvm.bswap.i32(i32 %7) #14
  %add.ptr15.i = getelementptr inbounds %union.efx_dword, ptr %outbuf.i, i32 1
  %9 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr15.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #14
  %call19.i = call i64 %5(i32 noundef %8, i32 noundef %11, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp20.i) #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp20.i, i64 noundef %call19.i) #14
  %12 = ptrtoint ptr %tmp20.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %time_now.sroa.0.0.copyload24 = load i64, ptr %tmp20.i, align 8
  %time_now.sroa.5.0.tmp20.i.sroa_idx = getelementptr inbounds i8, ptr %tmp20.i, i32 8
  %13 = ptrtoint ptr %time_now.sroa.5.0.tmp20.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %time_now.sroa.5.0.copyload25 = load i64, ptr %time_now.sroa.5.0.tmp20.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp20.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outbuf.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inbuf.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  %14 = ptrtoint ptr %e_ts to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack = load i64, ptr %e_ts, align 8
  %.elt12 = getelementptr inbounds [2 x i64], ptr %e_ts, i32 0, i32 1
  %15 = ptrtoint ptr %.elt12 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.unpack13 = load i64, ptr %.elt12, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack13, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %time_now.sroa.5.0.copyload25, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %16 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %time_now.sroa.0.0.copyload24
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #14
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %17)
  %delta.sroa.0.0.copyload21 = load i64, ptr %tmp, align 8
  %delta.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %18 = ptrtoint ptr %delta.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %delta.sroa.5.0.copyload22 = load i32, ptr %delta.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %delta.sroa.0.0.copyload21)
  %cmp.i = icmp sgt i64 %delta.sroa.0.0.copyload21, 9223372035
  br i1 %cmp.i, label %if.end.timespec64_to_ns.exit_crit_edge, label %if.end.i14

if.end.timespec64_to_ns.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_to_ns.exit

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %delta.sroa.0.0.copyload21)
  %cmp2.i = icmp slt i64 %delta.sroa.0.0.copyload21, -9223372035
  br i1 %cmp2.i, label %if.end.i14.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i14.timespec64_to_ns.exit_crit_edge:       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul nsw i64 %delta.sroa.0.0.copyload21, 1000000000
  %conv.i15 = sext i32 %delta.sroa.5.0.copyload22 to i64
  %add.i = add i64 %mul.i, %conv.i15
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i14.timespec64_to_ns.exit_crit_edge, %if.end.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i14.timespec64_to_ns.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_major.i) #14
  %19 = ptrtoint ptr %nic_major.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %nic_major.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nic_minor.i) #14
  %20 = ptrtoint ptr %nic_minor.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %nic_minor.i, align 4, !annotation !123
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inbuf.i16) #14
  %ptp_data2.i = getelementptr inbounds %struct.efx_nic, ptr %22, i32 0, i32 123
  %23 = ptrtoint ptr %ptp_data2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptp_data2.i, align 4
  %ns_to_nic_time.i = getelementptr inbounds %struct.efx_ptp_data, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %ns_to_nic_time.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ns_to_nic_time.i, align 4
  call void %26(i64 noundef %retval.0.i, ptr noundef nonnull %nic_major.i, ptr noundef nonnull %nic_minor.i) #14
  %27 = ptrtoint ptr %inbuf.i16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 100663296, ptr %inbuf.i16, align 4
  %add.ptr6.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i16, i32 1
  %28 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %add.ptr6.i, align 4
  %current_adjfreq.i = getelementptr i8, ptr %ptp, i32 -12
  %29 = ptrtoint ptr %current_adjfreq.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %current_adjfreq.i, align 8
  %conv.i18 = trunc i64 %30 to i32
  %31 = call i32 @llvm.bswap.i32(i32 %conv.i18) #14
  %add.ptr15.i19 = getelementptr inbounds %union.efx_dword, ptr %inbuf.i16, i32 2
  %32 = ptrtoint ptr %add.ptr15.i19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr15.i19, align 4
  %shr22.i = lshr i64 %30, 32
  %conv23.i = trunc i64 %shr22.i to i32
  %33 = call i32 @llvm.bswap.i32(i32 %conv23.i) #14
  %arrayidx30.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i16, i32 3
  %34 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx30.i, align 4
  %35 = ptrtoint ptr %nic_major.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nic_major.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #14
  %add.ptr42.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i16, i32 4
  %38 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr42.i, align 4
  %39 = ptrtoint ptr %nic_minor.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nic_minor.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #14
  %add.ptr52.i = getelementptr inbounds %union.efx_dword, ptr %inbuf.i16, i32 5
  %42 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %add.ptr52.i, align 4
  %call.i20 = call i32 @efx_mcdi_rpc(ptr noundef %22, i32 noundef 11, ptr noundef nonnull %inbuf.i16, i32 noundef 24, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inbuf.i16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_minor.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nic_major.i) #14
  br label %cleanup

cleanup:                                          ; preds = %timespec64_to_ns.exit, %efx_phc_gettime.exit
  %retval.0 = phi i32 [ %call.i, %efx_phc_gettime.exit ], [ %call.i20, %timespec64_to_ns.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efx_phc_enable(ptr nocapture noundef writeonly %ptp, ptr nocapture noundef readonly %request, i32 noundef %enable) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %nic_ts_enabled = getelementptr i8, ptr %ptp, i32 156
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %nic_ts_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %nic_ts_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_start(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efx_mcdi_rpc_finish(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_snapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_handle_no_channel(ptr nocapture noundef readonly %efx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 22
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 83
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efx_ptp_probe_channel(ptr noundef %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %irq_moderation_us = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 6
  %2 = ptrtoint ptr %irq_moderation_us to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq_moderation_us, align 4
  %core_index = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 45, i32 1
  %3 = ptrtoint ptr %core_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %core_index, align 4
  %call = tail call i32 @efx_ptp_probe(ptr noundef %1, ptr noundef %channel)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call, label %do.body [
    i32 0, label %entry.if.end4_crit_edge
    i32 -1, label %entry.if.end4_crit_edge12
  ]

entry.if.end4_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %7 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef %call) #18
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge, %entry.if.end4_crit_edge12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_remove_channel(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  tail call void @efx_ptp_remove(ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efx_ptp_get_channel_name(ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %buf, i32 noundef %len) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.47, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @efx_ptp_rx(ptr nocapture noundef readonly %channel, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %ptp_data = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 123
  %2 = ptrtoint ptr %ptp_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_data, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1
  %expiry = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %expiry to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expiry, align 4
  %mode = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %9, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 64
  br i1 %cmp.not.i, label %if.end.i, label %if.then.if.end_crit_edge, !prof !134

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp3.i = icmp ult i32 %9, 64
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !134

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 64, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %data4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data4, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 28
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp5.not = icmp eq i16 %15, 1
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %13, i32 50
  %add.ptr10 = getelementptr i8, ptr %13, i32 53
  br label %if.end45

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i.i)
  %cmp.not.i122 = icmp ult i32 %sub.i.i, 63
  br i1 %cmp.not.i122, label %if.end.i124, label %if.else.if.end13_crit_edge, !prof !134

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.i124:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp3.i123 = icmp ult i32 %9, 63
  br i1 %cmp3.i123, label %if.end.i124.cleanup_crit_edge, label %pskb_may_pull.exit130, !prof !134

if.end.i124.cleanup_crit_edge:                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

pskb_may_pull.exit130:                            ; preds = %if.end.i124
  %sub.i125 = sub nuw nsw i32 63, %sub.i.i
  %call13.i126 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i125) #14
  %cmp14.i127.not = icmp eq ptr %call13.i126, null
  br i1 %cmp14.i127.not, label %pskb_may_pull.exit130.cleanup_crit_edge, label %pskb_may_pull.exit130.if.end13_crit_edge

pskb_may_pull.exit130.if.end13_crit_edge:         ; preds = %pskb_may_pull.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

pskb_may_pull.exit130.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit130
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %pskb_may_pull.exit130.if.end13_crit_edge, %if.else.if.end13_crit_edge
  %data14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data14, align 4
  %arrayidx15 = getelementptr i8, ptr %17, i32 29
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15, align 1
  %20 = and i8 %19, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp17.not = icmp eq i8 %20, 2
  br i1 %cmp17.not, label %if.end20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %add.ptr22 = getelementptr i8, ptr %17, i32 53
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp24 = icmp eq i32 %22, 2
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr28 = getelementptr i8, ptr %17, i32 50
  br label %if.end45

if.else29:                                        ; preds = %if.end20
  %add.ptr21 = getelementptr i8, ptr %17, i32 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp33.not = icmp eq i32 %22, 4
  br i1 %cmp33.not, label %if.else29.if.end45_crit_edge, label %do.body37, !prof !122

if.else29.if.end45_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

do.body37:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sfc/ptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1664, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

if.end45:                                         ; preds = %if.else29.if.end45_crit_edge, %if.then26, %if.end8
  %match_data_012.0 = phi ptr [ %add.ptr, %if.end8 ], [ %add.ptr28, %if.then26 ], [ %add.ptr21, %if.else29.if.end45_crit_edge ]
  %match_data_345.0 = phi ptr [ %add.ptr10, %if.end8 ], [ %add.ptr22, %if.then26 ], [ %add.ptr22, %if.else29.if.end45_crit_edge ]
  %data.0 = phi ptr [ %13, %if.end8 ], [ %17, %if.then26 ], [ %17, %if.else29.if.end45_crit_edge ]
  %arrayidx46 = getelementptr i8, ptr %data.0, i32 22
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %24)
  %cmp48 = icmp eq i16 %24, 319
  %state = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  br i1 %cmp48, label %if.then50, label %if.else82

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  %26 = ptrtoint ptr %match_data_012.0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %match_data_012.0, align 1
  %conv58 = zext i8 %27 to i32
  %arrayidx59 = getelementptr i8, ptr %match_data_012.0, i32 1
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv60, 8
  %or = or i32 %shl, %conv58
  %arrayidx61 = getelementptr i8, ptr %match_data_012.0, i32 2
  %30 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %31 to i32
  %shl63 = shl nuw nsw i32 %conv62, 16
  %or64 = or i32 %or, %shl63
  %32 = ptrtoint ptr %match_data_345.0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %match_data_345.0, align 1
  %conv66 = zext i8 %33 to i32
  %shl67 = shl nuw i32 %conv66, 24
  %or68 = or i32 %or64, %shl67
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or68, ptr %cb, align 4
  %arrayidx70 = getelementptr i8, ptr %match_data_345.0, i32 1
  %35 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %36 to i32
  %arrayidx72 = getelementptr i8, ptr %match_data_345.0, i32 2
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %38 to i32
  %shl74 = shl nuw nsw i32 %conv73, 8
  %or75 = or i32 %shl74, %conv71
  %arrayidx76 = getelementptr i8, ptr %data.0, i32 59
  %39 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %40 to i32
  %shl78 = shl nuw nsw i32 %conv77, 16
  %or79 = or i32 %or75, %shl78
  %arrayidx81 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or79, ptr %arrayidx81, align 4
  br label %if.end84

if.else82:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %state, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then50
  %rxq = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %rxq, ptr noundef %skb) #14
  %workwq = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %workwq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %workwq, align 8
  %work = getelementptr inbounds %struct.efx_ptp_data, ptr %3, i32 0, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end13.cleanup_crit_edge, %pskb_may_pull.exit130.cleanup_crit_edge, %if.end.i124.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end84 ], [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %pskb_may_pull.exit130.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end.i124.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @efx_ptp_want_txqs(ptr nocapture noundef readonly %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %check_caps.i = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %check_caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_caps.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 8, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  ret i1 %tobool.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !78, !79, !81, !83, !84, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1461, i32 16}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @efx_ptp_probe.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1475, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efx_ptp_probe.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1481, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @efx_ptp_probe.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1504, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1505, i32 22}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1785, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1919, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1932, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1951, i32 4}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1957, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 2198, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 376, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 377, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 378, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 379, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 380, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 381, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 382, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 383, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 384, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 385, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 386, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 387, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 388, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 389, i32 2}
!56 = !{ptr @efx_ptp_stat_desc, !57, !"efx_ptp_stat_desc", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 375, i32 38}
!58 = !{ptr @efx_ptp_stat_mask, !59, !"efx_ptp_stat_mask", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 392, i32 28}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 568, i32 3}
!62 = !{ptr @skb_queue_head_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1098, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1170, i32 4}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1187, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 651, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @efx_ptp_get_attributes._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @efx_ptp_get_attributes._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @efx_phc_clock_info, !80, !"efx_phc_clock_info", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1423, i32 36}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 827, i32 3}
!83 = !{ptr @efx_ptp_disable._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @efx_ptp_disable._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 983, i32 3}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 998, i32 3}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!91 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1859, i32 6}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1890, i32 3}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1844, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1903, i32 2}
!104 = !{ptr @efx_ptp_channel_type, !105, !"efx_ptp_channel_type", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 2174, i32 38}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 848, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1551, i32 3}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sfc/ptp.c", i32 1590, i32 21}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"auto-init"}
!124 = !{i8 0, i8 2}
!125 = !{i64 1430946}
!126 = !{i64 2152387613, i64 2152387638}
!127 = !{i64 4883168}
!128 = !{i64 4883365}
!129 = !{i64 2152368598}
!130 = !{i64 2152388294, i64 2152388319}
!131 = !{i64 2160857454}
!132 = !{i64 924086, i64 924107, i64 924130, i64 924149, i64 924168}
!133 = !{i64 2160857891}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2160816550, i64 2160817046, i64 2160816587, i64 2160816643, i64 2160816677, i64 2160816701, i64 2160816742, i64 2160816763, i64 2160816791, i64 2160816825}
