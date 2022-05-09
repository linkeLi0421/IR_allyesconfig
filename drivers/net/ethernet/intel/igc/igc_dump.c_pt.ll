; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_dump.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.igc_reg_info = type { i32, ptr }
%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.131] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.127, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.127 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.131 = type { %struct.timespec64, %struct.timespec64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.igc_ring = type { ptr, ptr, ptr, %union.anon.117, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.123, [24 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.117 = type { ptr }
%union.anon.123 = type { %struct.anon.125 }
%struct.anon.125 = type { %struct.igc_rx_queue_stats, %struct.igc_rx_packet_stats, %struct.u64_stats_sync, ptr }
%struct.igc_rx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.igc_rx_packet_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.igc_tx_buffer = type { ptr, i32, i32, %union.anon.120, i32, i16, i16, i32, i32, i32 }
%union.anon.120 = type { ptr }
%union.igc_adv_tx_desc = type { %struct.anon.118 }
%struct.anon.118 = type { i64, i32, i32 }
%struct.my_u0 = type { i64, i64 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.igc_rx_buffer = type { %union.anon.121 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr, i16, i16 }
%union.igc_adv_rx_desc = type { %struct.anon.136 }
%struct.anon.136 = type { i64, i64 }
%struct.anon.137 = type { %struct.anon.138, %struct.anon.143 }
%struct.anon.138 = type { %union.anon.139, %union.anon.141 }
%union.anon.139 = type { i32 }
%union.anon.141 = type { i32 }
%struct.anon.143 = type { i32, i16, i16 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device info: state %016lX trans_start %016lX\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX Rings Summary\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Queue [NTU] [NTC] [bi(ntc)->dma  ] leng ntw timestamp\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%5d %5X %5X %016llX %04X %p %016llX\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX Rings Dump\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"------------------------------------\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX QUEUE INDEX = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"T [desc]     [address 63:0  ] [PlPOCIStDDM Ln] [bi->dma       ] leng  ntw timestamp        bi->skb\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" NTC/U\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" NTU\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" NTC\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"T [0x%03X]    %016llX %016llX %016llX %04X  %p %016llX %p%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX Rings Summary\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Queue [NTU] [NTC]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%5d %5X %5X\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX Rings Dump\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX QUEUE INDEX = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"R  [desc]      [ PktBuf     A0] [  HeadBuf   DD] [bi->dma       ] [bi->skb] <-- Adv Rx Read format\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"RWB[desc]      [PcsmIpSHl PtRs] [vl er S cks ln] ---------------- [bi->skb] <-- Adv Rx Write-Back format\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s[0x%03X]     %016llX %016llX ---------------- %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RWB\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s[0x%03X]     %016llX %016llX %016llX %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R  \00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Register Dump\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Register Name   Value\0A\00", [41 x i8] zeroinitializer }, align 32
@igc_reg_info_tbl = internal constant { [20 x %struct.igc_reg_info], [32 x i8] } { [20 x %struct.igc_reg_info] [%struct.igc_reg_info { i32 0, ptr @.str.27 }, %struct.igc_reg_info { i32 8, ptr @.str.28 }, %struct.igc_reg_info { i32 24, ptr @.str.29 }, %struct.igc_reg_info { i32 32, ptr @.str.30 }, %struct.igc_reg_info { i32 5376, ptr @.str.31 }, %struct.igc_reg_info { i32 256, ptr @.str.32 }, %struct.igc_reg_info { i32 49160, ptr @.str.33 }, %struct.igc_reg_info { i32 49168, ptr @.str.34 }, %struct.igc_reg_info { i32 49176, ptr @.str.35 }, %struct.igc_reg_info { i32 49192, ptr @.str.36 }, %struct.igc_reg_info { i32 49152, ptr @.str.37 }, %struct.igc_reg_info { i32 49156, ptr @.str.38 }, %struct.igc_reg_info { i32 1024, ptr @.str.39 }, %struct.igc_reg_info { i32 57344, ptr @.str.40 }, %struct.igc_reg_info { i32 57348, ptr @.str.41 }, %struct.igc_reg_info { i32 57352, ptr @.str.42 }, %struct.igc_reg_info { i32 57360, ptr @.str.43 }, %struct.igc_reg_info { i32 57368, ptr @.str.44 }, %struct.igc_reg_info { i32 57384, ptr @.str.45 }, %struct.igc_reg_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTRL\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CTRL_EXT\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDIC\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICR\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RCTL\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDLEN\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RDH\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RDT\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RXDCTL\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDBAL\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDBAH\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCTL\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TDBAL\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TDBAH\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TDLEN\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDH\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDT\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TXDCTL\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-15s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[0-3]\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%-15s %08x %08x %08x %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 49152, i64 49156, i64 49160, i64 49168, i64 49176, i64 49192, i64 57344, i64 57348, i64 57352, i64 57360, i64 57368, i64 57384]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 126, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 133, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 134, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 141, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 153, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 168, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 169, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 172, i32 23 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 183, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 185, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 187, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 189, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 191, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 201, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 211, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 212, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 215, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 223, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 249, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 252, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 253, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 273, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 274, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 279, i32 25 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 280, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 312, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 313, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"igc_reg_info_tbl\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 11, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 13, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 14, i32 15 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 15, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 16, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 19, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 22, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 23, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 24, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 25, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 26, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 27, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 28, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 31, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 32, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 33, i32 17 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 34, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 35, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 36, i32 15 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 37, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 101, i32 20 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 106, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 106, i32 45 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [45 x i8] c"../drivers/net/ethernet/intel/igc/igc_dump.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 107, i32 19 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @igc_reg_info_tbl, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_reg_info_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_rings_dump(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %msg_enable = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 29
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %call = tail call i32 @dev_trans_start(ptr noundef %1) #6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %call) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.2) #9
  %num_tx_queues = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 9
  %8 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp305 = icmp sgt i32 %9, 0
  br i1 %cmp305, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %conv307 = phi i32 [ %conv, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %n.0306 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv307
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = getelementptr inbounds %struct.igc_ring, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %next_to_clean = getelementptr inbounds %struct.igc_ring, ptr %11, i32 0, i32 20
  %15 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %next_to_clean, align 8
  %idxprom7 = zext i16 %16 to i32
  %arrayidx8 = getelementptr %struct.igc_tx_buffer, ptr %14, i32 %idxprom7
  %next_to_use = getelementptr inbounds %struct.igc_ring, ptr %11, i32 0, i32 21
  %17 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %next_to_use, align 2
  %conv10 = zext i16 %18 to i32
  %dma = getelementptr %struct.igc_tx_buffer, ptr %14, i32 %idxprom7, i32 7
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma, align 4
  %conv13 = zext i32 %20 to i64
  %len = getelementptr %struct.igc_tx_buffer, ptr %14, i32 %idxprom7, i32 8
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8, align 4
  %time_stamp = getelementptr %struct.igc_tx_buffer, ptr %14, i32 %idxprom7, i32 1
  %25 = ptrtoint ptr %time_stamp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %time_stamp, align 4
  %conv14 = zext i32 %26 to i64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %conv307, i32 noundef %conv10, i32 noundef %idxprom7, i64 noundef %conv13, i32 noundef %22, ptr noundef %24, i64 noundef %conv14) #9
  %inc = add i16 %n.0306, 1
  %conv = zext i16 %inc to i32
  %27 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_tx_queues, align 8
  %cmp = icmp sgt i32 %28, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %29 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.end.rx_ring_summary_crit_edge, label %if.end19

for.end.rx_ring_summary_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_ring_summary

if.end19:                                         ; preds = %for.end
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  %31 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23311 = icmp sgt i32 %32, 0
  br i1 %cmp23311, label %if.end19.for.body25_crit_edge, label %if.end19.rx_ring_summary_crit_edge

if.end19.rx_ring_summary_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_ring_summary

if.end19.for.body25_crit_edge:                    ; preds = %if.end19
  br label %for.body25

for.body25:                                       ; preds = %for.inc89.for.body25_crit_edge, %if.end19.for.body25_crit_edge
  %conv21313 = phi i32 [ %conv21, %for.inc89.for.body25_crit_edge ], [ 0, %if.end19.for.body25_crit_edge ]
  %n.1312 = phi i16 [ %inc90, %for.inc89.for.body25_crit_edge ], [ 0, %if.end19.for.body25_crit_edge ]
  %arrayidx28 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 10, i32 %conv21313
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  %queue_index = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %queue_index, align 2
  %conv29 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %conv29) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.7) #9
  %desc = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 4
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc, align 16
  %tobool31.not308 = icmp eq ptr %38, null
  br i1 %tobool31.not308, label %for.body25.for.inc89_crit_edge, label %land.rhs.lr.ph

for.body25.for.inc89_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc89

land.rhs.lr.ph:                                   ; preds = %for.body25
  %count = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 9
  %39 = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 3
  %next_to_use44 = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 21
  %next_to_clean62 = getelementptr inbounds %struct.igc_ring, ptr %34, i32 0, i32 20
  br label %land.rhs

land.rhs:                                         ; preds = %if.end85.land.rhs_crit_edge, %land.rhs.lr.ph
  %indvars.iv = phi i32 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %if.end85.land.rhs_crit_edge ]
  %40 = phi ptr [ %38, %land.rhs.lr.ph ], [ %78, %if.end85.land.rhs_crit_edge ]
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count, align 4
  %43 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %43)
  %cmp34 = icmp ult i32 %indvars.iv, %43
  br i1 %cmp34, label %for.body36, label %land.rhs.for.inc89_crit_edge

land.rhs.for.inc89_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc89

for.body36:                                       ; preds = %land.rhs
  %arrayidx40 = getelementptr %union.igc_adv_tx_desc, ptr %40, i32 %indvars.iv
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  %arrayidx42 = getelementptr %struct.igc_tx_buffer, ptr %45, i32 %indvars.iv
  %46 = ptrtoint ptr %next_to_use44 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %next_to_use44, align 2
  %48 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %48)
  %cmp46 = icmp eq i32 %indvars.iv, %48
  %49 = ptrtoint ptr %next_to_clean62 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %next_to_clean62, align 8
  %51 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv, i32 %51)
  %cmp51 = icmp eq i32 %indvars.iv, %51
  %.str.10..str.11 = select i1 %cmp51, ptr @.str.10, ptr @.str.11
  %spec.select = select i1 %cmp51, ptr @.str.8, ptr @.str.9
  %next_desc.0 = select i1 %cmp46, ptr %spec.select, ptr %.str.10..str.11
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx40, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53)
  %b = getelementptr inbounds %struct.my_u0, ptr %arrayidx40, i32 0, i32 1
  %55 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %56)
  %dma72 = getelementptr %struct.igc_tx_buffer, ptr %45, i32 %indvars.iv, i32 7
  %58 = ptrtoint ptr %dma72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma72, align 4
  %conv73 = zext i32 %59 to i64
  %len74 = getelementptr %struct.igc_tx_buffer, ptr %45, i32 %indvars.iv, i32 8
  %60 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len74, align 4
  %62 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx42, align 4
  %time_stamp76 = getelementptr %struct.igc_tx_buffer, ptr %45, i32 %indvars.iv, i32 1
  %64 = ptrtoint ptr %time_stamp76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %time_stamp76, align 4
  %conv77 = zext i32 %65 to i64
  %66 = getelementptr %struct.igc_tx_buffer, ptr %45, i32 %indvars.iv, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %indvars.iv, i64 noundef %54, i64 noundef %57, i64 noundef %conv73, i32 noundef %61, ptr noundef %63, i64 noundef %conv77, ptr noundef %68, ptr noundef nonnull %next_desc.0) #9
  %69 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable, align 4
  %and79 = and i32 %70, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %for.body36.if.end85_crit_edge, label %land.lhs.true81

for.body36.if.end85_crit_edge:                    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true81:                                  ; preds = %for.body36
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %66, align 4
  %tobool82.not = icmp eq ptr %72, null
  br i1 %tobool82.not, label %land.lhs.true81.if.end85_crit_edge, label %if.then83

land.lhs.true81.if.end85_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then83:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 19
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %75 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len74, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %74, i32 noundef %76, i1 noundef zeroext true) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %land.lhs.true81.if.end85_crit_edge, %for.body36.if.end85_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %77 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc, align 16
  %tobool31.not = icmp eq ptr %78, null
  br i1 %tobool31.not, label %if.end85.for.inc89_crit_edge, label %if.end85.land.rhs_crit_edge

if.end85.land.rhs_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end85.for.inc89_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc89

for.inc89:                                        ; preds = %if.end85.for.inc89_crit_edge, %land.rhs.for.inc89_crit_edge, %for.body25.for.inc89_crit_edge
  %inc90 = add i16 %n.1312, 1
  %conv21 = zext i16 %inc90 to i32
  %79 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_tx_queues, align 8
  %cmp23 = icmp sgt i32 %80, %conv21
  br i1 %cmp23, label %for.inc89.for.body25_crit_edge, label %for.inc89.rx_ring_summary_crit_edge

for.inc89.rx_ring_summary_crit_edge:              ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_ring_summary

for.inc89.for.body25_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

rx_ring_summary:                                  ; preds = %for.inc89.rx_ring_summary_crit_edge, %if.end19.rx_ring_summary_crit_edge, %for.end.rx_ring_summary_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  %num_rx_queues = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %81 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp94314 = icmp sgt i32 %82, 0
  br i1 %cmp94314, label %rx_ring_summary.for.body96_crit_edge, label %rx_ring_summary.for.end107_crit_edge

rx_ring_summary.for.end107_crit_edge:             ; preds = %rx_ring_summary
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

rx_ring_summary.for.body96_crit_edge:             ; preds = %rx_ring_summary
  br label %for.body96

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %rx_ring_summary.for.body96_crit_edge
  %conv93316 = phi i32 [ %conv93, %for.body96.for.body96_crit_edge ], [ 0, %rx_ring_summary.for.body96_crit_edge ]
  %n.2315 = phi i16 [ %inc106, %for.body96.for.body96_crit_edge ], [ 0, %rx_ring_summary.for.body96_crit_edge ]
  %arrayidx99 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv93316
  %83 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx99, align 4
  %next_to_use101 = getelementptr inbounds %struct.igc_ring, ptr %84, i32 0, i32 21
  %85 = ptrtoint ptr %next_to_use101 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %next_to_use101, align 2
  %conv102 = zext i16 %86 to i32
  %next_to_clean103 = getelementptr inbounds %struct.igc_ring, ptr %84, i32 0, i32 20
  %87 = ptrtoint ptr %next_to_clean103 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %next_to_clean103, align 8
  %conv104 = zext i16 %88 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %conv93316, i32 noundef %conv102, i32 noundef %conv104) #9
  %inc106 = add i16 %n.2315, 1
  %conv93 = zext i16 %inc106 to i32
  %89 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_rx_queues, align 4
  %cmp94 = icmp sgt i32 %90, %conv93
  br i1 %cmp94, label %for.body96.for.body96_crit_edge, label %for.body96.for.end107_crit_edge

for.body96.for.end107_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end107

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body96

for.end107:                                       ; preds = %for.body96.for.end107_crit_edge, %rx_ring_summary.for.end107_crit_edge
  %91 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable, align 4
  %and109 = and i32 %92, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %for.end107.cleanup_crit_edge, label %if.end112

for.end107.cleanup_crit_edge:                     ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end112:                                        ; preds = %for.end107
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.17) #9
  %93 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp116321 = icmp sgt i32 %94, 0
  br i1 %cmp116321, label %if.end112.for.body118_crit_edge, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end112.for.body118_crit_edge:                  ; preds = %if.end112
  br label %for.body118

for.body118:                                      ; preds = %for.inc184.for.body118_crit_edge, %if.end112.for.body118_crit_edge
  %conv114323 = phi i32 [ %conv114, %for.inc184.for.body118_crit_edge ], [ 0, %if.end112.for.body118_crit_edge ]
  %n.3322 = phi i16 [ %inc185, %for.inc184.for.body118_crit_edge ], [ 0, %if.end112.for.body118_crit_edge ]
  %arrayidx121 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 12, i32 %conv114323
  %95 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx121, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  %queue_index122 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %queue_index122 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %queue_index122, align 2
  %conv123 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %conv123) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.20) #9
  %count126 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 9
  %99 = ptrtoint ptr %count126 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count126, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp128317.not = icmp eq i16 %100, 0
  br i1 %cmp128317.not, label %for.body118.for.inc184_crit_edge, label %for.body130.lr.ph

for.body118.for.inc184_crit_edge:                 ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

for.body130.lr.ph:                                ; preds = %for.body118
  %101 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 3
  %desc135 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 4
  %next_to_use139 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 21
  %next_to_clean146 = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 20
  %flags.i = getelementptr inbounds %struct.igc_ring, ptr %96, i32 0, i32 5
  br label %for.body130

for.body130:                                      ; preds = %if.end180.for.body130_crit_edge, %for.body130.lr.ph
  %indvars.iv324 = phi i32 [ 0, %for.body130.lr.ph ], [ %indvars.iv.next325, %if.end180.for.body130_crit_edge ]
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %arrayidx134 = getelementptr %struct.igc_rx_buffer, ptr %103, i32 %indvars.iv324
  %104 = ptrtoint ptr %desc135 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %desc135, align 16
  %arrayidx137 = getelementptr %union.igc_adv_rx_desc, ptr %105, i32 %indvars.iv324
  %upper = getelementptr inbounds %struct.anon.137, ptr %arrayidx137, i32 0, i32 1
  %106 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %upper, align 8
  %108 = ptrtoint ptr %next_to_use139 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %next_to_use139, align 2
  %110 = zext i16 %109 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv324, i32 %110)
  %cmp141 = icmp eq i32 %indvars.iv324, %110
  br i1 %cmp141, label %for.body130.if.end153_crit_edge, label %if.else144

for.body130.if.end153_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.else144:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %next_to_clean146 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %next_to_clean146, align 8
  %113 = zext i16 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv324, i32 %113)
  %cmp148 = icmp eq i32 %indvars.iv324, %113
  %.str.10..str.11303 = select i1 %cmp148, ptr @.str.10, ptr @.str.11
  br label %if.end153

if.end153:                                        ; preds = %if.else144, %for.body130.if.end153_crit_edge
  %next_desc131.0 = phi ptr [ @.str.9, %for.body130.if.end153_crit_edge ], [ %.str.10..str.11303, %if.else144 ]
  %114 = and i32 %107, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool155.not = icmp eq i32 %114, 0
  %115 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx137, align 8
  %117 = tail call i64 @llvm.bswap.i64(i64 %116)
  %118 = ptrtoint ptr %upper to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %upper, align 8
  %120 = tail call i64 @llvm.bswap.i64(i64 %119)
  br i1 %tobool155.not, label %if.else160, label %if.then156

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %indvars.iv324, i64 noundef %117, i64 noundef %120, ptr noundef nonnull %next_desc131.0) #9
  br label %if.end180

if.else160:                                       ; preds = %if.end153
  %121 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx134, align 4
  %conv165 = zext i32 %122 to i64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %indvars.iv324, i64 noundef %117, i64 noundef %120, i64 noundef %conv165, ptr noundef nonnull %next_desc131.0) #9
  %123 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %msg_enable, align 4
  %and167 = and i32 %124, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.else160.if.end180_crit_edge, label %land.lhs.true169

if.else160.if.end180_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

land.lhs.true169:                                 ; preds = %if.else160
  %125 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool171.not = icmp eq i32 %126, 0
  br i1 %tobool171.not, label %land.lhs.true169.if.end180_crit_edge, label %land.lhs.true172

land.lhs.true169.if.end180_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

land.lhs.true172:                                 ; preds = %land.lhs.true169
  %page = getelementptr inbounds %struct.anon.122, ptr %arrayidx134, i32 0, i32 1
  %127 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %page, align 4
  %tobool173.not = icmp eq ptr %128, null
  br i1 %tobool173.not, label %land.lhs.true172.if.end180_crit_edge, label %if.then174

land.lhs.true172.if.end180_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then174:                                       ; preds = %land.lhs.true172
  %call176 = tail call ptr @page_address(ptr noundef nonnull %128) #6
  %page_offset = getelementptr inbounds %struct.anon.122, ptr %arrayidx134, i32 0, i32 2
  %129 = ptrtoint ptr %page_offset to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %page_offset, align 4
  %conv177 = zext i16 %130 to i32
  %add.ptr = getelementptr i8, ptr %call176, i32 %conv177
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i304 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i304)
  %tobool.not.i = icmp eq i32 %and1.i.i304, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then174.igc_rx_bufsz.exit_crit_edge

if.then174.igc_rx_bufsz.exit_crit_edge:           ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  br label %igc_rx_bufsz.exit

if.end.i:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %flags.i, align 4
  %135 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool3.not.i = icmp eq i32 %135, 0
  %..i = select i1 %tobool3.not.i, i32 2048, i32 1662
  br label %igc_rx_bufsz.exit

igc_rx_bufsz.exit:                                ; preds = %if.end.i, %if.then174.igc_rx_bufsz.exit_crit_edge
  %retval.0.i = phi i32 [ 3072, %if.then174.igc_rx_bufsz.exit_crit_edge ], [ %..i, %if.end.i ]
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %retval.0.i, i1 noundef zeroext true) #6
  br label %if.end180

if.end180:                                        ; preds = %igc_rx_bufsz.exit, %land.lhs.true172.if.end180_crit_edge, %land.lhs.true169.if.end180_crit_edge, %if.else160.if.end180_crit_edge, %if.then156
  %indvars.iv.next325 = add nuw nsw i32 %indvars.iv324, 1
  %136 = ptrtoint ptr %count126 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %count126, align 4
  %138 = zext i16 %137 to i32
  %cmp128 = icmp ult i32 %indvars.iv.next325, %138
  br i1 %cmp128, label %if.end180.for.body130_crit_edge, label %if.end180.for.inc184_crit_edge

if.end180.for.inc184_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

if.end180.for.body130_crit_edge:                  ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body130

for.inc184:                                       ; preds = %if.end180.for.inc184_crit_edge, %for.body118.for.inc184_crit_edge
  %inc185 = add i16 %n.3322, 1
  %conv114 = zext i16 %inc185 to i32
  %139 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_rx_queues, align 4
  %cmp116 = icmp sgt i32 %140, %conv114
  br i1 %cmp116, label %for.inc184.for.body118_crit_edge, label %for.inc184.cleanup_crit_edge

for.inc184.cleanup_crit_edge:                     ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc184.for.body118_crit_edge:                 ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body118

cleanup:                                          ; preds = %for.inc184.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %for.end107.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_regs_dump(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %rname.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.25) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.26) #9
  br label %for.body

for.body:                                         ; preds = %igc_regdump.exit.for.body_crit_edge, %entry
  %name8 = phi ptr [ getelementptr inbounds ([20 x %struct.igc_reg_info], ptr @igc_reg_info_tbl, i32 0, i32 0, i32 1), %entry ], [ %name, %igc_regdump.exit.for.body_crit_edge ]
  %reginfo.07 = phi ptr [ @igc_reg_info_tbl, %entry ], [ %incdec.ptr, %igc_regdump.exit.for.body_crit_edge ]
  %call.i = call ptr @igc_get_hw_dev(ptr noundef %hw1) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rname.i) #6
  %4 = call ptr @memset(ptr %rname.i, i32 255, i32 16)
  %5 = ptrtoint ptr %reginfo.07 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reginfo.07, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default.i [
    i32 49160, label %for.body.preheader.i
    i32 49168, label %for.body5.preheader.i
    i32 49176, label %for.body16.preheader.i
    i32 49192, label %for.body27.preheader.i
    i32 49152, label %for.body38.preheader.i
    i32 49156, label %for.body49.preheader.i
    i32 57344, label %for.body60.preheader.i
    i32 57348, label %for.body71.preheader.i
    i32 57352, label %for.body82.preheader.i
    i32 57360, label %for.body93.preheader.i
    i32 57368, label %for.body104.preheader.i
    i32 57384, label %for.body.sw.epilog.i_crit_edge
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body104.preheader.i:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body93.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body82.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body71.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body60.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body49.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body38.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body27.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body16.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body5.preheader.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body.preheader.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name8, align 4
  %call124.i = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %6) #6
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call.i, ptr noundef nonnull @.str.46, ptr noundef %9, i32 noundef %call124.i) #9
  br label %igc_regdump.exit

sw.epilog.i:                                      ; preds = %for.body.preheader.i, %for.body5.preheader.i, %for.body16.preheader.i, %for.body27.preheader.i, %for.body38.preheader.i, %for.body49.preheader.i, %for.body60.preheader.i, %for.body71.preheader.i, %for.body82.preheader.i, %for.body93.preheader.i, %for.body104.preheader.i, %for.body.sw.epilog.i_crit_edge
  %.sink234.i = phi i32 [ 57432, %for.body104.preheader.i ], [ 57424, %for.body93.preheader.i ], [ 57416, %for.body82.preheader.i ], [ 57412, %for.body71.preheader.i ], [ 57408, %for.body60.preheader.i ], [ 49220, %for.body49.preheader.i ], [ 49216, %for.body38.preheader.i ], [ 49256, %for.body27.preheader.i ], [ 49240, %for.body16.preheader.i ], [ 49232, %for.body5.preheader.i ], [ 49224, %for.body.preheader.i ], [ 57448, %for.body.sw.epilog.i_crit_edge ]
  %.sink233.i = phi i32 [ 57496, %for.body104.preheader.i ], [ 57488, %for.body93.preheader.i ], [ 57480, %for.body82.preheader.i ], [ 57476, %for.body71.preheader.i ], [ 57472, %for.body60.preheader.i ], [ 49284, %for.body49.preheader.i ], [ 49280, %for.body38.preheader.i ], [ 49320, %for.body27.preheader.i ], [ 49304, %for.body16.preheader.i ], [ 49296, %for.body5.preheader.i ], [ 49288, %for.body.preheader.i ], [ 57512, %for.body.sw.epilog.i_crit_edge ]
  %.sink.i = phi i32 [ 57560, %for.body104.preheader.i ], [ 57552, %for.body93.preheader.i ], [ 57544, %for.body82.preheader.i ], [ 57540, %for.body71.preheader.i ], [ 57536, %for.body60.preheader.i ], [ 49348, %for.body49.preheader.i ], [ 49344, %for.body38.preheader.i ], [ 49384, %for.body27.preheader.i ], [ 49368, %for.body16.preheader.i ], [ 49360, %for.body5.preheader.i ], [ 49352, %for.body.preheader.i ], [ 57576, %for.body.sw.epilog.i_crit_edge ]
  %call118.i = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %6) #6
  %call118.1.i = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %.sink234.i) #6
  %call118.2.i = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %.sink233.i) #6
  %call118.3.i = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef %.sink.i) #6
  %10 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name8, align 4
  %call126.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %rname.i, i32 noundef 16, ptr noundef nonnull @.str.47, ptr noundef %11, ptr noundef nonnull @.str.48) #6
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %rname.i, i32 noundef %call118.i, i32 noundef %call118.1.i, i32 noundef %call118.2.i, i32 noundef %call118.3.i) #9
  br label %igc_regdump.exit

igc_regdump.exit:                                 ; preds = %sw.epilog.i, %sw.default.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rname.i) #6
  %incdec.ptr = getelementptr %struct.igc_reg_info, ptr %reginfo.07, i32 1
  %name = getelementptr %struct.igc_reg_info, ptr %reginfo.07, i32 1, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.end, label %igc_regdump.exit.for.body_crit_edge

igc_regdump.exit.for.body_crit_edge:              ; preds = %igc_regdump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %igc_regdump.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 126, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 133, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 134, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 141, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 153, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 168, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 169, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 172, i32 23}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 183, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 185, i32 17}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 187, i32 17}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 189, i32 17}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 191, i32 24}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 201, i32 20}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 211, i32 22}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 212, i32 22}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 215, i32 23}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 223, i32 22}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 249, i32 23}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 252, i32 23}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 253, i32 23}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 273, i32 25}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 274, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 279, i32 25}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 280, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 312, i32 31}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 313, i32 31}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 13, i32 13}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 14, i32 15}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 15, i32 17}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 16, i32 13}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 19, i32 12}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 22, i32 13}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 23, i32 17}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 24, i32 15}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 25, i32 15}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 26, i32 18}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 27, i32 17}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 28, i32 17}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 31, i32 13}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 32, i32 17}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 33, i32 17}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 34, i32 17}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 35, i32 15}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 36, i32 15}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 37, i32 18}
!92 = !{ptr @igc_reg_info_tbl, !93, !"igc_reg_info_tbl", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 11, i32 34}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 101, i32 20}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 106, i32 22}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 106, i32 45}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/igc/igc_dump.c", i32 107, i32 19}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
