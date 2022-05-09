; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_nic.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_nic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.127 }
%union.anon.127 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.174, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.174 = type { i32, [32 x [6 x i8]] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.hlist_head = type { ptr }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.170 }
%union.anon.170 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.175, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.175 = type { ptr }
%struct.aq_fw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.154, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.154 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.aq_ring_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union.aq_ring_stats_s, i32, i32 }
%union.aq_ring_stats_s = type { %struct.aq_ring_stats_rx_s }
%struct.aq_ring_stats_rx_s = type { %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.aq_ring_buff_s = type <{ %union.anon.163, %union.anon.167 }>
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i16, i8, i8, %struct.aq_rxpage, i16 }
%struct.aq_rxpage = type { ptr, i32, i32, i32 }
%union.anon.167 = type { i64 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.166 = type { i32, i8, i8, i8, i8, i32, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.anon.168 = type { i32, i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.126, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.126 = type { %struct.atomic_t }
%struct.anon.165 = type { i32, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.149, i32 }
%struct.anon.149 = type { [3 x i32], [3 x i32], [3 x i32] }

@__param_str_aq_itr = internal constant [16 x i8] c"atlantic.aq_itr\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@aq_itr = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@__param_aq_itr = internal constant %struct.kernel_param { ptr @__param_str_aq_itr, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.127 { ptr @aq_itr } }, section "__param", align 4
@__UNIQUE_ID_aq_itrtype531 = internal constant [30 x i8] c"atlantic.parmtype=aq_itr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_aq_itr532 = internal constant [47 x i8] c"atlantic.parm=aq_itr:Interrupt throttling mode\00", section ".modinfo", align 1
@__param_str_aq_itr_tx = internal constant [19 x i8] c"atlantic.aq_itr_tx\00", align 1
@aq_itr_tx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_aq_itr_tx = internal constant %struct.kernel_param { ptr @__param_str_aq_itr_tx, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.127 { ptr @aq_itr_tx } }, section "__param", align 4
@__UNIQUE_ID_aq_itr_txtype533 = internal constant [33 x i8] c"atlantic.parmtype=aq_itr_tx:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_aq_itr_tx534 = internal constant [51 x i8] c"atlantic.parm=aq_itr_tx:TX interrupt throttle rate\00", section ".modinfo", align 1
@__param_str_aq_itr_rx = internal constant [19 x i8] c"atlantic.aq_itr_rx\00", align 1
@aq_itr_rx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_aq_itr_rx = internal constant %struct.kernel_param { ptr @__param_str_aq_itr_rx, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.127 { ptr @aq_itr_rx } }, section "__param", align 4
@__UNIQUE_ID_aq_itr_rxtype535 = internal constant [33 x i8] c"atlantic.parmtype=aq_itr_rx:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_aq_itr_rx536 = internal constant [51 x i8] c"atlantic.parm=aq_itr_rx:RX interrupt throttle rate\00", section ".modinfo", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MAC is invalid, will use random.\00", [63 x i8] zeroinitializer }, align 32
@aq_nic_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&self->service_task)\00", [57 x i8] zeroinitializer }, align 32
@aq_nic_start.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&self->service_timer)\00", [41 x i8] zeroinitializer }, align 32
@aq_nic_start.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&self->polling_timer)\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aq_nic_map_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/aquantia/atlantic/aq_nic.c\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bad GSO mode\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"downshift counter should be <= 15\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"EDPD on this device could have only fixed value of %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PTP is auto disabled due to requested TC count.\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Setting %s to the minimum usable value of %dMbps.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max rate\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min rate\00", [23 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@aq_nic_rss_init.rss_key = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\1E\ADq\87e\FC&}\0DEgt\CD\06\1A\18\B6\C1\F0\C7\BB\18\BE\F8\19\13K\A9\D0>\FEp%\03\ABPj\8B\82\0C", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: link change old %d new %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atlantic\00", [23 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 100, i64 1000, i64 2500, i64 5000, i64 10000]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"aq_itr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 31, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"aq_itr_tx\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 35, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"aq_itr_rx\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 39, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 332, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 510, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 512, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 516, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 608, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1425, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1446, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1492, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1493, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1522, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1523, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1548, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"rss_key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 47, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 169, i32 27 }
@___asan_gen_.87 = private constant [51 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 170, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 326, i32 6 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_aq_itr532, ptr @__UNIQUE_ID_aq_itr_rx536, ptr @__UNIQUE_ID_aq_itr_rxtype535, ptr @__UNIQUE_ID_aq_itr_tx534, ptr @__UNIQUE_ID_aq_itr_txtype533, ptr @__UNIQUE_ID_aq_itrtype531, ptr @__param_aq_itr, ptr @__param_aq_itr_rx, ptr @__param_aq_itr_tx, ptr @aq_itr, ptr @aq_itr_tx, ptr @aq_itr_rx, ptr @.str, ptr @aq_nic_start.__key, ptr @.str.1, ptr @aq_nic_start.__key.2, ptr @.str.3, ptr @aq_nic_start.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @aq_nic_rss_init.rss_key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_itr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_itr_tx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_itr_rx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_nic_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_nic_start.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_nic_start.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_nic_rss_init.rss_key to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_nic_cfg_start(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %tcs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 31
  %0 = ptrtoint ptr %tcs to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %tcs, align 4
  %is_polling = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 22
  %1 = ptrtoint ptr %is_polling to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %is_polling, align 1
  %2 = load i32, ptr @aq_itr, align 4
  %itr = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 7
  %3 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %itr, align 4
  %4 = load i32, ptr @aq_itr_tx, align 4
  %conv = trunc i32 %4 to i16
  %tx_itr = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 9
  %5 = ptrtoint ptr %tx_itr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %tx_itr, align 2
  %6 = load i32, ptr @aq_itr_rx, align 4
  %conv1 = trunc i32 %6 to i16
  %rx_itr = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 8
  %7 = ptrtoint ptr %rx_itr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %rx_itr, align 8
  %rxpageorder = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 10
  %8 = ptrtoint ptr %rxpageorder to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rxpageorder, align 4
  %is_rss = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 23
  %9 = ptrtoint ptr %is_rss to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_rss, align 2
  %aq_rss = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 36
  %10 = ptrtoint ptr %aq_rss to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %aq_rss, align 4
  %fc = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 13
  %11 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %fc, align 8
  %wol = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %wol to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %wol, align 4
  %mtu = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 12
  %13 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1514, ptr %mtu, align 4
  %link_speed_msk = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 14
  %14 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65535, ptr %link_speed_msk, align 8
  %is_autoneg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 21
  %15 = ptrtoint ptr %is_autoneg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_autoneg, align 8
  %is_lro = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 24
  %16 = ptrtoint ptr %is_lro to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %is_lro, align 1
  %is_ptp = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 26
  %17 = ptrtoint ptr %is_ptp to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_ptp, align 1
  %18 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_nic_cfg, align 8
  %rxds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %rxds_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxds_max, align 8
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 2048)
  %rxds = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %rxds to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rxds, align 8
  %txds_max = getelementptr inbounds %struct.aq_hw_caps_s, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %txds_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txds_max, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 4096)
  %txds = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %txds to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %txds, align 4
  tail call fastcc void @aq_nic_cfg_update_num_vecs(ptr noundef %self)
  %call = tail call i32 @aq_pci_func_get_irq_type(ptr noundef %self) #15
  %irq_type = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 6
  %28 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call, ptr %irq_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp12 = icmp eq i32 %call, 1
  br i1 %cmp12, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %29 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_nic_cfg, align 8
  %vecs = getelementptr inbounds %struct.aq_hw_caps_s, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp15 = icmp eq i32 %32, 1
  br i1 %cmp15, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false17

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %vecs18 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %33 = ptrtoint ptr %vecs18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vecs18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp19 = icmp eq i32 %34, 1
  br i1 %cmp19, label %lor.lhs.false17.if.then_crit_edge, label %lor.lhs.false17.if.end_crit_edge

lor.lhs.false17.if.end_crit_edge:                 ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false17.if.then_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false17.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %35 = ptrtoint ptr %is_rss to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_rss, align 2
  %vecs22 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %36 = ptrtoint ptr %vecs22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %vecs22, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false17.if.end_crit_edge
  %vecs23 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %37 = ptrtoint ptr %vecs23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vecs23, align 8
  %add = add i32 %38, 1
  %irqvecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 21
  %39 = ptrtoint ptr %irqvecs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irqvecs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %40)
  %cmp24.not = icmp ugt i32 %add, %40
  %spec.select = select i1 %cmp24.not, i32 0, i32 %38
  %41 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select, ptr %41, align 4
  %43 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk31 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %link_speed_msk31 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %link_speed_msk31, align 8
  %47 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %link_speed_msk, align 8
  %49 = trunc i64 %46 to i32
  %conv34 = and i32 %48, %49
  store i32 %conv34, ptr %link_speed_msk, align 8
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %44, align 8
  %features = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %features, align 8
  %and37 = lshr i64 %51, 8
  %53 = trunc i64 %and37 to i8
  %54 = and i8 %53, 1
  %is_vlan_rx_strip = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 16
  %55 = ptrtoint ptr %is_vlan_rx_strip to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %is_vlan_rx_strip, align 8
  %56 = trunc i64 %51 to i8
  %57 = lshr i8 %56, 7
  %is_vlan_tx_insert = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 17
  %58 = ptrtoint ptr %is_vlan_tx_insert to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %is_vlan_tx_insert, align 1
  %is_vlan_force_promisc = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 18
  %59 = ptrtoint ptr %is_vlan_force_promisc to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %is_vlan_force_promisc, align 2
  %60 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tcs, align 4
  %conv51 = zext i8 %61 to i32
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 0
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx, align 1
  %div103104105106.1 = lshr i8 %61, 3
  %arrayidx.1 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 1
  %63 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %div103104105106.1, ptr %arrayidx.1, align 1
  %div103104105106.2 = lshr i8 %61, 2
  %arrayidx.2 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 2
  %64 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %div103104105106.2, ptr %arrayidx.2, align 1
  %mul.3 = mul nuw nsw i32 %conv51, 3
  %div103104105106.3 = lshr i32 %mul.3, 3
  %conv52.3 = trunc i32 %div103104105106.3 to i8
  %arrayidx.3 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 3
  %65 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv52.3, ptr %arrayidx.3, align 1
  %div103104105106.4 = lshr i8 %61, 1
  %arrayidx.4 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 4
  %66 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %div103104105106.4, ptr %arrayidx.4, align 1
  %mul.5 = mul nuw nsw i32 %conv51, 5
  %div103104105106.5 = lshr i32 %mul.5, 3
  %conv52.5 = trunc i32 %div103104105106.5 to i8
  %arrayidx.5 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 5
  %67 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv52.5, ptr %arrayidx.5, align 1
  %mul.6 = mul nuw nsw i32 %conv51, 6
  %div103104105106.6 = lshr i32 %mul.6, 3
  %conv52.6 = trunc i32 %div103104105106.6 to i8
  %arrayidx.6 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 6
  %68 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv52.6, ptr %arrayidx.6, align 1
  %mul.7 = mul nuw nsw i32 %conv51, 7
  %div103104105106.7 = lshr i32 %mul.7, 3
  %conv52.7 = trunc i32 %div103104105106.7 to i8
  %arrayidx.7 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 7
  %69 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv52.7, ptr %arrayidx.7, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aq_nic_cfg_update_num_vecs(ptr nocapture noundef %self) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %vecs = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vecs, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 8)
  %vecs1 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %5 = ptrtoint ptr %vecs1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vecs1, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = ptrtoint ptr %vecs1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vecs1, align 8
  %irqvecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 21
  %9 = ptrtoint ptr %irqvecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqvecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp10 = icmp ugt i32 %10, 1
  br i1 %cmp10, label %if.then, label %entry.cond.end40_crit_edge

entry.cond.end40_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add i32 %10, -1
  %11 = tail call i32 @llvm.umin.i32(i32 %7, i32 %sub)
  %12 = ptrtoint ptr %vecs1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vecs1, align 8
  br label %cond.end40

cond.end40:                                       ; preds = %if.then, %entry.cond.end40_crit_edge
  %13 = ptrtoint ptr %vecs1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vecs1, align 8
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #15, !range !73
  %sub.i.i.op.i = xor i32 %15, 31
  %cond41 = shl nuw i32 1, %sub.i.i.op.i
  %16 = ptrtoint ptr %vecs1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond41, ptr %vecs1, align 8
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %17 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aq_hw, align 8
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_features, align 8
  %and = and i32 %20, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end40.if.end58_crit_edge, label %if.then43

cond.end40.if.end58_crit_edge:                    ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then43:                                        ; preds = %cond.end40
  %tcs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 31
  %21 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp45 = icmp ugt i8 %22, 2
  br i1 %cmp45, label %if.end58.thread, label %if.then43.if.end58_crit_edge

if.then43.if.end58_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.end58.thread:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  %23 = tail call i32 @llvm.umin.i32(i32 %cond41, i32 4)
  %24 = ptrtoint ptr %vecs1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vecs1, align 8
  br label %if.end64

if.end58:                                         ; preds = %if.then43.if.end58_crit_edge, %cond.end40.if.end58_crit_edge
  %25 = ptrtoint ptr %vecs1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %vecs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp60 = icmp ugt i32 %.pr, 4
  %spec.select = zext i1 %cmp60 to i32
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %if.end58.thread
  %.sink = phi i32 [ 0, %if.end58.thread ], [ %spec.select, %if.end58 ]
  %26 = phi i32 [ %23, %if.end58.thread ], [ %.pr, %if.end58 ]
  %tc_mode63 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 29
  %27 = ptrtoint ptr %tc_mode63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %tc_mode63, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %26, i32 8)
  %num_rss_queues = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 11
  %29 = ptrtoint ptr %num_rss_queues to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %num_rss_queues, align 8
  %hash_secret_key_size.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 36, i32 2
  %30 = ptrtoint ptr %hash_secret_key_size.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 40, ptr %hash_secret_key_size.i, align 4
  %hash_secret_key.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 36, i32 3
  %31 = call ptr @memcpy(ptr %hash_secret_key.i, ptr @aq_nic_rss_init.rss_key, i32 40)
  %indirection_table_size.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 36, i32 1
  %32 = ptrtoint ptr %indirection_table_size.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 64, ptr %indirection_table_size.i, align 2
  %sub.i = add nuw nsw i32 %28, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end64
  %i.09.i = phi i32 [ 64, %if.end64 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.09.i, -1
  %and.i = and i32 %dec.i, %sub.i
  %conv2.i = trunc i32 %and.i to i8
  %arrayidx.i = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 36, i32 4, i32 %dec.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %aq_nic_rss_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

aq_nic_rss_init.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_pci_func_get_irq_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_ndev_register(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %3 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then46_crit_edge, label %if.end

entry.if.then46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

if.end:                                           ; preds = %entry
  %aq_hw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %6 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_soft_reset.i = getelementptr inbounds %struct.aq_hw_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %hw_soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_soft_reset.i, align 4
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %10 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw.i, align 8
  %call.i = tail call i32 %9(ptr noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %aq_nic_hw_prepare.exit, label %if.end.if.then46_crit_edge

if.end.if.then46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

aq_nic_hw_prepare.exit:                           ; preds = %if.end
  %12 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_prepare.i = getelementptr inbounds %struct.aq_hw_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %hw_prepare.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_prepare.i, align 4
  %16 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw.i, align 8
  %aq_fw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %call3.i = tail call i32 %15(ptr noundef %17, ptr noundef %aq_fw_ops.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool1.not = icmp eq i32 %call3.i, 0
  br i1 %tobool1.not, label %if.end3, label %aq_nic_hw_prepare.exit.if.then46_crit_edge

aq_nic_hw_prepare.exit.if.then46_crit_edge:       ; preds = %aq_nic_hw_prepare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

if.end3:                                          ; preds = %aq_nic_hw_prepare.exit
  %call4 = tail call i32 @aq_macsec_init(ptr noundef %self) #15
  %pdev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 19
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  %call6 = tail call i32 @platform_get_ethdev_address(ptr noundef %dev, ptr noundef %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end3.if.end23_crit_edge, label %if.then7

if.end3.if.end23_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then7:                                         ; preds = %if.end3
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %22 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_fw_ops.i, align 4
  %get_mac_permanent = getelementptr inbounds %struct.aq_fw_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %get_mac_permanent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_mac_permanent, align 4
  %26 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aq_hw.i, align 8
  %call8 = call i32 %25(ptr noundef %27, ptr noundef nonnull %addr) #15
  call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.if.then46_crit_edge

if.then7.if.then46_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

if.end12:                                         ; preds = %if.then7
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 4
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end12
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %2, align 4
  %conv.i.i = zext i16 %32 to i32
  %or.i.i = or i32 %29, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %land.lhs.true

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %is_valid_ether_addr.exit
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i = icmp eq i8 %34, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp4.i = icmp eq i8 %36, 0
  br i1 %cmp4.i, label %aq_nic_is_valid_ether_addr.exit, label %land.lhs.true.i.if.then17_crit_edge

land.lhs.true.i.if.then17_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

aq_nic_is_valid_ether_addr.exit:                  ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp8.i.not = icmp eq i8 %38, 0
  br i1 %cmp8.i.not, label %aq_nic_is_valid_ether_addr.exit.if.else_crit_edge, label %aq_nic_is_valid_ether_addr.exit.if.then17_crit_edge

aq_nic_is_valid_ether_addr.exit.if.then17_crit_edge: ; preds = %aq_nic_is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

aq_nic_is_valid_ether_addr.exit.if.else_crit_edge: ; preds = %aq_nic_is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then17:                                        ; preds = %aq_nic_is_valid_ether_addr.exit.if.then17_crit_edge, %land.lhs.true.i.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %39 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev, align 4
  call void @dev_addr_mod(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  br label %if.end23

if.else:                                          ; preds = %aq_nic_is_valid_ether_addr.exit.if.else_crit_edge, %is_valid_ether_addr.exit.if.else_crit_edge, %if.end12.if.else_crit_edge
  %41 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str) #18
  %43 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev, align 4
  call fastcc void @eth_hw_addr_random(ptr noundef %44)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then17, %if.end3.if.end23_crit_edge
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %45 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %aq_vecs, align 8
  %46 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp2686.not = icmp eq i32 %47, 0
  br i1 %cmp2686.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %54, 1
  %48 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc, ptr %aq_vecs, align 8
  %49 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vecs, align 8
  %cmp26 = icmp ult i32 %inc, %50
  br i1 %cmp26, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %storemerge87 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call29 = call ptr @aq_vec_alloc(ptr noundef %self, i32 noundef %storemerge87, ptr noundef %aq_nic_cfg.i) #15
  %51 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aq_vecs, align 8
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %52
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call29, ptr %arrayidx, align 4
  %54 = load i32, ptr %aq_vecs, align 8
  %arrayidx33 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %54
  %55 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %56, null
  br i1 %tobool34.not, label %for.body.if.then46_crit_edge, label %for.cond

for.body.if.then46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end23.for.end_crit_edge
  %57 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev, align 4
  call void @netif_carrier_off(ptr noundef %58) #15
  %59 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev, align 4
  call fastcc void @local_bh_disable() #15
  %61 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 108
  call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 104
  %65 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp13.not.i = icmp eq i32 %66, 0
  br i1 %cmp13.not.i, label %for.end.err_exit_crit_edge, label %for.body.lr.ph.i

for.end.err_exit_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %68, i32 %i.014.i, i32 10
  call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %68, i32 %i.014.i, i32 11
  %69 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %64, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %68, i32 %i.014.i, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %70 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %71 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i79 = icmp ult i32 %inc.i, %72
  br i1 %cmp.i79, label %for.body.i.for.body.i_crit_edge, label %for.body.i.err_exit_crit_edge

for.body.i.err_exit_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

err_exit:                                         ; preds = %for.body.i.err_exit_crit_edge, %for.end.err_exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  call fastcc void @local_bh_enable() #15
  %73 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ndev, align 4
  %call41 = call i32 @register_netdev(ptr noundef %74) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool45.not = icmp eq i32 %call41, 0
  br i1 %tobool45.not, label %err_exit.if.end47_crit_edge, label %err_exit.if.then46_crit_edge

err_exit.if.then46_crit_edge:                     ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then46

err_exit.if.end47_crit_edge:                      ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.then46:                                        ; preds = %err_exit.if.then46_crit_edge, %for.body.if.then46_crit_edge, %if.then7.if.then46_crit_edge, %aq_nic_hw_prepare.exit.if.then46_crit_edge, %if.end.if.then46_crit_edge, %entry.if.then46_crit_edge
  %err.084 = phi i32 [ %call41, %err_exit.if.then46_crit_edge ], [ -22, %entry.if.then46_crit_edge ], [ %call8, %if.then7.if.then46_crit_edge ], [ %call3.i, %aq_nic_hw_prepare.exit.if.then46_crit_edge ], [ %call.i, %if.end.if.then46_crit_edge ], [ -12, %for.body.if.then46_crit_edge ]
  call void @aq_macsec_free(ptr noundef %self) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %err_exit.if.end47_crit_edge
  %err.085 = phi i32 [ %err.084, %if.then46 ], [ 0, %err_exit.if.end47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret i32 %err.085
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_macsec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #15
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aq_nic_get_cfg(ptr noundef readnone %self) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  ret ptr %aq_nic_cfg
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_vec_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_macsec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aq_nic_ndev_init(ptr nocapture noundef %self) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %hw_features4 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %hw_features4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hw_features4, align 8
  %or = or i64 %7, %3
  store i64 %or, ptr %hw_features4, align 8
  %8 = load i64, ptr %1, align 8
  %9 = load ptr, ptr %ndev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %features, align 16
  %11 = load ptr, ptr %ndev, align 4
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vlan_features, align 8
  %or8 = or i64 %13, 1649268588553
  store i64 %or8, ptr %vlan_features, align 8
  %14 = load ptr, ptr %ndev, align 4
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 29
  %15 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 8589934592, ptr %gso_partial_features, align 64
  %hw_priv_flags = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %hw_priv_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_priv_flags, align 8
  %conv = zext i32 %17 to i64
  %18 = load ptr, ptr %ndev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %priv_flags to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv, ptr %priv_flags, align 16
  %20 = load ptr, ptr %ndev, align 4
  %priv_flags12 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %priv_flags12 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %priv_flags12, align 16
  %or13 = or i64 %22, 32768
  store i64 %or13, ptr %priv_flags12, align 16
  %msg_enable = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 1
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %msg_enable, align 4
  %mtu = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 12
  %24 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu, align 4
  %sub = add i32 %25, -14
  %26 = load ptr, ptr %ndev, align 4
  %mtu15 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %mtu15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %mtu15, align 4
  %mtu16 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %mtu16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu16, align 4
  %sub18 = add i32 %29, -18
  %30 = load ptr, ptr %ndev, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 31
  %31 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub18, ptr %max_mtu, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @aq_nic_set_tx_ring(ptr nocapture noundef writeonly %self, i32 noundef %idx, ptr noundef %ring) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 3, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ring, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aq_nic_get_ndev(ptr nocapture noundef readonly %self) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_init(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %power_state = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 8
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %power_state, align 8
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %1 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aq_hw_ops, align 8
  %hw_reset = getelementptr inbounds %struct.aq_hw_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %hw_reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_reset, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %5 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %4(ptr noundef %6) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end:                                           ; preds = %entry
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %downshift_counter = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 28
  %aq_fw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %7 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_downshift.i = getelementptr inbounds %struct.aq_fw_ops, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %set_downshift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_downshift.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.aq_nic_set_downshift.exit_crit_edge, label %if.end.i

if.end.aq_nic_set_downshift.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %aq_nic_set_downshift.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %downshift_counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %downshift_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %12)
  %cmp.i = icmp sgt i32 %12, 15
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #18
  br label %aq_nic_set_downshift.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %15 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_downshift4.i = getelementptr inbounds %struct.aq_fw_ops, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %set_downshift4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_downshift4.i, align 4
  %19 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aq_hw, align 8
  %21 = ptrtoint ptr %downshift_counter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %downshift_counter, align 8
  %call.i = tail call i32 %18(ptr noundef %20, i32 noundef %22) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %aq_nic_set_downshift.exit

aq_nic_set_downshift.exit:                        ; preds = %if.end2.i, %if.then1.i, %if.end.aq_nic_set_downshift.exit_crit_edge
  %is_media_detect = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 27
  %23 = ptrtoint ptr %is_media_detect to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_media_detect, align 2, !range !74
  %25 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_media_detect.i = getelementptr inbounds %struct.aq_fw_ops, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %set_media_detect.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_media_detect.i, align 4
  %tobool.not.i106 = icmp eq ptr %28, null
  br i1 %tobool.not.i106, label %aq_nic_set_downshift.exit.aq_nic_set_media_detect.exit_crit_edge, label %if.end3.i

aq_nic_set_downshift.exit.aq_nic_set_media_detect.exit_crit_edge: ; preds = %aq_nic_set_downshift.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %aq_nic_set_media_detect.exit

if.end3.i:                                        ; preds = %aq_nic_set_downshift.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp ne i8 %24, 0
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %29 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_media_detect5.i = getelementptr inbounds %struct.aq_fw_ops, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %set_media_detect5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_media_detect5.i, align 4
  %33 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw, align 8
  %call.i111 = tail call i32 %32(ptr noundef %34, i1 noundef zeroext %tobool.not) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool9.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end3.i.aq_nic_set_media_detect.exit_crit_edge

if.end3.i.aq_nic_set_media_detect.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aq_nic_set_media_detect.exit

if.then10.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %is_media_detect to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %24, ptr %is_media_detect, align 2
  br label %aq_nic_set_media_detect.exit

aq_nic_set_media_detect.exit:                     ; preds = %if.then10.i, %if.end3.i.aq_nic_set_media_detect.exit_crit_edge, %aq_nic_set_downshift.exit.aq_nic_set_media_detect.exit_crit_edge
  %36 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aq_hw_ops, align 8
  %hw_init = getelementptr inbounds %struct.aq_hw_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_init, align 4
  %40 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aq_hw, align 8
  %ndev.i113 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %42 = ptrtoint ptr %ndev.i113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev.i113, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr, align 64
  %call8 = tail call i32 %39(ptr noundef %41, ptr noundef %45) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %aq_nic_set_media_detect.exit.err_exit_crit_edge, label %if.end11

aq_nic_set_media_detect.exit.err_exit_crit_edge:  ; preds = %aq_nic_set_media_detect.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end11:                                         ; preds = %aq_nic_set_media_detect.exit
  %46 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aq_hw, align 8
  %chip_features = getelementptr inbounds %struct.aq_hw_s, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %chip_features to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_features, align 8
  %and = and i32 %49, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end11.if.end34_crit_edge, label %land.lhs.true

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end11
  %50 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aq_nic_cfg, align 8
  %media_type = getelementptr inbounds %struct.aq_hw_caps_s, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp15 = icmp eq i32 %53, 1
  br i1 %cmp15, label %if.then16, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then16:                                        ; preds = %land.lhs.true
  %phy_id = getelementptr inbounds %struct.aq_hw_s, ptr %47, i32 0, i32 21
  %54 = ptrtoint ptr %phy_id to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 32, ptr %phy_id, align 8
  %55 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aq_hw, align 8
  %call19 = tail call zeroext i1 @aq_phy_init(ptr noundef %56) #15
  %conv = zext i1 %call19 to i32
  %57 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aq_nic_cfg, align 8
  %quirks = getelementptr inbounds %struct.aq_hw_caps_s, ptr %58, i32 0, i32 25
  %59 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks, align 4
  %and22 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then16.if.end34_crit_edge, label %if.then24

if.then16.if.end34_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then24:                                        ; preds = %if.then16
  %61 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %aq_hw, align 8
  %phy_id26 = getelementptr inbounds %struct.aq_hw_s, ptr %62, i32 0, i32 21
  %63 = ptrtoint ptr %phy_id26 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %phy_id26, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %64)
  %cmp28.not = icmp eq i16 %64, 32
  br i1 %cmp28.not, label %if.then24.if.end34_crit_edge, label %if.then30

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_phy_disable_ptp(ptr noundef %62) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then24.if.end34_crit_edge, %if.then16.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end11.if.end34_crit_edge
  %err.0 = phi i32 [ %conv, %if.then30 ], [ %conv, %if.then24.if.end34_crit_edge ], [ %conv, %if.then16.if.end34_crit_edge ], [ %call8, %land.lhs.true.if.end34_crit_edge ], [ %call8, %if.end11.if.end34_crit_edge ]
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %65 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp35116.not = icmp eq i32 %66, 0
  br i1 %cmp35116.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %if.end42.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %i.0117
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx, align 4
  %call39 = tail call i32 @aq_vec_ring_alloc(ptr noundef %68, ptr noundef %self, i32 noundef %i.0117, ptr noundef %aq_nic_cfg) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.body.err_exit_crit_edge

for.body.err_exit_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end42:                                         ; preds = %for.body
  %69 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %aq_hw_ops, align 8
  %71 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %aq_hw, align 8
  %call45 = tail call i32 @aq_vec_init(ptr noundef %68, ptr noundef %70, ptr noundef %72) #15
  %inc = add nuw i32 %i.0117, 1
  %73 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %aq_vecs, align 8
  %cmp35 = icmp ult i32 %inc, %74
  br i1 %cmp35, label %if.end42.for.body_crit_edge, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end42.for.end_crit_edge, %if.end34.for.end_crit_edge
  %err.1.lcssa = phi i32 [ %err.0, %if.end34.for.end_crit_edge ], [ 0, %if.end42.for.end_crit_edge ]
  %is_ptp = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 26
  %75 = ptrtoint ptr %is_ptp to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_ptp, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool47.not = icmp eq i8 %76, 0
  br i1 %tobool47.not, label %for.end.if.end64_crit_edge, label %if.then48

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then48:                                        ; preds = %for.end
  %irqvecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 21
  %77 = ptrtoint ptr %irqvecs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irqvecs, align 8
  %sub = add i32 %78, -1
  %call49 = tail call i32 @aq_ptp_init(ptr noundef %self, i32 noundef %sub) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then48.err_exit_crit_edge, label %if.end53

if.then48.err_exit_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end53:                                         ; preds = %if.then48
  %call54 = tail call i32 @aq_ptp_ring_alloc(ptr noundef %self) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.err_exit_crit_edge, label %if.end58

if.end53.err_exit_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end58:                                         ; preds = %if.end53
  %call59 = tail call i32 @aq_ptp_ring_init(ptr noundef %self) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.err_exit_crit_edge, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.end58.err_exit_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end64:                                         ; preds = %if.end58.if.end64_crit_edge, %for.end.if.end64_crit_edge
  %err.2 = phi i32 [ %call59, %if.end58.if.end64_crit_edge ], [ %err.1.lcssa, %for.end.if.end64_crit_edge ]
  %79 = ptrtoint ptr %ndev.i113 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev.i113, align 4
  tail call void @netif_carrier_off(ptr noundef %80) #15
  br label %err_exit

err_exit:                                         ; preds = %if.end64, %if.end58.err_exit_crit_edge, %if.end53.err_exit_crit_edge, %if.then48.err_exit_crit_edge, %for.body.err_exit_crit_edge, %aq_nic_set_media_detect.exit.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.3 = phi i32 [ %call, %entry.err_exit_crit_edge ], [ %call8, %aq_nic_set_media_detect.exit.err_exit_crit_edge ], [ %call49, %if.then48.err_exit_crit_edge ], [ %call54, %if.end53.err_exit_crit_edge ], [ %call59, %if.end58.err_exit_crit_edge ], [ %err.2, %if.end64 ], [ %call39, %for.body.err_exit_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_downshift(ptr noundef %self, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %set_downshift = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %set_downshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_downshift, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %val)
  %cmp = icmp sgt i32 %val, 15
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %downshift_counter = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 28
  %6 = ptrtoint ptr %downshift_counter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %downshift_counter, align 8
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %7 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_fw_ops, align 4
  %set_downshift4 = getelementptr inbounds %struct.aq_fw_ops, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %set_downshift4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_downshift4, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %11 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw, align 8
  %13 = ptrtoint ptr %downshift_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %downshift_counter, align 8
  %call = tail call i32 %10(ptr noundef %12, i32 noundef %14) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ %call, %if.end2 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_media_detect(ptr noundef %self, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %set_media_detect = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %set_media_detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_media_detect, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp slt i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %val)
  %cmp1.not = icmp eq i32 %val, 6000
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef 6000) #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %set_media_detect5 = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %set_media_detect5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_media_detect5, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %10 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool6 = icmp ne i32 %val, 0
  %call = tail call i32 %9(ptr noundef %11, i1 noundef zeroext %tobool6) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %is_media_detect = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 27
  %frombool = zext i1 %tobool6 to i8
  %12 = ptrtoint ptr %is_media_detect to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %is_media_detect, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @aq_phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_phy_disable_ptp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_ring_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_ring_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_ring_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_start(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_multicast_list_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %hw_multicast_list_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_multicast_list_set, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %mc_list = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 17
  %ar = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mc_list, align 4
  %call2 = tail call i32 %3(ptr noundef %5, ptr noundef %ar, i32 noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup123_crit_edge, label %if.end

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops, align 8
  %hw_packet_filter_set = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %hw_packet_filter_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_packet_filter_set, align 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %packet_filter = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 7
  %14 = ptrtoint ptr %packet_filter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packet_filter, align 4
  %call5 = tail call i32 %11(ptr noundef %13, i32 noundef %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup123_crit_edge, label %if.end8

if.end.cleanup123_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end8:                                          ; preds = %if.end
  %aq_vec9 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 2
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %16 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10208.not = icmp eq i32 %17, 0
  br i1 %cmp10208.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %aq_vec.0.in210 = phi ptr [ %arrayidx16, %for.inc.for.body_crit_edge ], [ %aq_vec9, %if.end8.for.body_crit_edge ]
  %i.0209 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %18 = ptrtoint ptr %aq_vec.0.in210 to i32
  call void @__asan_load4_noabort(i32 %18)
  %aq_vec.0 = load ptr, ptr %aq_vec.0.in210, align 4
  %call11 = tail call i32 @aq_vec_start(ptr noundef %aq_vec.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %for.body.cleanup123_crit_edge, label %for.inc

for.body.cleanup123_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0209, 1
  %arrayidx16 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %inc
  %19 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aq_vecs, align 8
  %cmp10 = icmp ugt i32 %20, %inc
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %call17 = tail call i32 @aq_ptp_ring_start(ptr noundef %self) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %for.end.cleanup123_crit_edge, label %if.end20

for.end.cleanup123_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end20:                                         ; preds = %for.end
  %call21 = tail call i32 @aq_nic_set_loopback(ptr noundef %self)
  %21 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aq_hw_ops, align 8
  %hw_start = getelementptr inbounds %struct.aq_hw_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %hw_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_start, align 4
  %25 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aq_hw, align 8
  %call24 = tail call i32 %24(ptr noundef %26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end20.cleanup123_crit_edge, label %if.end27

if.end20.cleanup123_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end27:                                         ; preds = %if.end20
  %27 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aq_hw_ops, align 8
  %hw_interrupt_moderation_set.i = getelementptr inbounds %struct.aq_hw_ops, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %hw_interrupt_moderation_set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_interrupt_moderation_set.i, align 4
  %31 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aq_hw, align 8
  %call.i = tail call i32 %30(ptr noundef %32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.end27.cleanup123_crit_edge

if.end27.cleanup123_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

do.body:                                          ; preds = %if.end27
  %service_task = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 14
  tail call void @__init_work(ptr noundef %service_task, i32 noundef 0) #15
  %33 = ptrtoint ptr %service_task to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %service_task, align 8
  %lockdep_map = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @aq_nic_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry34 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 14, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 14, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @aq_nic_service_task, ptr %func, align 4
  %service_timer = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %service_timer, ptr noundef nonnull @aq_nic_service_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @aq_nic_start.__key.2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %37, 100
  %call.i202 = tail call i32 @mod_timer(ptr noundef %service_timer, i32 noundef %add.i) #15
  tail call void @aq_ndev_schedule_work(ptr noundef %service_task) #15
  %is_polling = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 22
  %38 = ptrtoint ptr %is_polling to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_polling, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool40.not = icmp eq i8 %39, 0
  br i1 %tobool40.not, label %for.cond49.preheader, label %do.body42

for.cond49.preheader:                             ; preds = %do.body
  %40 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp51211.not = icmp eq i32 %41, 0
  br i1 %cmp51211.not, label %for.cond49.preheader.for.end63_crit_edge, label %for.body52.lr.ph

for.cond49.preheader.for.end63_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end63

for.body52.lr.ph:                                 ; preds = %for.cond49.preheader
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  br label %for.body52

do.body42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %polling_timer = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 15
  tail call void @init_timer_key(ptr noundef %polling_timer, ptr noundef nonnull @aq_nic_polling_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @aq_nic_start.__key.4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %42, 200
  %call46 = tail call i32 @mod_timer(ptr noundef %polling_timer, i32 noundef %add) #15
  br label %if.end87

for.body52:                                       ; preds = %for.inc59.for.body52_crit_edge, %for.body52.lr.ph
  %aq_vec.1.in213 = phi ptr [ %aq_vec9, %for.body52.lr.ph ], [ %arrayidx62, %for.inc59.for.body52_crit_edge ]
  %i.1212 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc60, %for.inc59.for.body52_crit_edge ]
  %43 = ptrtoint ptr %aq_vec.1.in213 to i32
  call void @__asan_load4_noabort(i32 %43)
  %aq_vec.1 = load ptr, ptr %aq_vec.1.in213, align 4
  %44 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev, align 4
  %call54 = tail call ptr @aq_vec_get_affinity_mask(ptr noundef %aq_vec.1) #15
  %call55 = tail call i32 @aq_pci_func_alloc_irq(ptr noundef %self, i32 noundef %i.1212, ptr noundef %45, ptr noundef nonnull @aq_vec_isr, ptr noundef %aq_vec.1, ptr noundef %call54) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %for.body52.cleanup123_crit_edge, label %for.inc59

for.body52.cleanup123_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

for.inc59:                                        ; preds = %for.body52
  %inc60 = add nuw i32 %i.1212, 1
  %arrayidx62 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %inc60
  %46 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %aq_vecs, align 8
  %cmp51 = icmp ugt i32 %47, %inc60
  br i1 %cmp51, label %for.inc59.for.body52_crit_edge, label %for.inc59.for.end63_crit_edge

for.inc59.for.end63_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end63

for.inc59.for.body52_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body52

for.end63:                                        ; preds = %for.inc59.for.end63_crit_edge, %for.cond49.preheader.for.end63_crit_edge
  %call64 = tail call i32 @aq_ptp_irq_alloc(ptr noundef %self) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %for.end63.cleanup123_crit_edge, label %if.end67

for.end63.cleanup123_crit_edge:                   ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end67:                                         ; preds = %for.end63
  %link_irq_vec = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 5
  %48 = ptrtoint ptr %link_irq_vec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %link_irq_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool68.not = icmp eq i32 %49, 0
  br i1 %tobool68.not, label %if.end67.if.end80_crit_edge, label %if.then69

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then69:                                        ; preds = %if.end67
  %pdev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 19
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 8
  %call71 = tail call i32 @pci_irq_vector(ptr noundef %51, i32 noundef %49) #15
  %ndev72 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %52 = ptrtoint ptr %ndev72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev72, align 4
  %call75 = tail call i32 @request_threaded_irq(i32 noundef %call71, ptr noundef null, ptr noundef nonnull @aq_linkstate_threaded_isr, i32 noundef 8320, ptr noundef %53, ptr noundef %self) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then69.cleanup123_crit_edge, label %cleanup.thread

if.then69.cleanup123_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

cleanup.thread:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %link_irq_vec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %link_irq_vec, align 4
  %shl = shl nuw i32 1, %55
  %msix_entry_mask = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 20
  %56 = ptrtoint ptr %msix_entry_mask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msix_entry_mask, align 4
  %or = or i32 %57, %shl
  store i32 %or, ptr %msix_entry_mask, align 4
  br label %if.end80

if.end80:                                         ; preds = %cleanup.thread, %if.end67.if.end80_crit_edge
  %58 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %aq_hw_ops, align 8
  %hw_irq_enable = getelementptr inbounds %struct.aq_hw_ops, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %hw_irq_enable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_irq_enable, align 4
  %62 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aq_hw, align 8
  %call83 = tail call i32 %61(ptr noundef %63, i64 noundef 1023) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end80.cleanup123_crit_edge, label %if.end80.if.end87_crit_edge

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.end80.cleanup123_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end87:                                         ; preds = %if.end80.if.end87_crit_edge, %do.body42
  %ndev88 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %64 = ptrtoint ptr %ndev88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ndev88, align 4
  %66 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %aq_vecs, align 8
  %tcs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 31
  %68 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tcs, align 4
  %conv = zext i8 %69 to i32
  %mul = mul i32 %67, %conv
  %call90 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %65, i32 noundef %mul) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end87.cleanup123_crit_edge, label %if.end94

if.end87.cleanup123_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

if.end94:                                         ; preds = %if.end87
  %70 = ptrtoint ptr %ndev88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev88, align 4
  %72 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %aq_vecs, align 8
  %74 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tcs, align 4
  %conv98 = zext i8 %75 to i32
  %mul99 = mul i32 %73, %conv98
  %call100 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %71, i32 noundef %mul99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end94.cleanup123_crit_edge, label %for.cond105.preheader

if.end94.cleanup123_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup123

for.cond105.preheader:                            ; preds = %if.end94
  %76 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp108215.not = icmp eq i8 %77, 0
  br i1 %cmp108215.not, label %for.cond105.preheader.for.end121_crit_edge, label %for.cond105.preheader.for.body110_crit_edge

for.cond105.preheader.for.body110_crit_edge:      ; preds = %for.cond105.preheader
  br label %for.body110

for.cond105.preheader.for.end121_crit_edge:       ; preds = %for.cond105.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.cond105.preheader.for.body110_crit_edge
  %i.2216 = phi i32 [ %inc120, %for.body110.for.body110_crit_edge ], [ 0, %for.cond105.preheader.for.body110_crit_edge ]
  %78 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %aq_vecs, align 8
  %mul112 = mul i32 %79, %i.2216
  %conv113 = trunc i32 %mul112 to i16
  %80 = ptrtoint ptr %ndev88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ndev88, align 4
  %conv115 = trunc i32 %i.2216 to i8
  %conv117 = trunc i32 %79 to i16
  %call118 = tail call i32 @netdev_set_tc_queue(ptr noundef %81, i8 noundef zeroext %conv115, i16 noundef zeroext %conv117, i16 noundef zeroext %conv113) #15
  %inc120 = add nuw nsw i32 %i.2216, 1
  %82 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %tcs, align 4
  %conv107 = zext i8 %83 to i32
  %cmp108 = icmp ult i32 %inc120, %conv107
  br i1 %cmp108, label %for.body110.for.body110_crit_edge, label %for.body110.for.end121_crit_edge

for.body110.for.end121_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body110

for.end121:                                       ; preds = %for.body110.for.end121_crit_edge, %for.cond105.preheader.for.end121_crit_edge
  %84 = ptrtoint ptr %ndev88 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ndev88, align 4
  tail call fastcc void @netif_tx_start_all_queues(ptr noundef %85)
  br label %cleanup123

cleanup123:                                       ; preds = %for.end121, %if.end94.cleanup123_crit_edge, %if.end87.cleanup123_crit_edge, %if.end80.cleanup123_crit_edge, %if.then69.cleanup123_crit_edge, %for.end63.cleanup123_crit_edge, %for.body52.cleanup123_crit_edge, %if.end27.cleanup123_crit_edge, %if.end20.cleanup123_crit_edge, %for.end.cleanup123_crit_edge, %for.body.cleanup123_crit_edge, %if.end.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %err.0 = phi i32 [ %call2, %entry.cleanup123_crit_edge ], [ %call5, %if.end.cleanup123_crit_edge ], [ %call17, %for.end.cleanup123_crit_edge ], [ %call24, %if.end20.cleanup123_crit_edge ], [ %call.i, %if.end27.cleanup123_crit_edge ], [ %call90, %if.end87.cleanup123_crit_edge ], [ %call100, %if.end94.cleanup123_crit_edge ], [ %call100, %for.end121 ], [ %call64, %for.end63.cleanup123_crit_edge ], [ %call83, %if.end80.cleanup123_crit_edge ], [ %call75, %if.then69.cleanup123_crit_edge ], [ %call55, %for.body52.cleanup123_crit_edge ], [ %call11, %for.body.cleanup123_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_ring_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_loopback(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_loopback = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %hw_set_loopback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_set_loopback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %4 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_fw_ops, align 4
  %set_phyloopback = getelementptr inbounds %struct.aq_fw_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %set_phyloopback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_phyloopback, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %8 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_loopback3 = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %hw_set_loopback3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_set_loopback3, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %12 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw, align 8
  %priv_flags = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 30
  %14 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %priv_flags, align 8
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  %call = tail call i32 %11(ptr noundef %13, i32 noundef 0, i1 noundef zeroext %tobool4) #15
  %16 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_loopback7 = getelementptr inbounds %struct.aq_hw_ops, ptr %17, i32 0, i32 49
  %18 = ptrtoint ptr %hw_set_loopback7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_set_loopback7, align 4
  %20 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw, align 8
  %22 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %priv_flags, align 8
  %and10 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11 = icmp ne i32 %and10, 0
  %call14 = tail call i32 %19(ptr noundef %21, i32 noundef 1, i1 noundef zeroext %tobool11) #15
  %24 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_loopback16 = getelementptr inbounds %struct.aq_hw_ops, ptr %25, i32 0, i32 49
  %26 = ptrtoint ptr %hw_set_loopback16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_set_loopback16, align 4
  %28 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aq_hw, align 8
  %30 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priv_flags, align 8
  %and19 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20 = icmp ne i32 %and19, 0
  %call23 = tail call i32 %27(ptr noundef %29, i32 noundef 2, i1 noundef zeroext %tobool20) #15
  %32 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aq_fw_ops, align 4
  %set_phyloopback25 = getelementptr inbounds %struct.aq_fw_ops, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %set_phyloopback25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_phyloopback25, align 4
  %36 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aq_hw, align 8
  %38 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %priv_flags, align 8
  %and28 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29 = icmp ne i32 %and28, 0
  %call32 = tail call i32 %35(ptr noundef %37, i32 noundef 3, i1 noundef zeroext %tobool29) #15
  %40 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aq_fw_ops, align 4
  %set_phyloopback34 = getelementptr inbounds %struct.aq_fw_ops, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %set_phyloopback34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_phyloopback34, align 4
  %44 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aq_hw, align 8
  %46 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %priv_flags, align 8
  %and37 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38 = icmp ne i32 %and37, 0
  %call41 = tail call i32 %43(ptr noundef %45, i32 noundef 4, i1 noundef zeroext %tobool38) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_update_interrupt_moderation_settings(ptr nocapture noundef readonly %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_interrupt_moderation_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %hw_interrupt_moderation_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_interrupt_moderation_set, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %3(ptr noundef %5) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_nic_service_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -544
  tail call void @aq_ptp_service_task(ptr noundef %add.ptr) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #15
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %add.ptr, align 4
  %and.i = and i32 %1, -1073741768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @aq_nic_update_link_status(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @aq_macsec_work(ptr noundef %add.ptr) #15
  %fwreq_mutex = getelementptr i8, ptr %work, i32 828
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %aq_fw_ops = getelementptr i8, ptr %work, i32 -348
  %2 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats = getelementptr inbounds %struct.aq_fw_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update_stats, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %aq_hw = getelementptr i8, ptr %work, i32 -376
  %6 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_hw, align 8
  %call8 = tail call i32 %5(ptr noundef %7) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  %aq_hw_ops.i = getelementptr i8, ptr %work, i32 -352
  %8 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_get_hw_stats.i = getelementptr inbounds %struct.aq_hw_ops, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %hw_get_hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_get_hw_stats.i, align 4
  %aq_hw.i = getelementptr i8, ptr %work, i32 -376
  %12 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_hw.i, align 8
  %call.i = tail call ptr %11(ptr noundef %13) #15
  %ndev1.i = getelementptr i8, ptr %work, i32 -372
  %14 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev1.i, align 4
  %dma_pkt_rc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %dma_pkt_rc.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dma_pkt_rc.i, align 8
  %conv.i = trunc i64 %17 to i32
  %stats2.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36
  %18 = ptrtoint ptr %stats2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %stats2.i, align 8
  %dma_oct_rc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 19
  %19 = ptrtoint ptr %dma_oct_rc.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dma_oct_rc.i, align 8
  %conv3.i = trunc i64 %20 to i32
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 2
  %21 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv3.i, ptr %rx_bytes.i, align 8
  %erpr.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %erpr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %erpr.i, align 8
  %conv5.i = trunc i64 %23 to i32
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 4
  %24 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv5.i, ptr %rx_errors.i, align 8
  %dpc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %dpc.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dpc.i, align 8
  %conv7.i = trunc i64 %26 to i32
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 6
  %27 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv7.i, ptr %rx_dropped.i, align 8
  %dma_pkt_tc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 18
  %28 = ptrtoint ptr %dma_pkt_tc.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dma_pkt_tc.i, align 8
  %conv9.i = trunc i64 %29 to i32
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 1
  %30 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv9.i, ptr %tx_packets.i, align 4
  %dma_oct_tc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 20
  %31 = ptrtoint ptr %dma_oct_tc.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dma_oct_tc.i, align 8
  %conv11.i = trunc i64 %32 to i32
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 3
  %33 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv11.i, ptr %tx_bytes.i, align 4
  %erpt.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %erpt.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %erpt.i, align 8
  %conv13.i = trunc i64 %35 to i32
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 5
  %36 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv13.i, ptr %tx_errors.i, align 4
  %mprc.i = getelementptr inbounds %struct.aq_stats_s, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %mprc.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mprc.i, align 8
  %conv15.i = trunc i64 %38 to i32
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 8
  %39 = ptrtoint ptr %multicast.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv15.i, ptr %multicast.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_nic_service_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  %service_task = getelementptr i8, ptr %t, i32 48
  tail call void @aq_ndev_schedule_work(ptr noundef %service_task) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_nic_polling_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_vec1 = getelementptr i8, ptr %t, i32 -580
  %aq_vecs = getelementptr i8, ptr %t, i32 -412
  %0 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %aq_vec.0.in12 = phi ptr [ %arrayidx3, %for.body.for.body_crit_edge ], [ %aq_vec1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %aq_vec.0.in12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %aq_vec.0 = load ptr, ptr %aq_vec.0.in12, align 4
  %call = tail call i32 @aq_vec_isr(i32 noundef %i.013, ptr noundef %aq_vec.0) #15
  %inc = add nuw i32 %i.013, 1
  %arrayidx3 = getelementptr [8 x ptr], ptr %aq_vec1, i32 0, i32 %inc
  %3 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aq_vecs, align 8
  %cmp = icmp ugt i32 %4, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 200
  %call4 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_pci_func_alloc_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_isr(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_vec_get_affinity_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_irq_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_linkstate_threaded_isr(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @aq_nic_update_link_status(ptr noundef nonnull %private)
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %private, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_irq_enable = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %hw_irq_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_irq_enable, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %private, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %link_irq_vec = getelementptr inbounds %struct.aq_nic_s, ptr %private, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %link_irq_vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_irq_vec, align 4
  %shl = shl nuw i32 1, %7
  %conv = zext i32 %shl to i64
  %call1 = tail call i32 %3(ptr noundef %5, i64 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_start_all_queues(ptr nocapture noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.05, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #15
  %inc = add nuw i32 %i.05, 1
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_map_skb(ptr nocapture noundef readonly %self, ptr noundef %skb, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags1 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags1, align 2
  %conv = zext i8 %3 to i32
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %trunc = trunc i8 %bf.lshr to i4
  %13 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %entry.if.end13_crit_edge [
    i4 4, label %if.then
    i4 6, label %if.then11
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol, align 1
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nexthdr, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then, %entry.if.end13_crit_edge
  %l4proto.0 = phi i8 [ %15, %if.then ], [ %17, %if.then11 ], [ 0, %entry.if.end13_crit_edge ]
  %sw_tail = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 6
  %18 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sw_tail, align 8
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 8
  %arrayidx = getelementptr %struct.aq_ring_buff_s, ptr %21, i32 %19
  %22 = getelementptr %struct.aq_ring_buff_s, ptr %21, i32 %19, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 0, ptr %22, align 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i.not = icmp eq i16 %27, 0
  br i1 %tobool.i.not, label %if.end13.if.end94_crit_edge, label %if.then16, !prof !75

if.end13.if.end94_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94

if.then16:                                        ; preds = %if.end13
  %conv18 = zext i16 %27 to i32
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv18, ptr %arrayidx, align 1
  %29 = zext i8 %l4proto.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %l4proto.0, label %land.end [
    i8 6, label %if.then22
    i8 17, label %if.then30
  ]

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load23 = load i32, ptr %22, align 1
  %bf.set = or i32 %bf.load23, 512
  store i32 %bf.set, ptr %22, align 1
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %34 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %36 = lshr i16 %bf.load.i.i, 10
  %37 = trunc i16 %36 to i8
  %conv25 = and i8 %37, 60
  %len_l4 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 3
  %38 = ptrtoint ptr %len_l4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv25, ptr %len_l4, align 1
  br label %if.end83

if.then30:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load31 = load i32, ptr %22, align 1
  %bf.set33 = or i32 %bf.load31, 256
  store i32 %bf.set33, ptr %22, align 1
  %len_l434 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 3
  %40 = ptrtoint ptr %len_l434 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %len_l434, align 1
  %conv38 = add i16 %27, 8
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %43 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i396 = zext i16 %44 to i32
  %add.ptr.i.i397 = getelementptr i8, ptr %42, i32 %conv.i.i396
  %len = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i397, i32 0, i32 2
  %45 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv38, ptr %len, align 2
  br label %if.end83

land.end:                                         ; preds = %if.then16
  %.b384 = load i1, ptr @aq_nic_map_skb.__already_done, align 1
  br i1 %.b384, label %land.end.cleanup267_crit_edge, label %if.then52, !prof !75

land.end.cleanup267_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

if.then52:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @aq_nic_map_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 608, i32 noundef 9, ptr noundef nonnull @.str.7) #15
  br label %cleanup267

if.end83:                                         ; preds = %if.then30, %if.then22
  %len84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len84, align 4
  %len_pkt = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 5
  %48 = ptrtoint ptr %len_pkt to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %len_pkt, align 1
  %len_l2 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 1
  %49 = ptrtoint ptr %len_l2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 14, ptr %len_l2, align 1
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %50 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i, align 2
  %conv.i = trunc i16 %51 to i8
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv1.i = trunc i16 %53 to i8
  %sub.i = sub i8 %conv.i, %conv1.i
  %len_l3 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 2
  %54 = ptrtoint ptr %len_l3 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub.i, ptr %len_l3, align 1
  %eop_index = getelementptr inbounds %struct.anon.168, ptr %22, i32 0, i32 1
  %55 = ptrtoint ptr %eop_index to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 -1, ptr %eop_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.lshr)
  %cmp88 = icmp eq i8 %bf.lshr, 6
  %is_ipv6 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 4
  %56 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load91 = load i8, ptr %is_ipv6, align 1
  %bf.shl = select i1 %cmp88, i8 -128, i8 0
  %bf.clear92 = and i8 %bf.load91, 127
  %bf.set93 = or i8 %bf.clear92, %bf.shl
  store i8 %bf.set93, ptr %is_ipv6, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.end83, %if.end13.if.end94_crit_edge
  %is_vlan_tx_insert = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 17
  %57 = ptrtoint ptr %is_vlan_tx_insert to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_vlan_tx_insert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool96.not = icmp eq i8 %58, 0
  br i1 %tobool96.not, label %if.end94.if.end107_crit_edge, label %land.lhs.true

if.end94.if.end107_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end94
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %59 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %bf.load97 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load97)
  %tobool100.not = icmp sgt i32 %bf.load97, -1
  br i1 %tobool100.not, label %land.lhs.true.if.end107_crit_edge, label %if.then101

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end107

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %60 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vlan_tci, align 2
  %vlan_tx_tag = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 6
  %62 = ptrtoint ptr %vlan_tx_tag to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %vlan_tx_tag, align 1
  %len102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len102, align 4
  %len_pkt103 = getelementptr inbounds %struct.anon.166, ptr %arrayidx, i32 0, i32 5
  %65 = ptrtoint ptr %len_pkt103 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %len_pkt103, align 1
  %66 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load104 = load i32, ptr %22, align 1
  %bf.set106 = or i32 %bf.load104, 16
  store i32 %bf.set106, ptr %22, align 1
  br label %if.then109

if.end107:                                        ; preds = %land.lhs.true.if.end107_crit_edge, %if.end94.if.end107_crit_edge
  br i1 %tobool.i.not, label %if.end107.if.end113_crit_edge, label %if.end107.if.then109_crit_edge

if.end107.if.then109_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then109

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then109:                                       ; preds = %if.end107.if.then109_crit_edge, %if.then101
  %inc.i = add i32 %19, 1
  %size.i = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %68)
  %cmp.not.i = icmp ult i32 %inc.i, %68
  %spec.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %69 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring, align 8
  %arrayidx112 = getelementptr %struct.aq_ring_buff_s, ptr %70, i32 %spec.select.i
  %71 = getelementptr %struct.aq_ring_buff_s, ptr %70, i32 %spec.select.i, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 0, ptr %71, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end107.if.end113_crit_edge
  %dx_buff.0 = phi ptr [ %arrayidx112, %if.then109 ], [ %arrayidx, %if.end107.if.end113_crit_edge ]
  %ret.0 = phi i32 [ 2, %if.then109 ], [ 1, %if.end107.if.end113_crit_edge ]
  %dx.0 = phi i32 [ %spec.select.i, %if.then109 ], [ %19, %if.end107.if.end113_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %75 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data_len.i, align 8
  %sub.i398 = sub i32 %74, %76
  %77 = getelementptr inbounds %struct.aq_ring_buff_s, ptr %dx_buff.0, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %bf.load115 = load i32, ptr %77, align 1
  %bf.shl117 = shl i32 %sub.i398, 16
  %bf.clear118 = and i32 %bf.load115, 65535
  %bf.set119 = or i32 %bf.clear118, %bf.shl117
  store i32 %bf.set119, ptr %77, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %80) #15
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end113
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !75

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %7) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %81 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %84, %if.end.i.i ], [ %82, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %85 = ptrtoint ptr %dx_buff.0 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 -1, ptr %dx_buff.0, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #15
  br label %cleanup267

dma_map_single_attrs.exit:                        ; preds = %if.end113
  %bf.lshr121 = and i32 %sub.i398, 65535
  tail call void @debug_dma_map_single(ptr noundef %7, ptr noundef %80, i32 noundef %bf.lshr121) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %80 to i32
  %sub.i399 = add i32 %87, 1073741824
  %shr.i = lshr i32 %sub.i399, 12
  %add.ptr.i = getelementptr %struct.page, ptr %86, i32 %shr.i
  %and.i = and i32 %87, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %bf.lshr121, i32 noundef 1, i32 noundef 0) #15
  %88 = ptrtoint ptr %dx_buff.0 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %call41.i, ptr %dx_buff.0, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup267_crit_edge, label %if.end132

dma_map_single_attrs.exit.cleanup267_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

if.end132:                                        ; preds = %dma_map_single_attrs.exit
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i, align 4
  %len_pkt134 = getelementptr inbounds %struct.anon.166, ptr %dx_buff.0, i32 0, i32 5
  %91 = ptrtoint ptr %len_pkt134 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %len_pkt134, align 1
  %92 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %bf.load135 = load i32, ptr %77, align 1
  %bf.set140 = or i32 %bf.load135, 2176
  store i32 %bf.set140, ptr %77, align 1
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %93 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load142 = load i16, ptr %ip_summed, align 8
  %94 = and i16 %bf.load142, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %94)
  %cmp147 = icmp eq i16 %94, 1536
  br i1 %cmp147, label %if.then149, label %if.end132.if.end175_crit_edge

if.end132.if.end175_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end175

if.then149:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #17
  %protocol150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %95 = ptrtoint ptr %protocol150 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %protocol150, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %96)
  %cmp152 = icmp eq i16 %96, 2048
  %bf.shl156 = select i1 %cmp152, i32 32768, i32 0
  %bf.clear157 = and i32 %bf.set140, -57345
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %l4proto.0)
  %cmp160 = icmp eq i8 %l4proto.0, 6
  %bf.shl164 = select i1 %cmp160, i32 8192, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4proto.0)
  %cmp168 = icmp eq i8 %l4proto.0, 17
  %bf.shl172 = select i1 %cmp168, i32 16384, i32 0
  %bf.set158 = or i32 %bf.shl172, %bf.shl164
  %bf.set166 = or i32 %bf.set158, %bf.clear157
  %bf.set174 = or i32 %bf.set166, %bf.shl156
  %97 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %bf.set174, ptr %77, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.then149, %if.end132.if.end175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool176.not429 = icmp eq i8 %3, 0
  br i1 %tobool176.not429, label %if.end175.for.end_crit_edge, label %for.body.lr.ph

if.end175.for.end_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end175
  %size.i404 = getelementptr inbounds %struct.aq_ring_s, ptr %ring, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dec435.in = phi i32 [ %conv, %for.body.lr.ph ], [ %dec435, %for.inc.for.body_crit_edge ]
  %dx.1434 = phi i32 [ %dx.0, %for.body.lr.ph ], [ %dx.2.lcssa, %for.inc.for.body_crit_edge ]
  %ret.1433 = phi i32 [ %ret.0, %for.body.lr.ph ], [ %ret.2.lcssa, %for.inc.for.body_crit_edge ]
  %frag_count.0431 = phi i32 [ 0, %for.body.lr.ph ], [ %inc215, %for.inc.for.body_crit_edge ]
  %dx_buff.1430 = phi ptr [ %dx_buff.0, %for.body.lr.ph ], [ %dx_buff.2.lcssa, %for.inc.for.body_crit_edge ]
  %dec435 = add nsw i32 %dec435.in, -1
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %arrayidx178 = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %frag_count.0431
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %frag_count.0431, i32 1
  %100 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool180.not421 = icmp eq i32 %101, 0
  br i1 %tobool180.not421, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %99, i32 0, i32 12, i32 %frag_count.0431, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end196.while.body_crit_edge, %while.body.lr.ph
  %buff_offset.0425 = phi i32 [ 0, %while.body.lr.ph ], [ %add209, %if.end196.while.body_crit_edge ]
  %frag_len.0424 = phi i32 [ %101, %while.body.lr.ph ], [ %sub, %if.end196.while.body_crit_edge ]
  %dx.2423 = phi i32 [ %dx.1434, %while.body.lr.ph ], [ %spec.select.i406, %if.end196.while.body_crit_edge ]
  %ret.2422 = phi i32 [ %ret.1433, %while.body.lr.ph ], [ %inc210, %if.end196.while.body_crit_edge ]
  %102 = tail call i32 @llvm.umin.i32(i32 %frag_len.0424, i32 16384)
  %103 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx178, align 4
  %105 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bv_offset.i.i, align 4
  %add.i = add i32 %106, %buff_offset.0425
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %7, ptr noundef %104, i32 noundef %add.i, i32 noundef %102, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i401.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i401.not, label %mapping_error, label %if.end196, !prof !76

if.end196:                                        ; preds = %while.body
  %inc.i403 = add i32 %dx.2423, 1
  %107 = ptrtoint ptr %size.i404 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size.i404, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i403, i32 %108)
  %cmp.not.i405 = icmp ult i32 %inc.i403, %108
  %spec.select.i406 = select i1 %cmp.not.i405, i32 %inc.i403, i32 0
  %109 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ring, align 8
  %arrayidx199 = getelementptr %struct.aq_ring_buff_s, ptr %110, i32 %spec.select.i406
  %111 = getelementptr %struct.aq_ring_buff_s, ptr %110, i32 %spec.select.i406, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 4294901760, ptr %111, align 1
  %bf.shl202 = shl nuw nsw i32 %102, 16
  %113 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %call2.i, ptr %arrayidx199, align 1
  %bf.set207 = or i32 %bf.shl202, 128
  store i32 %bf.set207, ptr %111, align 1
  %sub = sub i32 %frag_len.0424, %102
  %add209 = add i32 %buff_offset.0425, %102
  %inc210 = add i32 %ret.2422, 1
  %tobool180.not = icmp eq i32 %sub, 0
  br i1 %tobool180.not, label %if.end196.for.inc_crit_edge, label %if.end196.while.body_crit_edge

if.end196.while.body_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end196.for.inc_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.end196.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dx_buff.2.lcssa = phi ptr [ %dx_buff.1430, %for.body.for.inc_crit_edge ], [ %arrayidx199, %if.end196.for.inc_crit_edge ]
  %ret.2.lcssa = phi i32 [ %ret.1433, %for.body.for.inc_crit_edge ], [ %inc210, %if.end196.for.inc_crit_edge ]
  %dx.2.lcssa = phi i32 [ %dx.1434, %for.body.for.inc_crit_edge ], [ %spec.select.i406, %if.end196.for.inc_crit_edge ]
  %inc215 = add nuw nsw i32 %frag_count.0431, 1
  %tobool176.not = icmp eq i32 %dec435, 0
  br i1 %tobool176.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end175.for.end_crit_edge
  %dx_buff.1.lcssa = phi ptr [ %dx_buff.0, %if.end175.for.end_crit_edge ], [ %dx_buff.2.lcssa, %for.inc.for.end_crit_edge ]
  %ret.1.lcssa = phi i32 [ %ret.0, %if.end175.for.end_crit_edge ], [ %ret.2.lcssa, %for.inc.for.end_crit_edge ]
  %dx.1.lcssa = phi i32 [ %dx.0, %if.end175.for.end_crit_edge ], [ %dx.2.lcssa, %for.inc.for.end_crit_edge ]
  %conv216 = trunc i32 %dx.1.lcssa to i16
  %eop_index217 = getelementptr inbounds %struct.anon.168, ptr %77, i32 0, i32 1
  %114 = ptrtoint ptr %eop_index217 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %conv216, ptr %eop_index217, align 1
  %115 = getelementptr inbounds %struct.aq_ring_buff_s, ptr %dx_buff.1.lcssa, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %bf.load218 = load i32, ptr %115, align 1
  %bf.set220 = or i32 %bf.load218, 1024
  store i32 %bf.set220, ptr %115, align 1
  %skb221 = getelementptr inbounds %struct.anon.165, ptr %dx_buff.1.lcssa, i32 0, i32 1
  %117 = ptrtoint ptr %skb221 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store ptr %skb, ptr %skb221, align 1
  br label %cleanup267

mapping_error:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2422)
  %cmp224.not439 = icmp eq i32 %ret.2422, 0
  br i1 %cmp224.not439, label %mapping_error.cleanup267_crit_edge, label %for.body226.lr.ph

mapping_error.cleanup267_crit_edge:               ; preds = %mapping_error
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

for.body226.lr.ph:                                ; preds = %mapping_error
  %118 = ptrtoint ptr %sw_tail to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sw_tail, align 8
  br label %for.body226

for.body226:                                      ; preds = %for.inc263.for.body226_crit_edge, %for.body226.lr.ph
  %dx.3441 = phi i32 [ %119, %for.body226.lr.ph ], [ %spec.select.i410, %for.inc263.for.body226_crit_edge ]
  %ret.3440 = phi i32 [ %ret.2422, %for.body226.lr.ph ], [ %dec264, %for.inc263.for.body226_crit_edge ]
  %120 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring, align 8
  %122 = getelementptr %struct.aq_ring_buff_s, ptr %121, i32 %dx.3441, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %bf.load229 = load i32, ptr %122, align 1
  %124 = and i32 %bf.load229, 784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %land.lhs.true242, label %for.body226.for.inc263_crit_edge

for.body226.for.inc263_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc263

land.lhs.true242:                                 ; preds = %for.body226
  %arrayidx228 = getelementptr %struct.aq_ring_buff_s, ptr %121, i32 %dx.3441
  %126 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx228, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool243.not = icmp eq i32 %127, 0
  br i1 %tobool243.not, label %land.lhs.true242.for.inc263_crit_edge, label %if.then244

land.lhs.true242.for.inc263_crit_edge:            ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc263

if.then244:                                       ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #17
  %bf.lshr260 = lshr i32 %bf.load229, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %7, i32 noundef %127, i32 noundef %bf.lshr260, i32 noundef 1, i32 noundef 0) #15
  br label %for.inc263

for.inc263:                                       ; preds = %if.then244, %land.lhs.true242.for.inc263_crit_edge, %for.body226.for.inc263_crit_edge
  %dec264 = add i32 %ret.3440, -1
  %inc.i407 = add i32 %dx.3441, 1
  %128 = ptrtoint ptr %size.i404 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size.i404, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i407, i32 %129)
  %cmp.not.i409 = icmp ult i32 %inc.i407, %129
  %spec.select.i410 = select i1 %cmp.not.i409, i32 %inc.i407, i32 0
  %cmp224.not = icmp eq i32 %dec264, 0
  br i1 %cmp224.not, label %for.inc263.cleanup267_crit_edge, label %for.inc263.for.body226_crit_edge

for.inc263.for.body226_crit_edge:                 ; preds = %for.inc263
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body226

for.inc263.cleanup267_crit_edge:                  ; preds = %for.inc263
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup267

cleanup267:                                       ; preds = %for.inc263.cleanup267_crit_edge, %mapping_error.cleanup267_crit_edge, %for.end, %dma_map_single_attrs.exit.cleanup267_crit_edge, %dma_map_single_attrs.exit.thread, %if.then52, %land.end.cleanup267_crit_edge
  %retval.0 = phi i32 [ %ret.1.lcssa, %for.end ], [ 0, %if.then52 ], [ 0, %land.end.cleanup267_crit_edge ], [ 0, %dma_map_single_attrs.exit.cleanup267_crit_edge ], [ 0, %dma_map_single_attrs.exit.thread ], [ 0, %mapping_error.cleanup267_crit_edge ], [ 0, %for.inc263.cleanup267_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_xmit(ptr nocapture noundef readonly %self, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping, align 8
  %conv = zext i16 %1 to i32
  %vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vecs, align 8
  %conv.frozen = freeze i32 %conv
  %.frozen = freeze i32 %3
  %div = udiv i32 %conv.frozen, %.frozen
  %4 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %conv.frozen, %4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr_frags, align 2
  %tc_mode = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 29
  %9 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  %cond = select i1 %cmp, i32 8, i32 4
  %mul = mul nuw nsw i32 %cond, %div
  %add7 = add nuw nsw i32 %mul, %rem.decomposed
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 3, i32 %add7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %8)
  %cmp8 = icmp ugt i8 %8, 31
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %err_exit

if.end:                                           ; preds = %entry
  tail call void @aq_ring_update_queue_state(ptr noundef %12) #15
  %priv_flags = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 30
  %13 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priv_flags, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.end.err_exit_crit_edge

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end11:                                         ; preds = %if.end
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  %idx = getelementptr inbounds %struct.aq_ring_s, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx, align 4
  %19 = ptrtoint ptr %tc_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp13 = icmp eq i32 %20, 1
  %21 = select i1 %cmp13, i32 3, i32 2
  %div1658 = lshr i32 %18, %21
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %22 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aq_vecs, align 8
  %mul17 = mul i32 %div1658, %23
  %24 = select i1 %cmp13, i32 7, i32 3
  %rem24 = and i32 %24, %18
  %add25 = add i32 %mul17, %rem24
  %conv.i = and i32 %add25, 65535
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %26, i32 %conv.i, i32 13
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end29, label %if.end11.err_exit_crit_edge

if.end11.err_exit_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end29:                                         ; preds = %if.end11
  %call30 = tail call i32 @aq_nic_map_skb(ptr noundef %self, ptr noundef %skb, ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.err_exit_crit_edge, label %if.then34, !prof !76

if.end29.err_exit_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %29 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_hw_ops, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %33 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw, align 8
  %call35 = tail call i32 %32(ptr noundef %34, ptr noundef %12, i32 noundef %call30) #15
  br label %err_exit

err_exit:                                         ; preds = %if.then34, %if.end29.err_exit_crit_edge, %if.end11.err_exit_crit_edge, %if.end.err_exit_crit_edge, %if.then
  %err.0 = phi i32 [ 0, %if.then ], [ %call35, %if.then34 ], [ 16, %if.end.err_exit_crit_edge ], [ 16, %if.end11.err_exit_crit_edge ], [ 16, %if.end29.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ring_update_queue_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_packet_filter(ptr nocapture noundef %self, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_packet_filter_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %hw_packet_filter_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_packet_filter_set, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %packet_filter = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 7
  %6 = ptrtoint ptr %packet_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %flags, ptr %packet_filter, align 4
  br label %err_exit

err_exit:                                         ; preds = %if.end, %entry.err_exit_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_multicast_list(ptr noundef %self, ptr noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %mc_list = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 17
  %4 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mc_list, align 4
  %uc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65
  %count1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 65, i32 1
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp = icmp ugt i32 %6, 32
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0111 = load ptr, ptr %uc, align 4
  %cmp6.not112 = icmp eq ptr %ha.0111, %uc
  br i1 %cmp6.not112, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %3, 256
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.0114 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0111, %for.cond.preheader.for.body_crit_edge ]
  %i.0113 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %i.0113, 1
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 17, i32 1, i32 %i.0113
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0114, i32 0, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0114, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %add.ptr1.i, align 2
  %14 = ptrtoint ptr %ha.0114 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0 = load ptr, ptr %ha.0114, align 4
  %cmp6.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp6.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  %i.1 = phi i32 [ 0, %if.then ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %inc, %for.body.if.end_crit_edge ]
  %packet_filter.0 = phi i32 [ %or, %if.then ], [ %3, %for.cond.preheader.if.end_crit_edge ], [ %3, %for.body.if.end_crit_edge ]
  %15 = trunc i32 %packet_filter.0 to i16
  %16 = lshr i16 %15, 12
  %17 = and i16 %16, 1
  %is_mc_list_enabled = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 19
  %18 = ptrtoint ptr %is_mc_list_enabled to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %is_mc_list_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool17.not = icmp eq i16 %17, 0
  br i1 %tobool17.not, label %if.end.if.end55_crit_edge, label %if.then18

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then18:                                        ; preds = %if.end
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count19 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %19 = ptrtoint ptr %count19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count19, align 8
  %add = add i32 %20, %i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp20 = icmp ugt i32 %add, 32
  br i1 %cmp20, label %if.then22, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %if.then18
  %21 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.1115 = load ptr, ptr %mc, align 4
  %cmp35.not116 = icmp eq ptr %ha.1115, %mc
  br i1 %cmp35.not116, label %for.cond31.preheader.if.end55_crit_edge, label %for.cond31.preheader.for.body39_crit_edge

for.cond31.preheader.for.body39_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body39

for.cond31.preheader.if.end55_crit_edge:          ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %or23 = or i32 %packet_filter.0, 512
  br label %if.end55

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.cond31.preheader.for.body39_crit_edge
  %ha.1118 = phi ptr [ %ha.1, %for.body39.for.body39_crit_edge ], [ %ha.1115, %for.cond31.preheader.for.body39_crit_edge ]
  %i.2117 = phi i32 [ %inc42, %for.body39.for.body39_crit_edge ], [ %i.1, %for.cond31.preheader.for.body39_crit_edge ]
  %inc42 = add i32 %i.2117, 1
  %arrayidx43 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 17, i32 1, i32 %i.2117
  %addr45 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1118, i32 0, i32 2
  %22 = ptrtoint ptr %addr45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr45, align 4
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx43, align 4
  %add.ptr.i109 = getelementptr %struct.netdev_hw_addr, ptr %ha.1118, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i109, align 2
  %add.ptr1.i110 = getelementptr i8, ptr %arrayidx43, i32 4
  %27 = ptrtoint ptr %add.ptr1.i110 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr1.i110, align 2
  %28 = ptrtoint ptr %ha.1118 to i32
  call void @__asan_load4_noabort(i32 %28)
  %ha.1 = load ptr, ptr %ha.1118, align 4
  %cmp35.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp35.not, label %for.body39.if.end55_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body39

for.body39.if.end55_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.end55:                                         ; preds = %for.body39.if.end55_crit_edge, %if.then22, %for.cond31.preheader.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %i.3 = phi i32 [ %i.1, %if.then22 ], [ %i.1, %if.end.if.end55_crit_edge ], [ %i.1, %for.cond31.preheader.if.end55_crit_edge ], [ %inc42, %for.body39.if.end55_crit_edge ]
  %packet_filter.1 = phi i32 [ %or23, %if.then22 ], [ %packet_filter.0, %if.end.if.end55_crit_edge ], [ %packet_filter.0, %for.cond31.preheader.if.end55_crit_edge ], [ %packet_filter.0, %for.body39.if.end55_crit_edge ]
  %29 = add i32 %i.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %30 = icmp ult i32 %29, 32
  br i1 %30, label %if.then60, label %if.end55.if.end72_crit_edge

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then60:                                        ; preds = %if.end55
  %31 = ptrtoint ptr %mc_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.3, ptr %mc_list, align 4
  %hw_multicast_list_set = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 27
  %32 = ptrtoint ptr %hw_multicast_list_set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw_multicast_list_set, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %34 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aq_hw, align 8
  %ar64 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 17, i32 1
  %call = tail call i32 %33(ptr noundef %35, ptr noundef %ar64, i32 noundef %i.3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp68 = icmp slt i32 %call, 0
  br i1 %cmp68, label %if.then60.cleanup_crit_edge, label %if.then60.if.end72_crit_edge

if.then60.if.end72_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end72:                                         ; preds = %if.then60.if.end72_crit_edge, %if.end55.if.end72_crit_edge
  %36 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aq_hw_ops, align 8
  %hw_packet_filter_set.i = getelementptr inbounds %struct.aq_hw_ops, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %hw_packet_filter_set.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_packet_filter_set.i, align 4
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %40 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aq_hw.i, align 8
  %call.i = tail call i32 %39(ptr noundef %41, i32 noundef %packet_filter.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end72.cleanup_crit_edge, label %if.end.i

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %packet_filter.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 7
  %42 = ptrtoint ptr %packet_filter.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %packet_filter.1, ptr %packet_filter.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end72.cleanup_crit_edge, %if.then60.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then60.cleanup_crit_edge ], [ %call.i, %if.end72.cleanup_crit_edge ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @aq_nic_set_mtu(ptr nocapture noundef writeonly %self, i32 noundef %new_mtu) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_mac(ptr nocapture noundef readonly %self, ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_set_mac_address = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hw_set_mac_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_set_mac_address, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 %3(ptr noundef %5, ptr noundef %7) #15
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_nic_get_link_speed(ptr nocapture noundef readonly %self) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %link_status = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 16
  %0 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_status, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_get_regs(ptr nocapture noundef readonly %self, ptr nocapture noundef writeonly %regs, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_regs = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %hw_get_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_get_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !76

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %version, align 4
  %5 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_regs5 = getelementptr inbounds %struct.aq_hw_ops, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %hw_get_regs5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_get_regs5, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %9 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %11 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_nic_cfg, align 8
  %call = tail call i32 %8(ptr noundef %10, ptr noundef %12, ptr noundef %p) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_nic_get_regs_count(ptr nocapture noundef readonly %self) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_regs = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %hw_get_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_get_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !76

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %4 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic_cfg, align 8
  %mac_regs_count = getelementptr inbounds %struct.aq_hw_caps_s, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mac_regs_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_regs_count, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aq_nic_get_stats(ptr noundef %self, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_stats, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %4 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_fw_ops, align 4
  %update_stats2 = getelementptr inbounds %struct.aq_fw_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %update_stats2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update_stats2, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %8 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %7(ptr noundef %9) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %10 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_hw_stats = getelementptr inbounds %struct.aq_hw_ops, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %hw_get_hw_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_get_hw_stats, align 4
  %aq_hw4 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %14 = ptrtoint ptr %aq_hw4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aq_hw4, align 8
  %call5 = tail call ptr %13(ptr noundef %15) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.err_exit_crit_edge, label %if.end8

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end8:                                          ; preds = %if.end
  %uprc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 2
  %16 = ptrtoint ptr %uprc to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %uprc, align 8
  %mprc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 3
  %18 = ptrtoint ptr %mprc to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mprc, align 8
  %add = add i64 %19, %17
  %bprc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 4
  %20 = ptrtoint ptr %bprc to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bprc, align 8
  %add9 = add i64 %add, %21
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add9, ptr %data, align 8
  %23 = load i64, ptr %uprc, align 8
  %arrayidx11 = getelementptr i64, ptr %data, i32 1
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx11, align 8
  %25 = load i64, ptr %mprc, align 8
  %arrayidx14 = getelementptr i64, ptr %data, i32 2
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx14, align 8
  %27 = load i64, ptr %bprc, align 8
  %arrayidx17 = getelementptr i64, ptr %data, i32 3
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx17, align 8
  %erpt = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 5
  %29 = ptrtoint ptr %erpt to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %erpt, align 8
  %arrayidx19 = getelementptr i64, ptr %data, i32 4
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx19, align 8
  %uptc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 6
  %32 = ptrtoint ptr %uptc to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %uptc, align 8
  %mptc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 7
  %34 = ptrtoint ptr %mptc to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mptc, align 8
  %add20 = add i64 %35, %33
  %bptc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 8
  %36 = ptrtoint ptr %bptc to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bptc, align 8
  %add21 = add i64 %add20, %37
  %arrayidx23 = getelementptr i64, ptr %data, i32 5
  %38 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add21, ptr %arrayidx23, align 8
  %39 = load i64, ptr %uptc, align 8
  %arrayidx26 = getelementptr i64, ptr %data, i32 6
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx26, align 8
  %41 = load i64, ptr %mptc, align 8
  %arrayidx29 = getelementptr i64, ptr %data, i32 7
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx29, align 8
  %43 = load i64, ptr %bptc, align 8
  %arrayidx32 = getelementptr i64, ptr %data, i32 8
  %44 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx32, align 8
  %ubrc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 14
  %45 = ptrtoint ptr %ubrc to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ubrc, align 8
  %arrayidx34 = getelementptr i64, ptr %data, i32 9
  %47 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx34, align 8
  %ubtc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 15
  %48 = ptrtoint ptr %ubtc to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ubtc, align 8
  %arrayidx36 = getelementptr i64, ptr %data, i32 10
  %50 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx36, align 8
  %mbrc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 12
  %51 = ptrtoint ptr %mbrc to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %mbrc, align 8
  %arrayidx38 = getelementptr i64, ptr %data, i32 11
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx38, align 8
  %mbtc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 10
  %54 = ptrtoint ptr %mbtc to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %mbtc, align 8
  %arrayidx40 = getelementptr i64, ptr %data, i32 12
  %56 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx40, align 8
  %bbrc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 13
  %57 = ptrtoint ptr %bbrc to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bbrc, align 8
  %arrayidx42 = getelementptr i64, ptr %data, i32 13
  %59 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx42, align 8
  %bbtc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 11
  %60 = ptrtoint ptr %bbtc to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bbtc, align 8
  %arrayidx44 = getelementptr i64, ptr %data, i32 14
  %62 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx44, align 8
  %63 = ptrtoint ptr %call5 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %call5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool45.not = icmp eq i64 %64, 0
  br i1 %tobool45.not, label %if.else, label %if.end8.if.end57_crit_edge

if.end8.if.end57_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end57

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %ubrc to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ubrc, align 8
  %67 = ptrtoint ptr %mbrc to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mbrc, align 8
  %add52 = add i64 %68, %66
  %69 = ptrtoint ptr %bbrc to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bbrc, align 8
  %add54 = add i64 %add52, %70
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.end8.if.end57_crit_edge
  %.sink = phi i64 [ %add54, %if.else ], [ %64, %if.end8.if.end57_crit_edge ]
  %71 = getelementptr i64, ptr %data, i32 15
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %.sink, ptr %71, align 8
  %btc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 1
  %73 = ptrtoint ptr %btc to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %btc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %tobool58.not = icmp eq i64 %74, 0
  br i1 %tobool58.not, label %if.else63, label %if.end57.if.end71_crit_edge

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.else63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %ubtc to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ubtc, align 8
  %77 = ptrtoint ptr %mbtc to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %mbtc, align 8
  %add66 = add i64 %78, %76
  %79 = ptrtoint ptr %bbtc to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %bbtc, align 8
  %add68 = add i64 %add66, %80
  br label %if.end71

if.end71:                                         ; preds = %if.else63, %if.end57.if.end71_crit_edge
  %.sink222 = phi i64 [ %add68, %if.else63 ], [ %74, %if.end57.if.end71_crit_edge ]
  %81 = getelementptr i64, ptr %data, i32 16
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %.sink222, ptr %81, align 8
  %dma_pkt_rc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 17
  %83 = ptrtoint ptr %dma_pkt_rc to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %dma_pkt_rc, align 8
  %arrayidx73 = getelementptr i64, ptr %data, i32 17
  %85 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx73, align 8
  %dma_pkt_tc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 18
  %86 = ptrtoint ptr %dma_pkt_tc to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dma_pkt_tc, align 8
  %arrayidx75 = getelementptr i64, ptr %data, i32 18
  %88 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx75, align 8
  %dma_oct_rc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 19
  %89 = ptrtoint ptr %dma_oct_rc to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %dma_oct_rc, align 8
  %arrayidx77 = getelementptr i64, ptr %data, i32 19
  %91 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %arrayidx77, align 8
  %dma_oct_tc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 20
  %92 = ptrtoint ptr %dma_oct_tc to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %dma_oct_tc, align 8
  %arrayidx79 = getelementptr i64, ptr %data, i32 20
  %94 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %arrayidx79, align 8
  %dpc = getelementptr inbounds %struct.aq_stats_s, ptr %call5, i32 0, i32 16
  %95 = ptrtoint ptr %dpc to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %dpc, align 8
  %arrayidx81 = getelementptr i64, ptr %data, i32 21
  %97 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %arrayidx81, align 8
  %add.ptr = getelementptr i64, ptr %data, i32 22
  %tcs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 31
  %98 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp215.not = icmp eq i8 %99, 0
  br i1 %cmp215.not, label %if.end71.for.end98_crit_edge, label %for.body.lr.ph

if.end71.for.end98_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end98

for.body.lr.ph:                                   ; preds = %if.end71
  %aq_vec84 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 2
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc96.for.body_crit_edge, %for.body.lr.ph
  %tc.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc97, %for.inc96.for.body_crit_edge ]
  %count.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc96.for.body_crit_edge ]
  %data.addr.0216 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %data.addr.1.lcssa, %for.inc96.for.body_crit_edge ]
  %100 = ptrtoint ptr %aq_vec84 to i32
  call void @__asan_load4_noabort(i32 %100)
  %aq_vec.0205 = load ptr, ptr %aq_vec84, align 4
  %tobool87.not206 = icmp eq ptr %aq_vec.0205, null
  br i1 %tobool87.not206, label %for.body.for.inc96_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc96_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc96

land.rhs:                                         ; preds = %for.body90.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %aq_vec.0210 = phi ptr [ %aq_vec.0, %for.body90.land.rhs_crit_edge ], [ %aq_vec.0205, %for.body.land.rhs_crit_edge ]
  %i.2209 = phi i32 [ %inc93, %for.body90.land.rhs_crit_edge ], [ 0, %for.body.land.rhs_crit_edge ]
  %count.1208 = phi i32 [ %call92, %for.body90.land.rhs_crit_edge ], [ %count.0217, %for.body.land.rhs_crit_edge ]
  %data.addr.1207 = phi ptr [ %add.ptr91, %for.body90.land.rhs_crit_edge ], [ %data.addr.0216, %for.body.land.rhs_crit_edge ]
  %101 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %i.2209)
  %cmp88 = icmp ugt i32 %102, %i.2209
  br i1 %cmp88, label %for.body90, label %land.rhs.for.inc96_crit_edge

land.rhs.for.inc96_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc96

for.body90:                                       ; preds = %land.rhs
  %add.ptr91 = getelementptr i64, ptr %data.addr.1207, i32 %count.1208
  %call92 = tail call i32 @aq_vec_get_sw_stats(ptr noundef nonnull %aq_vec.0210, i32 noundef %tc.0218, ptr noundef %add.ptr91) #15
  %inc93 = add nuw i32 %i.2209, 1
  %arrayidx95 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %inc93
  %103 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %aq_vec.0 = load ptr, ptr %arrayidx95, align 4
  %tobool87.not = icmp eq ptr %aq_vec.0, null
  br i1 %tobool87.not, label %for.body90.for.inc96_crit_edge, label %for.body90.land.rhs_crit_edge

for.body90.land.rhs_crit_edge:                    ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

for.body90.for.inc96_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc96

for.inc96:                                        ; preds = %for.body90.for.inc96_crit_edge, %land.rhs.for.inc96_crit_edge, %for.body.for.inc96_crit_edge
  %data.addr.1.lcssa = phi ptr [ %data.addr.0216, %for.body.for.inc96_crit_edge ], [ %data.addr.1207, %land.rhs.for.inc96_crit_edge ], [ %add.ptr91, %for.body90.for.inc96_crit_edge ]
  %count.1.lcssa = phi i32 [ %count.0217, %for.body.for.inc96_crit_edge ], [ %count.1208, %land.rhs.for.inc96_crit_edge ], [ %call92, %for.body90.for.inc96_crit_edge ]
  %inc97 = add nuw nsw i32 %tc.0218, 1
  %104 = ptrtoint ptr %tcs to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tcs, align 4
  %conv = zext i8 %105 to i32
  %cmp = icmp ult i32 %inc97, %conv
  br i1 %cmp, label %for.inc96.for.body_crit_edge, label %for.inc96.for.end98_crit_edge

for.inc96.for.end98_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end98

for.inc96.for.body_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end98:                                        ; preds = %for.inc96.for.end98_crit_edge, %if.end71.for.end98_crit_edge
  %data.addr.0.lcssa = phi ptr [ %add.ptr, %if.end71.for.end98_crit_edge ], [ %data.addr.1.lcssa, %for.inc96.for.end98_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %if.end71.for.end98_crit_edge ], [ %count.1.lcssa, %for.inc96.for.end98_crit_edge ]
  %add.ptr99 = getelementptr i64, ptr %data.addr.0.lcssa, i32 %count.0.lcssa
  br label %err_exit

err_exit:                                         ; preds = %for.end98, %if.end.err_exit_crit_edge
  %data.addr.2 = phi ptr [ %add.ptr99, %for.end98 ], [ %data, %if.end.err_exit_crit_edge ]
  ret ptr %data.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_get_sw_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aq_nic_get_link_ksettings(ptr nocapture noundef readonly %self, ptr noundef %cmd) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %0 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_nic_cfg, align 8
  %media_type = getelementptr inbounds %struct.aq_hw_caps_s, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %spec.select = select i1 %cmp, i8 3, i8 0
  %4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %duplex, align 4
  %link_status = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 16
  %7 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %full_duplex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %full_duplex, align 4, !range !74
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %duplex, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %entry.if.end9_crit_edge
  %is_autoneg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 21
  %12 = ptrtoint ptr %is_autoneg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_autoneg, align 8, !range !74
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %autoneg, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %15 = call ptr @memset(ptr %link_modes, i32 0, i32 12)
  %16 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk = getelementptr inbounds %struct.aq_hw_caps_s, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %link_speed_msk, align 8
  %and = and i64 %19, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %if.end9.if.end21_crit_edge, label %if.then17

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_modes, align 4
  %or.i = or i32 %21, 4096
  store i32 %or.i, ptr %link_modes, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end9.if.end21_crit_edge
  %22 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk24 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %link_speed_msk24 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %link_speed_msk24, align 8
  %and25 = and i64 %25, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end21.if.end31_crit_edge, label %if.then27

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %or.i452 = or i32 %27, 65536
  store i32 %or.i452, ptr %add.ptr.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end21.if.end31_crit_edge
  %28 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk34 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %link_speed_msk34 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %link_speed_msk34, align 8
  %and35 = and i64 %31, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end31.if.end41_crit_edge, label %if.then37

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i453 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %add.ptr.i453 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i453, align 4
  %or.i454 = or i32 %33, 32768
  store i32 %or.i454, ptr %add.ptr.i453, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end31.if.end41_crit_edge
  %34 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk44 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %link_speed_msk44 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %link_speed_msk44, align 8
  %and45 = and i64 %37, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end41.if.end51_crit_edge, label %if.then47

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %link_modes, align 4
  %or.i455 = or i32 %39, 32
  store i32 %or.i455, ptr %link_modes, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end41.if.end51_crit_edge
  %40 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk54 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %link_speed_msk54 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %link_speed_msk54, align 8
  %and55 = and i64 %43, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end51.if.end61_crit_edge, label %if.then57

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %link_modes, align 4
  %or.i456 = or i32 %45, 16
  store i32 %or.i456, ptr %link_modes, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end51.if.end61_crit_edge
  %46 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk64 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %link_speed_msk64 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %link_speed_msk64, align 8
  %and65 = and i64 %49, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.end61.if.end71_crit_edge, label %if.then67

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %link_modes, align 4
  %or.i457 = or i32 %51, 8
  store i32 %or.i457, ptr %link_modes, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end61.if.end71_crit_edge
  %52 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk74 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %link_speed_msk74 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %link_speed_msk74, align 8
  %and75 = and i64 %55, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and75)
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %if.end71.if.end81_crit_edge, label %if.then77

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %link_modes, align 4
  %or.i458 = or i32 %57, 4
  store i32 %or.i458, ptr %link_modes, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end71.if.end81_crit_edge
  %58 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk84 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %link_speed_msk84 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %link_speed_msk84, align 8
  %and85 = and i64 %61, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85)
  %tobool86.not = icmp eq i64 %and85, 0
  br i1 %tobool86.not, label %if.end81.if.end91_crit_edge, label %if.then87

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %link_modes, align 4
  %or.i459 = or i32 %63, 2
  store i32 %or.i459, ptr %link_modes, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end81.if.end91_crit_edge
  %64 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk94 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %link_speed_msk94 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %link_speed_msk94, align 8
  %and95 = and i64 %67, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95)
  %tobool96.not = icmp eq i64 %and95, 0
  br i1 %tobool96.not, label %if.end91.if.end101_crit_edge, label %if.then97

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end101

if.then97:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_modes, align 4
  %or.i460 = or i32 %69, 1
  store i32 %or.i460, ptr %link_modes, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end91.if.end101_crit_edge
  %70 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %aq_nic_cfg, align 8
  %flow_control = getelementptr inbounds %struct.aq_hw_caps_s, ptr %71, i32 0, i32 22
  %72 = ptrtoint ptr %flow_control to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flow_control, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool104.not = icmp eq i8 %73, 0
  br i1 %tobool104.not, label %if.end101.if.end112_crit_edge, label %if.then105

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %link_modes, align 4
  %or.i462 = or i32 %75, 24576
  store i32 %or.i462, ptr %link_modes, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.end101.if.end112_crit_edge
  %76 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %link_modes, align 4
  %or.i463 = or i32 %77, 64
  store i32 %or.i463, ptr %link_modes, align 4
  %78 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %aq_nic_cfg, align 8
  %media_type118 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %media_type118 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %media_type118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp119 = icmp eq i32 %81, 2
  %storemerge.v = select i1 %cmp119, i32 1088, i32 192
  %storemerge = or i32 %77, %storemerge.v
  %82 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %83 = call ptr @memset(ptr %advertising, i32 0, i32 12)
  %84 = ptrtoint ptr %is_autoneg to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %is_autoneg, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool134.not = icmp eq i8 %85, 0
  br i1 %tobool134.not, label %if.end112.if.end139_crit_edge, label %if.then135

if.end112.if.end139_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

if.then135:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %86 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %advertising, align 4
  %or.i466 = or i32 %87, 64
  store i32 %or.i466, ptr %advertising, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.end112.if.end139_crit_edge
  %link_speed_msk141 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 14
  %88 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %link_speed_msk141, align 8
  %and142 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end139.if.end148_crit_edge, label %if.then144

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end148

if.then144:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %advertising, align 4
  %or.i467 = or i32 %91, 4096
  store i32 %or.i467, ptr %advertising, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end139.if.end148_crit_edge
  %92 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %link_speed_msk141, align 8
  %and151 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end148.if.end157_crit_edge, label %if.then153

if.end148.if.end157_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i468 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %94 = ptrtoint ptr %add.ptr.i468 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i468, align 4
  %or.i469 = or i32 %95, 65536
  store i32 %or.i469, ptr %add.ptr.i468, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.end148.if.end157_crit_edge
  %96 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %link_speed_msk141, align 8
  %and160 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end157.if.end166_crit_edge, label %if.then162

if.end157.if.end166_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end166

if.then162:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i470 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %add.ptr.i470 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i470, align 4
  %or.i471 = or i32 %99, 32768
  store i32 %or.i471, ptr %add.ptr.i470, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then162, %if.end157.if.end166_crit_edge
  %100 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %link_speed_msk141, align 8
  %and169 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end166.if.end175_crit_edge, label %if.then171

if.end166.if.end175_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end175

if.then171:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %advertising, align 4
  %or.i472 = or i32 %103, 32
  store i32 %or.i472, ptr %advertising, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then171, %if.end166.if.end175_crit_edge
  %104 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %link_speed_msk141, align 8
  %and178 = and i32 %105, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end175.if.end184_crit_edge, label %if.then180

if.end175.if.end184_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end184

if.then180:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #17
  %106 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %advertising, align 4
  %or.i473 = or i32 %107, 16
  store i32 %or.i473, ptr %advertising, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then180, %if.end175.if.end184_crit_edge
  %108 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %link_speed_msk141, align 8
  %and187 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end184.if.end193_crit_edge, label %if.then189

if.end184.if.end193_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end193

if.then189:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #17
  %110 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %advertising, align 4
  %or.i474 = or i32 %111, 8
  store i32 %or.i474, ptr %advertising, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then189, %if.end184.if.end193_crit_edge
  %112 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %link_speed_msk141, align 8
  %and196 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end193.if.end202_crit_edge, label %if.then198

if.end193.if.end202_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end202

if.then198:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %advertising, align 4
  %or.i475 = or i32 %115, 4
  store i32 %or.i475, ptr %advertising, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.end193.if.end202_crit_edge
  %116 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %link_speed_msk141, align 8
  %and205 = and i32 %117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end202.if.end211_crit_edge, label %if.then207

if.end202.if.end211_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end211

if.then207:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %advertising, align 4
  %or.i476 = or i32 %119, 2
  store i32 %or.i476, ptr %advertising, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %if.end202.if.end211_crit_edge
  %120 = ptrtoint ptr %link_speed_msk141 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %link_speed_msk141, align 8
  %and214 = and i32 %121, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.end211.if.end220_crit_edge, label %if.then216

if.end211.if.end220_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end220

if.then216:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %advertising, align 4
  %or.i477 = or i32 %123, 1
  store i32 %or.i477, ptr %advertising, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %if.end211.if.end220_crit_edge
  %cur = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 13, i32 1
  %124 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cur, align 4
  %and222 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %if.end220.if.end228_crit_edge, label %if.then224

if.end220.if.end228_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end228

if.then224:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %advertising, align 4
  %or.i478 = or i32 %127, 8192
  store i32 %or.i478, ptr %advertising, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then224, %if.end220.if.end228_crit_edge
  %128 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cur, align 4
  %and238 = lshr i32 %129, 1
  %and232450 = xor i32 %and238, %129
  %xor = and i32 %and232450, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool244.not = icmp eq i32 %xor, 0
  br i1 %tobool244.not, label %if.end228.if.end249_crit_edge, label %if.then245

if.end228.if.end249_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end249

if.then245:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %advertising, align 4
  %or.i479 = or i32 %131, 16384
  store i32 %or.i479, ptr %advertising, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.end228.if.end249_crit_edge
  %132 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %aq_nic_cfg, align 8
  %media_type252 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %media_type252 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %media_type252, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp253 = icmp eq i32 %135, 2
  %136 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %advertising, align 4
  %. = select i1 %cmp253, i32 1024, i32 128
  %or.i481 = or i32 %137, %.
  store i32 %or.i481, ptr %advertising, align 4
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2
  %138 = call ptr @memset(ptr %lp_advertising, i32 0, i32 12)
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %139 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %aq_hw, align 8
  %lp_link_speed_msk266 = getelementptr inbounds %struct.aq_hw_s, ptr %140, i32 0, i32 5, i32 2
  %141 = ptrtoint ptr %lp_link_speed_msk266 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %lp_link_speed_msk266, align 4
  %and267 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %if.end249.if.end273_crit_edge, label %if.then269

if.end249.if.end273_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end273

if.then269:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #17
  %143 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lp_advertising, align 4
  %or.i482 = or i32 %144, 4096
  store i32 %or.i482, ptr %lp_advertising, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then269, %if.end249.if.end273_crit_edge
  %and274 = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %if.end273.if.end280_crit_edge, label %if.then276

if.end273.if.end280_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end280

if.then276:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i483 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2, i32 1
  %145 = ptrtoint ptr %add.ptr.i483 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr.i483, align 4
  %or.i484 = or i32 %146, 65536
  store i32 %or.i484, ptr %add.ptr.i483, align 4
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.end273.if.end280_crit_edge
  %and281 = and i32 %142, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %if.end280.if.end287_crit_edge, label %if.then283

if.end280.if.end287_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287

if.then283:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i485 = getelementptr %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2, i32 1
  %147 = ptrtoint ptr %add.ptr.i485 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr.i485, align 4
  %or.i486 = or i32 %148, 32768
  store i32 %or.i486, ptr %add.ptr.i485, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %if.end280.if.end287_crit_edge
  %and288 = and i32 %142, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288)
  %tobool289.not = icmp eq i32 %and288, 0
  br i1 %tobool289.not, label %if.end287.if.end294_crit_edge, label %if.then290

if.end287.if.end294_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end294

if.then290:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  %149 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %lp_advertising, align 4
  %or.i487 = or i32 %150, 32
  store i32 %or.i487, ptr %lp_advertising, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then290, %if.end287.if.end294_crit_edge
  %and295 = and i32 %142, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end294.if.end301_crit_edge, label %if.then297

if.end294.if.end301_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end301

if.then297:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %lp_advertising, align 4
  %or.i488 = or i32 %152, 16
  store i32 %or.i488, ptr %lp_advertising, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.then297, %if.end294.if.end301_crit_edge
  %and302 = and i32 %142, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %if.end301.if.end308_crit_edge, label %if.then304

if.end301.if.end308_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end308

if.then304:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #17
  %153 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %lp_advertising, align 4
  %or.i489 = or i32 %154, 8
  store i32 %or.i489, ptr %lp_advertising, align 4
  br label %if.end308

if.end308:                                        ; preds = %if.then304, %if.end301.if.end308_crit_edge
  %and309 = and i32 %142, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %if.end308.if.end315_crit_edge, label %if.then311

if.end308.if.end315_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end315

if.then311:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %lp_advertising, align 4
  %or.i490 = or i32 %156, 4
  store i32 %or.i490, ptr %lp_advertising, align 4
  br label %if.end315

if.end315:                                        ; preds = %if.then311, %if.end308.if.end315_crit_edge
  %and316 = and i32 %142, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end315.if.end322_crit_edge, label %if.then318

if.end315.if.end322_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end322

if.then318:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lp_advertising, align 4
  %or.i491 = or i32 %158, 2
  store i32 %or.i491, ptr %lp_advertising, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.then318, %if.end315.if.end322_crit_edge
  %and323 = and i32 %142, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  br i1 %tobool324.not, label %if.end322.if.end329_crit_edge, label %if.then325

if.end322.if.end329_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end329

if.then325:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #17
  %159 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %lp_advertising, align 4
  %or.i492 = or i32 %160, 1
  store i32 %or.i492, ptr %lp_advertising, align 4
  br label %if.end329

if.end329:                                        ; preds = %if.then325, %if.end322.if.end329_crit_edge
  %161 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %aq_hw, align 8
  %lp_flow_control = getelementptr inbounds %struct.aq_hw_s, ptr %162, i32 0, i32 5, i32 3
  %163 = ptrtoint ptr %lp_flow_control to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %lp_flow_control, align 4
  %and332 = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %if.end329.if.end338_crit_edge, label %if.then334

if.end329.if.end338_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end338

if.then334:                                       ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #17
  %165 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %lp_advertising, align 4
  %or.i493 = or i32 %166, 8192
  store i32 %or.i493, ptr %lp_advertising, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then334, %if.end329.if.end338_crit_edge
  %167 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %aq_hw, align 8
  %lp_flow_control341 = getelementptr inbounds %struct.aq_hw_s, ptr %168, i32 0, i32 5, i32 3
  %169 = ptrtoint ptr %lp_flow_control341 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %lp_flow_control341, align 4
  %and351 = lshr i32 %170, 1
  %and342451 = xor i32 %and351, %170
  %xor357 = and i32 %and342451, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor357)
  %tobool358.not = icmp eq i32 %xor357, 0
  br i1 %tobool358.not, label %if.end338.if.end363_crit_edge, label %if.then359

if.end338.if.end363_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end363

if.then359:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #17
  %171 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %lp_advertising, align 4
  %or.i494 = or i32 %172, 16384
  store i32 %or.i494, ptr %lp_advertising, align 4
  br label %if.end363

if.end363:                                        ; preds = %if.then359, %if.end338.if.end363_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_set_link_ksettings(ptr noundef %self, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %speed3 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed3, align 4
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %3)
  %cmp4 = icmp ugt i32 %3, 1000
  %or.cond = select i1 %cmp.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp8 = icmp eq i8 %5, 1
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %aq_nic_cfg = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %6 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_nic_cfg, align 8
  %link_speed_msk = getelementptr inbounds %struct.aq_hw_caps_s, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %link_speed_msk to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %link_speed_msk, align 8
  %conv11 = trunc i64 %9 to i32
  br label %if.end32

if.else:                                          ; preds = %if.end
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %if.else.err_exit_crit_edge [
    i32 10, label %sw.bb
    i32 100, label %sw.bb14
    i32 1000, label %sw.bb17
    i32 2500, label %if.else.sw.epilog_crit_edge
    i32 5000, label %sw.bb21
    i32 10000, label %sw.bb22
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.else.err_exit_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %cond = select i1 %cmp, i32 32, i32 256
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %cond16 = select i1 %cmp, i32 16, i32 128
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %cond19 = select i1 %cmp, i32 8, i32 64
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb17, %sw.bb14, %sw.bb, %if.else.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 1, %sw.bb22 ], [ 2, %sw.bb21 ], [ %cond19, %sw.bb17 ], [ %cond16, %sw.bb14 ], [ %cond, %sw.bb ], [ 4, %if.else.sw.epilog_crit_edge ]
  %aq_nic_cfg23 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  %11 = ptrtoint ptr %aq_nic_cfg23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_nic_cfg23, align 8
  %link_speed_msk25 = getelementptr inbounds %struct.aq_hw_caps_s, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %link_speed_msk25 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %link_speed_msk25, align 8
  %conv26 = zext i32 %rate.0 to i64
  %and = and i64 %14, %conv26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool27.not = icmp eq i64 %and, 0
  br i1 %tobool27.not, label %sw.epilog.err_exit_crit_edge, label %sw.epilog.if.end32_crit_edge

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

sw.epilog.err_exit_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end32:                                         ; preds = %sw.epilog.if.end32_crit_edge, %if.then10
  %.sink = phi i8 [ 1, %if.then10 ], [ 0, %sw.epilog.if.end32_crit_edge ]
  %rate.1 = phi i32 [ %conv11, %if.then10 ], [ %rate.0, %sw.epilog.if.end32_crit_edge ]
  %is_autoneg31 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 21
  %15 = ptrtoint ptr %is_autoneg31 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %is_autoneg31, align 8
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %16 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_fw_ops, align 4
  %set_link_speed = getelementptr inbounds %struct.aq_fw_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %set_link_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_link_speed, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %20 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %19(ptr noundef %21, i32 noundef %rate.1) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  br i1 %cmp34, label %if.end32.err_exit_crit_edge, label %if.end37

if.end32.err_exit_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %link_speed_msk39 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 14
  %22 = ptrtoint ptr %link_speed_msk39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rate.1, ptr %link_speed_msk39, align 8
  br label %err_exit

err_exit:                                         ; preds = %if.end37, %if.end32.err_exit_crit_edge, %sw.epilog.err_exit_crit_edge, %if.else.err_exit_crit_edge, %entry.err_exit_crit_edge
  %err.0 = phi i32 [ %call, %if.end32.err_exit_crit_edge ], [ %call, %if.end37 ], [ -22, %entry.err_exit_crit_edge ], [ -1, %if.else.err_exit_crit_edge ], [ -1, %sw.epilog.err_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_get_fw_version(ptr nocapture noundef readonly %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %0 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_hw_ops, align 8
  %hw_get_fw_version = getelementptr inbounds %struct.aq_hw_ops, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %hw_get_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_get_fw_version, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %3(ptr noundef %5) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_stop(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call fastcc void @local_bh_disable() #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  tail call fastcc void @local_bh_enable() #15
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  tail call void @netif_carrier_off(ptr noundef %15) #15
  %service_timer = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 13
  %call = tail call i32 @del_timer_sync(ptr noundef %service_timer) #15
  %service_task = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 14
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_task) #15
  %aq_hw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %16 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw_ops, align 8
  %hw_irq_disable = getelementptr inbounds %struct.aq_hw_ops, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %hw_irq_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_irq_disable, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %20 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aq_hw, align 8
  %call3 = tail call i32 %19(ptr noundef %21, i64 noundef 1023) #15
  %is_polling = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %is_polling to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_polling, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %polling_timer = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 15
  %call4 = tail call i32 @del_timer_sync(ptr noundef %polling_timer) #15
  br label %if.end

if.else:                                          ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_pci_func_free_irqs(ptr noundef %self) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @aq_ptp_irq_free(ptr noundef %self) #15
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %24 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp28.not = icmp eq i32 %25, 0
  br i1 %cmp28.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %aq_vec5 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %aq_vec.0.in29 = phi ptr [ %arrayidx7, %for.body.for.body_crit_edge ], [ %aq_vec5, %for.body.preheader ]
  %26 = ptrtoint ptr %aq_vec.0.in29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %aq_vec.0 = load ptr, ptr %aq_vec.0.in29, align 4
  tail call void @aq_vec_stop(ptr noundef %aq_vec.0) #15
  %inc = add nuw i32 %i.030, 1
  %arrayidx7 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %inc
  %27 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aq_vecs, align 8
  %cmp = icmp ugt i32 %28, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @aq_ptp_ring_stop(ptr noundef %self) #15
  %29 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aq_hw_ops, align 8
  %hw_stop = getelementptr inbounds %struct.aq_hw_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %hw_stop to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_stop, align 4
  %33 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw, align 8
  %call10 = tail call i32 %32(ptr noundef %34) #15
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_pci_func_free_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_irq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_vec_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_ring_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_nic_set_power(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %power_state = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 8
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic_cfg, align 8
  %wol = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %8 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_fw_ops, align 4
  %set_power = getelementptr inbounds %struct.aq_fw_ops, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_power, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.then.if.end10_crit_edge, label %if.then4, !prof !76

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %12 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aq_fw_ops, align 4
  %set_power6 = getelementptr inbounds %struct.aq_fw_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %set_power6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_power6, align 4
  %aq_hw7 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %16 = ptrtoint ptr %aq_hw7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw7, align 8
  %18 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_state, align 8
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 %15(ptr noundef %17, i32 noundef %19, ptr noundef %23) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_nic_deinit(ptr noundef %self, i1 noundef zeroext %link_down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %for.cond.preheader

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

for.cond.preheader:                               ; preds = %entry
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %0 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aq_vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.not = icmp eq i32 %1, 0
  br i1 %cmp25.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @aq_vec_deinit(ptr noundef %3) #15
  tail call void @aq_vec_ring_free(ptr noundef %3) #15
  %inc = add nuw i32 %i.026, 1
  %4 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aq_vecs, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @aq_ptp_unregister(ptr noundef nonnull %self) #15
  tail call void @aq_ptp_ring_deinit(ptr noundef nonnull %self) #15
  tail call void @aq_ptp_ring_free(ptr noundef nonnull %self) #15
  tail call void @aq_ptp_free(ptr noundef nonnull %self) #15
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %6 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aq_fw_ops, align 4
  %deinit = getelementptr inbounds %struct.aq_fw_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %deinit, align 4
  %tobool2.not = icmp ne ptr %9, null
  %10 = and i1 %tobool2.not, %link_down
  br i1 %10, label %if.then6, label %for.end.err_exit_crit_edge, !prof !77

for.end.err_exit_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %fwreq_mutex = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex, i32 noundef 0) #15
  %11 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_fw_ops, align 4
  %deinit8 = getelementptr inbounds %struct.aq_fw_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %deinit8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %deinit8, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %15 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %14(ptr noundef %16) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex) #15
  br label %err_exit

err_exit:                                         ; preds = %if.then6, %for.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_vec_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_vec_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_ring_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_nic_free_vectors(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %self, null
  br i1 %tobool.not, label %entry.err_exit_crit_edge, label %for.body.preheader

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %for.body.preheader.if.end8_crit_edge, label %if.then3

for.body.preheader.if.end8_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %1) #15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %for.body.preheader.if.end8_crit_edge
  %arrayidx.1 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %4, null
  br i1 %tobool2.not.1, label %if.end8.if.end8.1_crit_edge, label %if.then3.1

if.end8.if.end8.1_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.1

if.then3.1:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %4) #15
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %if.end8.1

if.end8.1:                                        ; preds = %if.then3.1, %if.end8.if.end8.1_crit_edge
  %arrayidx.2 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %7, null
  br i1 %tobool2.not.2, label %if.end8.1.if.end8.2_crit_edge, label %if.then3.2

if.end8.1.if.end8.2_crit_edge:                    ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.2

if.then3.2:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %7) #15
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %if.end8.2

if.end8.2:                                        ; preds = %if.then3.2, %if.end8.1.if.end8.2_crit_edge
  %arrayidx.3 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %10, null
  br i1 %tobool2.not.3, label %if.end8.2.if.end8.3_crit_edge, label %if.then3.3

if.end8.2.if.end8.3_crit_edge:                    ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.3

if.then3.3:                                       ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %10) #15
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %if.end8.3

if.end8.3:                                        ; preds = %if.then3.3, %if.end8.2.if.end8.3_crit_edge
  %arrayidx.4 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %13, null
  br i1 %tobool2.not.4, label %if.end8.3.if.end8.4_crit_edge, label %if.then3.4

if.end8.3.if.end8.4_crit_edge:                    ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.4

if.then3.4:                                       ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %13) #15
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %if.end8.4

if.end8.4:                                        ; preds = %if.then3.4, %if.end8.3.if.end8.4_crit_edge
  %arrayidx.5 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %tobool2.not.5 = icmp eq ptr %16, null
  br i1 %tobool2.not.5, label %if.end8.4.if.end8.5_crit_edge, label %if.then3.5

if.end8.4.if.end8.5_crit_edge:                    ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.5

if.then3.5:                                       ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %16) #15
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  br label %if.end8.5

if.end8.5:                                        ; preds = %if.then3.5, %if.end8.4.if.end8.5_crit_edge
  %arrayidx.6 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %tobool2.not.6 = icmp eq ptr %19, null
  br i1 %tobool2.not.6, label %if.end8.5.if.end8.6_crit_edge, label %if.then3.6

if.end8.5.if.end8.6_crit_edge:                    ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.6

if.then3.6:                                       ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %19) #15
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  br label %if.end8.6

if.end8.6:                                        ; preds = %if.then3.6, %if.end8.5.if.end8.6_crit_edge
  %arrayidx.7 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %tobool2.not.7 = icmp eq ptr %22, null
  br i1 %tobool2.not.7, label %if.end8.6.err_exit_crit_edge, label %if.then3.7

if.end8.6.err_exit_crit_edge:                     ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.then3.7:                                       ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @aq_vec_free(ptr noundef nonnull %22) #15
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  br label %err_exit

err_exit:                                         ; preds = %if.then3.7, %if.end8.6.err_exit_crit_edge, %entry.err_exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_vec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_realloc_vectors(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  tail call void @aq_nic_free_vectors(ptr noundef %self)
  %aq_vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %aq_vecs, align 8
  %1 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp23.not = icmp eq i32 %2, 0
  br i1 %cmp23.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add i32 %9, 1
  %3 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc, ptr %aq_vecs, align 8
  %4 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vecs, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %storemerge24 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call3 = tail call ptr @aq_vec_alloc(ptr noundef %self, i32 noundef %storemerge24, ptr noundef %aq_nic_cfg.i) #15
  %6 = ptrtoint ptr %aq_vecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aq_vecs, align 8
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %arrayidx, align 4
  %9 = load i32, ptr %aq_vecs, align 8
  %arrayidx7 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond, !prof !76

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_nic_shutdown(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #15
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @netif_device_detach(ptr noundef %3) #15
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @aq_nic_stop(ptr noundef %self)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then3.err_exit_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then3.err_exit_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %8 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aq_nic_cfg, align 8
  %wol = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  tail call void @aq_nic_deinit(ptr noundef %self, i1 noundef zeroext %tobool8.not)
  %power_state.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 8
  %14 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %16 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_nic_cfg.i, align 8
  %wol.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %wol.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.err_exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

lor.lhs.false.i.err_exit_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  %aq_fw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %22 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_power.i = getelementptr inbounds %struct.aq_fw_ops, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_power.i, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %if.then.i.err_exit_crit_edge, label %if.then4.i, !prof !76

if.then.i.err_exit_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %fwreq_mutex.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %fwreq_mutex.i, i32 noundef 0) #15
  %26 = ptrtoint ptr %aq_fw_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aq_fw_ops.i, align 4
  %set_power6.i = getelementptr inbounds %struct.aq_fw_ops, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %set_power6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_power6.i, align 4
  %30 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aq_hw, align 8
  %32 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %power_state.i, align 8
  %34 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndev, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr.i, align 64
  %call.i = tail call i32 %29(ptr noundef %31, i32 noundef %33, ptr noundef %37) #15
  tail call void @mutex_unlock(ptr noundef %fwreq_mutex.i) #15
  br label %err_exit

err_exit:                                         ; preds = %if.then4.i, %if.then.i.err_exit_crit_edge, %lor.lhs.false.i.err_exit_crit_edge, %if.then3.err_exit_crit_edge
  tail call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @aq_nic_reserve_filter(ptr nocapture noundef %self, i32 noundef %type) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fet_reserved_count = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 4
  %1 = ptrtoint ptr %fet_reserved_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fet_reserved_count, align 2
  %sub = sub i8 15, %2
  %inc = add i8 %2, 1
  store i8 %inc, ptr %fet_reserved_count, align 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fl3l4 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 3
  %reserved_count = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 3, i32 3
  %3 = ptrtoint ptr %reserved_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reserved_count, align 1
  %conv6 = zext i8 %4 to i32
  %sub7 = sub nsw i32 7, %conv6
  %shl = shl nuw nsw i32 1, %sub7
  %5 = ptrtoint ptr %fl3l4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl3l4, align 2
  %7 = trunc i32 %shl to i8
  %conv11 = or i8 %6, %7
  store i8 %conv11, ptr %fl3l4, align 2
  %inc15 = add i8 %4, 1
  store i8 %inc15, ptr %reserved_count, align 1
  %conv16 = trunc i32 %sub7 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %location.0 = phi i8 [ -1, %entry.sw.epilog_crit_edge ], [ %conv16, %sw.bb4 ], [ %sub, %sw.bb ]
  ret i8 %location.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aq_nic_release_filter(ptr nocapture noundef %self, i32 noundef %type, i32 noundef %location) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fet_reserved_count = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 4
  %1 = ptrtoint ptr %fet_reserved_count to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fet_reserved_count, align 2
  %dec = add i8 %2, -1
  store i8 %dec, ptr %fet_reserved_count, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fl3l4 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 3
  %reserved_count = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 25, i32 3, i32 3
  %3 = ptrtoint ptr %reserved_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reserved_count, align 1
  %dec3 = add i8 %4, -1
  store i8 %dec3, ptr %reserved_count, align 1
  %shl = shl nuw i32 1, %location
  %5 = ptrtoint ptr %fl3l4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl3l4, align 2
  %7 = trunc i32 %shl to i8
  %8 = xor i8 %7, -1
  %conv6 = and i8 %6, %8
  store i8 %conv6, ptr %fl3l4, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_setup_tc_mqprio(ptr noundef %self, i32 noundef %tcs, ptr noundef readonly %prio_tc_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vecs = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vecs, align 8
  %tcs1 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 31
  %2 = ptrtoint ptr %tcs1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tcs1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %tcs)
  %cmp = icmp eq i32 %conv, %tcs
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcs)
  %cmp3 = icmp eq i32 %tcs, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %is_qos = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 25
  %4 = ptrtoint ptr %is_qos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_qos, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_close(ptr noundef %7) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %conv9 = trunc i32 %tcs to i8
  %conv12 = and i32 %tcs, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp13 = icmp eq i32 %conv12, 0
  %spec.select = select i1 %cmp13, i8 1, i8 %conv9
  %10 = ptrtoint ptr %tcs1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %tcs1, align 4
  %tobool18.not = icmp eq ptr %prio_tc_map, null
  br i1 %tobool18.not, label %for.cond.preheader, label %if.then19

for.cond.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %tcs1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tcs1, align 4
  %conv24 = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  %div99100101102.1 = lshr i8 %12, 3
  %arrayidx.1 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %div99100101102.1, ptr %arrayidx.1, align 1
  %div99100101102.2 = lshr i8 %12, 2
  %arrayidx.2 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %div99100101102.2, ptr %arrayidx.2, align 1
  %mul.3 = mul nuw nsw i32 %conv24, 3
  %div99100101102.3 = lshr i32 %mul.3, 3
  %conv25.3 = trunc i32 %div99100101102.3 to i8
  %arrayidx.3 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv25.3, ptr %arrayidx.3, align 1
  %div99100101102.4 = lshr i8 %12, 1
  %arrayidx.4 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %div99100101102.4, ptr %arrayidx.4, align 1
  %mul.5 = mul nuw nsw i32 %conv24, 5
  %div99100101102.5 = lshr i32 %mul.5, 3
  %conv25.5 = trunc i32 %div99100101102.5 to i8
  %arrayidx.5 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv25.5, ptr %arrayidx.5, align 1
  %mul.6 = mul nuw nsw i32 %conv24, 6
  %div99100101102.6 = lshr i32 %mul.6, 3
  %conv25.6 = trunc i32 %div99100101102.6 to i8
  %arrayidx.6 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv25.6, ptr %arrayidx.6, align 1
  %mul.7 = mul nuw nsw i32 %conv24, 7
  %div99100101102.7 = lshr i32 %mul.7, 3
  %conv25.7 = trunc i32 %div99100101102.7 to i8
  %arrayidx.7 = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25.7, ptr %arrayidx.7, align 1
  br label %if.end27

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %prio_tc_map20 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 32
  %21 = ptrtoint ptr %prio_tc_map to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %prio_tc_map, align 1
  %23 = ptrtoint ptr %prio_tc_map20 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %prio_tc_map20, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcs)
  %tobool28 = icmp ne i32 %tcs, 0
  %is_qos30 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 25
  %frombool31 = zext i1 %tobool28 to i8
  %24 = ptrtoint ptr %is_qos30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool31, ptr %is_qos30, align 4
  %25 = ptrtoint ptr %tcs1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tcs1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp34 = icmp ult i8 %26, 3
  %is_ptp = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 26
  %frombool36 = zext i1 %cmp34 to i8
  %27 = ptrtoint ptr %is_ptp to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool36, ptr %is_ptp, align 1
  br i1 %cmp34, label %if.end27.if.end41_crit_edge, label %if.then39

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #18
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end27.if.end41_crit_edge
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 4
  %32 = ptrtoint ptr %tcs1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tcs1, align 4
  %call44 = tail call i32 @netdev_set_num_tc(ptr noundef %31, i8 noundef zeroext %33) #15
  tail call fastcc void @aq_nic_cfg_update_num_vecs(ptr noundef %self)
  %34 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %35)
  %cmp46.not = icmp eq i32 %1, %35
  br i1 %cmp46.not, label %if.end53, label %if.then48

if.then48:                                        ; preds = %if.end41
  %aq_nic_cfg.i.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12
  tail call void @aq_nic_free_vectors(ptr noundef %self) #15
  %aq_vecs.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 6
  %36 = ptrtoint ptr %aq_vecs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %aq_vecs.i, align 8
  %37 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp23.not.i = icmp eq i32 %38, 0
  br i1 %cmp23.not.i, label %if.then48.aq_nic_realloc_vectors.exit_crit_edge, label %if.then48.for.body.i_crit_edge

if.then48.for.body.i_crit_edge:                   ; preds = %if.then48
  br label %for.body.i

if.then48.aq_nic_realloc_vectors.exit_crit_edge:  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  br label %aq_nic_realloc_vectors.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %45, 1
  %39 = ptrtoint ptr %aq_vecs.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i, ptr %aq_vecs.i, align 8
  %40 = ptrtoint ptr %vecs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vecs, align 8
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.aq_nic_realloc_vectors.exit_crit_edge

for.cond.i.aq_nic_realloc_vectors.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %aq_nic_realloc_vectors.exit

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then48.for.body.i_crit_edge
  %storemerge24.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then48.for.body.i_crit_edge ]
  %call3.i = tail call ptr @aq_vec_alloc(ptr noundef %self, i32 noundef %storemerge24.i, ptr noundef %aq_nic_cfg.i.i) #15
  %42 = ptrtoint ptr %aq_vecs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aq_vecs.i, align 8
  %arrayidx.i = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call3.i, ptr %arrayidx.i, align 4
  %45 = load i32, ptr %aq_vecs.i, align 8
  %arrayidx7.i = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %45
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx7.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i, !prof !76

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

aq_nic_realloc_vectors.exit:                      ; preds = %for.cond.i.aq_nic_realloc_vectors.exit_crit_edge, %if.then48.aq_nic_realloc_vectors.exit_crit_edge
  br i1 %tobool.i.not, label %aq_nic_realloc_vectors.exit.cleanup_crit_edge, label %aq_nic_realloc_vectors.exit.if.then55_crit_edge

aq_nic_realloc_vectors.exit.if.then55_crit_edge:  ; preds = %aq_nic_realloc_vectors.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then55

aq_nic_realloc_vectors.exit.cleanup_crit_edge:    ; preds = %aq_nic_realloc_vectors.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end53:                                         ; preds = %if.end41
  br i1 %tobool.i.not, label %if.end53.cleanup_crit_edge, label %if.end53.if.then55_crit_edge

if.end53.if.then55_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then55

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then55:                                        ; preds = %if.end53.if.then55_crit_edge, %aq_nic_realloc_vectors.exit.if.then55_crit_edge
  %48 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev, align 4
  %call57 = tail call i32 @dev_open(ptr noundef %49, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end53.cleanup_crit_edge, %aq_nic_realloc_vectors.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %aq_nic_realloc_vectors.exit.cleanup_crit_edge ], [ %call57, %if.then55 ], [ 0, %if.end53.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_setup_tc_max_rate(ptr nocapture noundef %self, i32 noundef %tc, i32 noundef %max_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %cmp = icmp ugt i32 %tc, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %max_rate, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %1 = icmp ult i32 %0, 9
  br i1 %1, label %if.then2, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 10) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 10, %if.then2 ], [ %max_rate, %if.end.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 33, i32 %tc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_nic_setup_tc_min_rate(ptr noundef %self, i32 noundef %tc, i32 noundef %min_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %tc)
  %cmp = icmp ugt i32 %tc, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_rate)
  %tobool.not = icmp eq i32 %min_rate, 0
  %tc_min_rate_msk2 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 34
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef %tc, ptr noundef %tc_min_rate_msk2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %min_rate)
  %cmp5 = icmp ult i32 %min_rate, 20
  br i1 %cmp5, label %if.then6, label %if.then1.cleanup.sink.split_crit_edge

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef %tc, ptr noundef %tc_min_rate_msk2) #15
  br label %cleanup.sink.split

if.then6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef 20) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.else, %if.then1.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 20, %if.then6 ], [ %min_rate, %if.else ], [ %min_rate, %if.then1.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 35, i32 %tc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_service_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aq_nic_update_link_status(ptr noundef %self) unnamed_addr #0 align 64 {
entry:
  %fc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %aq_fw_ops = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 11
  %0 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aq_fw_ops, align 4
  %update_link_status = getelementptr inbounds %struct.aq_fw_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %update_link_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_link_status, align 4
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 4
  %4 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_hw, align 8
  %call = tail call i32 %3(ptr noundef %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #15
  %6 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %aq_fw_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aq_fw_ops, align 4
  %get_flow_control = getelementptr inbounds %struct.aq_fw_ops, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %get_flow_control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_flow_control, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw, align 8
  %call7 = call i32 %10(ptr noundef %12, ptr noundef nonnull %fc) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fc, align 4
  %cur = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 13, i32 1
  %15 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cur, align 4
  %link_status = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 16
  %16 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_status, align 4
  %18 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aq_hw, align 8
  %aq_link_status = getelementptr inbounds %struct.aq_hw_s, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %aq_link_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aq_link_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp.not = icmp eq i32 %17, %21
  br i1 %cmp.not, label %if.end8.if.end33_crit_edge, label %if.then12

if.end8.if.end33_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then12:                                        ; preds = %if.end8
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %21) #18
  %aq_hw_ops.i = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %24 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_interrupt_moderation_set.i = getelementptr inbounds %struct.aq_hw_ops, ptr %25, i32 0, i32 28
  %26 = ptrtoint ptr %hw_interrupt_moderation_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_interrupt_moderation_set.i, align 4
  %28 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aq_hw, align 8
  %call.i = call i32 %27(ptr noundef %29) #15
  %aq_ptp = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 24
  %30 = ptrtoint ptr %aq_ptp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aq_ptp, align 4
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %if.then12.if.end25_crit_edge, label %if.then20

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  call void @aq_ptp_clock_init(ptr noundef %self) #15
  %32 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aq_hw, align 8
  %aq_link_status22 = getelementptr inbounds %struct.aq_hw_s, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %aq_link_status22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %aq_link_status22, align 4
  call void @aq_ptp_tm_offset_set(ptr noundef %self, i32 noundef %35) #15
  %call24 = call i32 @aq_ptp_link_change(ptr noundef %self) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then12.if.end25_crit_edge
  %36 = ptrtoint ptr %aq_hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %aq_hw_ops.i, align 8
  %hw_set_fc = getelementptr inbounds %struct.aq_hw_ops, ptr %37, i32 0, i32 48
  %38 = ptrtoint ptr %hw_set_fc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_set_fc, align 4
  %tobool26.not = icmp eq ptr %39, null
  br i1 %tobool26.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aq_hw, align 8
  %42 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fc, align 4
  %call31 = call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef 0) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end25.if.end33_crit_edge, %if.end8.if.end33_crit_edge
  %44 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aq_hw, align 8
  %aq_link_status36 = getelementptr inbounds %struct.aq_hw_s, ptr %45, i32 0, i32 5
  %46 = call ptr @memcpy(ptr %link_status, ptr %aq_link_status36, i32 16)
  %ndev37 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 5
  %47 = ptrtoint ptr %ndev37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndev37, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i, align 4
  %51 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.end33.if.end55_crit_edge, label %land.lhs.true

if.end33.if.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end33
  %52 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool41.not = icmp eq i32 %53, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.do.body.i_crit_edge

land.lhs.true.do.body.i_crit_edge:                ; preds = %land.lhs.true
  br label %do.body.i

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %land.lhs.true.do.body.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %self, i32 noundef 4) #15
  %54 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %self, align 4
  %or.i = or i32 %55, 4
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %self, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @llvm.prefetch.p0(ptr %self, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %56 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %self, ptr %self, i32 %55, i32 %or.i, ptr elementtype(i32) %self) #15, !srcloc !79
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %56, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %56, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, %55
  br i1 %cmp.not.i, label %atomic_cmpxchg.exit.i.do.body.i110_crit_edge, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

atomic_cmpxchg.exit.i.do.body.i110_crit_edge:     ; preds = %atomic_cmpxchg.exit.i
  br label %do.body.i110

do.body.i110:                                     ; preds = %atomic_cmpxchg.exit.i116.do.body.i110_crit_edge, %atomic_cmpxchg.exit.i.do.body.i110_crit_edge
  %call.i.i.i109 = call zeroext i1 @__kasan_check_read(ptr noundef %self, i32 noundef 4) #15
  %57 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %self, align 4
  %and.i = and i32 %58, -67108865
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %self, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @llvm.prefetch.p0(ptr %self, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i113

do.body.i.i.i.i113:                               ; preds = %do.body.i.i.i.i113.do.body.i.i.i.i113_crit_edge, %do.body.i110
  %59 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %self, ptr %self, i32 %58, i32 %and.i, ptr elementtype(i32) %self) #15, !srcloc !79
  %asmresult.i.i.i.i111 = extractvalue { i32, i32 } %59, 0
  %tobool.not.i.i.i.i112 = icmp eq i32 %asmresult.i.i.i.i111, 0
  br i1 %tobool.not.i.i.i.i112, label %atomic_cmpxchg.exit.i116, label %do.body.i.i.i.i113.do.body.i.i.i.i113_crit_edge

do.body.i.i.i.i113.do.body.i.i.i.i113_crit_edge:  ; preds = %do.body.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i113

atomic_cmpxchg.exit.i116:                         ; preds = %do.body.i.i.i.i113
  %asmresult3.i.i.i.i114 = extractvalue { i32, i32 } %59, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  %cmp.not.i115 = icmp eq i32 %asmresult3.i.i.i.i114, %58
  br i1 %cmp.not.i115, label %aq_utils_obj_clear.exit, label %atomic_cmpxchg.exit.i116.do.body.i110_crit_edge

atomic_cmpxchg.exit.i116.do.body.i110_crit_edge:  ; preds = %atomic_cmpxchg.exit.i116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i110

aq_utils_obj_clear.exit:                          ; preds = %atomic_cmpxchg.exit.i116
  %60 = ptrtoint ptr %ndev37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev37, align 4
  call void @netif_carrier_on(ptr noundef %61) #15
  %call45 = call i32 @aq_macsec_enable(ptr noundef %self) #15
  %aq_hw_ops46 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 10
  %62 = ptrtoint ptr %aq_hw_ops46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aq_hw_ops46, align 8
  %hw_tc_rate_limit_set = getelementptr inbounds %struct.aq_hw_ops, ptr %63, i32 0, i32 31
  %64 = ptrtoint ptr %hw_tc_rate_limit_set to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_tc_rate_limit_set, align 4
  %tobool47.not = icmp eq ptr %65, null
  br i1 %tobool47.not, label %aq_utils_obj_clear.exit.if.end53_crit_edge, label %if.then48

aq_utils_obj_clear.exit.if.end53_crit_edge:       ; preds = %aq_utils_obj_clear.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then48:                                        ; preds = %aq_utils_obj_clear.exit
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %aq_hw, align 8
  %call52 = call i32 %65(ptr noundef %67) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %aq_utils_obj_clear.exit.if.end53_crit_edge
  %68 = ptrtoint ptr %ndev37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev37, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 104
  %70 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp4.not.i = icmp eq i32 %71, 0
  br i1 %cmp4.not.i, label %if.end53.if.end55_crit_edge, label %for.body.lr.ph.i

if.end53.if.end55_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

for.body.lr.ph.i:                                 ; preds = %if.end53
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %73, i32 %i.05.i
  call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #15
  %inc.i = add nuw i32 %i.05.i, 1
  %74 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %75
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end55_crit_edge

for.body.i.if.end55_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end55:                                         ; preds = %for.body.i.if.end55_crit_edge, %if.end53.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.end33.if.end55_crit_edge
  %76 = ptrtoint ptr %ndev37 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ndev37, align 4
  %state.i117 = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %state.i117 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %state.i117, align 4
  %80 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i118 = icmp eq i32 %80, 0
  br i1 %tobool.not.i118, label %land.lhs.true58, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true58:                                  ; preds = %if.end55
  %81 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool61.not = icmp eq i32 %82, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then62:                                        ; preds = %land.lhs.true58
  call void @netif_carrier_off(ptr noundef %77) #15
  %83 = ptrtoint ptr %ndev37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ndev37, align 4
  call fastcc void @local_bh_disable() #15
  %85 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 108
  call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i119 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 104
  %89 = ptrtoint ptr %num_tx_queues.i119 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_tx_queues.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp13.not.i = icmp eq i32 %90, 0
  br i1 %cmp13.not.i, label %if.then62.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i121

if.then62.netif_tx_disable.exit_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.lr.ph.i121:                              ; preds = %if.then62
  %_tx.i.i120 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 103
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.body.i124.for.body.i124_crit_edge, %for.body.lr.ph.i121
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i121 ], [ %inc.i122, %for.body.i124.for.body.i124_crit_edge ]
  %91 = ptrtoint ptr %_tx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i120, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %92, i32 %i.014.i, i32 10
  call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %92, i32 %i.014.i, i32 11
  %93 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 %88, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %92, i32 %i.014.i, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %94 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i122 = add nuw i32 %i.014.i, 1
  %95 = ptrtoint ptr %num_tx_queues.i119 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_tx_queues.i119, align 4
  %cmp.i123 = icmp ult i32 %inc.i122, %96
  br i1 %cmp.i123, label %for.body.i124.for.body.i124_crit_edge, label %for.body.i124.netif_tx_disable.exit_crit_edge

for.body.i124.netif_tx_disable.exit_crit_edge:    ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.i124.for.body.i124_crit_edge:            ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i124

netif_tx_disable.exit:                            ; preds = %for.body.i124.netif_tx_disable.exit_crit_edge, %if.then62.netif_tx_disable.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  call fastcc void @local_bh_enable() #15
  br label %do.body.i128

do.body.i128:                                     ; preds = %atomic_cmpxchg.exit.i134.do.body.i128_crit_edge, %netif_tx_disable.exit
  %call.i.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %self, i32 noundef 4) #15
  %97 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %self, align 4
  %or.i126 = or i32 %98, 67108864
  %call.i.i5.i127 = call zeroext i1 @__kasan_check_write(ptr noundef %self, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @llvm.prefetch.p0(ptr %self, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i131

do.body.i.i.i.i131:                               ; preds = %do.body.i.i.i.i131.do.body.i.i.i.i131_crit_edge, %do.body.i128
  %99 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %self, ptr %self, i32 %98, i32 %or.i126, ptr elementtype(i32) %self) #15, !srcloc !79
  %asmresult.i.i.i.i129 = extractvalue { i32, i32 } %99, 0
  %tobool.not.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i129, 0
  br i1 %tobool.not.i.i.i.i130, label %atomic_cmpxchg.exit.i134, label %do.body.i.i.i.i131.do.body.i.i.i.i131_crit_edge

do.body.i.i.i.i131.do.body.i.i.i.i131_crit_edge:  ; preds = %do.body.i.i.i.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i131

atomic_cmpxchg.exit.i134:                         ; preds = %do.body.i.i.i.i131
  %asmresult3.i.i.i.i132 = extractvalue { i32, i32 } %99, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  %cmp.not.i133 = icmp eq i32 %asmresult3.i.i.i.i132, %98
  br i1 %cmp.not.i133, label %atomic_cmpxchg.exit.i134.cleanup_crit_edge, label %atomic_cmpxchg.exit.i134.do.body.i128_crit_edge

atomic_cmpxchg.exit.i134.do.body.i128_crit_edge:  ; preds = %atomic_cmpxchg.exit.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i128

atomic_cmpxchg.exit.i134.cleanup_crit_edge:       ; preds = %atomic_cmpxchg.exit.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %atomic_cmpxchg.exit.i134.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true58.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ], [ 0, %atomic_cmpxchg.exit.i134.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_macsec_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_clock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ptp_tm_offset_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_ptp_link_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_macsec_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_ndev_schedule_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51, !52, !53, !55, !57, !59, !61, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_aq_itr, !1, !"__param_aq_itr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_aq_itrtype531, !1, !"__UNIQUE_ID_aq_itrtype531", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_aq_itr532, !4, !"__UNIQUE_ID_aq_itr532", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 33, i32 1}
!5 = !{ptr @__param_aq_itr_tx, !6, !"__param_aq_itr_tx", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_aq_itr_txtype533, !6, !"__UNIQUE_ID_aq_itr_txtype533", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_aq_itr_tx534, !9, !"__UNIQUE_ID_aq_itr_tx534", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 37, i32 1}
!10 = !{ptr @__param_aq_itr_rx, !11, !"__param_aq_itr_rx", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 40, i32 1}
!12 = !{ptr @__UNIQUE_ID_aq_itr_rxtype535, !11, !"__UNIQUE_ID_aq_itr_rxtype535", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_aq_itr_rx536, !14, !"__UNIQUE_ID_aq_itr_rx536", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 41, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 332, i32 28}
!17 = !{ptr @aq_nic_start.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 510, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @aq_nic_start.__key.2, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 512, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aq_nic_start.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 516, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 608, i32 4}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1425, i32 26}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1446, i32 26}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1492, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1493, i32 8}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1522, i32 4}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1523, i32 4}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 1548, i32 4}
!44 = !{ptr @aq_itr_tx, !45, !"aq_itr_tx", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 35, i32 21}
!46 = !{ptr @aq_itr_rx, !47, !"aq_itr_rx", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 39, i32 21}
!48 = !{ptr @__param_str_aq_itr, !1, !"__param_str_aq_itr", i1 false, i1 false}
!49 = !{ptr @aq_itr, !50, !"aq_itr", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 31, i32 21}
!51 = !{ptr @__param_str_aq_itr_tx, !6, !"__param_str_aq_itr_tx", i1 false, i1 false}
!52 = !{ptr @__param_str_aq_itr_rx, !11, !"__param_str_aq_itr_rx", i1 false, i1 false}
!53 = !{ptr @aq_nic_rss_init.rss_key, !54, !"rss_key", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 47, i32 12}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 169, i32 27}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_nic.c", i32 170, i32 8}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i32 0, i32 33}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 2002}
!78 = !{i64 2148363822}
!79 = !{i64 745735, i64 745759, i64 745780, i64 745797, i64 745814}
!80 = !{i64 2148364048}
