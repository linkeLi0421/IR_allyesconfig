; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan743x_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan743x_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.115, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.115 = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@lan743x_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @lan743x_ethtool_get_drvinfo, ptr null, ptr null, ptr @lan743x_ethtool_get_wol, ptr @lan743x_ethtool_set_wol, ptr @lan743x_ethtool_get_msglevel, ptr @lan743x_ethtool_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr @lan743x_ethtool_get_eeprom_len, ptr @lan743x_ethtool_get_eeprom, ptr @lan743x_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan743x_ethtool_get_strings, ptr null, ptr @lan743x_ethtool_get_ethtool_stats, ptr null, ptr null, ptr @lan743x_ethtool_get_priv_flags, ptr @lan743x_ethtool_set_priv_flags, ptr @lan743x_ethtool_get_sset_count, ptr @lan743x_ethtool_get_rxnfc, ptr null, ptr null, ptr null, ptr @lan743x_ethtool_get_rxfh_key_size, ptr @lan743x_ethtool_get_rxfh_indir_size, ptr @lan743x_ethtool_get_rxfh, ptr @lan743x_ethtool_set_rxfh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan743x_ethtool_get_ts_info, ptr null, ptr null, ptr @lan743x_ethtool_get_eee, ptr @lan743x_ethtool_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lan743x\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timeout on OTP_STATUS completion\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EEPROM is busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EEPROM read operation timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@lan743x_set0_hw_cnt_strings = internal constant { [21 x [32 x i8]], [160 x i8] } { [21 x [32 x i8]] [[32 x i8] c"RX FCS Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Alignment Errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Rx Fragment Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Jabber Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Undersize Frame Errors\00\00\00\00\00\00\00", [32 x i8] c"RX Oversize Frame Errors\00\00\00\00\00\00\00\00", [32 x i8] c"RX Dropped Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Unicast Byte Count\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Broadcast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Multicast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Unicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Broadcast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Multicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Pause Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 64 Byte Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 65 - 127 Byte Frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX 128 - 255 Byte Frames\00\00\00\00\00\00\00\00", [32 x i8] c"RX 256 - 511 Bytes Frames\00\00\00\00\00\00\00", [32 x i8] c"RX 512 - 1023 Byte Frames\00\00\00\00\00\00\00", [32 x i8] c"RX 1024 - 1518 Byte Frames\00\00\00\00\00\00", [32 x i8] c"RX Greater 1518 Byte Frames\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@lan743x_set1_sw_cnt_strings = internal constant { [4 x [32 x i8]], [32 x i8] } { [4 x [32 x i8]] [[32 x i8] c"RX Queue 0 Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Queue 1 Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Queue 2 Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Queue 3 Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@lan743x_set2_hw_cnt_strings = internal constant { [30 x [32 x i8]], [224 x i8] } { [30 x [32 x i8]] [[32 x i8] c"RX Total Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE RX LPI Transitions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE RX LPI Time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX Counter Rollover Status\00\00\00\00\00\00", [32 x i8] c"TX FCS Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Excess Deferral Errors\00\00\00\00\00\00\00", [32 x i8] c"TX Carrier Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Bad Byte Count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Single Collisions\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multiple Collisions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Excessive Collision\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Late Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Unicast Byte Count\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Broadcast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multicast Byte Count\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Unicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Broadcast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Multicast Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Pause Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 64 Byte Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 65 - 127 Byte Frames\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX 128 - 255 Byte Frames\00\00\00\00\00\00\00\00", [32 x i8] c"TX 256 - 511 Bytes Frames\00\00\00\00\00\00\00", [32 x i8] c"TX 512 - 1023 Byte Frames\00\00\00\00\00\00\00", [32 x i8] c"TX 1024 - 1518 Byte Frames\00\00\00\00\00\00", [32 x i8] c"TX Greater 1518 Byte Frames\00\00\00\00\00", [32 x i8] c"TX Total Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE TX LPI Transitions\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"EEE TX LPI Time\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX Counter Rollover Status\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@lan743x_priv_flags_strings = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"OTP_ACCESS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@lan743x_set0_hw_cnt_addr = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 4608, i32 4612, i32 4616, i32 4620, i32 4624, i32 4628, i32 4632, i32 4636, i32 4640, i32 4644, i32 4648, i32 4652, i32 4656, i32 4660, i32 4664, i32 4668, i32 4672, i32 4676, i32 4680, i32 4684, i32 4688], [44 x i8] zeroinitializer }, align 32
@lan743x_set2_hw_cnt_addr = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 4692, i32 4696, i32 4700, i32 4732, i32 4736, i32 4740, i32 4744, i32 4748, i32 4752, i32 4756, i32 4760, i32 4764, i32 4768, i32 4772, i32 4776, i32 4780, i32 4784, i32 4788, i32 4792, i32 4796, i32 4800, i32 4804, i32 4808, i32 4812, i32 4816, i32 4820, i32 4824, i32 4828, i32 4832, i32 4860], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Missing PHY Driver\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEE initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 41, i64 45]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17]
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"lan743x_ethtool_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 819, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 271, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 72, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 189, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 167, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"lan743x_set0_hw_cnt_strings\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 337, i32 19 }
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"lan743x_set1_sw_cnt_strings\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 361, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"lan743x_set2_hw_cnt_strings\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 368, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"lan743x_priv_flags_strings\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 458, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"lan743x_set0_hw_cnt_addr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 401, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"lan743x_set2_hw_cnt_addr\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 425, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 703, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [52 x i8] c"../drivers/net/ethernet/microchip/lan743x_ethtool.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 755, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @lan743x_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lan743x_set0_hw_cnt_strings, ptr @lan743x_set1_sw_cnt_strings, ptr @lan743x_set2_hw_cnt_strings, ptr @lan743x_priv_flags_strings, ptr @lan743x_set0_hw_cnt_addr, ptr @lan743x_set2_hw_cnt_addr, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_set0_hw_cnt_strings to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_set1_sw_cnt_strings to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_set2_hw_cnt_strings to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_priv_flags_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_set0_hw_cnt_addr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_set2_hw_cnt_addr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_ethtool_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %pdev = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_ethtool_get_wol(ptr nocapture noundef readonly %netdev, ptr noundef %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %3, ptr noundef %wol) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %supported, align 4
  %or = or i32 %5, 63
  store i32 %or, ptr %supported, align 4
  %wolopts3 = getelementptr i8, ptr %netdev, i32 2316
  %6 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts3, align 4
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or5 = or i32 %9, %7
  store i32 %or5, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_set_wol(ptr nocapture noundef %netdev, ptr noundef %wol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wolopts, align 4
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts1, align 4
  %and = and i32 %2, 2
  store i32 %and, ptr %wolopts, align 4
  %3 = load i32, ptr %wolopts1, align 4
  %and4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or8 = or i32 %and, 4
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %5 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts1, align 4
  %and11 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %8, 8
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %9 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts1, align 4
  %and18 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %or22 = or i32 %12, 32
  store i32 %or22, ptr %wolopts, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %13 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts1, align 4
  %and25 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts, align 4
  %or29 = or i32 %16, 1
  store i32 %or29, ptr %wolopts, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %17 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts1, align 4
  %and32 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 4
  %or36 = or i32 %20, 16
  store i32 %or36, ptr %wolopts, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %pdev = getelementptr i8, ptr %netdev, i32 2320
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wolopts1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool39 = icmp ne i32 %24, 0
  %call40 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool39) #10
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %25 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phydev, align 16
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %if.end37.cond.end_crit_edge, label %cond.true

if.end37.cond.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %26, ptr noundef %wol) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end37.cond.end_crit_edge
  %cond = phi i32 [ %call43, %cond.true ], [ -100, %if.end37.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @lan743x_ethtool_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %msglevel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msglevel, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_eeprom_len(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 5720
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 512, i32 1024
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_get_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %ee, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 5720
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %offset2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset2, align 4
  %len3 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len3, align 4
  %add.i11 = add i32 %5, %3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i11)
  %cmp.i = icmp ugt i32 %add.i11, 1024
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4096) #10
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.lan743x_otp_power_up.exit.i_crit_edge, label %if.then.i.i

if.end.i.lan743x_otp_power_up.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_otp_power_up.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %call.i.i, -2
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef %and1.i.i) #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 20000, i32 noundef 2) #10
  br label %lan743x_otp_power_up.exit.i

lan743x_otp_power_up.exit.i:                      ; preds = %if.then.i.i, %if.end.i.lan743x_otp_power_up.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %6, 100
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end3.i.i.do.body.i.i_crit_edge, %lan743x_otp_power_up.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i, label %if.end3.i.i

do.body1.i.i:                                     ; preds = %do.body.i.i
  %msg_enable.i.i = getelementptr i8, ptr %netdev, i32 2312
  %8 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i.i, align 8
  %and.i32.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i33.i, label %do.body1.i.i.if.end_crit_edge, label %if.then2.i.i

do.body1.i.i.if.end_crit_edge:                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end3.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %call.i34.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4144) #10
  %and5.i.i = and i32 %call.i34.i, 1
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %for.cond.preheader.i, label %if.end3.i.i.do.body.i.i_crit_edge

if.end3.i.i.do.body.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

for.cond.preheader.i:                             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp861.not.i = icmp eq i32 %5, 0
  br i1 %cmp861.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %if.end13.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add9.i = add i32 %i.062.i, %3
  %shr.i.i = lshr i32 %add9.i, 8
  %and.i35.i = and i32 %shr.i.i, 3
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4100, i32 noundef %and.i35.i) #10
  %and1.i36.i = and i32 %add9.i, 255
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4104, i32 noundef %and1.i36.i) #10
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4128, i32 noundef 1) #10
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4136, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i37.i = add i32 %13, 100
  br label %do.body.i40.i

do.body.i40.i:                                    ; preds = %if.end3.i49.i.do.body.i40.i_crit_edge, %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i38.i = sub i32 %add.i37.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i38.i)
  %cmp.i39.i = icmp slt i32 %sub.i38.i, 0
  br i1 %cmp.i39.i, label %do.body1.i44.i, label %if.end3.i49.i

do.body1.i44.i:                                   ; preds = %do.body.i40.i
  %msg_enable.i41.i = getelementptr i8, ptr %netdev, i32 2312
  %15 = ptrtoint ptr %msg_enable.i41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i41.i, align 8
  %and.i42.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42.i)
  %tobool.not.i43.i = icmp eq i32 %and.i42.i, 0
  br i1 %tobool.not.i43.i, label %do.body1.i44.i.if.end_crit_edge, label %if.then2.i45.i

do.body1.i44.i.if.end_crit_edge:                  ; preds = %do.body1.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2.i45.i:                                   ; preds = %do.body1.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end3.i49.i:                                    ; preds = %do.body.i40.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %call.i46.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4144) #10
  %and5.i47.i = and i32 %call.i46.i, 1
  %tobool6.not.i48.i = icmp eq i32 %and5.i47.i, 0
  br i1 %tobool6.not.i48.i, label %if.end13.i, label %if.end3.i49.i.do.body.i40.i_crit_edge

if.end3.i49.i.do.body.i40.i_crit_edge:            ; preds = %if.end3.i49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i40.i

if.end13.i:                                       ; preds = %if.end3.i49.i
  %call14.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4120) #10
  %conv.i = trunc i32 %call14.i to i8
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.062.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call.i52.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4096) #10
  %and.i53.i = and i32 %call.i52.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.then.i55.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i55.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i = or i32 %call.i52.i, 1
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef %or.i.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i11)
  %cmp.i12 = icmp ugt i32 %add.i11, 512
  br i1 %cmp.i12, label %if.else.if.end_crit_edge, label %if.end.i14

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i14:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i.i13 = add i32 %21, 100
  br label %do.body.i.i17

do.body.i.i17:                                    ; preds = %if.end.i.i.do.body.i.i17_crit_edge, %if.end.i14
  %call.i.i15 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i15)
  %tobool.not.i.i16 = icmp sgt i32 %call.i.i15, -1
  br i1 %tobool.not.i.i16, label %for.cond.preheader.i18, label %if.end.i.i

for.cond.preheader.i18:                           ; preds = %do.body.i.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp440.not.i = icmp eq i32 %5, 0
  br i1 %cmp440.not.i, label %for.cond.preheader.i18.if.end_crit_edge, label %for.cond.preheader.i18.for.body.i23_crit_edge

for.cond.preheader.i18.for.body.i23_crit_edge:    ; preds = %for.cond.preheader.i18
  br label %for.body.i23

for.cond.preheader.i18.if.end_crit_edge:          ; preds = %for.cond.preheader.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %do.body.i.i17
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i19 = sub i32 %add.i.i13, %22
  %cmp.i.i20 = icmp sgt i32 %sub.i.i19, -1
  br i1 %cmp.i.i20, label %if.end.i.i.do.body.i.i17_crit_edge, label %do.body1.i.i22

if.end.i.i.do.body.i.i17_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i17

do.body1.i.i22:                                   ; preds = %if.end.i.i
  %msg_enable.i.i21 = getelementptr i8, ptr %netdev, i32 2312
  %23 = ptrtoint ptr %msg_enable.i.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i.i21, align 8
  %and2.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body1.i.i22.if.end_crit_edge, label %do.body1.i.i22.cleanup.sink.split.i_crit_edge

do.body1.i.i22.cleanup.sink.split.i_crit_edge:    ; preds = %do.body1.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body1.i.i22.if.end_crit_edge:                  ; preds = %do.body1.i.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i23:                                     ; preds = %if.end8.i.for.body.i23_crit_edge, %for.cond.preheader.i18.for.body.i23_crit_edge
  %i.042.i = phi i32 [ %inc11.i, %if.end8.i.for.body.i23_crit_edge ], [ 0, %for.cond.preheader.i18.for.body.i23_crit_edge ]
  %offset.addr.041.i = phi i32 [ %inc.i26, %if.end8.i.for.body.i23_crit_edge ], [ %3, %for.cond.preheader.i18.for.body.i23_crit_edge ]
  %and.i = and i32 %offset.addr.041.i, 511
  %or.i = or i32 %and.i, -2147483648
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef %or.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i27.i = add i32 %25, 100
  br label %do.body.i29.i

do.body.i29.i:                                    ; preds = %if.end.i32.i.do.body.i29.i_crit_edge, %for.body.i23
  %call.i28.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 64) #10
  %26 = and i32 %call.i28.i, -2147482624
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %do.body.i29.i.do.body6.i.i_crit_edge [
    i32 -2147483648, label %if.end.i32.i
    i32 0, label %if.end8.i
  ]

do.body.i29.i.do.body6.i.i_crit_edge:             ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

if.end.i32.i:                                     ; preds = %do.body.i29.i
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i30.i = sub i32 %add.i27.i, %28
  %cmp.i31.i = icmp sgt i32 %sub.i30.i, -1
  br i1 %cmp.i31.i, label %if.end.i32.i.do.body.i29.i_crit_edge, label %if.end.i32.i.do.body6.i.i_crit_edge

if.end.i32.i.do.body6.i.i_crit_edge:              ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

if.end.i32.i.do.body.i29.i_crit_edge:             ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i29.i

do.body6.i.i:                                     ; preds = %if.end.i32.i.do.body6.i.i_crit_edge, %do.body.i29.i.do.body6.i.i_crit_edge
  %msg_enable.i33.i = getelementptr i8, ptr %netdev, i32 2312
  %29 = ptrtoint ptr %msg_enable.i33.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i33.i, align 8
  %and7.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body6.i.i.if.end_crit_edge, label %do.body6.i.i.cleanup.sink.split.i_crit_edge

do.body6.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body6.i.i.if.end_crit_edge:                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end8.i:                                        ; preds = %do.body.i29.i
  %call9.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 68) #10
  %conv.i24 = trunc i32 %call9.i to i8
  %arrayidx.i25 = getelementptr i8, ptr %data, i32 %i.042.i
  %31 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i24, ptr %arrayidx.i25, align 1
  %inc.i26 = add i32 %offset.addr.041.i, 1
  %inc11.i = add nuw i32 %i.042.i, 1
  %exitcond.not.i27 = icmp eq i32 %inc11.i, %5
  br i1 %exitcond.not.i27, label %if.end8.i.if.end_crit_edge, label %if.end8.i.for.body.i23_crit_edge

if.end8.i.for.body.i23_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i23

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.sink.split.i:                             ; preds = %do.body6.i.i.cleanup.sink.split.i_crit_edge, %do.body1.i.i22.cleanup.sink.split.i_crit_edge
  %.str.3.sink.i = phi ptr [ @.str.2, %do.body1.i.i22.cleanup.sink.split.i_crit_edge ], [ @.str.3, %do.body6.i.i.cleanup.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull %.str.3.sink.i) #13
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.end8.i.if.end_crit_edge, %do.body6.i.i.if.end_crit_edge, %do.body1.i.i22.if.end_crit_edge, %for.cond.preheader.i18.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then.i55.i, %for.end.i.if.end_crit_edge, %if.then2.i45.i, %do.body1.i44.i.if.end_crit_edge, %if.then2.i.i, %do.body1.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.then.if.end_crit_edge ], [ 0, %for.end.i.if.end_crit_edge ], [ 0, %if.then.i55.i ], [ -5, %if.then2.i.i ], [ -5, %do.body1.i.i.if.end_crit_edge ], [ -5, %if.then2.i45.i ], [ -5, %do.body1.i44.i.if.end_crit_edge ], [ -22, %if.else.if.end_crit_edge ], [ -5, %do.body1.i.i22.if.end_crit_edge ], [ -5, %do.body6.i.i.if.end_crit_edge ], [ 0, %for.cond.preheader.i18.if.end_crit_edge ], [ -5, %cleanup.sink.split.i ], [ 0, %if.end8.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %ee, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 5720
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %magic3 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 1
  %2 = ptrtoint ptr %magic3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 29939, i32 %3)
  %cmp = icmp eq i32 %3, 29939
  br i1 %cmp, label %if.then1, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then1:                                         ; preds = %if.then
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1024
  br i1 %cmp.i, label %if.then1.if.end10_crit_edge, label %if.end.i

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i:                                         ; preds = %if.then1
  %call.i.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4096) #10
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.lan743x_otp_power_up.exit.i_crit_edge, label %if.then.i.i

if.end.i.lan743x_otp_power_up.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_otp_power_up.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %call.i.i, -2
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef %and1.i.i) #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 20000, i32 noundef 2) #10
  br label %lan743x_otp_power_up.exit.i

lan743x_otp_power_up.exit.i:                      ; preds = %if.then.i.i, %if.end.i.lan743x_otp_power_up.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %8, 100
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end3.i.i.do.body.i.i_crit_edge, %lan743x_otp_power_up.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i, label %if.end3.i.i

do.body1.i.i:                                     ; preds = %do.body.i.i
  %msg_enable.i.i = getelementptr i8, ptr %netdev, i32 2312
  %10 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i.i, align 8
  %and.i34.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i)
  %tobool.not.i35.i = icmp eq i32 %and.i34.i, 0
  br i1 %tobool.not.i35.i, label %do.body1.i.i.if.end10_crit_edge, label %if.then2.i.i

do.body1.i.i.if.end10_crit_edge:                  ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then2.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.1) #13
  br label %if.end10

if.end3.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  %call.i36.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4144) #10
  %and5.i.i = and i32 %call.i36.i, 1
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end7.i, label %if.end3.i.i.do.body.i.i_crit_edge

if.end3.i.i.do.body.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.end7.i:                                        ; preds = %if.end3.i.i
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4116, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp863.not.i = icmp eq i32 %7, 0
  br i1 %cmp863.not.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %add9.i = add i32 %i.064.i, %5
  %shr.i.i = lshr i32 %add9.i, 8
  %and.i37.i = and i32 %shr.i.i, 3
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4100, i32 noundef %and.i37.i) #10
  %and1.i38.i = and i32 %add9.i, 255
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4104, i32 noundef %and1.i38.i) #10
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.064.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4112, i32 noundef %conv.i) #10
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4132, i32 noundef 8) #10
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4136, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i39.i = add i32 %17, 100
  br label %do.body.i42.i

do.body.i42.i:                                    ; preds = %if.end3.i51.i.do.body.i42.i_crit_edge, %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i40.i = sub i32 %add.i39.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i40.i)
  %cmp.i41.i = icmp slt i32 %sub.i40.i, 0
  br i1 %cmp.i41.i, label %do.body1.i46.i, label %if.end3.i51.i

do.body1.i46.i:                                   ; preds = %do.body.i42.i
  %msg_enable.i43.i = getelementptr i8, ptr %netdev, i32 2312
  %19 = ptrtoint ptr %msg_enable.i43.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i43.i, align 8
  %and.i44.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44.i)
  %tobool.not.i45.i = icmp eq i32 %and.i44.i, 0
  br i1 %tobool.not.i45.i, label %do.body1.i46.i.if.end10_crit_edge, label %if.then2.i47.i

do.body1.i46.i.if.end10_crit_edge:                ; preds = %do.body1.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then2.i47.i:                                   ; preds = %do.body1.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.1) #13
  br label %if.end10

if.end3.i51.i:                                    ; preds = %do.body.i42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %call.i48.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4144) #10
  %and5.i49.i = and i32 %call.i48.i, 1
  %tobool6.not.i50.i = icmp eq i32 %and5.i49.i, 0
  br i1 %tobool6.not.i50.i, label %for.inc.i, label %if.end3.i51.i.do.body.i42.i_crit_edge

if.end3.i51.i.do.body.i42.i_crit_edge:            ; preds = %if.end3.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i42.i

for.inc.i:                                        ; preds = %if.end3.i51.i
  %inc.i = add nuw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %call.i54.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 4096) #10
  %and.i55.i = and i32 %call.i54.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %tobool.not.i56.i = icmp eq i32 %and.i55.i, 0
  br i1 %tobool.not.i56.i, label %if.then.i57.i, label %for.end.i.if.end10_crit_edge

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i57.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i.i = or i32 %call.i54.i, 1
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 4096, i32 noundef %or.i.i) #10
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 29861, i32 %3)
  %cmp4 = icmp eq i32 %3, 29861
  br i1 %cmp4, label %if.then5, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %if.else
  %offset6 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %24 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset6, align 4
  %len7 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %26 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len7, align 4
  %add.i19 = add i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i19)
  %cmp.i20 = icmp ugt i32 %add.i19, 512
  br i1 %cmp.i20, label %if.then5.if.end10_crit_edge, label %if.end.i22

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i22:                                       ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add.i.i21 = add i32 %28, 100
  br label %do.body.i.i25

do.body.i.i25:                                    ; preds = %if.end.i.i.do.body.i.i25_crit_edge, %if.end.i22
  %call.i.i23 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i23)
  %tobool.not.i.i24 = icmp sgt i32 %call.i.i23, -1
  br i1 %tobool.not.i.i24, label %if.end3.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i25
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i26 = sub i32 %add.i.i21, %29
  %cmp.i.i27 = icmp sgt i32 %sub.i.i26, -1
  br i1 %cmp.i.i27, label %if.end.i.i.do.body.i.i25_crit_edge, label %do.body1.i.i29

if.end.i.i.do.body.i.i25_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i25

do.body1.i.i29:                                   ; preds = %if.end.i.i
  %msg_enable.i.i28 = getelementptr i8, ptr %netdev, i32 2312
  %30 = ptrtoint ptr %msg_enable.i.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i.i28, align 8
  %and2.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body1.i.i29.if.end10_crit_edge, label %do.body1.i.i29.cleanup.sink.split.i_crit_edge

do.body1.i.i29.cleanup.sink.split.i_crit_edge:    ; preds = %do.body1.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body1.i.i29.if.end10_crit_edge:                ; preds = %do.body1.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end3.i:                                        ; preds = %do.body.i.i25
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef -1610612736) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i35.i = add i32 %32, 100
  br label %do.body.i37.i

do.body.i37.i:                                    ; preds = %if.end.i40.i.do.body.i37.i_crit_edge, %if.end3.i
  %call.i36.i30 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 64) #10
  %33 = and i32 %call.i36.i30, -2147482624
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %33, label %do.body.i37.i.do.body6.i.i_crit_edge [
    i32 -2147483648, label %if.end.i40.i
    i32 0, label %for.cond.preheader.i
  ]

do.body.i37.i.do.body6.i.i_crit_edge:             ; preds = %do.body.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

for.cond.preheader.i:                             ; preds = %do.body.i37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp866.not.i = icmp eq i32 %27, 0
  br i1 %cmp866.not.i, label %for.cond.preheader.i.if.end10_crit_edge, label %for.cond.preheader.i.for.body.i33_crit_edge

for.cond.preheader.i.for.body.i33_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i33

for.cond.preheader.i.if.end10_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i40.i:                                     ; preds = %do.body.i37.i
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i38.i = sub i32 %add.i35.i, %35
  %cmp.i39.i = icmp sgt i32 %sub.i38.i, -1
  br i1 %cmp.i39.i, label %if.end.i40.i.do.body.i37.i_crit_edge, label %if.end.i40.i.do.body6.i.i_crit_edge

if.end.i40.i.do.body6.i.i_crit_edge:              ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i.i

if.end.i40.i.do.body.i37.i_crit_edge:             ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i37.i

do.body6.i.i:                                     ; preds = %if.end.i40.i.do.body6.i.i_crit_edge, %do.body.i37.i.do.body6.i.i_crit_edge
  %msg_enable.i41.i = getelementptr i8, ptr %netdev, i32 2312
  %36 = ptrtoint ptr %msg_enable.i41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable.i41.i, align 8
  %and7.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %do.body6.i.i.if.end10_crit_edge, label %do.body6.i.i.cleanup.sink.split.i_crit_edge

do.body6.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body6.i.i.if.end10_crit_edge:                  ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.body.i33:                                     ; preds = %if.end13.i.for.body.i33_crit_edge, %for.cond.preheader.i.for.body.i33_crit_edge
  %i.068.i = phi i32 [ %inc14.i, %if.end13.i.for.body.i33_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i33_crit_edge ]
  %offset.addr.067.i = phi i32 [ %inc.i34, %if.end13.i.for.body.i33_crit_edge ], [ %25, %for.cond.preheader.i.for.body.i33_crit_edge ]
  %arrayidx.i31 = getelementptr i8, ptr %data, i32 %i.068.i
  %38 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i31, align 1
  %conv.i32 = zext i8 %39 to i32
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 68, i32 noundef %conv.i32) #10
  %and.i = and i32 %offset.addr.067.i, 511
  %or.i = or i32 %and.i, -1342177280
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef %or.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i43.i = add i32 %40, 100
  br label %do.body.i45.i

do.body.i45.i:                                    ; preds = %if.end.i48.i.do.body.i45.i_crit_edge, %for.body.i33
  %call.i44.i = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 64) #10
  %41 = and i32 %call.i44.i, -2147482624
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %41, label %do.body.i45.i.do.body6.i54.i_crit_edge [
    i32 -2147483648, label %if.end.i48.i
    i32 0, label %if.end13.i
  ]

do.body.i45.i.do.body6.i54.i_crit_edge:           ; preds = %do.body.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i54.i

if.end.i48.i:                                     ; preds = %do.body.i45.i
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 100, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub.i46.i = sub i32 %add.i43.i, %43
  %cmp.i47.i = icmp sgt i32 %sub.i46.i, -1
  br i1 %cmp.i47.i, label %if.end.i48.i.do.body.i45.i_crit_edge, label %if.end.i48.i.do.body6.i54.i_crit_edge

if.end.i48.i.do.body6.i54.i_crit_edge:            ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i54.i

if.end.i48.i.do.body.i45.i_crit_edge:             ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i45.i

do.body6.i54.i:                                   ; preds = %if.end.i48.i.do.body6.i54.i_crit_edge, %do.body.i45.i.do.body6.i54.i_crit_edge
  %msg_enable.i51.i = getelementptr i8, ptr %netdev, i32 2312
  %44 = ptrtoint ptr %msg_enable.i51.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i51.i, align 8
  %and7.i52.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i52.i)
  %tobool8.not.i53.i = icmp eq i32 %and7.i52.i, 0
  br i1 %tobool8.not.i53.i, label %do.body6.i54.i.if.end10_crit_edge, label %do.body6.i54.i.cleanup.sink.split.i_crit_edge

do.body6.i54.i.cleanup.sink.split.i_crit_edge:    ; preds = %do.body6.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

do.body6.i54.i.if.end10_crit_edge:                ; preds = %do.body6.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end13.i:                                       ; preds = %do.body.i45.i
  %inc.i34 = add i32 %offset.addr.067.i, 1
  %inc14.i = add nuw i32 %i.068.i, 1
  %exitcond.not.i35 = icmp eq i32 %inc14.i, %27
  br i1 %exitcond.not.i35, label %if.end13.i.if.end10_crit_edge, label %if.end13.i.for.body.i33_crit_edge

if.end13.i.for.body.i33_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i33

if.end13.i.if.end10_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

cleanup.sink.split.i:                             ; preds = %do.body6.i54.i.cleanup.sink.split.i_crit_edge, %do.body6.i.i.cleanup.sink.split.i_crit_edge, %do.body1.i.i29.cleanup.sink.split.i_crit_edge
  %.str.3.sink.i = phi ptr [ @.str.2, %do.body1.i.i29.cleanup.sink.split.i_crit_edge ], [ @.str.3, %do.body6.i.i.cleanup.sink.split.i_crit_edge ], [ @.str.3, %do.body6.i54.i.cleanup.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull %.str.3.sink.i) #13
  br label %if.end10

if.end10:                                         ; preds = %cleanup.sink.split.i, %if.end13.i.if.end10_crit_edge, %do.body6.i54.i.if.end10_crit_edge, %do.body6.i.i.if.end10_crit_edge, %for.cond.preheader.i.if.end10_crit_edge, %do.body1.i.i29.if.end10_crit_edge, %if.then5.if.end10_crit_edge, %if.else.if.end10_crit_edge, %if.then.i57.i, %for.end.i.if.end10_crit_edge, %if.then2.i47.i, %do.body1.i46.i.if.end10_crit_edge, %if.then2.i.i, %do.body1.i.i.if.end10_crit_edge, %if.then1.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %ret.0 = phi i32 [ -22, %if.then.if.end10_crit_edge ], [ -22, %if.else.if.end10_crit_edge ], [ -22, %if.then1.if.end10_crit_edge ], [ 0, %for.end.i.if.end10_crit_edge ], [ 0, %if.then.i57.i ], [ -5, %if.then2.i.i ], [ -5, %do.body1.i.i.if.end10_crit_edge ], [ -5, %if.then2.i47.i ], [ -5, %do.body1.i46.i.if.end10_crit_edge ], [ -22, %if.then5.if.end10_crit_edge ], [ -5, %do.body1.i.i29.if.end10_crit_edge ], [ -5, %do.body6.i.i.if.end10_crit_edge ], [ -5, %do.body6.i54.i.if.end10_crit_edge ], [ 0, %for.cond.preheader.i.if.end10_crit_edge ], [ -5, %cleanup.sink.split.i ], [ 0, %if.end13.i.if.end10_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lan743x_ethtool_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = call ptr @memcpy(ptr %data, ptr @lan743x_set0_hw_cnt_strings, i32 672)
  %arrayidx = getelementptr i8, ptr %data, i32 672
  %2 = call ptr @memcpy(ptr %arrayidx, ptr @lan743x_set1_sw_cnt_strings, i32 128)
  %arrayidx1 = getelementptr i8, ptr %data, i32 800
  %3 = call ptr @memcpy(ptr %arrayidx1, ptr @lan743x_set2_hw_cnt_strings, i32 960)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memcpy(ptr %data, ptr @lan743x_priv_flags_strings, i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_ethtool_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %inc3, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x i32], ptr @lan743x_set0_hw_cnt_addr, i32 0, i32 %i.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef %1) #10
  %conv = zext i32 %call1 to i64
  %inc3 = add nuw nsw i32 %i.043, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %i.043
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %arrayidx2, align 8
  %exitcond.not = icmp eq i32 %inc3, 21
  br i1 %exitcond.not, label %for.body7.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body7.preheader:                              ; preds = %for.body
  %frame_count = getelementptr i8, ptr %netdev, i32 4840
  %3 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frame_count, align 8
  %conv9 = zext i32 %4 to i64
  %arrayidx11 = getelementptr i64, ptr %data, i32 21
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv9, ptr %arrayidx11, align 8
  %frame_count.1 = getelementptr i8, ptr %netdev, i32 5128
  %6 = ptrtoint ptr %frame_count.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_count.1, align 8
  %conv9.1 = zext i32 %7 to i64
  %arrayidx11.1 = getelementptr i64, ptr %data, i32 22
  %8 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv9.1, ptr %arrayidx11.1, align 8
  %frame_count.2 = getelementptr i8, ptr %netdev, i32 5416
  %9 = ptrtoint ptr %frame_count.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_count.2, align 8
  %conv9.2 = zext i32 %10 to i64
  %arrayidx11.2 = getelementptr i64, ptr %data, i32 23
  %11 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv9.2, ptr %arrayidx11.2, align 8
  %frame_count.3 = getelementptr i8, ptr %netdev, i32 5704
  %12 = ptrtoint ptr %frame_count.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_count.3, align 8
  %conv9.3 = zext i32 %13 to i64
  %arrayidx11.3 = getelementptr i64, ptr %data, i32 24
  %14 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv9.3, ptr %arrayidx11.3, align 8
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body7.preheader
  %i.247 = phi i32 [ %inc25, %for.body18.for.body18_crit_edge ], [ 0, %for.body7.preheader ]
  %data_index.246 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 25, %for.body7.preheader ]
  %arrayidx19 = getelementptr [30 x i32], ptr @lan743x_set2_hw_cnt_addr, i32 0, i32 %i.247
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef %16) #10
  %conv21 = zext i32 %call20 to i64
  %inc22 = add nuw nsw i32 %data_index.246, 1
  %arrayidx23 = getelementptr i64, ptr %data, i32 %data_index.246
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv21, ptr %arrayidx23, align 8
  %inc25 = add nuw nsw i32 %i.247, 1
  %exitcond49.not = icmp eq i32 %inc25, 30
  br i1 %exitcond49.not, label %for.end26, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

for.end26:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_priv_flags(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %netdev, i32 5720
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lan743x_ethtool_set_priv_flags(ptr nocapture noundef writeonly %netdev, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr i8, ptr %netdev, i32 5720
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sset)
  %switch.selectcmp = icmp eq i32 %sset, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %switch.selectcmp5 = icmp eq i32 %sset, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 55, i32 %switch.select
  ret i32 %switch.select6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_rxnfc(ptr nocapture noundef readnone %netdev, ptr nocapture noundef %rxnfc, ptr nocapture noundef readnone %rule_locs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxnfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxnfc, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %entry.return_crit_edge [
    i32 41, label %sw.bb
    i32 45, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %data, align 8
  %flow_type = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 1
  %4 = ptrtoint ptr %flow_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %5, label %sw.bb.return_crit_edge [
    i32 1, label %sw.bb.sw.bb1_crit_edge
    i32 2, label %sw.bb.sw.bb1_crit_edge14
    i32 5, label %sw.bb.sw.bb1_crit_edge15
    i32 6, label %sw.bb.sw.bb1_crit_edge16
    i32 16, label %sw.bb.sw.bb3_crit_edge
    i32 17, label %sw.bb.sw.bb3_crit_edge17
  ]

sw.bb.sw.bb3_crit_edge17:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

sw.bb.sw.bb1_crit_edge16:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge15:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge14:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge14, %sw.bb.sw.bb1_crit_edge15, %sw.bb.sw.bb1_crit_edge16
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 192, ptr %data, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge17
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data, align 8
  %or5 = or i64 %9, 48
  store i64 %or5, ptr %data, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %rxnfc, i32 0, i32 2
  %10 = ptrtoint ptr %data7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4, ptr %data7, align 8
  br label %return

return:                                           ; preds = %sw.bb6, %sw.bb3, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb6 ], [ 0, %sw.bb3 ], [ -95, %sw.bb.return_crit_edge ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lan743x_ethtool_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_get_rxfh(ptr noundef %netdev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dw_index.081 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shl = shl i32 %dw_index.081, 2
  %add = add nuw nsw i32 %shl, 1408
  %call1 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef %add) #10
  %and = and i32 %call1, 255
  %arrayidx = getelementptr i32, ptr %indir, i32 %shl
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %arrayidx, align 4
  %shr4 = lshr i32 %call1, 8
  %and5 = and i32 %shr4, 255
  %add6 = or i32 %shl, 1
  %arrayidx7 = getelementptr i32, ptr %indir, i32 %add6
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and5, ptr %arrayidx7, align 4
  %shr8 = lshr i32 %call1, 16
  %and9 = and i32 %shr8, 255
  %add10 = or i32 %shl, 2
  %arrayidx11 = getelementptr i32, ptr %indir, i32 %add10
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and9, ptr %arrayidx11, align 4
  %shr12 = lshr i32 %call1, 24
  %add14 = or i32 %shl, 3
  %arrayidx15 = getelementptr i32, ptr %indir, i32 %add14
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr12, ptr %arrayidx15, align 4
  %inc = add nuw nsw i32 %dw_index.081, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool16.not = icmp eq ptr %key, null
  br i1 %tobool16.not, label %if.end.if.end49_crit_edge, label %if.end.for.body21_crit_edge

if.end.for.body21_crit_edge:                      ; preds = %if.end
  br label %for.body21

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.end.for.body21_crit_edge
  %dword_index.082 = phi i32 [ %inc47, %for.body21.for.body21_crit_edge ], [ 0, %if.end.for.body21_crit_edge ]
  %shl23 = shl i32 %dword_index.082, 2
  %add24 = add nuw nsw i32 %shl23, 1368
  %call25 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef %add24) #10
  %conv = trunc i32 %call25 to i8
  %arrayidx30 = getelementptr i8, ptr %key, i32 %shl23
  %4 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx30, align 1
  %shr31 = lshr i32 %call25, 8
  %conv33 = trunc i32 %shr31 to i8
  %add34 = or i32 %shl23, 1
  %arrayidx35 = getelementptr i8, ptr %key, i32 %add34
  %5 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv33, ptr %arrayidx35, align 1
  %shr36 = lshr i32 %call25, 16
  %conv38 = trunc i32 %shr36 to i8
  %add39 = or i32 %shl23, 2
  %arrayidx40 = getelementptr i8, ptr %key, i32 %add39
  %6 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv38, ptr %arrayidx40, align 1
  %shr41 = lshr i32 %call25, 24
  %conv43 = trunc i32 %shr41 to i8
  %add44 = or i32 %shl23, 3
  %arrayidx45 = getelementptr i8, ptr %key, i32 %add44
  %7 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv43, ptr %arrayidx45, align 1
  %inc47 = add nuw nsw i32 %dword_index.082, 1
  %exitcond83.not = icmp eq i32 %inc47, 10
  br i1 %exitcond83.not, label %for.body21.if.end49_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21

for.body21.if.end49_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %for.body21.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %hfunc, null
  br i1 %tobool50.not, label %if.end49.if.end52_crit_edge, label %if.then51

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hfunc, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49.if.end52_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_set_rxfh(ptr noundef %netdev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %indir, null
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %dword_index.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shl = shl i32 %dword_index.082, 2
  %arrayidx = getelementptr i32, ptr %indir, i32 %shl
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %add9 = or i32 %shl, 1
  %arrayidx10 = getelementptr i32, ptr %indir, i32 %add9
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx10, align 4
  %and11 = shl i32 %3, 8
  %shl12 = and i32 %and11, 65280
  %or = or i32 %shl12, %and
  %add13 = or i32 %shl, 2
  %arrayidx14 = getelementptr i32, ptr %indir, i32 %add13
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx14, align 4
  %and15 = shl i32 %5, 16
  %shl16 = and i32 %and15, 16711680
  %or17 = or i32 %or, %shl16
  %add18 = or i32 %shl, 3
  %arrayidx19 = getelementptr i32, ptr %indir, i32 %add18
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx19, align 4
  %shl21 = shl i32 %7, 24
  %or22 = or i32 %or17, %shl21
  %add24 = add nuw nsw i32 %shl, 1408
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef %add24, i32 noundef %or22) #10
  %inc = add nuw nsw i32 %dword_index.082, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.if.end25_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %for.body.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %key, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end25.for.body33_crit_edge

if.end25.for.body33_crit_edge:                    ; preds = %if.end25
  br label %for.body33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %if.end25.for.body33_crit_edge
  %dword_index28.083 = phi i32 [ %inc57, %for.body33.for.body33_crit_edge ], [ 0, %if.end25.for.body33_crit_edge ]
  %shl34 = shl i32 %dword_index28.083, 2
  %arrayidx36 = getelementptr i8, ptr %key, i32 %shl34
  %8 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %9 to i32
  %add39 = or i32 %shl34, 1
  %arrayidx40 = getelementptr i8, ptr %key, i32 %add39
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %11 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %or43 = or i32 %shl42, %conv37
  %add44 = or i32 %shl34, 2
  %arrayidx45 = getelementptr i8, ptr %key, i32 %add44
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %13 to i32
  %shl47 = shl nuw nsw i32 %conv46, 16
  %or48 = or i32 %or43, %shl47
  %add49 = or i32 %shl34, 3
  %arrayidx50 = getelementptr i8, ptr %key, i32 %add49
  %14 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %15 to i32
  %shl52 = shl nuw i32 %conv51, 24
  %or53 = or i32 %or48, %shl52
  %add55 = add nuw nsw i32 %shl34, 1368
  tail call void @lan743x_csr_write(ptr noundef %add.ptr.i, i32 noundef %add55, i32 noundef %or53) #10
  %inc57 = add nuw nsw i32 %dword_index28.083, 1
  %exitcond84.not = icmp eq i32 %inc57, 10
  br i1 %exitcond84.not, label %for.body33.cleanup_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33

for.body33.cleanup_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %for.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_get_ts_info(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ts_info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 95, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr i8, ptr %netdev, i32 2800
  %1 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @ptp_clock_index(ptr noundef nonnull %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3.sink = phi i32 [ %call3, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3.sink, ptr %3, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 3
  %5 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %ts_info, i32 0, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_get_eee(ptr noundef %netdev, ptr noundef %eee) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @phy_ethtool_get_eee(ptr noundef nonnull %1, ptr noundef %eee) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 256) #10
  %and13 = and i32 %call12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %eee_enabled20 = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %8 = ptrtoint ptr %eee_enabled20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %eee_enabled20, align 4
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 2
  %9 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %advertised, align 4
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 3
  %11 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lp_advertised, align 4
  %and16 = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17 = icmp ne i32 %and16, 0
  %lnot.ext = zext i1 %tobool17 to i32
  %eee_active = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 4
  %13 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %eee_active, align 4
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 6
  %14 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %tx_lpi_enabled, align 4
  %call19 = tail call i32 @lan743x_csr_read(ptr noundef %add.ptr.i, i32 noundef 304) #10
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 7
  %15 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %tx_lpi_timer, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %eee_active21 = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 4
  %16 = call ptr @memset(ptr %eee_active21, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %if.end8.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.then5 ], [ -5, %do.body.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_ethtool_set_eee(ptr noundef %netdev, ptr noundef %eee) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tobool1.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %phydev4 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev4, align 16
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %drv = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 8
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end7
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.then11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %8 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 @phy_init_eee(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end29, label %do.body20

do.body20:                                        ; preds = %if.then16
  %msg_enable21 = getelementptr i8, ptr %netdev, i32 2312
  %10 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable21, align 8
  %and22 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.cleanup_crit_edge, label %if.then24

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end29:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 7
  %14 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_lpi_timer, align 4
  tail call void @lan743x_csr_write(ptr noundef nonnull %add.ptr.i, i32 noundef 304, i32 noundef %15) #10
  %call30 = tail call i32 @lan743x_csr_read(ptr noundef nonnull %add.ptr.i, i32 noundef 256) #10
  %or = or i32 %call30, 131072
  br label %if.end33

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 @lan743x_csr_read(ptr noundef nonnull %add.ptr.i, i32 noundef 256) #10
  %and32 = and i32 %call31, -131073
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end29
  %and32.sink = phi i32 [ %and32, %if.else ], [ %or, %if.end29 ]
  tail call void @lan743x_csr_write(ptr noundef nonnull %add.ptr.i, i32 noundef 256, i32 noundef %and32.sink) #10
  %call34 = tail call i32 @phy_ethtool_set_eee(ptr noundef nonnull %1, ptr noundef %eee) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then24, %do.body20.cleanup_crit_edge, %if.then11, %do.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ], [ -5, %if.then11 ], [ -5, %do.body.cleanup_crit_edge ], [ %call17, %if.then24 ], [ %call17, %do.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_csr_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_csr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @lan743x_ethtool_ops, !1, !"lan743x_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 819, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 271, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 72, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 189, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 167, i32 3}
!10 = !{ptr @lan743x_set0_hw_cnt_strings, !11, !"lan743x_set0_hw_cnt_strings", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 337, i32 19}
!12 = !{ptr @lan743x_set1_sw_cnt_strings, !13, !"lan743x_set1_sw_cnt_strings", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 361, i32 19}
!14 = !{ptr @lan743x_set2_hw_cnt_strings, !15, !"lan743x_set2_hw_cnt_strings", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 368, i32 19}
!16 = !{ptr @lan743x_priv_flags_strings, !17, !"lan743x_priv_flags_strings", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 458, i32 19}
!18 = !{ptr @lan743x_set0_hw_cnt_addr, !19, !"lan743x_set0_hw_cnt_addr", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 401, i32 18}
!20 = !{ptr @lan743x_set2_hw_cnt_addr, !21, !"lan743x_set2_hw_cnt_addr", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 425, i32 18}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 703, i32 3}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/microchip/lan743x_ethtool.c", i32 755, i32 4}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
