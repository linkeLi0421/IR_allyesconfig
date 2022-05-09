; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000/e1000_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000/e1000_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_stats = type { [32 x i8], i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.155, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.155 = type { ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_rx_ring = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i16, i16 }
%struct.e1000_tx_ring = type { ptr, i32, i32, i32, i32, i32, ptr, i16, i16, i8 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.e1000_tx_desc = type { i64, %union.anon.156, %union.anon.158 }
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%struct.e1000_tx_buffer = type { ptr, i32, i32, i16, i16, i8, i16, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.page = type { i32, %union.anon.10, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.e1000_rx_desc = type { i64, i16, i16, i8, i8, i16 }
%struct.e1000_rx_buffer = type { %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.e1000_adapter = type { [128 x i32], i16, i32, i32, i32, i32, i32, i16, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i16, i16, i8, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i8, %struct.atomic_t, i8, i8, i8, ptr, ptr, ptr, %struct.napi_struct, i32, i32, i64, i64, i32, i32, i32, i8, i32, i64, ptr, ptr, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, i32, %struct.e1000_tx_ring, %struct.e1000_rx_ring, i32, i8, i8, i8, i32, i32, i32, i32, i8, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.e1000_eeprom_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.e1000_host_mng_dhcp_cookie, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_eeprom_info = type { i32, i16, i16, i16, i16, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i16, i8, i8, i32, i8, i8, i16 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_phy_stats = type { i32, i32 }

@e1000_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @e1000_get_drvinfo, ptr @e1000_get_regs_len, ptr @e1000_get_regs, ptr @e1000_get_wol, ptr @e1000_set_wol, ptr @e1000_get_msglevel, ptr @e1000_set_msglevel, ptr @e1000_nway_reset, ptr @e1000_get_link, ptr null, ptr @e1000_get_eeprom_len, ptr @e1000_get_eeprom, ptr @e1000_set_eeprom, ptr @e1000_get_coalesce, ptr @e1000_set_coalesce, ptr @e1000_get_ringparam, ptr @e1000_set_ringparam, ptr null, ptr @e1000_get_pauseparam, ptr @e1000_set_pauseparam, ptr @e1000_diag_test, ptr @e1000_get_strings, ptr @e1000_set_phys_id, ptr @e1000_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @e1000_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e1000_get_link_ksettings, ptr @e1000_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@e1000_driver_name = external dso_local global [0 x i8], align 1
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offline testing starting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"online testing starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed STATUS register test got: 0x%08X expected: 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"pattern test reg %04X failed: got 0x%08X expected 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"set/check reg %04X test failed: got 0x%08X expected 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"testing %s interrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shared\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unshared\00", [23 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@e1000_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Register test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Eeprom test    (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Interrupt test (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00", [32 x i8] c"Link test   (on/offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@e1000_gstrings_stats = internal constant { [46 x %struct.e1000_stats], [504 x i8] } { [46 x %struct.e1000_stats] [%struct.e1000_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1472 }, %struct.e1000_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1496 }, %struct.e1000_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1504 }, %struct.e1000_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1520 }, %struct.e1000_stats { [32 x i8] c"rx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1480 }, %struct.e1000_stats { [32 x i8] c"tx_broadcast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1712 }, %struct.e1000_stats { [32 x i8] c"rx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1488 }, %struct.e1000_stats { [32 x i8] c"tx_multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1704 }, %struct.e1000_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1280 }, %struct.e1000_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1288 }, %struct.e1000_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 244 }, %struct.e1000_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1488 }, %struct.e1000_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1336 }, %struct.e1000_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1568 }, %struct.e1000_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 260 }, %struct.e1000_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1256 }, %struct.e1000_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 268 }, %struct.e1000_stats { [32 x i8] c"rx_no_buffer_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1536 }, %struct.e1000_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1296 }, %struct.e1000_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1312 }, %struct.e1000_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1352 }, %struct.e1000_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 288 }, %struct.e1000_stats { [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 292 }, %struct.e1000_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1328 }, %struct.e1000_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1328 }, %struct.e1000_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1344 }, %struct.e1000_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1304 }, %struct.e1000_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1320 }, %struct.e1000_stats { [32 x i8] c"tx_timeout_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 664 }, %struct.e1000_stats { [32 x i8] c"tx_restart_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 620 }, %struct.e1000_stats { [32 x i8] c"rx_long_length_errors\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1560 }, %struct.e1000_stats { [32 x i8] c"rx_short_length_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1544 }, %struct.e1000_stats { [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1264 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1720 }, %struct.e1000_stats { [32 x i8] c"tx_tcp_seg_failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1728 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1384 }, %struct.e1000_stats { [32 x i8] c"rx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1400 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xon\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1392 }, %struct.e1000_stats { [32 x i8] c"tx_flow_control_xoff\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1408 }, %struct.e1000_stats { [32 x i8] c"rx_long_byte_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1504 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_good\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 944 }, %struct.e1000_stats { [32 x i8] c"rx_csum_offload_errors\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 936 }, %struct.e1000_stats { [32 x i8] c"alloc_rx_buff_failed\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 952 }, %struct.e1000_stats { [32 x i8] c"tx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1600 }, %struct.e1000_stats { [32 x i8] c"rx_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1584 }, %struct.e1000_stats { [32 x i8] c"dropped_smbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 8, i32 1592 }], [504 x i8] zeroinitializer }, align 32
@e1000_get_ethtool_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/intel/e1000/e1000_ethtool.c\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netdevice: %s%s: Invalid E1000 stat type: %u index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [14 x i64] [i64 12, i64 16, i64 4096, i64 4097, i64 4100, i64 4105, i64 4111, i64 4113, i64 4114, i64 4125, i64 4218, i64 4234, i64 4249, i64 4277]
@__sancov_gen_cov_switch_values.32 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"e1000_ethtool_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1860, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1661, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1526, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1567, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 735, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 670, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 690, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 847, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 326, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"e1000_gstrings_test\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 78, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"e1000_gstrings_stats\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 26, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1826, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4963, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4975, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4976, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4977, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4978, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4979, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4980, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4983, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 4984, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [52 x i8] c"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 184, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @e1000_ethtool_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @e1000_gstrings_test, ptr @e1000_gstrings_stats, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.netdev_reg_state], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_gstrings_stats to i32), i32 2024, i32 2528, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000_set_ethtool_ops(ptr nocapture noundef writeonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @e1000_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @e1000_driver_name, i32 noundef 32) #17
  %pdev = getelementptr i8, ptr %netdev, i32 3292
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_regs_len(ptr nocapture noundef readnone %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr noundef %p) #3 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #17
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !63
  %1 = call ptr @memset(ptr %p, i32 0, i32 128)
  %revision_id = getelementptr i8, ptr %netdev, i32 3506
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision_id, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device_id = getelementptr i8, ptr %netdev, i32 3498
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %5 to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3, ptr %version, align 4
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %mac_type = getelementptr i8, ptr %netdev, i32 3308
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #17, !srcloc !64
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !65
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %p, align 4
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #17, !srcloc !64
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !66
  %arrayidx18 = getelementptr i32, ptr %p, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx18, align 4
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 256
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #17, !srcloc !64
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !67
  %arrayidx30 = getelementptr i32, ptr %p, i32 2
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx30, align 4
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 4
  %24 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp35 = icmp ugt i32 %25, 2
  %cond37 = select i1 %cmp35, i32 10248, i32 280
  %add.ptr38 = getelementptr i8, ptr %23, i32 %cond37
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #17, !srcloc !64
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !68
  %arrayidx42 = getelementptr i32, ptr %p, i32 3
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx42, align 4
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 4
  %31 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp47 = icmp ugt i32 %32, 2
  %cond49 = select i1 %cmp47, i32 10256, i32 288
  %add.ptr50 = getelementptr i8, ptr %30, i32 %cond49
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #17, !srcloc !64
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !69
  %arrayidx54 = getelementptr i32, ptr %p, i32 4
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx54, align 4
  %36 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw1, align 4
  %38 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp59 = icmp ugt i32 %39, 2
  %cond61 = select i1 %cmp59, i32 10264, i32 296
  %add.ptr62 = getelementptr i8, ptr %37, i32 %cond61
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #17, !srcloc !64
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !70
  %arrayidx66 = getelementptr i32, ptr %p, i32 5
  %42 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx66, align 4
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1, align 4
  %45 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp71 = icmp ugt i32 %46, 2
  %cond73 = select i1 %cmp71, i32 10272, i32 264
  %add.ptr74 = getelementptr i8, ptr %44, i32 %cond73
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #17, !srcloc !64
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !71
  %arrayidx78 = getelementptr i32, ptr %p, i32 6
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx78, align 4
  %50 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1, align 4
  %add.ptr86 = getelementptr i8, ptr %51, i32 1024
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #17, !srcloc !64
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !72
  %arrayidx90 = getelementptr i32, ptr %p, i32 7
  %54 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx90, align 4
  %55 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1, align 4
  %57 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp95 = icmp ugt i32 %58, 2
  %cond97 = select i1 %cmp95, i32 14344, i32 1064
  %add.ptr98 = getelementptr i8, ptr %56, i32 %cond97
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #17, !srcloc !64
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !73
  %arrayidx102 = getelementptr i32, ptr %p, i32 8
  %61 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx102, align 4
  %62 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1, align 4
  %64 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp107 = icmp ugt i32 %65, 2
  %cond109 = select i1 %cmp107, i32 14352, i32 1072
  %add.ptr110 = getelementptr i8, ptr %63, i32 %cond109
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #17, !srcloc !64
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !74
  %arrayidx114 = getelementptr i32, ptr %p, i32 9
  %68 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx114, align 4
  %69 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw1, align 4
  %71 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp119 = icmp ugt i32 %72, 2
  %cond121 = select i1 %cmp119, i32 14360, i32 1080
  %add.ptr122 = getelementptr i8, ptr %70, i32 %cond121
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #17, !srcloc !64
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !75
  %arrayidx126 = getelementptr i32, ptr %p, i32 10
  %75 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx126, align 4
  %76 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw1, align 4
  %78 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp131 = icmp ugt i32 %79, 2
  %cond133 = select i1 %cmp131, i32 14368, i32 1088
  %add.ptr134 = getelementptr i8, ptr %77, i32 %cond133
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #17, !srcloc !64
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !76
  %arrayidx138 = getelementptr i32, ptr %p, i32 11
  %82 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx138, align 4
  %phy_type = getelementptr i8, ptr %netdev, i32 3312
  %83 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %phy_type, align 4
  %arrayidx139 = getelementptr i32, ptr %p, i32 12
  %85 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx139, align 4
  %86 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp141 = icmp eq i32 %86, 1
  br i1 %cmp141, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call143 = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 4466) #17
  %call144 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 18, ptr noundef nonnull %phy_data) #17
  %87 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %phy_data, align 2
  %conv145 = zext i16 %88 to i32
  %arrayidx146 = getelementptr i32, ptr %p, i32 13
  %89 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv145, ptr %arrayidx146, align 4
  %call147 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 4722) #17
  %call148 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 18, ptr noundef nonnull %phy_data) #17
  %90 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %phy_data, align 2
  %conv149 = zext i16 %91 to i32
  %arrayidx150 = getelementptr i32, ptr %p, i32 14
  %92 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv149, ptr %arrayidx150, align 4
  %call151 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 5234) #17
  %call152 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 18, ptr noundef nonnull %phy_data) #17
  %93 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %phy_data, align 2
  %conv153 = zext i16 %94 to i32
  %arrayidx154 = getelementptr i32, ptr %p, i32 15
  %95 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv153, ptr %arrayidx154, align 4
  %call155 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 6258) #17
  %call156 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 18, ptr noundef nonnull %phy_data) #17
  %96 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %phy_data, align 2
  %conv157 = zext i16 %97 to i32
  %arrayidx158 = getelementptr i32, ptr %p, i32 16
  %98 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv157, ptr %arrayidx158, align 4
  %arrayidx159 = getelementptr i32, ptr %p, i32 17
  %99 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx159, align 4
  %call160 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 0) #17
  %call161 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 17, ptr noundef nonnull %phy_data) #17
  %100 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %phy_data, align 2
  %conv162 = zext i16 %101 to i32
  %arrayidx163 = getelementptr i32, ptr %p, i32 18
  %102 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv162, ptr %arrayidx163, align 4
  %call164 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 180) #17
  %call165 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 20, ptr noundef nonnull %phy_data) #17
  %103 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %phy_data, align 2
  %conv166 = zext i16 %104 to i32
  %arrayidx167 = getelementptr i32, ptr %p, i32 19
  %105 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv166, ptr %arrayidx167, align 4
  %arrayidx168 = getelementptr i32, ptr %p, i32 20
  %106 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx168, align 4
  %arrayidx169 = getelementptr i32, ptr %p, i32 22
  %107 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx169, align 4
  %108 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx163, align 4
  %arrayidx171 = getelementptr i32, ptr %p, i32 23
  %110 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx171, align 4
  %call172 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 31, i16 noundef zeroext 0) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call173 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 17, ptr noundef nonnull %phy_data) #17
  %111 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %phy_data, align 2
  %conv174 = zext i16 %112 to i32
  %arrayidx175 = getelementptr i32, ptr %p, i32 13
  %113 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv174, ptr %arrayidx175, align 4
  %arrayidx176 = getelementptr i32, ptr %p, i32 14
  %114 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %arrayidx176, align 4
  %arrayidx177 = getelementptr i32, ptr %p, i32 15
  %115 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %arrayidx177, align 4
  %arrayidx178 = getelementptr i32, ptr %p, i32 16
  %116 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx178, align 4
  %call179 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 16, ptr noundef nonnull %phy_data) #17
  %117 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %phy_data, align 2
  %conv180 = zext i16 %118 to i32
  %arrayidx181 = getelementptr i32, ptr %p, i32 17
  %119 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv180, ptr %arrayidx181, align 4
  %120 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx175, align 4
  %arrayidx183 = getelementptr i32, ptr %p, i32 18
  %122 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx183, align 4
  %arrayidx184 = getelementptr i32, ptr %p, i32 19
  %123 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %arrayidx184, align 4
  %arrayidx186 = getelementptr i32, ptr %p, i32 20
  %124 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv180, ptr %arrayidx186, align 4
  %receive_errors = getelementptr i8, ptr %netdev, i32 4148
  %125 = ptrtoint ptr %receive_errors to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %receive_errors, align 4
  %arrayidx187 = getelementptr i32, ptr %p, i32 22
  %127 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx187, align 4
  %arrayidx189 = getelementptr i32, ptr %p, i32 23
  %128 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %121, ptr %arrayidx189, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phy_stats190 = getelementptr i8, ptr %netdev, i32 4144
  %129 = ptrtoint ptr %phy_stats190 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %phy_stats190, align 8
  %arrayidx191 = getelementptr i32, ptr %p, i32 21
  %131 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx191, align 4
  %call192 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 10, ptr noundef nonnull %phy_data) #17
  %132 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %phy_data, align 2
  %conv193 = zext i16 %133 to i32
  %arrayidx194 = getelementptr i32, ptr %p, i32 24
  %134 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv193, ptr %arrayidx194, align 4
  %arrayidx196 = getelementptr i32, ptr %p, i32 25
  %135 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv193, ptr %arrayidx196, align 4
  %136 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %137)
  %cmp198 = icmp ugt i32 %137, 4
  br i1 %cmp198, label %land.lhs.true, label %if.end.if.end215_crit_edge

if.end.if.end215_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215

land.lhs.true:                                    ; preds = %if.end
  %media_type = getelementptr i8, ptr %netdev, i32 3320
  %138 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp200 = icmp eq i32 %139, 0
  br i1 %cmp200, label %if.then202, label %land.lhs.true.if.end215_crit_edge

land.lhs.true.if.end215_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end215

if.then202:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %140 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1, align 4
  %add.ptr210 = getelementptr i8, ptr %141, i32 22560
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #17, !srcloc !64
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !77
  %arrayidx214 = getelementptr i32, ptr %p, i32 26
  %144 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx214, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then202, %land.lhs.true.if.end215_crit_edge, %if.end.if.end215_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 46, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call2 = tail call fastcc i32 @e1000_wol_exclusion(ptr noundef %add.ptr.i, ptr noundef %wol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr i8, ptr %netdev, i32 3292
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %device_id = getelementptr i8, ptr %netdev, i32 3498
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4277, i16 %6)
  %cond = icmp eq i16 %6, 4277
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported, align 4
  %and = and i32 %8, -3
  store i32 %and, ptr %supported, align 4
  %wol5 = getelementptr i8, ptr %netdev, i32 2828
  %9 = ptrtoint ptr %wol5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wol5, align 4
  %and6 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %sw.bb.sw.epilog_crit_edge, label %do.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and9 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body.sw.epilog_crit_edge, label %if.then11

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %netdev12 = getelementptr i8, ptr %netdev, i32 3288
  %13 = ptrtoint ptr %netdev12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev12, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str) #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %do.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %wol15 = getelementptr i8, ptr %netdev, i32 2828
  %15 = ptrtoint ptr %wol15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol15, align 4
  %and16 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.epilog.if.end20_crit_edge, label %if.then18

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then18:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.epilog.if.end20_crit_edge
  %19 = ptrtoint ptr %wol15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wol15, align 4
  %and22 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %or26 = or i32 %22, 4
  store i32 %or26, ptr %wolopts, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %23 = ptrtoint ptr %wol15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wol15, align 4
  %and29 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wolopts, align 4
  %or33 = or i32 %26, 8
  store i32 %or33, ptr %wolopts, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %27 = ptrtoint ptr %wol15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wol15, align 4
  %and36 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.then38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wolopts, align 4
  %or40 = or i32 %30, 32
  store i32 %or40, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef %wol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call fastcc i32 @e1000_wol_exclusion(ptr noundef %add.ptr.i, ptr noundef %wol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %pdev = getelementptr i8, ptr %netdev, i32 3292
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end8, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool7.not, i32 0, i32 -95
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %device_id = getelementptr i8, ptr %netdev, i32 3498
  %7 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4277, i16 %8)
  %cond53 = icmp eq i16 %8, 4277
  br i1 %cond53, label %sw.bb, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %and10 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb.sw.epilog_crit_edge, label %do.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %if.then15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %netdev16 = getelementptr i8, ptr %netdev, i32 3288
  %13 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev16, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str) #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge
  %wol19 = getelementptr i8, ptr %netdev, i32 2828
  %15 = ptrtoint ptr %wol19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wol19, align 4
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wolopts, align 4
  %and21 = shl i32 %17, 1
  %18 = and i32 %and21, 4
  store i32 %18, ptr %wol19, align 4
  %19 = load i32, ptr %wolopts, align 4
  %and27 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %sw.epilog.if.end32_crit_edge, label %if.then29

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %or31 = or i32 %18, 8
  %20 = ptrtoint ptr %wol19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or31, ptr %wol19, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %sw.epilog.if.end32_crit_edge
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  %and34 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %wol19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wol19, align 4
  %or38 = or i32 %24, 16
  store i32 %or38, ptr %wol19, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wolopts, align 4
  %and41 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %wol19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wol19, align 4
  %or45 = or i32 %28, 2
  store i32 %or45, ptr %wol19, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %wol19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wol19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool50 = icmp ne i32 %32, 0
  %call51 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev48, i1 noundef zeroext %tobool50) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then15, %do.body.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ 0, %if.end46 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then15 ], [ -95, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_msglevel(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @e1000_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_nway_reset(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @e1000_reinit_locked(ptr noundef %add.ptr.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %get_link_status = getelementptr i8, ptr %netdev, i32 3536
  %3 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %get_link_status, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call zeroext i1 @e1000_has_link(ptr noundef %add.ptr.i) #17
  %conv = zext i1 %call2 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_eeprom_len(ptr nocapture noundef readonly %netdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %word_size = getelementptr i8, ptr %netdev, i32 3360
  %0 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %word_size, align 4
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_eeprom(ptr noundef %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr i8, ptr %netdev, i32 3500
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %3 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3498
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %5 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %shr = lshr i32 %8, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %8
  %shr5 = lshr i32 %sub, 1
  %sub6 = sub nsw i32 %shr5, %shr
  %add7 = add i32 %sub6, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add7, i32 2) #17
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !78

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #21
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end10

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i
  %eeprom11 = getelementptr i8, ptr %netdev, i32 3356
  %12 = ptrtoint ptr %eeprom11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eeprom11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  %conv15 = trunc i32 %shr to i16
  br i1 %cmp12, label %if.then14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp2390 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp2390, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end44_crit_edge

for.cond.preheader.for.end44_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end44

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %conv18 = trunc i32 %add7 to i16
  %call19 = tail call i32 @e1000_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv15, i16 noundef zeroext %conv18, ptr noundef nonnull %call8.i) #17
  br label %if.end32

for.cond:                                         ; preds = %for.body
  %inc = add i16 %i.091, 1
  %conv20 = zext i16 %inc to i32
  %cmp23 = icmp sgt i32 %add7, %conv20
  br i1 %cmp23, label %for.cond.for.body_crit_edge, label %for.cond.if.end32_crit_edge

for.cond.if.end32_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %conv2092 = phi i32 [ %conv20, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.091 = phi i16 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv27 = add i16 %i.091, %conv15
  %arrayidx = getelementptr i16, ptr %call8.i, i32 %conv2092
  %call28 = tail call i32 @e1000_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv27, i16 noundef zeroext 1, ptr noundef %arrayidx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %for.body.if.end32_crit_edge

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.end32:                                         ; preds = %for.body.if.end32_crit_edge, %for.cond.if.end32_crit_edge, %if.then14
  %ret_val.1 = phi i32 [ %call19, %if.then14 ], [ %call28, %for.body.if.end32_crit_edge ], [ 0, %for.cond.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub6)
  %cmp3794 = icmp ult i32 %sub6, 2147483647
  br i1 %cmp3794, label %if.end32.for.body39_crit_edge, label %if.end32.for.end44_crit_edge

if.end32.for.end44_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end44

if.end32.for.body39_crit_edge:                    ; preds = %if.end32
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.end32.for.body39_crit_edge
  %conv3496 = phi i32 [ %conv34, %for.body39.for.body39_crit_edge ], [ 0, %if.end32.for.body39_crit_edge ]
  %i.195 = phi i16 [ %inc43, %for.body39.for.body39_crit_edge ], [ 0, %if.end32.for.body39_crit_edge ]
  %arrayidx41 = getelementptr i16, ptr %call8.i, i32 %conv3496
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx41, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #17
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx41, align 2
  %inc43 = add i16 %i.195, 1
  %conv34 = zext i16 %inc43 to i32
  %cmp37 = icmp sgt i32 %add7, %conv34
  br i1 %cmp37, label %for.body39.for.body39_crit_edge, label %for.body39.for.end44_crit_edge

for.body39.for.end44_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end44

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body39

for.end44:                                        ; preds = %for.body39.for.end44_crit_edge, %if.end32.for.end44_crit_edge, %for.cond.preheader.for.end44_crit_edge
  %ret_val.199 = phi i32 [ %ret_val.1, %if.end32.for.end44_crit_edge ], [ 0, %for.cond.preheader.for.end44_crit_edge ], [ %ret_val.1, %for.body39.for.end44_crit_edge ]
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %and = and i32 %19, 1
  %add.ptr = getelementptr i8, ptr %call8.i, i32 %and
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %22 = call ptr @memcpy(ptr %bytes, ptr %add.ptr, i32 %21)
  tail call void @kfree(ptr noundef nonnull %call8.i) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.199, %for.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_eeprom(ptr noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic, align 4
  %vendor_id = getelementptr i8, ptr %netdev, i32 3500
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %5 to i32
  %device_id = getelementptr i8, ptr %netdev, i32 3498
  %6 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_id, align 2
  %conv2 = zext i16 %7 to i32
  %shl = shl nuw i32 %conv2, 16
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or)
  %cmp3.not = icmp eq i32 %3, %or
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, 1
  %add = add i32 %1, -1
  %sub = add i32 %add, %9
  %shr11 = lshr i32 %sub, 1
  %word_size = getelementptr i8, ptr %netdev, i32 3360
  %10 = ptrtoint ptr %word_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %word_size, align 4
  %conv8 = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv8, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #21
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %conv18 = trunc i32 %shr to i16
  %call19 = tail call i32 @e1000_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv18, i16 noundef zeroext 1, ptr noundef nonnull %call9.i) #17
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %phi.cmp = icmp eq i32 %call19, 0
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then17 ], [ %call9.i, %if.end14.if.end20_crit_edge ]
  %ret_val.0 = phi i1 [ %phi.cmp, %if.then17 ], [ true, %if.end14.if.end20_crit_edge ]
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add23 = add i32 %17, %15
  %and24 = and i32 %add23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp ne i32 %and24, 0
  %or.cond = select i1 %tobool25.not, i1 %ret_val.0, i1 false
  br i1 %or.cond, label %if.then28, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %.pre = sub nsw i32 %shr11, %shr
  br label %if.end33

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  %conv29 = trunc i32 %shr11 to i16
  %sub30 = sub nsw i32 %shr11, %shr
  %arrayidx31 = getelementptr i16, ptr %call9.i, i32 %sub30
  %call32 = tail call i32 @e1000_read_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv29, i16 noundef zeroext 1, ptr noundef %arrayidx31) #17
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end20.if.end33_crit_edge
  %sub35.pre-phi = phi i32 [ %.pre, %if.end20.if.end33_crit_edge ], [ %sub30, %if.then28 ]
  %add36 = add i32 %sub35.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %sub35.pre-phi)
  %cmp37119 = icmp ult i32 %sub35.pre-phi, 2147483647
  br i1 %cmp37119, label %if.end33.for.body_crit_edge, label %for.end.thread

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

for.end.thread:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %19)
  br label %for.end52

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end33.for.body_crit_edge
  %conv34121 = phi i32 [ %conv34, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %i.0120 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %arrayidx39 = getelementptr i16, ptr %call9.i, i32 %conv34121
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx39, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #17
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %arrayidx39, align 2
  %inc = add i16 %i.0120, 1
  %conv34 = zext i16 %inc to i32
  %cmp37 = icmp sgt i32 %add36, %conv34
  br i1 %cmp37, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = call ptr @memcpy(ptr %ptr.0, ptr %bytes, i32 %26)
  br i1 %cmp37119, label %for.end.for.body47_crit_edge, label %for.end.for.end52_crit_edge

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52

for.end.for.body47_crit_edge:                     ; preds = %for.end
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.end.for.body47_crit_edge
  %conv42124 = phi i32 [ %conv42, %for.body47.for.body47_crit_edge ], [ 0, %for.end.for.body47_crit_edge ]
  %i.1123 = phi i16 [ %inc51, %for.body47.for.body47_crit_edge ], [ 0, %for.end.for.body47_crit_edge ]
  %arrayidx49 = getelementptr i16, ptr %call9.i, i32 %conv42124
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx49, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #17
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx49, align 2
  %inc51 = add i16 %i.1123, 1
  %conv42 = zext i16 %inc51 to i32
  %cmp45 = icmp sgt i32 %add36, %conv42
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.for.end52_crit_edge

for.body47.for.end52_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body47

for.end52:                                        ; preds = %for.body47.for.end52_crit_edge, %for.end.for.end52_crit_edge, %for.end.thread
  %conv53 = trunc i32 %shr to i16
  %conv56 = trunc i32 %add36 to i16
  %call57 = tail call i32 @e1000_write_eeprom(ptr noundef %hw1, i16 noundef zeroext %conv53, i16 noundef zeroext %conv56, ptr noundef nonnull %call9.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp61 = icmp ult i32 %9, 128
  %or.cond113 = select i1 %cmp58, i1 %cmp61, i1 false
  br i1 %or.cond113, label %if.then63, label %for.end52.if.end65_crit_edge

for.end52.if.end65_crit_edge:                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

if.then63:                                        ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #19
  %call64 = tail call i32 @e1000_update_eeprom_checksum(ptr noundef %hw1) #17
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end52.if.end65_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end65 ], [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type = getelementptr i8, ptr %netdev, i32 3308
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %itr_setting = getelementptr i8, ptr %netdev, i32 2908
  %2 = ptrtoint ptr %itr_setting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp1 = icmp ult i32 %3, 5
  br i1 %cmp1, label %if.end.cleanup.sink.split_crit_edge, label %if.else

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %div = udiv i32 1000000, %3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %div, %if.else ], [ %3, %if.end.cleanup.sink.split_crit_edge ]
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %rx_coalesce_usecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %mac_type = getelementptr i8, ptr %netdev, i32 3308
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %3)
  %cmp2 = icmp ugt i32 %3, 10000
  %4 = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %5 = icmp ult i32 %4, 5
  %or.cond = or i1 %cmp2, %5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else [
    i32 2, label %lor.lhs.false7.cleanup_crit_edge
    i32 4, label %if.then14
  ]

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then14:                                        ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  %itr_setting = getelementptr i8, ptr %netdev, i32 2908
  %7 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %itr_setting, align 4
  %itr = getelementptr i8, ptr %netdev, i32 2904
  %8 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %itr, align 8
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp16 = icmp ult i32 %3, 4
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %itr18 = getelementptr i8, ptr %netdev, i32 2904
  %9 = ptrtoint ptr %itr18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20000, ptr %itr18, align 8
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_coalesce_usecs, align 4
  %itr_setting20 = getelementptr i8, ptr %netdev, i32 2908
  %12 = ptrtoint ptr %itr_setting20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %itr_setting20, align 4
  br label %if.end27

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %div = udiv i32 1000000, %3
  %itr23 = getelementptr i8, ptr %netdev, i32 2904
  %13 = ptrtoint ptr %itr23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %itr23, align 8
  %and = and i32 %div, 1048572
  %itr_setting25 = getelementptr i8, ptr %netdev, i32 2908
  %14 = ptrtoint ptr %itr_setting25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %itr_setting25, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then17, %if.then14
  %itr_setting28 = getelementptr i8, ptr %netdev, i32 2908
  %15 = ptrtoint ptr %itr_setting28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %itr_setting28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp29.not = icmp eq i32 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17
  tail call void @arm_heavy_mb() #17
  br i1 %cmp29.not, label %do.body36, label %do.body

do.body:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %itr31 = getelementptr i8, ptr %netdev, i32 2904
  %17 = ptrtoint ptr %itr31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %itr31, align 8
  %mul = shl i32 %18, 8
  %div32 = udiv i32 1000000000, %mul
  %19 = tail call i32 @llvm.bswap.i32(i32 %div32)
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #17, !srcloc !79
  br label %cleanup

do.body36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #17, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %do.body, %lor.lhs.false7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body36 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e1000_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type2 = getelementptr i8, ptr %netdev, i32 3308
  %0 = ptrtoint ptr %mac_type2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type2, align 4
  %tx_ring = getelementptr i8, ptr %netdev, i32 2920
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %rx_ring = getelementptr i8, ptr %netdev, i32 3004
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  %cond = select i1 %cmp, i32 256, i32 4096
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %tx_max_pending, align 4
  %count = getelementptr inbounds %struct.e1000_rx_ring, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_pending, align 4
  %count5 = getelementptr inbounds %struct.e1000_tx_ring, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count5, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mac_type2 = getelementptr i8, ptr %netdev, i32 3308
  %0 = ptrtoint ptr %mac_type2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type2, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %while.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %flags = getelementptr i8, ptr %netdev, i32 4240
  %call4227 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4227)
  %tobool5.not228 = icmp eq i32 %call4227, 0
  br i1 %tobool5.not228, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #17
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %netdev6 = getelementptr i8, ptr %netdev, i32 3288
  %6 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev6, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.if.end9_crit_edge, label %if.then8

while.end.if.end9_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @e1000_down(ptr noundef %add.ptr.i) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end.if.end9_crit_edge
  %tx_ring = getelementptr i8, ptr %netdev, i32 2920
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring, align 8
  %rx_ring = getelementptr i8, ptr %netdev, i32 3004
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring, align 4
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 3232
  %14 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues, align 8
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 36) #17
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end9.err_alloc_tx_crit_edge, label %if.end7.i.i, !prof !78

if.end9.err_alloc_tx_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc_tx

if.end7.i.i:                                      ; preds = %if.end9
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #21
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.err_alloc_tx_crit_edge, label %if.end13

if.end7.i.i.err_alloc_tx_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc_tx

if.end13:                                         ; preds = %if.end7.i.i
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 3236
  %19 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_rx_queues, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 40) #17
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end13.err_alloc_rx_crit_edge, label %if.end7.i.i204, !prof !78

if.end13.err_alloc_rx_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc_rx

if.end7.i.i204:                                   ; preds = %if.end13
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i203 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #21
  %tobool15.not = icmp eq ptr %call8.i.i203, null
  br i1 %tobool15.not, label %if.end7.i.i204.err_alloc_rx_crit_edge, label %if.end17

if.end7.i.i204.err_alloc_rx_crit_edge:            ; preds = %if.end7.i.i204
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc_rx

if.end17:                                         ; preds = %if.end7.i.i204
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i, ptr %tx_ring, align 8
  %25 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i203, ptr %rx_ring, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %26 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_pending, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 48)
  %count = getelementptr inbounds %struct.e1000_rx_ring, ptr %call8.i.i203, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp21 = icmp ult i32 %1, 4
  %cond22 = select i1 %cmp21, i32 256, i32 4096
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %cond22)
  %add = add nuw nsw i32 %29, 7
  %and = and i32 %add, 16376
  %30 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %count, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %31 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_pending, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 48)
  %count38 = getelementptr inbounds %struct.e1000_tx_ring, ptr %call8.i.i, i32 0, i32 3
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %cond22)
  %add50 = add nuw nsw i32 %34, 7
  %and51 = and i32 %add50, 16376
  %35 = ptrtoint ptr %count38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and51, ptr %count38, align 4
  %36 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp54229 = icmp sgt i32 %37, 0
  br i1 %cmp54229, label %for.body.preheader, label %if.end17.for.cond57.preheader_crit_edge

if.end17.for.cond57.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond57.preheader

for.body.preheader:                               ; preds = %if.end17
  %38 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues, align 8
  br label %for.body

for.cond57.preheader:                             ; preds = %for.body.for.cond57.preheader_crit_edge, %if.end17.for.cond57.preheader_crit_edge
  %40 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp59231 = icmp sgt i32 %41, 0
  br i1 %cmp59231, label %for.body60.preheader, label %for.cond57.preheader.for.end66_crit_edge

for.cond57.preheader.for.end66_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end66

for.body60.preheader:                             ; preds = %for.cond57.preheader
  %42 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_rx_queues, align 4
  br label %for.body60

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0230 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %44 = ptrtoint ptr %count38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count38, align 4
  %count56 = getelementptr %struct.e1000_tx_ring, ptr %call8.i.i, i32 %i.0230, i32 3
  %46 = ptrtoint ptr %count56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %count56, align 4
  %inc = add nuw nsw i32 %i.0230, 1
  %cmp54 = icmp slt i32 %inc, %39
  br i1 %cmp54, label %for.body.for.body_crit_edge, label %for.body.for.cond57.preheader_crit_edge

for.body.for.cond57.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond57.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body60.preheader
  %i.1232 = phi i32 [ %inc65, %for.body60.for.body60_crit_edge ], [ 0, %for.body60.preheader ]
  %47 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count, align 4
  %count63 = getelementptr %struct.e1000_rx_ring, ptr %call8.i.i203, i32 %i.1232, i32 3
  %49 = ptrtoint ptr %count63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %count63, align 4
  %inc65 = add nuw nsw i32 %i.1232, 1
  %cmp59 = icmp slt i32 %inc65, %43
  br i1 %cmp59, label %for.body60.for.body60_crit_edge, label %for.body60.for.end66_crit_edge

for.body60.for.end66_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end66

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body60

for.end66:                                        ; preds = %for.body60.for.end66_crit_edge, %for.cond57.preheader.for.end66_crit_edge
  %50 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev6, align 8
  %state.i207 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %state.i207 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i207, align 4
  %and1.i.i208 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i208)
  %tobool.i209.not = icmp eq i32 %and1.i.i208, 0
  br i1 %tobool.i209.not, label %for.end66.if.end83_crit_edge, label %if.then69

for.end66.if.end83_crit_edge:                     ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end83

if.then69:                                        ; preds = %for.end66
  %call70 = tail call i32 @e1000_setup_all_rx_resources(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then69.err_setup_rx_crit_edge

if.then69.err_setup_rx_crit_edge:                 ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_setup_rx

if.end73:                                         ; preds = %if.then69
  %call74 = tail call i32 @e1000_setup_all_tx_resources(ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %err_setup_tx

if.end77:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %13, ptr %rx_ring, align 4
  %55 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %11, ptr %tx_ring, align 8
  tail call void @e1000_free_all_rx_resources(ptr noundef %add.ptr.i) #17
  tail call void @e1000_free_all_tx_resources(ptr noundef %add.ptr.i) #17
  %56 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i.i203, ptr %rx_ring, align 4
  %57 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i, ptr %tx_ring, align 8
  %call82 = tail call i32 @e1000_up(ptr noundef %add.ptr.i) #17
  br label %if.end83

if.end83:                                         ; preds = %if.end77, %for.end66.if.end83_crit_edge
  %err.0 = phi i32 [ %call82, %if.end77 ], [ 0, %for.end66.if.end83_crit_edge ]
  tail call void @kfree(ptr noundef %11) #17
  tail call void @kfree(ptr noundef %13) #17
  br label %cleanup.sink.split

err_setup_tx:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @e1000_free_all_rx_resources(ptr noundef %add.ptr.i) #17
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %err_setup_tx, %if.then69.err_setup_rx_crit_edge
  %err.1 = phi i32 [ %call70, %if.then69.err_setup_rx_crit_edge ], [ %call74, %err_setup_tx ]
  %58 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %13, ptr %rx_ring, align 4
  %59 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %11, ptr %tx_ring, align 8
  tail call void @kfree(ptr noundef nonnull %call8.i.i203) #17
  br label %err_alloc_rx

err_alloc_rx:                                     ; preds = %err_setup_rx, %if.end7.i.i204.err_alloc_rx_crit_edge, %if.end13.err_alloc_rx_crit_edge
  %err.2 = phi i32 [ %err.1, %err_setup_rx ], [ -12, %if.end7.i.i204.err_alloc_rx_crit_edge ], [ -12, %if.end13.err_alloc_rx_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #17
  br label %err_alloc_tx

err_alloc_tx:                                     ; preds = %err_alloc_rx, %if.end7.i.i.err_alloc_tx_crit_edge, %if.end9.err_alloc_tx_crit_edge
  %err.3 = phi i32 [ %err.2, %err_alloc_rx ], [ -12, %if.end7.i.i.err_alloc_tx_crit_edge ], [ -12, %if.end9.err_alloc_tx_crit_edge ]
  %60 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev6, align 8
  %state.i210 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %state.i210 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state.i210, align 4
  %and1.i.i211 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i211)
  %tobool.i212.not = icmp eq i32 %and1.i.i211, 0
  br i1 %tobool.i212.not, label %err_alloc_tx.cleanup.sink.split_crit_edge, label %if.then89

err_alloc_tx.cleanup.sink.split_crit_edge:        ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.then89:                                        ; preds = %err_alloc_tx
  call void @__sanitizer_cov_trace_pc() #19
  %call90 = tail call i32 @e1000_up(ptr noundef %add.ptr.i) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then89, %err_alloc_tx.cleanup.sink.split_crit_edge, %if.end83
  %retval.0.ph = phi i32 [ %err.0, %if.end83 ], [ %err.3, %if.then89 ], [ %err.3, %err_alloc_tx.cleanup.sink.split_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e1000_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2916
  %0 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  %cond = zext i1 %tobool.not to i32
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %autoneg, align 4
  %fc = getelementptr i8, ptr %netdev, i32 3340
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fc, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %4, label %entry.if.end15_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then6
    i32 3, label %if.then11
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  br label %if.end15.sink.split

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end15.sink.split

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rx_pause12 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %6 = ptrtoint ptr %rx_pause12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rx_pause12, align 4
  %tx_pause13 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then11, %if.then6, %if.then
  %tx_pause.sink = phi ptr [ %tx_pause, %if.then6 ], [ %tx_pause13, %if.then11 ], [ %rx_pause, %if.then ]
  %7 = ptrtoint ptr %tx_pause.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %tx_pause.sink, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_pauseparam(ptr noundef %netdev, ptr nocapture noundef readonly %pause) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  %conv = trunc i32 %1 to i8
  %fc_autoneg = getelementptr i8, ptr %netdev, i32 2916
  %2 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %fc_autoneg, align 4
  %flags = getelementptr i8, ptr %netdev, i32 4240
  %call374 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call374)
  %tobool.not75 = icmp eq i32 %call374, 0
  br i1 %tobool.not75, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #17
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  %tx_pause17 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_pause17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true16, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  br i1 %tobool18.not, label %land.lhs.true8, label %land.lhs.true.if.end31.sink.split_crit_edge

land.lhs.true.if.end31.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.sink.split

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = ptrtoint ptr %tx_pause17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_pause17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %land.lhs.true8.if.end31.sink.split_crit_edge, label %land.lhs.true8.if.end31_crit_edge

land.lhs.true8.if.end31_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true8.if.end31.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.sink.split

land.lhs.true16:                                  ; preds = %while.end
  br i1 %tobool18.not, label %land.lhs.true24, label %land.lhs.true16.if.end31.sink.split_crit_edge

land.lhs.true16.if.end31.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.sink.split

land.lhs.true24:                                  ; preds = %land.lhs.true16
  %9 = ptrtoint ptr %tx_pause17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pause17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool26.not = icmp eq i32 %10, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end31.sink.split_crit_edge, label %land.lhs.true24.if.end31_crit_edge

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

land.lhs.true24.if.end31.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %land.lhs.true24.if.end31.sink.split_crit_edge, %land.lhs.true16.if.end31.sink.split_crit_edge, %land.lhs.true8.if.end31.sink.split_crit_edge, %land.lhs.true.if.end31.sink.split_crit_edge
  %.sink = phi i32 [ 3, %land.lhs.true.if.end31.sink.split_crit_edge ], [ 1, %land.lhs.true8.if.end31.sink.split_crit_edge ], [ 2, %land.lhs.true16.if.end31.sink.split_crit_edge ], [ 0, %land.lhs.true24.if.end31.sink.split_crit_edge ]
  %fc12 = getelementptr i8, ptr %netdev, i32 3340
  %11 = ptrtoint ptr %fc12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %fc12, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %land.lhs.true24.if.end31_crit_edge, %land.lhs.true8.if.end31_crit_edge
  %fc32 = getelementptr i8, ptr %netdev, i32 3340
  %12 = ptrtoint ptr %fc32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc32, align 4
  %original_fc = getelementptr i8, ptr %netdev, i32 3408
  %14 = ptrtoint ptr %original_fc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %original_fc, align 4
  %15 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fc_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp = icmp eq i8 %16, 1
  br i1 %cmp, label %if.then36, label %if.else43

if.then36:                                        ; preds = %if.end31
  %netdev37 = getelementptr i8, ptr %netdev, i32 3288
  %17 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev37, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @e1000_down(ptr noundef %add.ptr.i) #17
  %call40 = tail call i32 @e1000_up(ptr noundef %add.ptr.i) #17
  br label %if.end48

if.else41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @e1000_reset(ptr noundef %add.ptr.i) #17
  br label %if.end48

if.else43:                                        ; preds = %if.end31
  %media_type = getelementptr i8, ptr %netdev, i32 3320
  %21 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp44 = icmp eq i32 %22, 1
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #19
  %call46 = tail call i32 @e1000_setup_link(ptr noundef %hw1) #17
  br label %if.end48

cond.false:                                       ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #19
  %call47 = tail call i32 @e1000_force_mac_fc(ptr noundef %hw1) #17
  br label %if.end48

if.end48:                                         ; preds = %cond.false, %cond.true, %if.else41, %if.then39
  %retval2.0 = phi i32 [ 0, %if.then39 ], [ 0, %if.else41 ], [ %call46, %cond.true ], [ %call47, %cond.false ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_diag_test(ptr noundef %netdev, ptr nocapture noundef %eth_test, ptr noundef %data) #3 align 64 {
entry:
  %phy_reg.i.i = alloca i16, align 2
  %temp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %flags = getelementptr i8, ptr %netdev, i32 4240
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  %flags3 = getelementptr inbounds %struct.ethtool_test, ptr %eth_test, i32 0, i32 1
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %do.body55

if.then:                                          ; preds = %entry
  %autoneg_advertised4 = getelementptr i8, ptr %netdev, i32 3478
  %4 = ptrtoint ptr %autoneg_advertised4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised4, align 2
  %forced_speed_duplex5 = getelementptr i8, ptr %netdev, i32 3509
  %6 = ptrtoint ptr %forced_speed_duplex5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %forced_speed_duplex5, align 1
  %autoneg6 = getelementptr i8, ptr %netdev, i32 3507
  %8 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autoneg6, align 1
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 8
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end_crit_edge, label %if.then7

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %netdev8 = getelementptr i8, ptr %netdev, i32 3288
  %12 = ptrtoint ptr %netdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev8, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.1) #20
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then.do.end_crit_edge
  %arrayidx = getelementptr i64, ptr %data, i32 4
  %hw1.i = getelementptr i8, ptr %netdev, i32 3296
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %arrayidx, align 8
  %media_type.i = getelementptr i8, ptr %netdev, i32 3320
  %15 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i = icmp eq i32 %16, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  %serdes_has_link.i = getelementptr i8, ptr %netdev, i32 3537
  %17 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %serdes_has_link.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %i.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %call.i = tail call i32 @e1000_check_for_link(ptr noundef %hw1.i) #17
  %18 = ptrtoint ptr %serdes_has_link.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %serdes_has_link.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.e1000_link_test.exit_crit_edge

do.body.i.e1000_link_test.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_link_test.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 20) #17
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3751
  br i1 %exitcond.not.i, label %if.end.i.if.end17.sink.split.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.end.i.if.end17.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.sink.split.i

if.else.i:                                        ; preds = %do.end
  %call6.i = tail call i32 @e1000_check_for_link(ptr noundef %hw1.i) #17
  %20 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %autoneg6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then8.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef 4000) #17
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.else.i.if.end9.i_crit_edge
  %22 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !81
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not.i = icmp eq i32 %25, 0
  br i1 %tobool14.not.i, label %if.end9.i.if.end17.sink.split.i_crit_edge, label %if.end9.i.e1000_link_test.exit_crit_edge

if.end9.i.e1000_link_test.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_link_test.exit

if.end9.i.if.end17.sink.split.i_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.end9.i.if.end17.sink.split.i_crit_edge, %if.end.i.if.end17.sink.split.i_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 1, ptr %arrayidx, align 8
  br label %e1000_link_test.exit

e1000_link_test.exit:                             ; preds = %if.end17.sink.split.i, %if.end9.i.e1000_link_test.exit_crit_edge, %do.body.i.e1000_link_test.exit_crit_edge
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx, align 8
  %conv.i = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool10.not = icmp eq i32 %conv.i, 0
  br i1 %tobool10.not, label %e1000_link_test.exit.if.end13_crit_edge, label %if.then11

e1000_link_test.exit.if.end13_crit_edge:          ; preds = %e1000_link_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then11:                                        ; preds = %e1000_link_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags3, align 4
  %or = or i32 %30, 2
  store i32 %or, ptr %flags3, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %e1000_link_test.exit.if.end13_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 @e1000_close(ptr noundef %netdev) #17
  br label %if.end17

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @e1000_reset(ptr noundef %add.ptr.i) #17
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %31 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1.i, align 4
  %mac_type.i = getelementptr i8, ptr %netdev, i32 3308
  %add.ptr.i123 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !82
  %34 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !83
  %37 = and i32 %36, 871956479
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !84
  tail call void @arm_heavy_mb() #17
  %39 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw1.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 871956479) #17, !srcloc !79
  %41 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %42, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !85
  %44 = and i32 %43, 871956479
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %44)
  %cmp29.not.i = icmp eq i32 %37, %44
  br i1 %cmp29.not.i, label %do.body36.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.end17
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 8
  %and31.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.not.i124 = icmp eq i32 %and31.i, 0
  br i1 %tobool.not.i124, label %do.body30.i.e1000_reg_test.exit.thread177_crit_edge, label %if.then32.i

do.body30.i.e1000_reg_test.exit.thread177_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_reg_test.exit.thread177

if.then32.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #19
  %netdev.i = getelementptr i8, ptr %netdev, i32 3288
  %48 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netdev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef %38) #20
  br label %e1000_reg_test.exit.thread177

do.body36.i:                                      ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !86
  tail call void @arm_heavy_mb() #17
  %50 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %33) #17, !srcloc !79
  %call48.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 40, i32 noundef -1, i32 noundef -1) #17
  br i1 %call48.i, label %do.body36.i.if.then21_crit_edge, label %do.body53.i

do.body36.i.if.then21_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body53.i:                                      ; preds = %do.body36.i
  %call57.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 44, i32 noundef 65535, i32 noundef -1) #17
  br i1 %call57.i, label %do.body53.i.if.then21_crit_edge, label %do.body62.i

do.body53.i.if.then21_crit_edge:                  ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body62.i:                                      ; preds = %do.body53.i
  %call66.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 48, i32 noundef 65535, i32 noundef -1) #17
  br i1 %call66.i, label %do.body62.i.if.then21_crit_edge, label %do.body71.i

do.body62.i.if.then21_crit_edge:                  ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body71.i:                                      ; preds = %do.body62.i
  %call75.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 56, i32 noundef 65535, i32 noundef -1) #17
  br i1 %call75.i, label %do.body71.i.if.then21_crit_edge, label %do.body80.i

do.body71.i.if.then21_crit_edge:                  ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body80.i:                                      ; preds = %do.body71.i
  %52 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp82.i = icmp ugt i32 %53, 2
  %cond83.i = select i1 %cmp82.i, i32 10272, i32 264
  %call84.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond83.i, i32 noundef 65535, i32 noundef -1) #17
  br i1 %call84.i, label %do.body80.i.if.then21_crit_edge, label %do.body89.i

do.body80.i.if.then21_crit_edge:                  ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body89.i:                                      ; preds = %do.body80.i
  %54 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp91.i = icmp ugt i32 %55, 2
  %cond92.i = select i1 %cmp91.i, i32 10244, i32 276
  %call93.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond92.i, i32 noundef -1, i32 noundef -1) #17
  br i1 %call93.i, label %do.body89.i.if.then21_crit_edge, label %do.body98.i

do.body89.i.if.then21_crit_edge:                  ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body98.i:                                      ; preds = %do.body89.i
  %56 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp100.i = icmp ugt i32 %57, 2
  %cond101.i = select i1 %cmp100.i, i32 10248, i32 280
  %call102.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond101.i, i32 noundef 1048448, i32 noundef 1048575) #17
  br i1 %call102.i, label %do.body98.i.if.then21_crit_edge, label %do.body107.i

do.body98.i.if.then21_crit_edge:                  ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body107.i:                                     ; preds = %do.body98.i
  %58 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp109.i = icmp ugt i32 %59, 2
  %cond110.i = select i1 %cmp109.i, i32 10256, i32 288
  %call111.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond110.i, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %call111.i, label %do.body107.i.if.then21_crit_edge, label %do.body116.i

do.body107.i.if.then21_crit_edge:                 ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body116.i:                                     ; preds = %do.body107.i
  %60 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp118.i = icmp ugt i32 %61, 2
  %cond119.i = select i1 %cmp118.i, i32 10264, i32 296
  %call120.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond119.i, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %call120.i, label %do.body116.i.if.then21_crit_edge, label %do.body125.i

do.body116.i.if.then21_crit_edge:                 ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body125.i:                                     ; preds = %do.body116.i
  %62 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp127.i = icmp ugt i32 %63, 2
  %cond128.i = select i1 %cmp127.i, i32 8552, i32 352
  %call129.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond128.i, i32 noundef 65528, i32 noundef 65528) #17
  br i1 %call129.i, label %do.body125.i.if.then21_crit_edge, label %do.body134.i

do.body125.i.if.then21_crit_edge:                 ; preds = %do.body125.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body134.i:                                     ; preds = %do.body125.i
  %call138.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 368, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %call138.i, label %do.body134.i.if.then21_crit_edge, label %do.body143.i

do.body134.i.if.then21_crit_edge:                 ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body143.i:                                     ; preds = %do.body134.i
  %call147.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 1040, i32 noundef 1073741823, i32 noundef 1073741823) #17
  br i1 %call147.i, label %do.body143.i.if.then21_crit_edge, label %do.body152.i

do.body143.i.if.then21_crit_edge:                 ; preds = %do.body143.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body152.i:                                     ; preds = %do.body143.i
  %64 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp154.i = icmp ugt i32 %65, 2
  %cond155.i = select i1 %cmp154.i, i32 14340, i32 1060
  %call156.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond155.i, i32 noundef -1, i32 noundef -1) #17
  br i1 %call156.i, label %do.body152.i.if.then21_crit_edge, label %do.body161.i

do.body152.i.if.then21_crit_edge:                 ; preds = %do.body152.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body161.i:                                     ; preds = %do.body152.i
  %66 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp163.i = icmp ugt i32 %67, 2
  %cond164.i = select i1 %cmp163.i, i32 14344, i32 1064
  %call165.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond164.i, i32 noundef 1048448, i32 noundef 1048575) #17
  br i1 %call165.i, label %do.body161.i.if.then21_crit_edge, label %do.body170.i

do.body161.i.if.then21_crit_edge:                 ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body170.i:                                     ; preds = %do.body161.i
  %call174.i = tail call fastcc zeroext i1 @reg_set_and_check(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 256, i32 noundef -1, i32 noundef 0) #17
  br i1 %call174.i, label %do.body170.i.if.then21_crit_edge, label %do.end178.i

do.body170.i.if.then21_crit_edge:                 ; preds = %do.body170.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.end178.i:                                      ; preds = %do.body170.i
  %call183.i = tail call fastcc zeroext i1 @reg_set_and_check(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 256, i32 noundef 115323902, i32 noundef 4194299) #17
  br i1 %call183.i, label %do.end178.i.if.then21_crit_edge, label %do.body188.i

do.end178.i.if.then21_crit_edge:                  ; preds = %do.end178.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body188.i:                                     ; preds = %do.end178.i
  %call192.i = tail call fastcc zeroext i1 @reg_set_and_check(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 1024, i32 noundef -1, i32 noundef 0) #17
  br i1 %call192.i, label %do.body188.i.if.then21_crit_edge, label %do.end196.i

do.body188.i.if.then21_crit_edge:                 ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.end196.i:                                      ; preds = %do.body188.i
  %68 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp198.i = icmp ugt i32 %69, 2
  br i1 %cmp198.i, label %do.body200.i, label %do.body261.i

do.body200.i:                                     ; preds = %do.end196.i
  %call204.i = tail call fastcc zeroext i1 @reg_set_and_check(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 256, i32 noundef 115323902, i32 noundef -1) #17
  br i1 %call204.i, label %do.body200.i.if.then21_crit_edge, label %do.body209.i

do.body200.i.if.then21_crit_edge:                 ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body209.i:                                     ; preds = %do.body200.i
  %70 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp211.i = icmp ugt i32 %71, 2
  %cond212.i = select i1 %cmp211.i, i32 10240, i32 272
  %call213.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond212.i, i32 noundef -16, i32 noundef -1) #17
  br i1 %call213.i, label %do.body209.i.if.then21_crit_edge, label %do.body218.i

do.body209.i.if.then21_crit_edge:                 ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body218.i:                                     ; preds = %do.body209.i
  %call222.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 376, i32 noundef -1073676289, i32 noundef 65535) #17
  br i1 %call222.i, label %do.body218.i.if.then21_crit_edge, label %do.body227.i

do.body218.i.if.then21_crit_edge:                 ; preds = %do.body218.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body227.i:                                     ; preds = %do.body218.i
  %72 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp229.i = icmp ugt i32 %73, 2
  %cond230.i = select i1 %cmp229.i, i32 14336, i32 1056
  %call231.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond230.i, i32 noundef -16, i32 noundef -1) #17
  br i1 %call231.i, label %do.body227.i.if.then21_crit_edge, label %do.body236.i

do.body227.i.if.then21_crit_edge:                 ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body236.i:                                     ; preds = %do.body227.i
  %74 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp238.i = icmp ugt i32 %75, 2
  %cond239.i = select i1 %cmp238.i, i32 14368, i32 1088
  %call240.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond239.i, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %call240.i, label %do.body236.i.if.then21_crit_edge, label %do.body236.i.do.body246.i_crit_edge

do.body236.i.do.body246.i_crit_edge:              ; preds = %do.body236.i
  br label %do.body246.i

do.body236.i.if.then21_crit_edge:                 ; preds = %do.body236.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

for.cond.i:                                       ; preds = %do.body246.i
  %inc.i125 = add nuw nsw i32 %i.0438.i, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 15
  br i1 %exitcond.not.i126, label %for.cond.i.do.body301.i.preheader_crit_edge, label %for.cond.i.do.body246.i_crit_edge

for.cond.i.do.body246.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body246.i

for.cond.i.do.body301.i.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body301.i.preheader

do.body246.i:                                     ; preds = %for.cond.i.do.body246.i_crit_edge, %do.body236.i.do.body246.i_crit_edge
  %i.0438.i = phi i32 [ %inc.i125, %for.cond.i.do.body246.i_crit_edge ], [ 0, %do.body236.i.do.body246.i_crit_edge ]
  %76 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp248.i = icmp ugt i32 %77, 2
  %shl.i = shl nuw nsw i32 %i.0438.i, 3
  %cond255.v.i = select i1 %cmp248.i, i32 21508, i32 68
  %cond255.i = add nuw nsw i32 %cond255.v.i, %shl.i
  %call256.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond255.i, i32 noundef -2147221505, i32 noundef -1) #17
  br i1 %call256.i, label %do.body246.i.if.then21_crit_edge, label %for.cond.i

do.body246.i.if.then21_crit_edge:                 ; preds = %do.body246.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body261.i:                                     ; preds = %do.end196.i
  %call265.i = tail call fastcc zeroext i1 @reg_set_and_check(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 256, i32 noundef -1, i32 noundef 33554431) #17
  br i1 %call265.i, label %do.body261.i.if.then21_crit_edge, label %do.body270.i

do.body261.i.if.then21_crit_edge:                 ; preds = %do.body261.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body270.i:                                     ; preds = %do.body261.i
  %78 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp272.i = icmp ugt i32 %79, 2
  %cond273.i = select i1 %cmp272.i, i32 10240, i32 272
  %call274.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond273.i, i32 noundef -4096, i32 noundef -1) #17
  br i1 %call274.i, label %do.body270.i.if.then21_crit_edge, label %do.body279.i

do.body270.i.if.then21_crit_edge:                 ; preds = %do.body270.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body279.i:                                     ; preds = %do.body270.i
  %call283.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 376, i32 noundef 65535, i32 noundef 65535) #17
  br i1 %call283.i, label %do.body279.i.if.then21_crit_edge, label %do.body288.i

do.body279.i.if.then21_crit_edge:                 ; preds = %do.body279.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body288.i:                                     ; preds = %do.body279.i
  %80 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp290.i = icmp ugt i32 %81, 2
  %cond291.i = select i1 %cmp290.i, i32 14336, i32 1056
  %call292.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond291.i, i32 noundef -4096, i32 noundef -1) #17
  br i1 %call292.i, label %do.body288.i.if.then21_crit_edge, label %do.body288.i.do.body301.i.preheader_crit_edge

do.body288.i.do.body301.i.preheader_crit_edge:    ; preds = %do.body288.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body301.i.preheader

do.body288.i.if.then21_crit_edge:                 ; preds = %do.body288.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

do.body301.i.preheader:                           ; preds = %do.body288.i.do.body301.i.preheader_crit_edge, %for.cond.i.do.body301.i.preheader_crit_edge
  br label %do.body301.i

for.cond298.i:                                    ; preds = %do.body301.i
  %inc318.i = add nuw nsw i32 %i.1439.i, 1
  %exitcond441.not.i = icmp eq i32 %inc318.i, 128
  br i1 %exitcond441.not.i, label %e1000_reg_test.exit, label %for.cond298.i.do.body301.i_crit_edge

for.cond298.i.do.body301.i_crit_edge:             ; preds = %for.cond298.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body301.i

do.body301.i:                                     ; preds = %for.cond298.i.do.body301.i_crit_edge, %do.body301.i.preheader
  %i.1439.i = phi i32 [ %inc318.i, %for.cond298.i.do.body301.i_crit_edge ], [ 0, %do.body301.i.preheader ]
  %82 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp303.i = icmp ugt i32 %83, 2
  %shl305.i = shl nuw nsw i32 %i.1439.i, 2
  %cond311.v.i = select i1 %cmp303.i, i32 20992, i32 512
  %cond311.i = add nuw nsw i32 %cond311.v.i, %shl305.i
  %call312.i = tail call fastcc zeroext i1 @reg_pattern_test(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef %cond311.i, i32 noundef -1, i32 noundef -1) #17
  br i1 %call312.i, label %do.body301.i.if.then21_crit_edge, label %for.cond298.i

do.body301.i.if.then21_crit_edge:                 ; preds = %do.body301.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

e1000_reg_test.exit.thread177:                    ; preds = %if.then32.i, %do.body30.i.e1000_reg_test.exit.thread177_crit_edge
  %84 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1, ptr %data, align 8
  br label %if.then21

e1000_reg_test.exit:                              ; preds = %for.cond298.i
  call void @__sanitizer_cov_trace_pc() #19
  %85 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %data, align 8
  br label %if.end24

if.then21:                                        ; preds = %e1000_reg_test.exit.thread177, %do.body301.i.if.then21_crit_edge, %do.body288.i.if.then21_crit_edge, %do.body279.i.if.then21_crit_edge, %do.body270.i.if.then21_crit_edge, %do.body261.i.if.then21_crit_edge, %do.body246.i.if.then21_crit_edge, %do.body236.i.if.then21_crit_edge, %do.body227.i.if.then21_crit_edge, %do.body218.i.if.then21_crit_edge, %do.body209.i.if.then21_crit_edge, %do.body200.i.if.then21_crit_edge, %do.body188.i.if.then21_crit_edge, %do.end178.i.if.then21_crit_edge, %do.body170.i.if.then21_crit_edge, %do.body161.i.if.then21_crit_edge, %do.body152.i.if.then21_crit_edge, %do.body143.i.if.then21_crit_edge, %do.body134.i.if.then21_crit_edge, %do.body125.i.if.then21_crit_edge, %do.body116.i.if.then21_crit_edge, %do.body107.i.if.then21_crit_edge, %do.body98.i.if.then21_crit_edge, %do.body89.i.if.then21_crit_edge, %do.body80.i.if.then21_crit_edge, %do.body71.i.if.then21_crit_edge, %do.body62.i.if.then21_crit_edge, %do.body53.i.if.then21_crit_edge, %do.body36.i.if.then21_crit_edge
  %86 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags3, align 4
  %or23 = or i32 %87, 2
  store i32 %or23, ptr %flags3, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %e1000_reg_test.exit
  tail call void @e1000_reset(ptr noundef %add.ptr.i) #17
  %arrayidx25 = getelementptr i64, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i) #17
  %88 = ptrtoint ptr %temp.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %temp.i, align 2, !annotation !63
  %89 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %arrayidx25, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i132.for.body.i_crit_edge, %if.end24
  %i.024.i = phi i16 [ 0, %if.end24 ], [ %inc.i130, %if.end.i132.for.body.i_crit_edge ]
  %checksum.023.i = phi i32 [ 0, %if.end24 ], [ %phi.cast.i, %if.end.i132.for.body.i_crit_edge ]
  %call.i128 = call i32 @e1000_read_eeprom(ptr noundef %hw1.i, i16 noundef zeroext %i.024.i, i16 noundef zeroext 1, ptr noundef nonnull %temp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp3.i = icmp slt i32 %call.i128, 0
  br i1 %cmp3.i, label %if.then.i129, label %if.end.i132

if.then.i129:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %90 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1, ptr %arrayidx25, align 8
  br label %for.end.i

if.end.i132:                                      ; preds = %for.body.i
  %91 = ptrtoint ptr %temp.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %temp.i, align 2
  %conv5.i = zext i16 %92 to i32
  %add.i = add nuw nsw i32 %checksum.023.i, %conv5.i
  %inc.i130 = add nuw nsw i16 %i.024.i, 1
  %phi.cast.i = and i32 %add.i, 65535
  %cmp.i131 = icmp ult i16 %i.024.i, 63
  br i1 %cmp.i131, label %if.end.i132.for.body.i_crit_edge, label %if.end.i132.for.end.i_crit_edge

if.end.i132.for.end.i_crit_edge:                  ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

if.end.i132.for.body.i_crit_edge:                 ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i132.for.end.i_crit_edge, %if.then.i129
  %checksum.022.i = phi i32 [ %checksum.023.i, %if.then.i129 ], [ %phi.cast.i, %if.end.i132.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 47802, i32 %checksum.022.i)
  %cmp9.not.i = icmp eq i32 %checksum.022.i, 47802
  br i1 %cmp9.not.i, label %for.end.i.e1000_eeprom_test.exit_crit_edge, label %land.lhs.true.i

for.end.i.e1000_eeprom_test.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_eeprom_test.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  %93 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %tobool.not.i133 = icmp eq i64 %94, 0
  br i1 %tobool.not.i133, label %if.then11.i, label %land.lhs.true.i.e1000_eeprom_test.exit_crit_edge

land.lhs.true.i.e1000_eeprom_test.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_eeprom_test.exit

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %95 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 2, ptr %arrayidx25, align 8
  br label %e1000_eeprom_test.exit

e1000_eeprom_test.exit:                           ; preds = %if.then11.i, %land.lhs.true.i.e1000_eeprom_test.exit_crit_edge, %for.end.i.e1000_eeprom_test.exit_crit_edge
  %96 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx25, align 8
  %conv13.i = trunc i64 %97 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i)
  %tobool27.not = icmp eq i32 %conv13.i, 0
  br i1 %tobool27.not, label %e1000_eeprom_test.exit.if.end31_crit_edge, label %if.then28

e1000_eeprom_test.exit.if.end31_crit_edge:        ; preds = %e1000_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.then28:                                        ; preds = %e1000_eeprom_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags3, align 4
  %or30 = or i32 %99, 2
  store i32 %or30, ptr %flags3, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %e1000_eeprom_test.exit.if.end31_crit_edge
  call void @e1000_reset(ptr noundef %add.ptr.i) #17
  %arrayidx32 = getelementptr i64, ptr %data, i32 2
  %netdev1.i = getelementptr i8, ptr %netdev, i32 3288
  %100 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %netdev1.i, align 8
  %pdev.i = getelementptr i8, ptr %netdev, i32 3292
  %102 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i, align 4
  %irq2.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 46
  %104 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq2.i, align 4
  %106 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 0, ptr %arrayidx32, align 8
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %105, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 256, ptr noundef %101, ptr noundef %101) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i134 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i134, label %if.end31.do.body.i139_crit_edge, label %if.else.i136

if.end31.do.body.i139_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i139

if.else.i136:                                     ; preds = %if.end31
  %call.i211.i = call i32 @request_threaded_irq(i32 noundef %105, ptr noundef nonnull @e1000_test_intr, ptr noundef null, i32 noundef 128, ptr noundef %101, ptr noundef %101) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i)
  %tobool7.not.i135 = icmp eq i32 %call.i211.i, 0
  br i1 %tobool7.not.i135, label %if.else.i136.do.body.i139_crit_edge, label %e1000_intr_test.exit.thread

if.else.i136.do.body.i139_crit_edge:              ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i139

e1000_intr_test.exit.thread:                      ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #19
  %107 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 1, ptr %arrayidx32, align 8
  br label %if.then35

do.body.i139:                                     ; preds = %if.else.i136.do.body.i139_crit_edge, %if.end31.do.body.i139_crit_edge
  %108 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %do.body.i139.do.body15.i_crit_edge, label %if.then11.i140

do.body.i139.do.body15.i_crit_edge:               ; preds = %do.body.i139
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body15.i

if.then11.i140:                                   ; preds = %do.body.i139
  call void @__sanitizer_cov_trace_pc() #19
  %110 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %netdev1.i, align 8
  %cond.i = select i1 %tobool.not.i134, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %111, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond.i) #20
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.then11.i140, %do.body.i139.do.body15.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !87
  call void @arm_heavy_mb() #17
  %112 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %113, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 -1) #17, !srcloc !79
  %114 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw1.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %115, i32 8
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !88
  call void @msleep(i32 noundef 10) #17
  %test_icr.i = getelementptr i8, ptr %netdev, i32 4152
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.inc.i.for.body.i143_crit_edge, %do.body15.i
  %i.0212.i = phi i32 [ 0, %do.body15.i ], [ %inc.i144, %for.inc.i.for.body.i143_crit_edge ]
  %shl.i142 = shl nuw nsw i32 1, %i.0212.i
  br i1 %tobool.not.i134, label %if.then28.i, label %for.body.if.end60_crit_edge.i

for.body.if.end60_crit_edge.i:                    ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #19
  %.pre.i = call i32 @llvm.bswap.i32(i32 %shl.i142) #17
  br label %if.end60.i

if.then28.i:                                      ; preds = %for.body.i143
  %117 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %test_icr.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !89
  call void @arm_heavy_mb() #17
  %118 = call i32 @llvm.bswap.i32(i32 %shl.i142) #17
  %119 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hw1.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %120, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %118) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !90
  call void @arm_heavy_mb() #17
  %121 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw1.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %122, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %118) #17, !srcloc !79
  %123 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw1.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %124, i32 8
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !91
  call void @msleep(i32 noundef 10) #17
  %126 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %test_icr.i, align 8
  %and56.i = and i32 %127, %shl.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then28.i.if.end60.i_crit_edge, label %if.then28.i.do.body130.sink.split.i_crit_edge

if.then28.i.do.body130.sink.split.i_crit_edge:    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body130.sink.split.i

if.then28.i.if.end60.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then28.i.if.end60.i_crit_edge, %for.body.if.end60_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %for.body.if.end60_crit_edge.i ], [ %118, %if.then28.i.if.end60.i_crit_edge ]
  %128 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %test_icr.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !92
  call void @arm_heavy_mb() #17
  %129 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw1.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %130, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %.pre-phi.i) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !93
  call void @arm_heavy_mb() #17
  %131 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw1.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %132, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 %.pre-phi.i) #17, !srcloc !79
  %133 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw1.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %134, i32 8
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !94
  call void @msleep(i32 noundef 10) #17
  %136 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %test_icr.i, align 8
  %and89.i = and i32 %137, %shl.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end60.i.do.body130.sink.split.i_crit_edge, label %if.end92.i

if.end60.i.do.body130.sink.split.i_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body130.sink.split.i

if.end92.i:                                       ; preds = %if.end60.i
  br i1 %tobool.not.i134, label %if.then94.i, label %if.end92.i.for.inc.i_crit_edge

if.end92.i.for.inc.i_crit_edge:                   ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then94.i:                                      ; preds = %if.end92.i
  %138 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %test_icr.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !95
  call void @arm_heavy_mb() #17
  %and99.i = xor i32 %shl.i142, 32767
  %139 = call i32 @llvm.bswap.i32(i32 %and99.i) #17
  %140 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw1.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %141, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i, i32 %139) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !96
  call void @arm_heavy_mb() #17
  %142 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw1.i, align 4
  %add.ptr114.i = getelementptr i8, ptr %143, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i, i32 %139) #17, !srcloc !79
  %144 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw1.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %145, i32 8
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !97
  call void @msleep(i32 noundef 10) #17
  %147 = ptrtoint ptr %test_icr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %test_icr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool126.not.i = icmp eq i32 %148, 0
  br i1 %tobool126.not.i, label %if.then94.i.for.inc.i_crit_edge, label %if.then94.i.do.body130.sink.split.i_crit_edge

if.then94.i.do.body130.sink.split.i_crit_edge:    ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body130.sink.split.i

if.then94.i.for.inc.i_crit_edge:                  ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then94.i.for.inc.i_crit_edge, %if.end92.i.for.inc.i_crit_edge
  %inc.i144 = add nuw nsw i32 %i.0212.i, 1
  %exitcond.not.i145 = icmp eq i32 %inc.i144, 10
  br i1 %exitcond.not.i145, label %for.inc.i.e1000_intr_test.exit_crit_edge, label %for.inc.i.for.body.i143_crit_edge

for.inc.i.for.body.i143_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i143

for.inc.i.e1000_intr_test.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_intr_test.exit

do.body130.sink.split.i:                          ; preds = %if.then94.i.do.body130.sink.split.i_crit_edge, %if.end60.i.do.body130.sink.split.i_crit_edge, %if.then28.i.do.body130.sink.split.i_crit_edge
  %.sink.i146 = phi i64 [ 3, %if.then28.i.do.body130.sink.split.i_crit_edge ], [ 4, %if.end60.i.do.body130.sink.split.i_crit_edge ], [ 5, %if.then94.i.do.body130.sink.split.i_crit_edge ]
  %149 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %.sink.i146, ptr %arrayidx32, align 8
  br label %e1000_intr_test.exit

e1000_intr_test.exit:                             ; preds = %do.body130.sink.split.i, %for.inc.i.e1000_intr_test.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !98
  call void @arm_heavy_mb() #17
  %150 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw1.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %151, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137.i, i32 -1) #17, !srcloc !79
  %152 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw1.i, align 4
  %add.ptr144.i = getelementptr i8, ptr %153, i32 8
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !99
  call void @msleep(i32 noundef 10) #17
  %call148.i = call ptr @free_irq(i32 noundef %105, ptr noundef %101) #17
  %155 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %arrayidx32, align 8
  %conv.i147 = trunc i64 %156 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i147)
  %tobool34.not = icmp eq i32 %conv.i147, 0
  br i1 %tobool34.not, label %e1000_intr_test.exit.if.end38_crit_edge, label %e1000_intr_test.exit.if.then35_crit_edge

e1000_intr_test.exit.if.then35_crit_edge:         ; preds = %e1000_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then35

e1000_intr_test.exit.if.end38_crit_edge:          ; preds = %e1000_intr_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then35:                                        ; preds = %e1000_intr_test.exit.if.then35_crit_edge, %e1000_intr_test.exit.thread
  %157 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags3, align 4
  %or37 = or i32 %158, 2
  store i32 %or37, ptr %flags3, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %e1000_intr_test.exit.if.end38_crit_edge
  call void @e1000_reset(ptr noundef %add.ptr.i) #17
  call void @e1000_power_up_phy(ptr noundef %add.ptr.i) #17
  %arrayidx39 = getelementptr i64, ptr %data, i32 3
  %test_tx_ring.i.i = getelementptr i8, ptr %netdev, i32 4156
  %test_rx_ring.i.i = getelementptr i8, ptr %netdev, i32 4192
  %159 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i, align 4
  %count.i.i = getelementptr i8, ptr %netdev, i32 4168
  %161 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end38.if.end.i.i_crit_edge

if.end38.if.end.i.i_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %163 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 256, ptr %count.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end38.if.end.i.i_crit_edge
  %164 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %count.i.i, align 4
  %166 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %165, i32 24) #17
  %167 = extractvalue { i32, i1 } %166, 1
  br i1 %167, label %if.end.i.i.err_nomem.sink.split.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !78

if.end.i.i.err_nomem.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_nomem.sink.split.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %168 = extractvalue { i32, i1 } %166, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %168, i32 noundef 3520) #21
  %buffer_info.i.i = getelementptr i8, ptr %netdev, i32 4180
  %169 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call8.i.i.i.i, ptr %buffer_info.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end8.i.i

if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end8.i.i:                                      ; preds = %if.end7.i.i.i.i
  %170 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %count.i.i, align 4
  %mul.i.i = shl i32 %171, 4
  %size.i.i = getelementptr i8, ptr %netdev, i32 4164
  %add.i.i = add i32 %mul.i.i, 4095
  %and.i.i = and i32 %add.i.i, -4096
  %172 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and.i.i, ptr %size.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %dma.i.i = getelementptr i8, ptr %netdev, i32 4160
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %and.i.i, ptr noundef %dma.i.i, i32 noundef 3264, i32 noundef 0) #17
  %173 = ptrtoint ptr %test_tx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i.i.i, ptr %test_tx_ring.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i.i, label %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end17.i.i

if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end17.i.i:                                     ; preds = %if.end8.i.i
  %next_to_clean.i.i = getelementptr i8, ptr %netdev, i32 4176
  %174 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %next_to_clean.i.i, align 4
  %next_to_use.i.i = getelementptr i8, ptr %netdev, i32 4172
  %175 = ptrtoint ptr %next_to_use.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %next_to_use.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !100
  call void @arm_heavy_mb() #17
  %176 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %dma.i.i, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #17
  %179 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hw1.i, align 4
  %181 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %cmp.i.i = icmp ugt i32 %182, 2
  %cond.i.i = select i1 %cmp.i.i, i32 14336, i32 1056
  %add.ptr.i.i = getelementptr i8, ptr %180, i32 %cond.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %178) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !101
  call void @arm_heavy_mb() #17
  %183 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hw1.i, align 4
  %185 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %186)
  %cmp30.i.i = icmp ugt i32 %186, 2
  %cond32.i.i = select i1 %cmp30.i.i, i32 14340, i32 1060
  %add.ptr33.i.i = getelementptr i8, ptr %184, i32 %cond32.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 0) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !102
  call void @arm_heavy_mb() #17
  %187 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %count.i.i, align 4
  %mul38.i.i = shl i32 %188, 4
  %189 = call i32 @llvm.bswap.i32(i32 %mul38.i.i) #17
  %190 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw1.i, align 4
  %192 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp41.i.i = icmp ugt i32 %193, 2
  %cond43.i.i = select i1 %cmp41.i.i, i32 14344, i32 1064
  %add.ptr44.i.i = getelementptr i8, ptr %191, i32 %cond43.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 %189) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !103
  call void @arm_heavy_mb() #17
  %194 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw1.i, align 4
  %196 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp50.i.i = icmp ugt i32 %197, 2
  %cond52.i.i = select i1 %cmp50.i.i, i32 14352, i32 1072
  %add.ptr53.i.i = getelementptr i8, ptr %195, i32 %cond52.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i.i, i32 0) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !104
  call void @arm_heavy_mb() #17
  %198 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hw1.i, align 4
  %200 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %201)
  %cmp59.i.i = icmp ugt i32 %201, 2
  %cond61.i.i = select i1 %cmp59.i.i, i32 14360, i32 1080
  %add.ptr62.i.i = getelementptr i8, ptr %199, i32 %cond61.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i.i, i32 0) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !105
  call void @arm_heavy_mb() #17
  %202 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw1.i, align 4
  %add.ptr71.i.i = getelementptr i8, ptr %203, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i.i, i32 -84933888) #17, !srcloc !79
  %204 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp73460.not.i.i = icmp eq i32 %205, 0
  br i1 %cmp73460.not.i.i, label %if.end17.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end17.i.i.for.end.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end17.i.i
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0461.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %206 = ptrtoint ptr %test_tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %test_tx_ring.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.e1000_tx_desc, ptr %207, i32 %i.0461.i.i
  %call.i378.i.i = call ptr @__alloc_skb(i32 noundef 1024, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool78.not.i.i = icmp eq ptr %call.i378.i.i, null
  br i1 %tobool78.not.i.i, label %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end80.i.i

for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end80.i.i:                                     ; preds = %for.body.i.i
  %call81.i.i = call ptr @skb_put(ptr noundef nonnull %call.i378.i.i, i32 noundef 1024) #17
  %208 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %buffer_info.i.i, align 4
  %arrayidx83.i.i = getelementptr %struct.e1000_tx_buffer, ptr %209, i32 %i.0461.i.i
  %210 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call.i378.i.i, ptr %arrayidx83.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i378.i.i, i32 0, i32 6
  %211 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %len.i.i, align 4
  %conv85.i.i = trunc i32 %212 to i16
  %213 = load ptr, ptr %buffer_info.i.i, align 4
  %length.i.i = getelementptr %struct.e1000_tx_buffer, ptr %213, i32 %i.0461.i.i, i32 3
  %214 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv85.i.i, ptr %length.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i378.i.i, i32 0, i32 19
  %215 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data.i.i, align 4
  %217 = load i32, ptr %len.i.i, align 4
  %call.i379.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %216) #17
  br i1 %call.i379.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end80.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !106

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #17
  %218 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %219, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i380.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i.i.i

if.end.i.i380.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %220 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i380.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i381.i.i = phi ptr [ %221, %if.end.i.i380.i.i ], [ %219, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i381.i.i) #17
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %216, i32 noundef %217) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %222 = load ptr, ptr @mem_map, align 4
  %223 = ptrtoint ptr %216 to i32
  %sub.i.i.i = add i32 %223, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %222, i32 %shr.i.i.i
  %and.i.i.i = and i32 %223, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %217, i32 noundef 1, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %224 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %buffer_info.i.i, align 4
  %dma93.i.i = getelementptr %struct.e1000_tx_buffer, ptr %225, i32 %i.0461.i.i, i32 1
  %226 = ptrtoint ptr %dma93.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %retval.0.i.i.i, ptr %dma93.i.i, align 4
  %227 = load ptr, ptr %buffer_info.i.i, align 4
  %dma97.i.i = getelementptr %struct.e1000_tx_buffer, ptr %227, i32 %i.0461.i.i, i32 1
  %228 = ptrtoint ptr %dma97.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %dma97.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %229) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %229)
  %cmp.i.not.i.i = icmp eq i32 %229, -1
  br i1 %cmp.i.not.i.i, label %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %for.inc.i.i

dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

for.inc.i.i:                                      ; preds = %dma_map_single_attrs.exit.i.i
  %230 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %buffer_info.i.i, align 4
  %dma104.i.i = getelementptr %struct.e1000_tx_buffer, ptr %231, i32 %i.0461.i.i, i32 1
  %232 = ptrtoint ptr %dma104.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %dma104.i.i, align 4
  %conv105.i.i = zext i32 %233 to i64
  %234 = call i64 @llvm.bswap.i64(i64 %conv105.i.i) #17
  %235 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %arrayidx.i.i, align 8
  %236 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %len.i.i, align 4
  %lower.i.i = getelementptr %struct.e1000_tx_desc, ptr %207, i32 %i.0461.i.i, i32 1
  %238 = or i32 %237, 318767104
  %239 = call i32 @llvm.bswap.i32(i32 %238) #17
  %240 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %lower.i.i, align 8
  %upper.i.i = getelementptr %struct.e1000_tx_desc, ptr %207, i32 %i.0461.i.i, i32 2
  %241 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %upper.i.i, align 4
  %inc.i.i = add nuw i32 %i.0461.i.i, 1
  %242 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %count.i.i, align 4
  %cmp73.i.i = icmp ult i32 %inc.i.i, %243
  br i1 %cmp73.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end17.i.i.for.end.i.i_crit_edge
  %count110.i.i = getelementptr i8, ptr %netdev, i32 4204
  %244 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %count110.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool111.not.i.i = icmp eq i32 %245, 0
  br i1 %tobool111.not.i.i, label %if.then112.i.i, label %for.end.i.i.if.end114.i.i_crit_edge

for.end.i.i.if.end114.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114.i.i

if.then112.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %246 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 256, ptr %count110.i.i, align 4
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %if.then112.i.i, %for.end.i.i.if.end114.i.i_crit_edge
  %247 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %count110.i.i, align 4
  %249 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %248, i32 8) #17
  %250 = extractvalue { i32, i1 } %249, 1
  br i1 %250, label %if.end114.i.i.err_nomem.sink.split.i.i_crit_edge, label %if.end7.i.i412.i.i, !prof !78

if.end114.i.i.err_nomem.sink.split.i.i_crit_edge: ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_nomem.sink.split.i.i

if.end7.i.i412.i.i:                               ; preds = %if.end114.i.i
  %251 = extractvalue { i32, i1 } %249, 0
  %call8.i.i411.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %251, i32 noundef 3520) #21
  %buffer_info117.i.i = getelementptr i8, ptr %netdev, i32 4216
  %252 = ptrtoint ptr %buffer_info117.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call8.i.i411.i.i, ptr %buffer_info117.i.i, align 4
  %tobool119.not.i.i = icmp eq ptr %call8.i.i411.i.i, null
  br i1 %tobool119.not.i.i, label %if.end7.i.i412.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end121.i.i

if.end7.i.i412.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end7.i.i412.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end121.i.i:                                    ; preds = %if.end7.i.i412.i.i
  %253 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %count110.i.i, align 4
  %mul123.i.i = shl i32 %254, 4
  %size124.i.i = getelementptr i8, ptr %netdev, i32 4200
  %255 = ptrtoint ptr %size124.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %mul123.i.i, ptr %size124.i.i, align 4
  %dma127.i.i = getelementptr i8, ptr %netdev, i32 4196
  %call.i415.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %mul123.i.i, ptr noundef %dma127.i.i, i32 noundef 3264, i32 noundef 0) #17
  %256 = ptrtoint ptr %test_rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call.i415.i.i, ptr %test_rx_ring.i.i, align 4
  %tobool131.not.i.i = icmp eq ptr %call.i415.i.i, null
  br i1 %tobool131.not.i.i, label %if.end121.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end133.i.i

if.end121.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end133.i.i:                                    ; preds = %if.end121.i.i
  %next_to_clean134.i.i = getelementptr i8, ptr %netdev, i32 4212
  %257 = ptrtoint ptr %next_to_clean134.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %next_to_clean134.i.i, align 4
  %next_to_use135.i.i = getelementptr i8, ptr %netdev, i32 4208
  %258 = ptrtoint ptr %next_to_use135.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %next_to_use135.i.i, align 4
  %259 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw1.i, align 4
  %add.ptr141.i.i = getelementptr i8, ptr %260, i32 256
  %261 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141.i.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !108
  call void @arm_heavy_mb() #17
  %262 = and i32 %261, -33554433
  %263 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hw1.i, align 4
  %add.ptr153.i.i = getelementptr i8, ptr %264, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.i.i, i32 %262) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !109
  call void @arm_heavy_mb() #17
  %265 = ptrtoint ptr %dma127.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %dma127.i.i, align 4
  %267 = call i32 @llvm.bswap.i32(i32 %266) #17
  %268 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw1.i, align 4
  %270 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %271)
  %cmp163.i.i = icmp ugt i32 %271, 2
  %cond165.i.i = select i1 %cmp163.i.i, i32 10240, i32 272
  %add.ptr166.i.i = getelementptr i8, ptr %269, i32 %cond165.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.i.i, i32 %267) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !110
  call void @arm_heavy_mb() #17
  %272 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %hw1.i, align 4
  %274 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %275)
  %cmp176.i.i = icmp ugt i32 %275, 2
  %cond178.i.i = select i1 %cmp176.i.i, i32 10244, i32 276
  %add.ptr179.i.i = getelementptr i8, ptr %273, i32 %cond178.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179.i.i, i32 0) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !111
  call void @arm_heavy_mb() #17
  %276 = ptrtoint ptr %size124.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %size124.i.i, align 4
  %278 = call i32 @llvm.bswap.i32(i32 %277) #17
  %279 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hw1.i, align 4
  %281 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %282)
  %cmp186.i.i = icmp ugt i32 %282, 2
  %cond188.i.i = select i1 %cmp186.i.i, i32 10248, i32 280
  %add.ptr189.i.i = getelementptr i8, ptr %280, i32 %cond188.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189.i.i, i32 %278) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !112
  call void @arm_heavy_mb() #17
  %283 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hw1.i, align 4
  %285 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %286)
  %cmp195.i.i = icmp ugt i32 %286, 2
  %cond197.i.i = select i1 %cmp195.i.i, i32 10256, i32 288
  %add.ptr198.i.i = getelementptr i8, ptr %284, i32 %cond197.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198.i.i, i32 0) #17, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !113
  call void @arm_heavy_mb() #17
  %287 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hw1.i, align 4
  %289 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %290)
  %cmp204.i.i = icmp ugt i32 %290, 2
  %cond206.i.i = select i1 %cmp204.i.i, i32 10264, i32 296
  %add.ptr207.i.i = getelementptr i8, ptr %288, i32 %cond206.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i.i, i32 0) #17, !srcloc !79
  %mc_filter_type.i.i = getelementptr i8, ptr %netdev, i32 3428
  %291 = ptrtoint ptr %mc_filter_type.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mc_filter_type.i.i, align 4
  %shl.i.i = shl i32 %292, 12
  %or208.i.i = or i32 %shl.i.i, 32770
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !114
  call void @arm_heavy_mb() #17
  %293 = call i32 @llvm.bswap.i32(i32 %or208.i.i) #17
  %294 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hw1.i, align 4
  %add.ptr217.i.i = getelementptr i8, ptr %295, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217.i.i, i32 %293) #17, !srcloc !79
  %296 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %count110.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp220462.not.i.i = icmp eq i32 %297, 0
  br i1 %cmp220462.not.i.i, label %if.end133.i.i.if.end.i149_crit_edge, label %for.body222.lr.ph.i.i

if.end133.i.i.if.end.i149_crit_edge:              ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i149

for.body222.lr.ph.i.i:                            ; preds = %if.end133.i.i
  %init_name.i.i420.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44, i32 3
  br label %for.body222.i.i

for.body222.i.i:                                  ; preds = %for.inc255.i.i.for.body222.i.i_crit_edge, %for.body222.lr.ph.i.i
  %i.1463.i.i = phi i32 [ 0, %for.body222.lr.ph.i.i ], [ %inc256.i.i, %for.inc255.i.i.for.body222.i.i_crit_edge ]
  %298 = ptrtoint ptr %test_rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %test_rx_ring.i.i, align 4
  %arrayidx224.i.i = getelementptr %struct.e1000_rx_desc, ptr %299, i32 %i.1463.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %300 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %300, i32 noundef 3520, i32 noundef 2178) #22
  %tobool226.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool226.not.i.i, label %for.body222.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %if.end228.i.i

for.body222.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %for.body222.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

if.end228.i.i:                                    ; preds = %for.body222.i.i
  %301 = ptrtoint ptr %buffer_info117.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %buffer_info117.i.i, align 4
  %arrayidx230.i.i = getelementptr %struct.e1000_rx_buffer, ptr %302, i32 %i.1463.i.i
  %303 = ptrtoint ptr %arrayidx230.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call7.i.i.i.i, ptr %arrayidx230.i.i, align 4
  %add.ptr233.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 130
  %call.i416.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr233.i.i) #17
  br i1 %call.i416.i.i, label %land.rhs.i418.i.i, label %if.end39.i431.i.i

land.rhs.i418.i.i:                                ; preds = %if.end228.i.i
  %.b1.i417.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i417.i.i, label %land.rhs.i418.i.i.dma_map_single_attrs.exit433.i.i_crit_edge, label %if.then.i422.i.i, !prof !106

land.rhs.i418.i.i.dma_map_single_attrs.exit433.i.i_crit_edge: ; preds = %land.rhs.i418.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dma_map_single_attrs.exit433.i.i

if.then.i422.i.i:                                 ; preds = %land.rhs.i418.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i419.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #17
  %304 = ptrtoint ptr %init_name.i.i420.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %init_name.i.i420.i.i, align 8
  %tobool.not.i.i421.i.i = icmp eq ptr %305, null
  br i1 %tobool.not.i.i421.i.i, label %if.end.i.i423.i.i, label %if.then.i422.i.i.dev_name.exit.i425.i.i_crit_edge

if.then.i422.i.i.dev_name.exit.i425.i.i_crit_edge: ; preds = %if.then.i422.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_name.exit.i425.i.i

if.end.i.i423.i.i:                                ; preds = %if.then.i422.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %306 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i425.i.i

dev_name.exit.i425.i.i:                           ; preds = %if.end.i.i423.i.i, %if.then.i422.i.i.dev_name.exit.i425.i.i_crit_edge
  %retval.0.i.i424.i.i = phi ptr [ %307, %if.end.i.i423.i.i ], [ %305, %if.then.i422.i.i.dev_name.exit.i425.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call16.i419.i.i, ptr noundef %retval.0.i.i424.i.i) #17
  br label %dma_map_single_attrs.exit433.i.i

if.end39.i431.i.i:                                ; preds = %if.end228.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %add.ptr233.i.i, i32 noundef 2048) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %308 = load ptr, ptr @mem_map, align 4
  %309 = ptrtoint ptr %add.ptr233.i.i to i32
  %sub.i426.i.i = add i32 %309, 1073741824
  %shr.i427.i.i = lshr i32 %sub.i426.i.i, 12
  %add.ptr.i428.i.i = getelementptr %struct.page, ptr %308, i32 %shr.i427.i.i
  %and.i429.i.i = and i32 %309, 4090
  %call41.i430.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i428.i.i, i32 noundef %and.i429.i.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #17
  br label %dma_map_single_attrs.exit433.i.i

dma_map_single_attrs.exit433.i.i:                 ; preds = %if.end39.i431.i.i, %dev_name.exit.i425.i.i, %land.rhs.i418.i.i.dma_map_single_attrs.exit433.i.i_crit_edge
  %retval.0.i432.i.i = phi i32 [ %call41.i430.i.i, %if.end39.i431.i.i ], [ -1, %dev_name.exit.i425.i.i ], [ -1, %land.rhs.i418.i.i.dma_map_single_attrs.exit433.i.i_crit_edge ]
  %310 = ptrtoint ptr %buffer_info117.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %buffer_info117.i.i, align 4
  %dma237.i.i = getelementptr %struct.e1000_rx_buffer, ptr %311, i32 %i.1463.i.i, i32 1
  %312 = ptrtoint ptr %dma237.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %retval.0.i432.i.i, ptr %dma237.i.i, align 4
  %313 = load ptr, ptr %buffer_info117.i.i, align 4
  %dma241.i.i = getelementptr %struct.e1000_rx_buffer, ptr %313, i32 %i.1463.i.i, i32 1
  %314 = ptrtoint ptr %dma241.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %dma241.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %315) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %315)
  %cmp.i434.not.i.i = icmp eq i32 %315, -1
  br i1 %cmp.i434.not.i.i, label %dma_map_single_attrs.exit433.i.i.e1000_setup_desc_rings.exit.i_crit_edge, label %for.inc255.i.i

dma_map_single_attrs.exit433.i.i.e1000_setup_desc_rings.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit433.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_desc_rings.exit.i

for.inc255.i.i:                                   ; preds = %dma_map_single_attrs.exit433.i.i
  %316 = ptrtoint ptr %buffer_info117.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %buffer_info117.i.i, align 4
  %dma248.i.i = getelementptr %struct.e1000_rx_buffer, ptr %317, i32 %i.1463.i.i, i32 1
  %318 = ptrtoint ptr %dma248.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %dma248.i.i, align 4
  %conv249.i.i = zext i32 %319 to i64
  %320 = call i64 @llvm.bswap.i64(i64 %conv249.i.i) #17
  %321 = ptrtoint ptr %arrayidx224.i.i to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %320, ptr %arrayidx224.i.i, align 8
  %inc256.i.i = add nuw i32 %i.1463.i.i, 1
  %322 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %count110.i.i, align 4
  %cmp220.i.i = icmp ult i32 %inc256.i.i, %323
  br i1 %cmp220.i.i, label %for.inc255.i.i.for.body222.i.i_crit_edge, label %for.inc255.i.i.if.end.i149_crit_edge

for.inc255.i.i.if.end.i149_crit_edge:             ; preds = %for.inc255.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i149

for.inc255.i.i.for.body222.i.i_crit_edge:         ; preds = %for.inc255.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body222.i.i

err_nomem.sink.split.i.i:                         ; preds = %if.end114.i.i.err_nomem.sink.split.i.i_crit_edge, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge
  %.sink = phi i32 [ 4180, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge ], [ 4216, %if.end114.i.i.err_nomem.sink.split.i.i_crit_edge ]
  %ret_val.4.ph.i.i = phi i32 [ 1, %if.end.i.i.err_nomem.sink.split.i.i_crit_edge ], [ 5, %if.end114.i.i.err_nomem.sink.split.i.i_crit_edge ]
  %buffer_info117448.i.i = getelementptr i8, ptr %netdev, i32 %.sink
  %324 = ptrtoint ptr %buffer_info117448.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr null, ptr %buffer_info117448.i.i, align 4
  br label %e1000_setup_desc_rings.exit.i

e1000_setup_desc_rings.exit.i:                    ; preds = %err_nomem.sink.split.i.i, %dma_map_single_attrs.exit433.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %for.body222.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end121.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end7.i.i412.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge, %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge
  %ret_val.4.i.i = phi i32 [ 1, %if.end7.i.i.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 2, %if.end8.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 5, %if.end7.i.i412.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 6, %if.end121.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ %ret_val.4.ph.i.i, %err_nomem.sink.split.i.i ], [ 7, %for.body222.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 8, %dma_map_single_attrs.exit433.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 3, %for.body.i.i.e1000_setup_desc_rings.exit.i_crit_edge ], [ 4, %dma_map_single_attrs.exit.i.i.e1000_setup_desc_rings.exit.i_crit_edge ]
  call fastcc void @e1000_free_desc_rings(ptr noundef %add.ptr.i) #17
  %conv52.i = zext i32 %ret_val.4.i.i to i64
  %325 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %325)
  store i64 %conv52.i, ptr %arrayidx39, align 8
  br label %e1000_loopback_test.exit

if.end.i149:                                      ; preds = %for.inc255.i.i.if.end.i149_crit_edge, %if.end133.i.i.if.end.i149_crit_edge
  %326 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 0, ptr %arrayidx39, align 8
  %327 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %media_type.i, align 4
  %329 = zext i32 %328 to i64
  call void @__sanitizer_cov_trace_switch(i64 %329, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %328, label %e1000_setup_loopback_test.exit.thread49.i [
    i32 1, label %if.end.i149.if.then.i20.i_crit_edge
    i32 2, label %if.end.i149.if.then.i20.i_crit_edge227
    i32 0, label %if.end.i149.e1000_setup_loopback_test.exit.i_crit_edge
  ]

if.end.i149.e1000_setup_loopback_test.exit.i_crit_edge: ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_loopback_test.exit.i

if.end.i149.if.then.i20.i_crit_edge227:           ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i20.i

if.end.i149.if.then.i20.i_crit_edge:              ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i20.i

e1000_setup_loopback_test.exit.thread49.i:        ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #19
  %330 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %330)
  store i64 7, ptr %arrayidx39, align 8
  br label %err_loopback.i

if.then.i20.i:                                    ; preds = %if.end.i149.if.then.i20.i_crit_edge, %if.end.i149.if.then.i20.i_crit_edge227
  %331 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %mac_type.i, align 4
  %333 = zext i32 %332 to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %332, label %e1000_setup_loopback_test.exit.thread.i [
    i32 6, label %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge
    i32 8, label %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge228
    i32 7, label %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge229
    i32 10, label %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge230
  ]

if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge230: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_loopback_test.exit.i

if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge229: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_loopback_test.exit.i

if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge228: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_loopback_test.exit.i

if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge: ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_setup_loopback_test.exit.i

e1000_setup_loopback_test.exit.thread.i:          ; preds = %if.then.i20.i
  call void @__sanitizer_cov_trace_pc() #19
  %334 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %335, i32 256
  %336 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !115
  %337 = or i32 %336, -1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !116
  call void @arm_heavy_mb() #17
  %338 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hw1.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %339, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %337) #17, !srcloc !79
  %340 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %340)
  store i64 0, ptr %arrayidx39, align 8
  br label %if.end5.i

e1000_setup_loopback_test.exit.i:                 ; preds = %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge, %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge228, %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge229, %if.then.i20.i.e1000_setup_loopback_test.exit.i_crit_edge230, %if.end.i149.e1000_setup_loopback_test.exit.i_crit_edge
  %call.i.i150 = call fastcc i32 @e1000_set_phy_loopback(ptr noundef %add.ptr.i) #17
  %341 = zext i32 %call.i.i150 to i64
  %342 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %342)
  store i64 %341, ptr %arrayidx39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %tobool3.not.i = icmp eq i32 %call.i.i150, 0
  br i1 %tobool3.not.i, label %e1000_setup_loopback_test.exit.i.if.end5.i_crit_edge, label %e1000_setup_loopback_test.exit.i.err_loopback.i_crit_edge

e1000_setup_loopback_test.exit.i.err_loopback.i_crit_edge: ; preds = %e1000_setup_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_loopback.i

e1000_setup_loopback_test.exit.i.if.end5.i_crit_edge: ; preds = %e1000_setup_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5.i

if.end5.i:                                        ; preds = %e1000_setup_loopback_test.exit.i.if.end5.i_crit_edge, %e1000_setup_loopback_test.exit.thread.i
  %343 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %pdev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !117
  call void @arm_heavy_mb() #17
  %345 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %count110.i.i, align 4
  %sub.i.i = add i32 %346, -1
  %347 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #17
  %348 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %hw1.i, align 4
  %350 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %351)
  %cmp.i27.i = icmp ugt i32 %351, 2
  %cond.i28.i = select i1 %cmp.i27.i, i32 10264, i32 296
  %add.ptr.i29.i = getelementptr i8, ptr %349, i32 %cond.i28.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %347) #17, !srcloc !79
  %352 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %count110.i.i, align 4
  %354 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %count.i.i, align 4
  %356 = call i32 @llvm.umax.i32(i32 %353, i32 %355) #17
  %lc.0.in.i.i = lshr i32 %356, 5
  %lc.0.i.i = or i32 %lc.0.in.i.i, 1
  %buffer_info.i30.i = getelementptr i8, ptr %netdev, i32 4180
  %dev.i31.i = getelementptr inbounds %struct.pci_dev, ptr %344, i32 0, i32 44
  %buffer_info44.i.i = getelementptr i8, ptr %netdev, i32 4216
  br label %for.cond12.preheader.i.i

for.cond.i.i:                                     ; preds = %if.end79.i.i
  %inc87.i.i = add nuw nsw i32 %j.0137.i.i, 1
  %exitcond144.i.i = icmp eq i32 %j.0137.i.i, %lc.0.i.i
  br i1 %exitcond144.i.i, label %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge, label %for.cond.i.i.for.cond12.preheader.i.i_crit_edge

for.cond.i.i.for.cond12.preheader.i.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond12.preheader.i.i

for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_run_loopback_test.exit.i

for.cond12.preheader.i.i:                         ; preds = %for.cond.i.i.for.cond12.preheader.i.i_crit_edge, %if.end5.i
  %l.0139.i.i = phi i32 [ 0, %if.end5.i ], [ %l.2.i.i, %for.cond.i.i.for.cond12.preheader.i.i_crit_edge ]
  %k.0138.i.i = phi i32 [ 0, %if.end5.i ], [ %k.2.i.i, %for.cond.i.i.for.cond12.preheader.i.i_crit_edge ]
  %j.0137.i.i = phi i32 [ 0, %if.end5.i ], [ %inc87.i.i, %for.cond.i.i.for.cond12.preheader.i.i_crit_edge ]
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.inc.i36.i.for.body14.i.i_crit_edge, %for.cond12.preheader.i.i
  %k.1136.i.i = phi i32 [ %k.0138.i.i, %for.cond12.preheader.i.i ], [ %k.2.i.i, %for.inc.i36.i.for.body14.i.i_crit_edge ]
  %i.0135.i.i = phi i32 [ 0, %for.cond12.preheader.i.i ], [ %inc25.i.i, %for.inc.i36.i.for.body14.i.i_crit_edge ]
  %357 = ptrtoint ptr %buffer_info.i30.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %buffer_info.i30.i, align 4
  %arrayidx.i32.i = getelementptr %struct.e1000_tx_buffer, ptr %358, i32 %i.0135.i.i
  %359 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx.i32.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %360, i32 0, i32 19
  %361 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %data.i.i.i, align 4
  %363 = call ptr @memset(ptr %362, i32 255, i32 1024)
  %364 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %364, i32 512
  %365 = call ptr @memset(ptr %arrayidx.i.i.i, i32 170, i32 511)
  %366 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %366, i32 522
  %367 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -66, ptr %arrayidx5.i.i.i, align 1
  %368 = load ptr, ptr %data.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr i8, ptr %368, i32 524
  %369 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -81, ptr %arrayidx9.i.i.i, align 1
  %370 = load ptr, ptr %buffer_info.i30.i, align 4
  %dma.i33.i = getelementptr %struct.e1000_tx_buffer, ptr %370, i32 %k.1136.i.i, i32 1
  %371 = ptrtoint ptr %dma.i33.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %dma.i33.i, align 4
  %length.i34.i = getelementptr %struct.e1000_tx_buffer, ptr %370, i32 %k.1136.i.i, i32 3
  %373 = ptrtoint ptr %length.i34.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %length.i34.i, align 4
  %conv.i.i = zext i16 %374 to i32
  call void @dma_sync_single_for_device(ptr noundef %dev.i31.i, i32 noundef %372, i32 noundef %conv.i.i, i32 noundef 1) #17
  %inc.i35.i = add i32 %k.1136.i.i, 1
  %375 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i, i32 %376)
  %cmp20.i.i = icmp eq i32 %inc.i35.i, %376
  br i1 %cmp20.i.i, label %if.then23.i.i, label %for.body14.i.i.for.inc.i36.i_crit_edge, !prof !78

for.body14.i.i.for.inc.i36.i_crit_edge:           ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i36.i

if.then23.i.i:                                    ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i36.i

for.inc.i36.i:                                    ; preds = %if.then23.i.i, %for.body14.i.i.for.inc.i36.i_crit_edge
  %k.2.i.i = phi i32 [ 0, %if.then23.i.i ], [ %inc.i35.i, %for.body14.i.i.for.inc.i36.i_crit_edge ]
  %inc25.i.i = add nuw nsw i32 %i.0135.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc25.i.i, 64
  br i1 %exitcond.not.i.i, label %do.body26.i.i, label %for.inc.i36.i.for.body14.i.i_crit_edge

for.inc.i36.i.for.body14.i.i_crit_edge:           ; preds = %for.inc.i36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14.i.i

do.body26.i.i:                                    ; preds = %for.inc.i36.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !118
  call void @arm_heavy_mb() #17
  %377 = call i32 @llvm.bswap.i32(i32 %k.2.i.i) #17
  %378 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %hw1.i, align 4
  %380 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %mac_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %381)
  %cmp31.i.i = icmp ugt i32 %381, 2
  %cond33.i.i = select i1 %cmp31.i.i, i32 14360, i32 1080
  %add.ptr34.i.i = getelementptr i8, ptr %379, i32 %cond33.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %377) #17, !srcloc !79
  %382 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hw1.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %383, i32 8
  %384 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !119
  call void @msleep(i32 noundef 200) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %385 = load volatile i32, ptr @jiffies, align 128
  %add71.neg.i.i = sub i32 -20, %385
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %land.rhs.i.i.do.body42.i.i_crit_edge, %do.body26.i.i
  %l.1.i.i = phi i32 [ %l.0139.i.i, %do.body26.i.i ], [ %l.2.i.i, %land.rhs.i.i.do.body42.i.i_crit_edge ]
  %good_cnt.0.i.i = phi i32 [ 0, %do.body26.i.i ], [ %400, %land.rhs.i.i.do.body42.i.i_crit_edge ]
  %386 = ptrtoint ptr %buffer_info44.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %buffer_info44.i.i, align 4
  %dma46.i.i = getelementptr %struct.e1000_rx_buffer, ptr %387, i32 %l.1.i.i, i32 1
  %388 = ptrtoint ptr %dma46.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %dma46.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i31.i, i32 noundef %389, i32 noundef 2048, i32 noundef 2) #17
  %390 = ptrtoint ptr %buffer_info44.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %buffer_info44.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.e1000_rx_buffer, ptr %391, i32 %l.1.i.i
  %392 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx48.i.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %393, i32 133
  %394 = ptrtoint ptr %add.ptr.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %add.ptr.i.i37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %395)
  %cmp.i.i.i = icmp eq i8 %395, -1
  br i1 %cmp.i.i.i, label %if.then.i.i38.i, label %do.body42.i.i.e1000_check_lbtest_frame.exit.i.i_crit_edge

do.body42.i.i.e1000_check_lbtest_frame.exit.i.i_crit_edge: ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_check_lbtest_frame.exit.i.i

if.then.i.i38.i:                                  ; preds = %do.body42.i.i
  %add.ptr3.i.i.i = getelementptr i8, ptr %393, i32 652
  %396 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %add.ptr3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -66, i8 %397)
  %cmp5.i.i.i = icmp eq i8 %397, -66
  br i1 %cmp5.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i38.i.e1000_check_lbtest_frame.exit.i.i_crit_edge

if.then.i.i38.i.e1000_check_lbtest_frame.exit.i.i_crit_edge: ; preds = %if.then.i.i38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_check_lbtest_frame.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i38.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr9.i.i.i = getelementptr i8, ptr %393, i32 654
  %398 = ptrtoint ptr %add.ptr9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %add.ptr9.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %399)
  %cmp11.i.i.i = icmp eq i8 %399, -81
  %spec.select.i.i = select i1 %cmp11.i.i.i, i32 0, i32 13
  %inc54125.i.i = zext i1 %cmp11.i.i.i to i32
  %spec.select130.i.i = add nsw i32 %good_cnt.0.i.i, %inc54125.i.i
  br label %e1000_check_lbtest_frame.exit.i.i

e1000_check_lbtest_frame.exit.i.i:                ; preds = %land.lhs.true.i.i.i, %if.then.i.i38.i.e1000_check_lbtest_frame.exit.i.i_crit_edge, %do.body42.i.i.e1000_check_lbtest_frame.exit.i.i_crit_edge
  %retval.0.i126.i.i = phi i32 [ 13, %do.body42.i.i.e1000_check_lbtest_frame.exit.i.i_crit_edge ], [ 13, %if.then.i.i38.i.e1000_check_lbtest_frame.exit.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i.i ]
  %400 = phi i32 [ %good_cnt.0.i.i, %do.body42.i.i.e1000_check_lbtest_frame.exit.i.i_crit_edge ], [ %good_cnt.0.i.i, %if.then.i.i38.i.e1000_check_lbtest_frame.exit.i.i_crit_edge ], [ %spec.select130.i.i, %land.lhs.true.i.i.i ]
  %inc56.i.i = add i32 %l.1.i.i, 1
  %401 = ptrtoint ptr %count110.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %count110.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc56.i.i, i32 %402)
  %cmp58.i.i = icmp eq i32 %inc56.i.i, %402
  br i1 %cmp58.i.i, label %if.then66.i.i, label %e1000_check_lbtest_frame.exit.i.i.do.cond68.i.i_crit_edge, !prof !78

e1000_check_lbtest_frame.exit.i.i.do.cond68.i.i_crit_edge: ; preds = %e1000_check_lbtest_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond68.i.i

if.then66.i.i:                                    ; preds = %e1000_check_lbtest_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.cond68.i.i

do.cond68.i.i:                                    ; preds = %if.then66.i.i, %e1000_check_lbtest_frame.exit.i.i.do.cond68.i.i_crit_edge
  %l.2.i.i = phi i32 [ 0, %if.then66.i.i ], [ %inc56.i.i, %e1000_check_lbtest_frame.exit.i.i.do.cond68.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %400)
  %cmp69.i.i = icmp slt i32 %400, 64
  br i1 %cmp69.i.i, label %land.rhs.i.i, label %do.end75.i.i

land.rhs.i.i:                                     ; preds = %do.cond68.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %403 = load volatile i32, ptr @jiffies, align 128
  %sub72.i.i = add i32 %add71.neg.i.i, %403
  %cmp73.i39.i = icmp slt i32 %sub72.i.i, 0
  br i1 %cmp73.i39.i, label %land.rhs.i.i.do.body42.i.i_crit_edge, label %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge

land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_run_loopback_test.exit.i

land.rhs.i.i.do.body42.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body42.i.i

do.end75.i.i:                                     ; preds = %do.cond68.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %400)
  %cmp76.not.i.i = icmp eq i32 %400, 64
  br i1 %cmp76.not.i.i, label %if.end79.i.i, label %do.end75.i.i.e1000_run_loopback_test.exit.i_crit_edge

do.end75.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %do.end75.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_run_loopback_test.exit.i

if.end79.i.i:                                     ; preds = %do.end75.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %404 = load volatile i32, ptr @jiffies, align 128
  %add80.neg.i.i = sub i32 -2, %385
  %sub81.i.i = add i32 %add80.neg.i.i, %404
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub81.i.i)
  %cmp82.i.i = icmp sgt i32 %sub81.i.i, -1
  br i1 %cmp82.i.i, label %if.end79.i.i.e1000_run_loopback_test.exit.i_crit_edge, label %for.cond.i.i

if.end79.i.i.e1000_run_loopback_test.exit.i_crit_edge: ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_run_loopback_test.exit.i

e1000_run_loopback_test.exit.i:                   ; preds = %if.end79.i.i.e1000_run_loopback_test.exit.i_crit_edge, %do.end75.i.i.e1000_run_loopback_test.exit.i_crit_edge, %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge, %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge
  %ret_val.1.i.i = phi i32 [ 13, %land.rhs.i.i.e1000_run_loopback_test.exit.i_crit_edge ], [ 14, %if.end79.i.i.e1000_run_loopback_test.exit.i_crit_edge ], [ 13, %do.end75.i.i.e1000_run_loopback_test.exit.i_crit_edge ], [ %retval.0.i126.i.i, %for.cond.i.i.e1000_run_loopback_test.exit.i_crit_edge ]
  %405 = zext i32 %ret_val.1.i.i to i64
  %406 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %405, ptr %arrayidx39, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i.i) #17
  %407 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 -1, ptr %phy_reg.i.i, align 2, !annotation !63
  %408 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %409, i32 256
  %410 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !120
  %411 = and i32 %410, 1073741823
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !121
  call void @arm_heavy_mb() #17
  %412 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %hw1.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %413, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %411) #17, !srcloc !79
  %414 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %autoneg6, align 1
  %call9.i.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 0, ptr noundef nonnull %phy_reg.i.i) #17
  %415 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %phy_reg.i.i, align 2
  %417 = and i16 %416, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %417)
  %tobool.not.i42.i = icmp eq i16 %417, 0
  br i1 %tobool.not.i42.i, label %e1000_run_loopback_test.exit.i.e1000_loopback_cleanup.exit.i_crit_edge, label %if.then.i43.i

e1000_run_loopback_test.exit.i.e1000_loopback_cleanup.exit.i_crit_edge: ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_loopback_cleanup.exit.i

if.then.i43.i:                                    ; preds = %e1000_run_loopback_test.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %and12.i.i = and i16 %416, -16385
  %418 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %and12.i.i, ptr %phy_reg.i.i, align 2
  %call14.i.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext %and12.i.i) #17
  %call15.i.i = call i32 @e1000_phy_reset(ptr noundef %hw1.i) #17
  br label %e1000_loopback_cleanup.exit.i

e1000_loopback_cleanup.exit.i:                    ; preds = %if.then.i43.i, %e1000_run_loopback_test.exit.i.e1000_loopback_cleanup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i) #17
  br label %err_loopback.i

err_loopback.i:                                   ; preds = %e1000_loopback_cleanup.exit.i, %e1000_setup_loopback_test.exit.i.err_loopback.i_crit_edge, %e1000_setup_loopback_test.exit.thread49.i
  call fastcc void @e1000_free_desc_rings(ptr noundef %add.ptr.i) #17
  br label %e1000_loopback_test.exit

e1000_loopback_test.exit:                         ; preds = %err_loopback.i, %e1000_setup_desc_rings.exit.i
  %419 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %arrayidx39, align 8
  %conv8.i = trunc i64 %420 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %tobool41.not = icmp eq i32 %conv8.i, 0
  br i1 %tobool41.not, label %e1000_loopback_test.exit.if.end45_crit_edge, label %if.then42

e1000_loopback_test.exit.if.end45_crit_edge:      ; preds = %e1000_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then42:                                        ; preds = %e1000_loopback_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  %421 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %flags3, align 4
  %or44 = or i32 %422, 2
  store i32 %or44, ptr %flags3, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %e1000_loopback_test.exit.if.end45_crit_edge
  %423 = ptrtoint ptr %autoneg_advertised4 to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %5, ptr %autoneg_advertised4, align 2
  %424 = ptrtoint ptr %forced_speed_duplex5 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %7, ptr %forced_speed_duplex5, align 1
  %425 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %9, ptr %autoneg6, align 1
  call void @e1000_reset(ptr noundef %add.ptr.i) #17
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  br i1 %tobool.i.not, label %if.end45.if.end76_crit_edge, label %if.then51

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  %call52 = call i32 @e1000_open(ptr noundef %netdev) #17
  br label %if.end76

do.body55:                                        ; preds = %entry
  %msg_enable56 = getelementptr i8, ptr %netdev, i32 4232
  %426 = ptrtoint ptr %msg_enable56 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %msg_enable56, align 8
  %and57 = and i32 %427, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body55.do.end63_crit_edge, label %if.then59

do.body55.do.end63_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end63

if.then59:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #19
  %netdev60 = getelementptr i8, ptr %netdev, i32 3288
  %428 = ptrtoint ptr %netdev60 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %netdev60, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %429, ptr noundef nonnull @.str.2) #20
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body55.do.end63_crit_edge
  %arrayidx64 = getelementptr i64, ptr %data, i32 4
  %hw1.i151 = getelementptr i8, ptr %netdev, i32 3296
  %430 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %430)
  store i64 0, ptr %arrayidx64, align 8
  %media_type.i152 = getelementptr i8, ptr %netdev, i32 3320
  %431 = ptrtoint ptr %media_type.i152 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %media_type.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %432)
  %cmp.i153 = icmp eq i32 %432, 2
  br i1 %cmp.i153, label %if.then.i155, label %if.else.i166

if.then.i155:                                     ; preds = %do.end63
  %serdes_has_link.i154 = getelementptr i8, ptr %netdev, i32 3537
  %433 = ptrtoint ptr %serdes_has_link.i154 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 0, ptr %serdes_has_link.i154, align 1
  br label %do.body.i159

do.body.i159:                                     ; preds = %if.end.i162.do.body.i159_crit_edge, %if.then.i155
  %i.0.i156 = phi i32 [ 0, %if.then.i155 ], [ %inc.i160, %if.end.i162.do.body.i159_crit_edge ]
  %call.i157 = tail call i32 @e1000_check_for_link(ptr noundef %hw1.i151) #17
  %434 = ptrtoint ptr %serdes_has_link.i154 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %serdes_has_link.i154, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool.not.i158 = icmp eq i8 %435, 0
  br i1 %tobool.not.i158, label %if.end.i162, label %do.body.i159.e1000_link_test.exit173_crit_edge

do.body.i159.e1000_link_test.exit173_crit_edge:   ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_link_test.exit173

if.end.i162:                                      ; preds = %do.body.i159
  tail call void @msleep(i32 noundef 20) #17
  %inc.i160 = add nuw nsw i32 %i.0.i156, 1
  %exitcond.not.i161 = icmp eq i32 %inc.i160, 3751
  br i1 %exitcond.not.i161, label %if.end.i162.if.end17.sink.split.i171_crit_edge, label %if.end.i162.do.body.i159_crit_edge

if.end.i162.do.body.i159_crit_edge:               ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i159

if.end.i162.if.end17.sink.split.i171_crit_edge:   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.sink.split.i171

if.else.i166:                                     ; preds = %do.end63
  %call6.i163 = tail call i32 @e1000_check_for_link(ptr noundef %hw1.i151) #17
  %autoneg.i164 = getelementptr i8, ptr %netdev, i32 3507
  %436 = ptrtoint ptr %autoneg.i164 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %autoneg.i164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool7.not.i165 = icmp eq i8 %437, 0
  br i1 %tobool7.not.i165, label %if.else.i166.if.end9.i170_crit_edge, label %if.then8.i167

if.else.i166.if.end9.i170_crit_edge:              ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i170

if.then8.i167:                                    ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef 4000) #17
  br label %if.end9.i170

if.end9.i170:                                     ; preds = %if.then8.i167, %if.else.i166.if.end9.i170_crit_edge
  %438 = ptrtoint ptr %hw1.i151 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %hw1.i151, align 4
  %add.ptr.i168 = getelementptr i8, ptr %439, i32 8
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !81
  %441 = and i32 %440, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool14.not.i169 = icmp eq i32 %441, 0
  br i1 %tobool14.not.i169, label %if.end9.i170.if.end17.sink.split.i171_crit_edge, label %if.end9.i170.e1000_link_test.exit173_crit_edge

if.end9.i170.e1000_link_test.exit173_crit_edge:   ; preds = %if.end9.i170
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_link_test.exit173

if.end9.i170.if.end17.sink.split.i171_crit_edge:  ; preds = %if.end9.i170
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17.sink.split.i171

if.end17.sink.split.i171:                         ; preds = %if.end9.i170.if.end17.sink.split.i171_crit_edge, %if.end.i162.if.end17.sink.split.i171_crit_edge
  %442 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %442)
  store i64 1, ptr %arrayidx64, align 8
  br label %e1000_link_test.exit173

e1000_link_test.exit173:                          ; preds = %if.end17.sink.split.i171, %if.end9.i170.e1000_link_test.exit173_crit_edge, %do.body.i159.e1000_link_test.exit173_crit_edge
  %443 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %arrayidx64, align 8
  %conv.i172 = trunc i64 %444 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i172)
  %tobool66.not = icmp eq i32 %conv.i172, 0
  br i1 %tobool66.not, label %e1000_link_test.exit173.if.end70_crit_edge, label %if.then67

e1000_link_test.exit173.if.end70_crit_edge:       ; preds = %e1000_link_test.exit173
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end70

if.then67:                                        ; preds = %e1000_link_test.exit173
  call void @__sanitizer_cov_trace_pc() #19
  %445 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %flags3, align 4
  %or69 = or i32 %446, 2
  store i32 %or69, ptr %flags3, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %e1000_link_test.exit173.if.end70_crit_edge
  %447 = call ptr @memset(ptr %data, i32 0, i32 32)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  br label %if.end76

if.end76:                                         ; preds = %if.end70, %if.then51, %if.end45.if.end76_crit_edge
  %call77 = call i32 @msleep_interruptible(i32 noundef 4000) #17
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.for.body_crit_edge
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = call ptr @memcpy(ptr %data, ptr @e1000_gstrings_test, i32 160)
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.06 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [46 x %struct.e1000_stats], ptr @e1000_gstrings_stats, i32 0, i32 %i.07
  %2 = call ptr @memcpy(ptr %p.06, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.06, i32 32
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_phys_id(ptr noundef %netdev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 0, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 @e1000_setup_led(ptr noundef %hw1) #17
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 @e1000_led_on(ptr noundef %hw1) #17
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 @e1000_led_off(ptr noundef %hw1) #17
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 @e1000_cleanup_led(ptr noundef %hw1) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb ], [ 0, %sw.bb7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @e1000_update_stats(ptr noundef %add.ptr.i) #17
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %stat.061 = phi ptr [ @e1000_gstrings_stats, %entry ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.e1000_stats, ptr %stat.061, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %1, label %land.end [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.end:                                         ; preds = %for.body
  %.b60 = load i1, ptr @e1000_get_ethtool_stats.__already_done, align 1
  br i1 %.b60, label %land.end.cleanup_crit_edge, label %if.then, !prof !106

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.end
  store i1 true, ptr @e1000_get_ethtool_stats.__already_done, align 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then.netdev_name.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #17
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %netdev, ptr @.str.13
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %if.then.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call18 = tail call fastcc ptr @netdev_reg_state(ptr noundef %netdev)
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1827, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i, ptr noundef nonnull %call18, i32 noundef %6, i32 noundef %i.064) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %for.body.sw.epilog_crit_edge
  %add.ptr.i.sink = phi ptr [ %add.ptr.i, %sw.bb1 ], [ %netdev, %for.body.sw.epilog_crit_edge ]
  %stat_offset2 = getelementptr inbounds %struct.e1000_stats, ptr %stat.061, i32 0, i32 3
  %7 = ptrtoint ptr %stat_offset2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_offset2, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr.i.sink, i32 %8
  %sizeof_stat = getelementptr inbounds %struct.e1000_stats, ptr %stat.061, i32 0, i32 2
  %9 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp39 = icmp eq i32 %10, 8
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr3, align 8
  %arrayidx = getelementptr i64, ptr %data, i32 %i.064
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr3, align 4
  %conv = zext i32 %15 to i64
  %arrayidx41 = getelementptr i64, ptr %data, i32 %i.064
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %arrayidx41, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then40, %netdev_name.exit, %land.end.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.064, 1
  %incdec.ptr = getelementptr %struct.e1000_stats, ptr %stat.061, i32 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %switch.selectcmp = icmp eq i32 %sset, 1
  %switch.select = select i1 %switch.selectcmp, i32 46, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %switch.selectcmp2 = icmp eq i32 %sset, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 5, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %media_type = getelementptr i8, ptr %netdev, i32 3320
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %autoneg = getelementptr i8, ptr %netdev, i32 3507
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp2 = icmp eq i8 %3, 1
  br i1 %cmp2, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 3478
  %4 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %autoneg_advertised, align 2
  %6 = or i16 %5, 192
  %or6 = zext i16 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %advertising.0 = phi i32 [ %or6, %if.then4 ], [ 128, %if.then.if.end_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %port, align 1
  %phy_addr = getelementptr i8, ptr %netdev, i32 3404
  %8 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_addr, align 4
  %conv7 = trunc i32 %9 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %phy_address, align 2
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %port10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %port10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %port10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end
  %advertising.1 = phi i32 [ %advertising.0, %if.end ], [ 1120, %if.else ]
  %supported.0 = phi i32 [ 239, %if.end ], [ 1120, %if.else ]
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !122
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else31, label %if.then16

if.then16:                                        ; preds = %if.end11
  %link_speed = getelementptr i8, ptr %netdev, i32 2840
  %link_duplex = getelementptr i8, ptr %netdev, i32 2842
  %call17 = tail call i32 @e1000_get_speed_and_duplex(ptr noundef %hw1, ptr noundef %link_speed, ptr noundef %link_duplex) #17
  %16 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %link_speed, align 8
  %conv19 = zext i16 %17 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv19, ptr %speed, align 4
  %19 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %cmp23 = icmp eq i16 %20, 2
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %duplex, align 4
  br label %if.end36

if.else27:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %duplex, align 4
  br label %if.end36

if.else31:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %speed33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %23 = ptrtoint ptr %speed33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %speed33, align 4
  %duplex35 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %24 = ptrtoint ptr %duplex35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %duplex35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.else27, %if.then25
  %25 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp38 = icmp eq i32 %26, 1
  br i1 %cmp38, label %if.end36.lor.end_crit_edge, label %lor.rhs

if.end36.lor.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end

lor.rhs:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  %autoneg40 = getelementptr i8, ptr %netdev, i32 3507
  %27 = ptrtoint ptr %autoneg40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %autoneg40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool42 = icmp ne i8 %28, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end36.lor.end_crit_edge
  %29 = phi i1 [ true, %if.end36.lor.end_crit_edge ], [ %tobool42, %lor.rhs ]
  %conv44 = zext i1 %29 to i8
  %autoneg46 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %30 = ptrtoint ptr %autoneg46 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv44, ptr %autoneg46, align 1
  %31 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp48 = icmp eq i32 %32, 0
  br i1 %cmp48, label %land.lhs.true, label %lor.end.if.end61_crit_edge

lor.end.if.end61_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

land.lhs.true:                                    ; preds = %lor.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %if.then52, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %mdix_mode = getelementptr i8, ptr %netdev, i32 4132
  %36 = ptrtoint ptr %mdix_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mdix_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool53.not = icmp eq i32 %37, 0
  %conv56 = select i1 %tobool53.not, i8 1, i8 2
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %land.lhs.true.if.end61_crit_edge, %lor.end.if.end61_crit_edge
  %.sink109 = phi i8 [ %conv56, %if.then52 ], [ 0, %land.lhs.true.if.end61_crit_edge ], [ 0, %lor.end.if.end61_crit_edge ]
  %eth_tp_mdix60 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 7
  %38 = ptrtoint ptr %eth_tp_mdix60 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink109, ptr %eth_tp_mdix60, align 1
  %mdix = getelementptr i8, ptr %netdev, i32 3508
  %39 = ptrtoint ptr %mdix to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mdix, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp63 = icmp eq i8 %40, 0
  %.sink = select i1 %cmp63, i8 3, i8 %40
  %41 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink, ptr %41, align 2
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.0) #17
  %advertising74 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising74, i32 noundef %advertising.1) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #17
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !63
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #17
  %eth_tp_mdix_ctrl = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 8
  %1 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %entry
  %media_type = getelementptr i8, ptr %netdev, i32 3320
  %3 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then.cleanup70_crit_edge

if.then.cleanup70_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup70

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp7.not = icmp eq i8 %2, 3
  br i1 %cmp7.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp11.not = icmp eq i8 %6, 1
  br i1 %cmp11.not, label %land.lhs.true.if.end19_crit_edge, label %do.body

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.body:                                          ; preds = %land.lhs.true
  %msg_enable = getelementptr i8, ptr %netdev, i32 4232
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body.cleanup70_crit_edge, label %if.then15

do.body.cleanup70_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup70

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %netdev16 = getelementptr i8, ptr %netdev, i32 3288
  %9 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev16, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.23) #20
  br label %cleanup70

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %flags = getelementptr i8, ptr %netdev, i32 4240
  %call2099 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2099)
  %tobool21.not100 = icmp eq i32 %call2099, 0
  br i1 %tobool21.not100, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end19.while.body_crit_edge
  call void @msleep(i32 noundef 1) #17
  %call20 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #17
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end19.while.end_crit_edge
  %autoneg23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp25 = icmp eq i8 %12, 1
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %while.end
  %autoneg28 = getelementptr i8, ptr %netdev, i32 3507
  %13 = ptrtoint ptr %autoneg28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %autoneg28, align 1
  %media_type29 = getelementptr i8, ptr %netdev, i32 3320
  %14 = ptrtoint ptr %media_type29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %media_type29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then27.if.end46.sink.split_crit_edge, label %if.else

if.then27.if.end46.sink.split_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46.sink.split

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertising, align 4
  %18 = trunc i32 %17 to i16
  %conv34 = or i16 %18, 192
  br label %if.end46.sink.split

if.else37:                                        ; preds = %while.end
  %speed39 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %19 = ptrtoint ptr %speed39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed39, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %duplex, align 4
  %call41 = call i32 @e1000_set_spd_dplx(ptr noundef %add.ptr.i, i32 noundef %20, i8 noundef zeroext %22) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else37.if.end46_crit_edge, label %if.then43

if.else37.if.end46_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end46

if.then43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %cleanup70

if.end46.sink.split:                              ; preds = %if.else, %if.then27.if.end46.sink.split_crit_edge
  %.sink = phi i16 [ %conv34, %if.else ], [ 1120, %if.then27.if.end46.sink.split_crit_edge ]
  %autoneg_advertised = getelementptr i8, ptr %netdev, i32 3478
  %23 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %autoneg_advertised, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else37.if.end46_crit_edge
  %24 = ptrtoint ptr %eth_tp_mdix_ctrl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eth_tp_mdix_ctrl, align 2
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %25, label %if.else57 [
    i8 0, label %if.end46.if.end62_crit_edge
    i8 3, label %if.end46.if.end62.sink.split_crit_edge
  ]

if.end46.if.end62.sink.split_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62.sink.split

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

if.else57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.else57, %if.end46.if.end62.sink.split_crit_edge
  %.sink101 = phi i8 [ %25, %if.else57 ], [ 0, %if.end46.if.end62.sink.split_crit_edge ]
  %mdix = getelementptr i8, ptr %netdev, i32 3508
  %27 = ptrtoint ptr %mdix to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink101, ptr %mdix, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end46.if.end62_crit_edge
  %netdev63 = getelementptr i8, ptr %netdev, i32 3288
  %28 = ptrtoint ptr %netdev63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev63, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  call void @e1000_down(ptr noundef %add.ptr.i) #17
  %call66 = call i32 @e1000_up(ptr noundef %add.ptr.i) #17
  br label %if.end68

if.else67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  call void @e1000_reset(ptr noundef %add.ptr.i) #17
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then65
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %cleanup70

cleanup70:                                        ; preds = %if.end68, %if.then43, %if.then15, %do.body.cleanup70_crit_edge, %if.then.cleanup70_crit_edge
  %retval.1 = phi i32 [ 0, %if.end68 ], [ -95, %if.then.cleanup70_crit_edge ], [ -22, %if.then15 ], [ -22, %do.body.cleanup70_crit_edge ], [ -22, %if.then43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #17
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_phy_reg(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_phy_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_wol_exclusion(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %wol) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %device_id = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 50
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %1, label %sw.default [
    i16 4096, label %entry.sw.epilog.sink.split_crit_edge
    i16 4097, label %entry.sw.epilog.sink.split_crit_edge38
    i16 4100, label %entry.sw.epilog.sink.split_crit_edge39
    i16 4105, label %entry.sw.epilog.sink.split_crit_edge40
    i16 4125, label %entry.sw.epilog.sink.split_crit_edge41
    i16 4113, label %entry.sw.epilog.sink.split_crit_edge42
    i16 4111, label %entry.sw.epilog.sink.split_crit_edge43
    i16 4249, label %entry.sw.epilog.sink.split_crit_edge44
    i16 4234, label %entry.sw.epilog.sink.split_crit_edge45
    i16 4114, label %entry.sw.bb3_crit_edge
    i16 4218, label %entry.sw.bb3_crit_edge46
    i16 4277, label %sw.bb7
  ]

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb3

entry.sw.epilog.sink.split_crit_edge45:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge44:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge43:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge42:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge41:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge40:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge39:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge38:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge46
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !123
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.sw.epilog.sink.split_crit_edge

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %quad_port_a = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 63
  %7 = ptrtoint ptr %quad_port_a to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %quad_port_a, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %sw.bb7.sw.epilog.sink.split_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb7.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !124
  %12 = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not = icmp eq i32 %12, 0
  br i1 %tobool24.not, label %sw.default.sw.epilog_crit_edge, label %land.lhs.true

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.default
  %eeprom_wol = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %13 = ptrtoint ptr %eeprom_wol to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eeprom_wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %land.lhs.true.sw.epilog.sink.split_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %land.lhs.true.sw.epilog.sink.split_crit_edge, %sw.bb7.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge38, %entry.sw.epilog.sink.split_crit_edge39, %entry.sw.epilog.sink.split_crit_edge40, %entry.sw.epilog.sink.split_crit_edge41, %entry.sw.epilog.sink.split_crit_edge42, %entry.sw.epilog.sink.split_crit_edge43, %entry.sw.epilog.sink.split_crit_edge44, %entry.sw.epilog.sink.split_crit_edge45
  %supported27 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %15 = ptrtoint ptr %supported27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %supported27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge
  %retval2.0 = phi i32 [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.default.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  ret i32 %retval2.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_reinit_locked(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @e1000_has_link(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_read_eeprom(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_write_eeprom(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_update_eeprom_checksum(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_down(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_setup_all_rx_resources(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_setup_all_tx_resources(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_free_all_rx_resources(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_free_all_tx_resources(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_up(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_reset(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_setup_link(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_force_mac_fc(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_close(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_power_up_phy(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_open(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_check_for_link(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_pattern_test(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !125
  tail call void @arm_heavy_mb() #17
  %and = and i32 %write, 1515870810
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #17, !srcloc !79
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !126
  %and5 = and i32 %and, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and5)
  %cmp6.not = icmp eq i32 %4, %and5
  br i1 %cmp6.not, label %for.cond, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body7

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !125
  tail call void @arm_heavy_mb() #17
  %and.1 = and i32 %write, -1515870811
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #17, !srcloc !79
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !126
  %and5.1 = and i32 %and.1, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and5.1)
  %cmp6.not.1 = icmp eq i32 %7, %and5.1
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.do.body7_crit_edge

for.cond.do.body7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body7

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !125
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #17, !srcloc !79
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not.2 = icmp eq i32 %8, 0
  br i1 %cmp6.not.2, label %for.cond.2, label %for.cond.1.do.body7_crit_edge

for.cond.1.do.body7_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body7

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !125
  tail call void @arm_heavy_mb() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %write)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #17, !srcloc !79
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !126
  %and5.3 = and i32 %write, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and5.3)
  %cmp6.not.3 = icmp eq i32 %12, %and5.3
  br i1 %cmp6.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.2.do.body7_crit_edge

for.cond.2.do.body7_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body7

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body7:                                         ; preds = %for.cond.2.do.body7_crit_edge, %for.cond.1.do.body7_crit_edge, %for.cond.do.body7_crit_edge, %entry.do.body7_crit_edge
  %.lcssa = phi i32 [ %4, %entry.do.body7_crit_edge ], [ %7, %for.cond.do.body7_crit_edge ], [ %9, %for.cond.1.do.body7_crit_edge ], [ %12, %for.cond.2.do.body7_crit_edge ]
  %and5.lcssa = phi i32 [ %and5, %entry.do.body7_crit_edge ], [ %and5.1, %for.cond.do.body7_crit_edge ], [ 0, %for.cond.1.do.body7_crit_edge ], [ %and5.3, %for.cond.2.do.body7_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 60
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and8 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.body7.do.end14_crit_edge, label %if.then9

do.body7.do.end14_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end14

if.then9:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #19
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 51
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %reg, i32 noundef %.lcssa, i32 noundef %and5.lcssa) #20
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body7.do.end14_crit_edge
  %conv = sext i32 %reg to i64
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %for.cond.2.cleanup_crit_edge
  %cmp33 = phi i1 [ true, %do.end14 ], [ false, %for.cond.2.cleanup_crit_edge ]
  ret i1 %cmp33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @reg_set_and_check(ptr nocapture noundef readonly %adapter, ptr nocapture noundef writeonly %data, i32 noundef %reg, i32 noundef %mask, i32 noundef %write) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !127
  tail call void @arm_heavy_mb() #17
  %and = and i32 %write, %mask
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #17, !srcloc !79
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !128
  %and3 = and i32 %4, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp.not = icmp eq i32 %and3, %and
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.body5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body5:                                         ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 60
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and6 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.body5.do.end11_crit_edge, label %if.then7

do.body5.do.end11_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end11

if.then7:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #19
  %netdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 51
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %reg, i32 noundef %and3, i32 noundef %and) #20
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body5.do.end11_crit_edge
  %9 = zext i32 %reg to i64
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %entry.cleanup_crit_edge
  %11 = xor i1 %cmp.not, true
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_test_intr(i32 noundef %irq, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %data, i32 3296
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !64
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !129
  %test_icr = getelementptr i8, ptr %data, i32 4152
  %4 = ptrtoint ptr %test_icr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_icr, align 8
  %or = or i32 %5, %3
  store i32 %or, ptr %test_icr, align 8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_free_desc_rings(ptr nocapture noundef %adapter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %test_tx_ring = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58
  %test_rx_ring = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59
  %pdev1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %test_tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test_tx_ring, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %buffer_info = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58, i32 6
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end13_crit_edge, label %for.cond.preheader

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.cond.preheader:                               ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp105.not = icmp eq i32 %7, 0
  br i1 %cmp105.not, label %for.cond.preheader.if.end13_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end13_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info, align 4
  %dma = getelementptr %struct.e1000_tx_buffer, ptr %9, i32 %i.0106, i32 1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %for.body.if.end_crit_edge, label %if.then5

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %length = getelementptr %struct.e1000_tx_buffer, ptr %9, i32 %i.0106, i32 3
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv = zext i16 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body.if.end_crit_edge
  %14 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer_info, align 4
  %arrayidx12 = getelementptr %struct.e1000_tx_buffer, ptr %15, i32 %i.0106
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  tail call void @consume_skb(ptr noundef %17) #17
  %inc = add nuw i32 %i.0106, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %for.cond.preheader.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %20 = ptrtoint ptr %test_rx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %test_rx_ring, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end13.if.end40_crit_edge, label %land.lhs.true16

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

land.lhs.true16:                                  ; preds = %if.end13
  %buffer_info17 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59, i32 6
  %22 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_info17, align 4
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %land.lhs.true16.if.end40_crit_edge, label %for.cond20.preheader

land.lhs.true16.if.end40_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

for.cond20.preheader:                             ; preds = %land.lhs.true16
  %count21 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59, i32 3
  %24 = ptrtoint ptr %count21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22108.not = icmp eq i32 %25, 0
  br i1 %cmp22108.not, label %for.cond20.preheader.if.end40_crit_edge, label %for.body24.lr.ph

for.cond20.preheader.if.end40_crit_edge:          ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body24

for.body24:                                       ; preds = %if.end34.for.body24_crit_edge, %for.body24.lr.ph
  %i.1109 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc38, %if.end34.for.body24_crit_edge ]
  %26 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer_info17, align 4
  %dma27 = getelementptr %struct.e1000_rx_buffer, ptr %27, i32 %i.1109, i32 1
  %28 = ptrtoint ptr %dma27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool28.not = icmp eq i32 %29, 0
  br i1 %tobool28.not, label %for.body24.if.end34_crit_edge, label %if.then29

for.body24.if.end34_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then29:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dma_unmap_page_attrs(ptr noundef %dev30, i32 noundef %29, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #17
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %for.body24.if.end34_crit_edge
  %30 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_info17, align 4
  %arrayidx36 = getelementptr %struct.e1000_rx_buffer, ptr %31, i32 %i.1109
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx36, align 4
  tail call void @kfree(ptr noundef %33) #17
  %inc38 = add nuw i32 %i.1109, 1
  %34 = ptrtoint ptr %count21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count21, align 4
  %cmp22 = icmp ult i32 %inc38, %35
  br i1 %cmp22, label %if.end34.for.body24_crit_edge, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end34.for.body24_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body24

if.end40:                                         ; preds = %if.end34.if.end40_crit_edge, %for.cond20.preheader.if.end40_crit_edge, %land.lhs.true16.if.end40_crit_edge, %if.end13.if.end40_crit_edge
  %36 = ptrtoint ptr %test_tx_ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %test_tx_ring, align 4
  %tobool42.not = icmp eq ptr %37, null
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %if.then43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58, i32 2
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %dma46 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58, i32 1
  %40 = ptrtoint ptr %dma46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma46, align 4
  tail call void @dma_free_attrs(ptr noundef %dev44, i32 noundef %39, ptr noundef nonnull %37, i32 noundef %41, i32 noundef 0) #17
  %42 = ptrtoint ptr %test_tx_ring to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %test_tx_ring, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end40.if.end48_crit_edge
  %43 = ptrtoint ptr %test_rx_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %test_rx_ring, align 4
  %tobool50.not = icmp eq ptr %44, null
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %if.then51

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size53 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59, i32 2
  %45 = ptrtoint ptr %size53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size53, align 4
  %dma55 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59, i32 1
  %47 = ptrtoint ptr %dma55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma55, align 4
  tail call void @dma_free_attrs(ptr noundef %dev52, i32 noundef %46, ptr noundef nonnull %44, i32 noundef %48, i32 noundef 0) #17
  %49 = ptrtoint ptr %test_rx_ring to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %test_rx_ring, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end48.if.end57_crit_edge
  %buffer_info58 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 58, i32 6
  %50 = ptrtoint ptr %buffer_info58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer_info58, align 4
  tail call void @kfree(ptr noundef %51) #17
  %52 = ptrtoint ptr %buffer_info58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %buffer_info58, align 4
  %buffer_info60 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 59, i32 6
  %53 = ptrtoint ptr %buffer_info60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer_info60, align 4
  tail call void @kfree(ptr noundef %54) #17
  %55 = ptrtoint ptr %buffer_info60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %buffer_info60, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_set_phy_loopback(ptr noundef %adapter) unnamed_addr #3 align 64 {
entry:
  %phy_reg.i63.i = alloca i16, align 2
  %phy_reg.i53.i = alloca i16, align 2
  %phy_reg.i.i = alloca i16, align 2
  %phy_reg.i = alloca i16, align 2
  %phy_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg) #17
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %phy_reg, align 2
  %mac_type = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 3
  %1 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %entry.sw.bb9_crit_edge
    i32 5, label %entry.sw.bb9_crit_edge33
    i32 6, label %entry.sw.bb9_crit_edge34
    i32 7, label %entry.sw.bb9_crit_edge35
    i32 8, label %entry.sw.bb9_crit_edge36
    i32 10, label %entry.sw.bb9_crit_edge37
    i32 11, label %entry.sw.bb9_crit_edge38
    i32 12, label %entry.sw.bb9_crit_edge39
    i32 13, label %entry.sw.bb9_crit_edge40
    i32 14, label %entry.sw.bb9_crit_edge41
  ]

entry.sw.bb9_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb9

sw.bb:                                            ; preds = %entry
  %media_type = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 6
  %4 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %while.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.bb
  %hw1.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %count.0 = phi i16 [ %inc, %land.rhs.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i) #17
  %6 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %phy_reg.i, align 2, !annotation !63
  %7 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1.i, align 4
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #17, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !130
  %10 = or i32 %9, -2129002496
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !131
  call void @arm_heavy_mb() #17
  %11 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #17, !srcloc !79
  %call8.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 16, ptr noundef nonnull %phy_reg.i) #17
  %13 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_reg.i, align 2
  %15 = and i16 %14, -97
  store i16 %15, ptr %phy_reg.i, align 2
  %call10.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext %15) #17
  %call11.i = call i32 @e1000_phy_reset(ptr noundef %hw1.i) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i.i) #17
  %16 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %phy_reg.i.i, align 2, !annotation !63
  %call.i.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 20, ptr noundef nonnull %phy_reg.i.i) #17
  %17 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_reg.i.i, align 2
  %19 = or i16 %18, 112
  store i16 %19, ptr %phy_reg.i.i, align 2
  %call3.i.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 20, i16 noundef zeroext %19) #17
  %call4.i.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 16, ptr noundef nonnull %phy_reg.i.i) #17
  %20 = ptrtoint ptr %phy_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %phy_reg.i.i, align 2
  %22 = or i16 %21, 2048
  store i16 %22, ptr %phy_reg.i.i, align 2
  %call8.i.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext %22) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i.i) #17
  %call12.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext -32512) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 107374000) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i53.i) #17
  %24 = ptrtoint ptr %phy_reg.i53.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %phy_reg.i53.i, align 2, !annotation !63
  %call.i55.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 20, ptr noundef nonnull %phy_reg.i53.i) #17
  %25 = ptrtoint ptr %phy_reg.i53.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %phy_reg.i53.i, align 2
  %27 = or i16 %26, 112
  store i16 %27, ptr %phy_reg.i53.i, align 2
  %call3.i56.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 20, i16 noundef zeroext %27) #17
  %call4.i57.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 16, ptr noundef nonnull %phy_reg.i53.i) #17
  %28 = ptrtoint ptr %phy_reg.i53.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %phy_reg.i53.i, align 2
  %30 = or i16 %29, 2048
  store i16 %30, ptr %phy_reg.i53.i, align 2
  %call8.i58.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext %30) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i53.i) #17
  %call.i60.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 31) #17
  %call2.i.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28676) #17
  %call3.i61.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 29, i16 noundef zeroext 26) #17
  %call4.i62.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 30, i16 noundef zeroext -28688) #17
  %call13.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 0, ptr noundef nonnull %phy_reg.i) #17
  %31 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %phy_reg.i, align 2
  %33 = or i16 %32, 16384
  store i16 %33, ptr %phy_reg.i, align 2
  %call17.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 0, i16 noundef zeroext %33) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_reg.i63.i) #17
  %34 = ptrtoint ptr %phy_reg.i63.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %phy_reg.i63.i, align 2, !annotation !63
  %call.i65.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 20, ptr noundef nonnull %phy_reg.i63.i) #17
  %35 = ptrtoint ptr %phy_reg.i63.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phy_reg.i63.i, align 2
  %37 = or i16 %36, 112
  store i16 %37, ptr %phy_reg.i63.i, align 2
  %call3.i66.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 20, i16 noundef zeroext %37) #17
  %call4.i67.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 16, ptr noundef nonnull %phy_reg.i63.i) #17
  %38 = ptrtoint ptr %phy_reg.i63.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %phy_reg.i63.i, align 2
  %40 = or i16 %39, 2048
  store i16 %40, ptr %phy_reg.i63.i, align 2
  %call8.i68.i = call i32 @e1000_write_phy_reg(ptr noundef %hw1.i, i32 noundef 16, i16 noundef zeroext %40) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i63.i) #17
  %call18.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 0, ptr noundef nonnull %phy_reg.i) #17
  %41 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16640, i16 %42)
  %cmp20.not.i = icmp eq i16 %42, 16640
  br i1 %cmp20.not.i, label %if.end.i, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

if.end.i:                                         ; preds = %while.cond
  %call22.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 20, ptr noundef nonnull %phy_reg.i) #17
  %43 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %phy_reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %44)
  %cmp24.not.i = icmp eq i16 %44, 112
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end.i.land.rhs_crit_edge

if.end.i.land.rhs_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

if.end27.i:                                       ; preds = %if.end.i
  %call28.i = call i32 @e1000_read_phy_reg(ptr noundef %hw1.i, i32 noundef 29, ptr noundef nonnull %phy_reg.i) #17
  %45 = ptrtoint ptr %phy_reg.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %phy_reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %46)
  %cmp30.not.i = icmp eq i16 %46, 26
  br i1 %cmp30.not.i, label %while.end.thread, label %if.end27.i.land.rhs_crit_edge

if.end27.i.land.rhs_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

while.end.thread:                                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i) #17
  br label %cleanup

land.rhs:                                         ; preds = %if.end27.i.land.rhs_crit_edge, %if.end.i.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg.i) #17
  %inc = add nuw nsw i16 %count.0, 1
  %cmp2 = icmp ult i16 %count.0, 10
  br i1 %cmp2, label %land.rhs.while.cond_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge33, %entry.sw.bb9_crit_edge34, %entry.sw.bb9_crit_edge35, %entry.sw.bb9_crit_edge36, %entry.sw.bb9_crit_edge37, %entry.sw.bb9_crit_edge38, %entry.sw.bb9_crit_edge39, %entry.sw.bb9_crit_edge40, %entry.sw.bb9_crit_edge41
  %hw1.i23 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %autoneg.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %47 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %autoneg.i, align 1
  %phy_type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 4
  %48 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i = icmp eq i32 %49, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb9.if.end.i24_crit_edge

sw.bb9.if.end.i24_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i24

if.then.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 16, i16 noundef zeroext 2056) #17
  %call2.i = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 0, i16 noundef zeroext -28352) #17
  %call3.i = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 0, i16 noundef zeroext -32448) #17
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i, %sw.bb9.if.end.i24_crit_edge
  %50 = ptrtoint ptr %hw1.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1.i23, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !132
  %call7.i = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 0, i16 noundef zeroext 16704) #17
  %53 = ptrtoint ptr %hw1.i23 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw1.i23, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !133
  %56 = and i32 %55, -18546689
  %57 = or i32 %56, 18481152
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #17
  %media_type.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 6
  %59 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp18.i = icmp eq i32 %60, 0
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end.i24.if.else.i_crit_edge

if.end.i24.if.else.i_crit_edge:                   ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i24
  %61 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp20.i = icmp eq i32 %62, 0
  br i1 %cmp20.i, label %if.then21.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %or22.i = or i32 %58, 128
  br label %do.body.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i24.if.else.i_crit_edge
  %63 = ptrtoint ptr %hw1.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1.i23, align 4
  %add.ptr29.i = getelementptr i8, ptr %64, i32 8
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #17, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !134
  %66 = and i32 %65, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp34.i = icmp eq i32 %66, 0
  %or36.i = or i32 %58, 192
  %spec.select.i = select i1 %cmp34.i, i32 %or36.i, i32 %58
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then21.i
  %ctrl_reg.0.i = phi i32 [ %or22.i, %if.then21.i ], [ %spec.select.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !135
  tail call void @arm_heavy_mb() #17
  %67 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.0.i) #17
  %68 = ptrtoint ptr %hw1.i23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw1.i23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #17, !srcloc !79
  %70 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp45.i = icmp eq i32 %71, 0
  br i1 %cmp45.i, label %if.then46.i, label %do.body.i.e1000_integrated_phy_loopback.exit_crit_edge

do.body.i.e1000_integrated_phy_loopback.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %e1000_integrated_phy_loopback.exit

if.then46.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i25 = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 29, i16 noundef zeroext 31) #17
  %call2.i.i26 = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 30, i16 noundef zeroext -28676) #17
  %call3.i.i27 = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 29, i16 noundef zeroext 26) #17
  %call4.i.i28 = tail call i32 @e1000_write_phy_reg(ptr noundef %hw1.i23, i32 noundef 30, i16 noundef zeroext -28688) #17
  br label %e1000_integrated_phy_loopback.exit

e1000_integrated_phy_loopback.exit:               ; preds = %if.then46.i, %do.body.i.e1000_integrated_phy_loopback.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 107374000) #17
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %call11 = call i32 @e1000_read_phy_reg(ptr noundef %hw1, i32 noundef 0, ptr noundef nonnull %phy_reg) #17
  %73 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %phy_reg, align 2
  %75 = or i16 %74, 16384
  store i16 %75, ptr %phy_reg, align 2
  %call14 = call i32 @e1000_write_phy_reg(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext %75) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %e1000_integrated_phy_loopback.exit, %land.rhs.cleanup_crit_edge, %while.end.thread, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %e1000_integrated_phy_loopback.exit ], [ 0, %while.end.thread ], [ 8, %sw.bb.cleanup_crit_edge ], [ 8, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_reg) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_phy_reset(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_setup_led(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_led_on(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_led_off(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_cleanup_led(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000_update_stats(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !106

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %dev, i32 noundef %bf.cast21) #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.22, %if.then ], [ @.str.22, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_get_speed_and_duplex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_set_spd_dplx(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @e1000_ethtool_ops, !1, !"e1000_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 1860, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 1661, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 1526, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 1567, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 735, i32 3}
!10 = distinct !{null, !11, !"test", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 659, i32 19}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 670, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 690, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 847, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @e1000_gstrings_test, !25, !"e1000_gstrings_test", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 78, i32 19}
!26 = !{ptr @e1000_gstrings_stats, !27, !"e1000_gstrings_stats", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 26, i32 33}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 1826, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/e1000/e1000_ethtool.c", i32 184, i32 4}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 6447442}
!65 = !{i64 2158133392}
!66 = !{i64 2158134303}
!67 = !{i64 2158135204}
!68 = !{i64 2158136098}
!69 = !{i64 2158136984}
!70 = !{i64 2158137870}
!71 = !{i64 2158138760}
!72 = !{i64 2158139661}
!73 = !{i64 2158140555}
!74 = !{i64 2158141441}
!75 = !{i64 2158142327}
!76 = !{i64 2158143217}
!77 = !{i64 2158144273}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 6447024}
!80 = !{i8 0, i8 2}
!81 = !{i64 2158214044}
!82 = !{i64 2158157357}
!83 = !{i64 2158158268}
!84 = !{i64 2158158739}
!85 = !{i64 2158159905}
!86 = !{i64 2158161089}
!87 = !{i64 2158172008}
!88 = !{i64 2158173199}
!89 = !{i64 2158173651}
!90 = !{i64 2158174352}
!91 = !{i64 2158175525}
!92 = !{i64 2158175977}
!93 = !{i64 2158176678}
!94 = !{i64 2158177851}
!95 = !{i64 2158178331}
!96 = !{i64 2158179102}
!97 = !{i64 2158180317}
!98 = !{i64 2158180781}
!99 = !{i64 2158181972}
!100 = !{i64 2158183409}
!101 = !{i64 2158184243}
!102 = !{i64 2158185072}
!103 = !{i64 2158185871}
!104 = !{i64 2158186547}
!105 = !{i64 2158187382}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2158189817}
!108 = !{i64 2158190315}
!109 = !{i64 2158191109}
!110 = !{i64 2158191919}
!111 = !{i64 2158192684}
!112 = !{i64 2158193387}
!113 = !{i64 2158194063}
!114 = !{i64 2158194818}
!115 = !{i64 2158206223}
!116 = !{i64 2158206691}
!117 = !{i64 2158209057}
!118 = !{i64 2158209821}
!119 = !{i64 2158210985}
!120 = !{i64 2158207841}
!121 = !{i64 2158208320}
!122 = !{i64 2158126247}
!123 = !{i64 2158221585}
!124 = !{i64 2158222514}
!125 = !{i64 2158153378}
!126 = !{i64 2158154025}
!127 = !{i64 2158155023}
!128 = !{i64 2158155661}
!129 = !{i64 2158170859}
!130 = !{i64 2158199821}
!131 = !{i64 2158200341}
!132 = !{i64 2158202115}
!133 = !{i64 2158203021}
!134 = !{i64 2158203998}
!135 = !{i64 2158204496}
