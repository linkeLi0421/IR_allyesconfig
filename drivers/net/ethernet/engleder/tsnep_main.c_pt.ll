; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/engleder/tsnep_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/engleder/tsnep_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tsnep_adapter = type { ptr, [6 x i8], ptr, i8, i32, ptr, i32, ptr, ptr, ptr, i32, i8, %struct.mutex, i8, [2 x %struct.tsnep_gcl], i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.spinlock, i32, [8 x %struct.tsnep_tx], i32, [8 x %struct.tsnep_rx], i32, [8 x %struct.tsnep_queue] }
%struct.tsnep_gcl = type { ptr, i64, i64, i64, [256 x %struct.tsnep_gcl_operation], i32, i64, i64, i8 }
%struct.tsnep_gcl_operation = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tsnep_tx = type { ptr, ptr, [16 x ptr], [16 x i32], %struct.spinlock, [256 x %struct.tsnep_tx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_tx_entry = type { ptr, ptr, i32, i8, i32, ptr, i32, i32 }
%struct.tsnep_rx = type { ptr, ptr, [16 x ptr], [16 x i32], [256 x %struct.tsnep_rx_entry], i32, i32, i32, i32, i32, i32, i32 }
%struct.tsnep_rx_entry = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tsnep_queue = type { ptr, ptr, ptr, %struct.napi_struct, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.tsnep_tx_desc = type { i32, i32, [2 x i32], i64, i64 }
%struct.tsnep_rx_desc = type { i32, [3 x i32], i64, i64 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tsnep_tx_desc_wb = type { i32, [3 x i32], i64, i32, i32 }
%struct.tsnep_rx_inline = type { i64, i64 }

@__initcall__kmod_tsnep__351_1268_tsnep_driver_init6 = internal global ptr @tsnep_driver_init, section ".initcall6.init", align 4
@tsnep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tsnep_probe, ptr @tsnep_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tsnep_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tsnep_driver_exit = internal global ptr @tsnep_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author352 = internal constant [62 x i8] c"tsnep.author=Gerhard Engleder <gerhard@engleder-embedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [51 x i8] c"tsnep.description=TSN endpoint Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [47 x i8] c"tsnep.file=drivers/net/ethernet/engleder/tsnep\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [18 x i8] c"tsnep.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsnep\00", [26 x i8] zeroinitializer }, align 32
@tsnep_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"engleder,tsnep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tsnep_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&adapter->gate_control_lock\00", [36 x i8] zeroinitializer }, align 32
@tsnep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get assigned irq %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tsnep_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/engleder/tsnep_main.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsnep_probe._entry_ptr = internal global ptr @tsnep_probe._entry, section ".printk_index", align 4
@tsnep_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @tsnep_netdev_open, ptr @tsnep_netdev_close, ptr @tsnep_netdev_xmit_frame, ptr null, ptr null, ptr null, ptr @tsnep_netdev_set_multicast, ptr @tsnep_netdev_set_mac_address, ptr null, ptr null, ptr @tsnep_netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsnep_netdev_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tsnep_tc_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@tsnep_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@tsnep_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1216, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device version %d.%02d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsnep_probe._entry_ptr.10 = internal global ptr @tsnep_probe._entry.7, section ".printk_index", align 4
@tsnep_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1218, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gate control detected\0A\00", [41 x i8] zeroinitializer }, align 32
@tsnep_probe._entry_ptr.13 = internal global ptr @tsnep_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC address set to %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suppress-preamble\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsnep-mdiobus\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@tsnep_tx_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tx->lock\00", [22 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"tsnep_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1260, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1262, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"tsnep_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1254, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1150, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1177, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"tsnep_netdev_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1013, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1215, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1218, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 994, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1065, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1070, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1084, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1085, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1110, i32 58 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 520, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [46 x i8] c"../drivers/net/ethernet/engleder/tsnep_main.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 406, i32 35 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_tsnep_driver_exit, ptr @__initcall__kmod_tsnep__351_1268_tsnep_driver_init6, ptr @tsnep_driver_exit, ptr @tsnep_probe._entry, ptr @tsnep_probe._entry.11, ptr @tsnep_probe._entry.7, ptr @tsnep_probe._entry_ptr, ptr @tsnep_probe._entry_ptr.10, ptr @tsnep_probe._entry_ptr.13, ptr @tsnep_driver, ptr @.str, ptr @tsnep_of_match, ptr @tsnep_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tsnep_netdev_ops, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @tsnep_tx_open.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsnep_tx_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tsnep_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tsnep_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev, i32 noundef 132400, i32 noundef 8, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %pdev5 = getelementptr i8, ptr %call, i32 2336
  %2 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev5, align 8
  %dmadev = getelementptr i8, ptr %call, i32 2340
  %3 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dmadev, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %call, i32 2332
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 311, ptr %msg_enable, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %7 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %max_mtu, align 4
  %gate_control_lock = getelementptr i8, ptr %call, i32 2356
  tail call void @__mutex_init(ptr noundef %gate_control_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tsnep_probe.__key) #7
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #7
  %addr = getelementptr i8, ptr %call, i32 2344
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %addr, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr i8, ptr %call, i32 2348
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call17, ptr %irq, align 4
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call8, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mem_start, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mem_end, align 8
  %irq19 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %17 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17, ptr %irq19, align 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !68
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and = and i32 %21, 255
  %and22 = lshr i32 %21, 8
  %shr23 = and i32 %and22, 255
  %gate_control = getelementptr i8, ptr %call, i32 2352
  %and24 = lshr i32 %21, 25
  %22 = trunc i32 %and24 to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %gate_control to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %gate_control, align 8
  %num_tx_queues = getelementptr i8, ptr %call, i32 6852
  %25 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_tx_queues, align 4
  %num_rx_queues = getelementptr i8, ptr %call, i32 74056
  %26 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %num_rx_queues, align 8
  %num_queues = getelementptr i8, ptr %call, i32 132716
  %27 = ptrtoint ptr %num_queues to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_queues, align 4
  %tx = getelementptr i8, ptr %call, i32 6856
  %tx27 = getelementptr i8, ptr %call, i32 132724
  %28 = ptrtoint ptr %tx27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx, ptr %tx27, align 4
  %rx = getelementptr i8, ptr %call, i32 74060
  %rx31 = getelementptr i8, ptr %call, i32 132728
  %29 = ptrtoint ptr %rx31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx, ptr %rx31, align 8
  %irq_mask = getelementptr i8, ptr %call, i32 132960
  %30 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 768, ptr %irq_mask, align 8
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr, align 8
  %add.ptr.i169 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 -1) #7, !srcloc !71
  %33 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev5, align 8
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev35, i32 noundef %36, ptr noundef nonnull @tsnep_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end45, label %do.end41

do.end41:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev5, align 8
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.2, i32 noundef %40) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end16
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr, align 8
  %add.ptr.i171 = getelementptr i8, ptr %42, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 536870912) #7, !srcloc !71
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %addr, align 8
  %add.ptr.i173 = getelementptr i8, ptr %44, i32 2054
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i173, i16 0) #7, !srcloc !73
  %45 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev5, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3, i32 27
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 8
  %mac_address.i = getelementptr i8, ptr %call, i32 2308
  %call.i174 = tail call i32 @of_get_mac_address(ptr noundef %48, ptr noundef %mac_address.i) #7
  %49 = zext i32 %call.i174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i174, label %land.lhs.true.i [
    i32 -517, label %if.end45.mac_init_failed_crit_edge
    i32 0, label %if.end45.if.end24.i_crit_edge
  ]

if.end45.if.end24.i_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end45.mac_init_failed_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_init_failed

land.lhs.true.i:                                  ; preds = %if.end45
  %50 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mac_address.i, align 4
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i.if.then5.i_crit_edge

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call, i32 2312
  %53 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %54 to i32
  %or.i.i.i = or i32 %51, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then5.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end24.i_crit_edge

is_valid_ether_addr.exit.i.if.end24.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

is_valid_ether_addr.exit.i.if.then5.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then5.i:                                       ; preds = %is_valid_ether_addr.exit.i.if.then5.i_crit_edge, %land.lhs.true.i.if.then5.i_crit_edge
  %55 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr, align 8
  %add.ptr7.i = getelementptr i8, ptr %56, i32 2048
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !68
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %59 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mac_address.i, align 4
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %addr, align 8
  %add.ptr12.i = getelementptr i8, ptr %61, i32 2052
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #7, !srcloc !74
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %add.ptr16.i = getelementptr i8, ptr %call, i32 2312
  %64 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr16.i, align 2
  %65 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mac_address.i, align 4
  %67 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i.not.i44.i = icmp eq i32 %67, 0
  br i1 %tobool.i.not.i44.i, label %is_valid_ether_addr.exit50.i, label %if.then5.i.if.then20.i_crit_edge

if.then5.i.if.then20.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20.i

is_valid_ether_addr.exit50.i:                     ; preds = %if.then5.i
  %conv.i.i46.i = zext i16 %63 to i32
  %or.i.i47.i = or i32 %66, %conv.i.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i47.i)
  %cmp.i.i48.not.i = icmp eq i32 %or.i.i47.i, 0
  br i1 %cmp.i.i48.not.i, label %is_valid_ether_addr.exit50.i.if.then20.i_crit_edge, label %is_valid_ether_addr.exit50.i.if.end24.i_crit_edge

is_valid_ether_addr.exit50.i.if.end24.i_crit_edge: ; preds = %is_valid_ether_addr.exit50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

is_valid_ether_addr.exit50.i.if.then20.i_crit_edge: ; preds = %is_valid_ether_addr.exit50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20.i

if.then20.i:                                      ; preds = %is_valid_ether_addr.exit50.i.if.then20.i_crit_edge, %if.then5.i.if.then20.i_crit_edge
  tail call void @get_random_bytes(ptr noundef %mac_address.i, i32 noundef 6) #7
  %68 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mac_address.i, align 1
  %70 = and i8 %69, -4
  %71 = or i8 %70, 2
  store i8 %71, ptr %mac_address.i, align 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %is_valid_ether_addr.exit50.i.if.end24.i_crit_edge, %is_valid_ether_addr.exit.i.if.end24.i_crit_edge, %if.end45.if.end24.i_crit_edge
  %72 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mac_address.i, align 4
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr, align 8
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %76) #7, !srcloc !71
  %add.ptr2.i.i = getelementptr i8, ptr %call, i32 2312
  %77 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr2.i.i, align 2
  %79 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %addr, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %80, i32 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %81 = tail call i16 @llvm.bswap.i16(i16 %78) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i, i16 %81) #7, !srcloc !73
  %82 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_enable, align 4
  %and.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end24.i.if.end49_crit_edge, label %if.then.i.i

if.end24.i.if.end49_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %85, ptr noundef nonnull @.str.14, ptr noundef %mac_address.i) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then.i.i, %if.end24.i.if.end49_crit_edge
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  tail call void @dev_addr_mod(ptr noundef %87, i32 noundef 0, ptr noundef %mac_address.i, i32 noundef 6) #7
  %88 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev5, align 8
  %of_node.i176 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3, i32 27
  %90 = ptrtoint ptr %of_node.i176 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %of_node.i176, align 8
  %tobool.not.i = icmp eq ptr %91, null
  br i1 %tobool.not.i, label %if.end49.if.end5.i_crit_edge, label %if.then.i

if.end49.if.end5.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end49
  %call.i177 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %91, ptr noundef nonnull @.str.15) #7
  %tobool2.not.i = icmp eq ptr %call.i177, null
  br i1 %tobool2.not.i, label %if.then.i.if.end53_crit_edge, label %if.end.i

if.then.i.if.end53_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i177, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %suppress_preamble.i = getelementptr i8, ptr %call, i32 2320
  %frombool.i = zext i1 %tobool.i.i to i8
  %92 = ptrtoint ptr %suppress_preamble.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %frombool.i, ptr %suppress_preamble.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end49.if.end5.i_crit_edge
  %np.0.i = phi ptr [ %call.i177, %if.end.i ], [ null, %if.end49.if.end5.i_crit_edge ]
  %93 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev5, align 8
  %dev7.i = getelementptr inbounds %struct.platform_device, ptr %94, i32 0, i32 3
  %call.i52.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev7.i, i32 noundef 0) #7
  %mdiobus.i = getelementptr i8, ptr %call, i32 2316
  %95 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i52.i, ptr %mdiobus.i, align 4
  %tobool10.not.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool10.not.i, label %if.end5.i.out.i_crit_edge, label %if.end12.i

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %call.i52.i, i32 0, i32 3
  %96 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr.i, ptr %priv.i, align 8
  %97 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev5, align 8
  %dev15.i = getelementptr inbounds %struct.platform_device, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mdiobus.i, align 4
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dev15.i, ptr %parent.i, align 4
  %102 = load ptr, ptr %mdiobus.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @tsnep_mdiobus_read, ptr %read.i, align 4
  %104 = load ptr, ptr %mdiobus.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tsnep_mdiobus_write, ptr %write.i, align 8
  %106 = load ptr, ptr %mdiobus.i, align 4
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.17, ptr %name.i, align 4
  %108 = load ptr, ptr %mdiobus.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %pdev5, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %call23.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.18, ptr noundef %111) #7
  %112 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mdiobus.i, align 4
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %phy_mask.i, align 8
  %115 = load ptr, ptr %mdiobus.i, align 4
  %call26.i = tail call i32 @of_mdiobus_register(ptr noundef %115, ptr noundef %np.0.i) #7
  br label %out.i

out.i:                                            ; preds = %if.end12.i, %if.end5.i.out.i_crit_edge
  %retval1.0.i = phi i32 [ %call26.i, %if.end12.i ], [ -12, %if.end5.i.out.i_crit_edge ]
  %tobool27.not.i = icmp eq ptr %np.0.i, null
  br i1 %tobool27.not.i, label %out.i.tsnep_mdio_init.exit_crit_edge, label %if.then28.i

out.i.tsnep_mdio_init.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_mdio_init.exit

if.then28.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %np.0.i) #7
  br label %tsnep_mdio_init.exit

tsnep_mdio_init.exit:                             ; preds = %if.then28.i, %out.i.tsnep_mdio_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0.i)
  %tobool51.not = icmp eq i32 %retval1.0.i, 0
  br i1 %tobool51.not, label %tsnep_mdio_init.exit.if.end53_crit_edge, label %tsnep_mdio_init.exit.mac_init_failed_crit_edge

tsnep_mdio_init.exit.mac_init_failed_crit_edge:   ; preds = %tsnep_mdio_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_init_failed

tsnep_mdio_init.exit.if.end53_crit_edge:          ; preds = %tsnep_mdio_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end53:                                         ; preds = %tsnep_mdio_init.exit.if.end53_crit_edge, %if.then.i.if.end53_crit_edge
  %116 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev5, align 8
  %of_node.i180 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3, i32 27
  %118 = ptrtoint ptr %of_node.i180 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %of_node.i180, align 8
  %phy_mode.i = getelementptr i8, ptr %call, i32 2324
  %call.i181 = tail call i32 @of_get_phy_mode(ptr noundef %119, ptr noundef %phy_mode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool.not.i182 = icmp eq i32 %call.i181, 0
  br i1 %tobool.not.i182, label %if.end53.if.end.i186_crit_edge, label %if.then.i183

if.end53.if.end.i186_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i186

if.then.i183:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 3, ptr %phy_mode.i, align 4
  br label %if.end.i186

if.end.i186:                                      ; preds = %if.then.i183, %if.end53.if.end.i186_crit_edge
  %121 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev5, align 8
  %of_node5.i = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3, i32 27
  %123 = ptrtoint ptr %of_node5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %of_node5.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %125 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i184 = call i32 @__of_parse_phandle_with_args(ptr noundef %124, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %tobool.not.i.i185 = icmp eq i32 %call.i.i184, 0
  br i1 %tobool.not.i.i185, label %if.end.i.i, label %if.end.i186.of_parse_phandle.exit.i_crit_edge

if.end.i186.of_parse_phandle.exit.i_crit_edge:    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.end.i186.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %127, %if.end.i.i ], [ null, %if.end.i186.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %call7.i = call ptr @of_phy_find_device(ptr noundef %retval.0.i.i) #7
  %phydev.i = getelementptr i8, ptr %call, i32 2328
  %128 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call7.i, ptr %phydev.i, align 8
  call void @of_node_put(ptr noundef %retval.0.i.i) #7
  %129 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %phydev.i, align 8
  %tobool9.not.i = icmp eq ptr %130, null
  br i1 %tobool9.not.i, label %land.lhs.true.i189, label %of_parse_phandle.exit.i.if.end57_crit_edge

of_parse_phandle.exit.i.if.end57_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true.i189:                               ; preds = %of_parse_phandle.exit.i
  %mdiobus.i187 = getelementptr i8, ptr %call, i32 2316
  %131 = ptrtoint ptr %mdiobus.i187 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mdiobus.i187, align 4
  %tobool10.not.i188 = icmp eq ptr %132, null
  br i1 %tobool10.not.i188, label %tsnep_phy_init.exitthread-pre-split, label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call ptr @phy_find_first(ptr noundef nonnull %132) #7
  %133 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call13.i, ptr %phydev.i, align 8
  br label %tsnep_phy_init.exit

tsnep_phy_init.exitthread-pre-split:              ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr = load ptr, ptr %phydev.i, align 8
  br label %tsnep_phy_init.exit

tsnep_phy_init.exit:                              ; preds = %tsnep_phy_init.exitthread-pre-split, %if.then11.i
  %135 = phi ptr [ %.pr, %tsnep_phy_init.exitthread-pre-split ], [ %call13.i, %if.then11.i ]
  %tobool17.not.i.not = icmp eq ptr %135, null
  br i1 %tobool17.not.i.not, label %tsnep_phy_init.exit.phy_init_failed_crit_edge, label %tsnep_phy_init.exit.if.end57_crit_edge

tsnep_phy_init.exit.if.end57_crit_edge:           ; preds = %tsnep_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

tsnep_phy_init.exit.phy_init_failed_crit_edge:    ; preds = %tsnep_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_init_failed

if.end57:                                         ; preds = %tsnep_phy_init.exit.if.end57_crit_edge, %of_parse_phandle.exit.i.if.end57_crit_edge
  %call58 = call i32 @tsnep_ptp_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.phy_init_failed_crit_edge

if.end57.phy_init_failed_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_init_failed

if.end61:                                         ; preds = %if.end57
  %call62 = call i32 @tsnep_tc_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.tc_init_failed_crit_edge

if.end61.tc_init_failed_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc_init_failed

if.end65:                                         ; preds = %if.end61
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %136 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @tsnep_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %137 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @tsnep_ethtool_ops, ptr %ethtool_ops, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %138 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 1, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %139 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 1, ptr %hw_features, align 8
  call void @netif_carrier_off(ptr noundef nonnull %call) #7
  %call67 = call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.end73, label %register_failed

do.end73:                                         ; preds = %if.end65
  %140 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev5, align 8
  %dev75 = getelementptr inbounds %struct.platform_device, ptr %141, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.8, i32 noundef %shr23, i32 noundef %and) #10
  %142 = ptrtoint ptr %gate_control to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %gate_control, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool77.not = icmp eq i8 %143, 0
  br i1 %tobool77.not, label %do.end73.cleanup_crit_edge, label %do.end81

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end81:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdev5, align 8
  %dev83 = getelementptr inbounds %struct.platform_device, ptr %145, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev83, ptr noundef nonnull @.str.12) #10
  br label %cleanup

register_failed:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  call void @tsnep_tc_cleanup(ptr noundef %add.ptr.i) #7
  br label %tc_init_failed

tc_init_failed:                                   ; preds = %register_failed, %if.end61.tc_init_failed_crit_edge
  %retval1.0 = phi i32 [ %call62, %if.end61.tc_init_failed_crit_edge ], [ %call67, %register_failed ]
  call void @tsnep_ptp_cleanup(ptr noundef %add.ptr.i) #7
  br label %phy_init_failed

phy_init_failed:                                  ; preds = %tc_init_failed, %if.end57.phy_init_failed_crit_edge, %tsnep_phy_init.exit.phy_init_failed_crit_edge
  %retval1.1 = phi i32 [ -5, %tsnep_phy_init.exit.phy_init_failed_crit_edge ], [ %call58, %if.end57.phy_init_failed_crit_edge ], [ %retval1.0, %tc_init_failed ]
  %mdiobus = getelementptr i8, ptr %call, i32 2316
  %146 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mdiobus, align 4
  %tobool85.not = icmp eq ptr %147, null
  br i1 %tobool85.not, label %phy_init_failed.mac_init_failed_crit_edge, label %if.then86

phy_init_failed.mac_init_failed_crit_edge:        ; preds = %phy_init_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %mac_init_failed

if.then86:                                        ; preds = %phy_init_failed
  call void @__sanitizer_cov_trace_pc() #9
  call void @mdiobus_unregister(ptr noundef nonnull %147) #7
  br label %mac_init_failed

mac_init_failed:                                  ; preds = %if.then86, %phy_init_failed.mac_init_failed_crit_edge, %tsnep_mdio_init.exit.mac_init_failed_crit_edge, %if.end45.mac_init_failed_crit_edge
  %retval1.2 = phi i32 [ %retval1.0.i, %tsnep_mdio_init.exit.mac_init_failed_crit_edge ], [ %retval1.1, %if.then86 ], [ %retval1.1, %phy_init_failed.mac_init_failed_crit_edge ], [ %call.i174, %if.end45.mac_init_failed_crit_edge ]
  %148 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %addr, align 8
  %add.ptr.i191 = getelementptr i8, ptr %149, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 -1) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %mac_init_failed, %do.end81, %do.end73.cleanup_crit_edge, %do.end41, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then13 ], [ %call.i, %do.end41 ], [ %retval1.2, %mac_init_failed ], [ -19, %entry.cleanup_crit_edge ], [ 0, %do.end81 ], [ 0, %do.end73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @unregister_netdev(ptr noundef %3) #7
  tail call void @tsnep_tc_cleanup(ptr noundef %1) #7
  tail call void @tsnep_ptp_cleanup(ptr noundef %1) #7
  %mdiobus = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdiobus, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mdiobus_unregister(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr.i = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !71
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.tsnep_adapter, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !71
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 145
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then4.if.end9_crit_edge, label %if.then5

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_mac_interrupt(ptr noundef nonnull %9) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %irq_mask = getelementptr inbounds %struct.tsnep_adapter, ptr %arg, i32 0, i32 25, i32 0, i32 4
  %10 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_mask, align 8
  %and10 = and i32 %11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.end9.if.end22_crit_edge, label %if.then12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 8
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.then12.if.end22_crit_edge, label %if.then15

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then15:                                        ; preds = %if.then12
  %or.i = or i32 %11, -2147483648
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !71
  %napi = getelementptr inbounds %struct.tsnep_adapter, ptr %arg, i32 0, i32 25, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %if.then15.if.end22_crit_edge

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then15.if.end22_crit_edge, %if.then12.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_ptp_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_tc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_tc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tsnep_ptp_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %suppress_preamble = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suppress_preamble to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suppress_preamble, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool2.not, i32 5, i32 4
  %shl = shl i32 %regnum, 3
  %and5 = and i32 %shl, 248
  %shl7 = shl i32 %addr, 8
  %and8 = and i32 %shl7, 7936
  %or6 = or i32 %and5, %and8
  %or9 = or i32 %or6, %spec.select
  %addr10 = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr10, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or9) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !71
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000
  %7 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr10, align 8
  %add.ptr1366 = getelementptr i8, ptr %8, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1366) #7, !srcloc !68
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %and1667 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1667)
  %tobool17.not68 = icmp eq i32 %and1667, 0
  br i1 %tobool17.not68, label %if.end.for.end.thread_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 3435968) #7
  %12 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr10, align 8
  %add.ptr13 = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !68
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %and16 = and i32 %15, 1
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr10, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 132
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !68
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %.pre = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool41.not = icmp eq i32 %.pre, 0
  br i1 %tobool41.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  %shr73.in = phi i32 [ %19, %for.end.for.end.thread_crit_edge ], [ %10, %if.end.for.end.thread_crit_edge ], [ %15, %cond.false.for.end.thread_crit_edge ]
  %shr73 = lshr i32 %shr73.in, 16
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %shr73, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %suppress_preamble = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suppress_preamble to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suppress_preamble, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool2.not, i32 3, i32 2
  %shl = shl i32 %regnum, 3
  %and5 = and i32 %shl, 248
  %shl7 = shl i32 %addr, 8
  %and8 = and i32 %shl7, 7936
  %conv = zext i16 %val to i32
  %shl10 = shl nuw i32 %conv, 16
  %or9 = or i32 %and5, %and8
  %or6 = or i32 %or9, %shl10
  %or12 = or i32 %or6, %spec.select
  %addr13 = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr13, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or12) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !71
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000
  %7 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr13, align 8
  %add.ptr1670 = getelementptr i8, ptr %8, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1670) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not72 = icmp eq i32 %10, 0
  br i1 %tobool20.not72, label %if.end.for.end.thread_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 3435968) #7
  %12 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr13, align 8
  %add.ptr16 = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %15 = and i32 %14, 16777216
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr13, align 8
  %add.ptr31 = getelementptr i8, ptr %17, i32 132
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %for.end.thread ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_netdev_open(ptr noundef %netdev) #2 align 64 {
entry:
  %ethtool_eee.i = alloca %struct.ethtool_eee, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ethtool_eee.i) #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %phydev2.i = getelementptr i8, ptr %netdev, i32 2328
  %2 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev2.i, align 8
  %phy_mode.i = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_mode.i, align 4
  %call.i = tail call i32 @phy_connect_direct(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @tsnep_phy_link_status_change, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %tsnep_phy_open.exit, label %tsnep_phy_open.exit.thread

tsnep_phy_open.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ethtool_eee.i) #7
  br label %cleanup

tsnep_phy_open.exit:                              ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %phydev4.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 145
  %8 = ptrtoint ptr %phydev4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev4.i, align 16
  tail call void @phy_remove_link_mode(ptr noundef %9, i32 noundef 0) #7
  tail call void @phy_remove_link_mode(ptr noundef %9, i32 noundef 1) #7
  tail call void @phy_remove_link_mode(ptr noundef %9, i32 noundef 2) #7
  tail call void @phy_remove_link_mode(ptr noundef %9, i32 noundef 4) #7
  %10 = call ptr @memset(ptr %ethtool_eee.i, i32 0, i32 40)
  %11 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev2.i, align 8
  %call6.i = call i32 @phy_ethtool_set_eee(ptr noundef %12, ptr noundef nonnull %ethtool_eee.i) #7
  %13 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev2.i, align 8
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -2, ptr %irq.i, align 4
  %16 = load ptr, ptr %phydev2.i, align 8
  call void @phy_start(ptr noundef %16) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ethtool_eee.i) #7
  %num_queues = getelementptr i8, ptr %netdev, i32 132716
  %17 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp212 = icmp sgt i32 %18, 0
  br i1 %cmp212, label %for.body.lr.ph, label %tsnep_phy_open.exit.for.end_crit_edge

tsnep_phy_open.exit.for.end_crit_edge:            ; preds = %tsnep_phy_open.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %tsnep_phy_open.exit
  %addr8 = getelementptr i8, ptr %netdev, i32 2344
  %dmadev1.i.i = getelementptr i8, ptr %netdev, i32 2340
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rx_queue_index.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_queue_index.1, %for.inc.for.body_crit_edge ]
  %tx_queue_index.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_queue_index.1, %for.inc.for.body_crit_edge ]
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.0213
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %arrayidx, align 8
  %tx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.0213, i32 1
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %for.body.if.end17_crit_edge, label %if.then7

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %for.body
  %22 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_queue_index.0214)
  %cmp9 = icmp eq i32 %tx_queue_index.0214, 0
  %sub = shl i32 %tx_queue_index.0214, 12
  %add = add i32 %sub, 12288
  %cond = select i1 %cmp9, i32 0, i32 %add
  %add.ptr = getelementptr i8, ptr %23, i32 %cond
  %24 = getelementptr inbounds i8, ptr %21, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 8392)
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %21, align 4
  %addr3.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 1
  %27 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %addr3.i, align 4
  %28 = ptrtoint ptr %dmadev1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmadev1.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc21.i.i.for.body.i.i_crit_edge, %if.then7
  %i.072.i.i = phi i32 [ 0, %if.then7 ], [ %inc22.i.i, %for.inc21.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 3, i32 %i.072.i.i
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef 4096, ptr noundef %arrayidx.i.i, i32 noundef 3264, i32 noundef 0) #7
  %arrayidx4.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 2, i32 %i.072.i.i
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i.i, ptr %arrayidx4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.cond7.preheader.i.i

for.cond7.preheader.i.i:                          ; preds = %for.body.i.i
  %mul.i.i = shl i32 %i.072.i.i, 4
  br label %for.body9.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %21, align 4
  %dmadev1.i.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %dmadev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dmadev1.i.i.i, align 4
  %entry2.i.i.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 5
  %35 = call ptr @memset(ptr %entry2.i.i.i, i32 0, i32 8192)
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %i.022.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 2, i32 %i.022.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 3, i32 %i.022.i.i.i
  %38 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %34, i32 noundef 4096, ptr noundef nonnull %37, i32 noundef %39, i32 noundef 0) #7
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %41 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx5.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.failed_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.failed_crit_edge:                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %for.cond7.preheader.i.i
  %j.071.i.i = phi i32 [ 0, %for.cond7.preheader.i.i ], [ %inc.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %j.071.i.i, %mul.i.i
  %arrayidx11.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 %add.i.i
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx4.i.i, align 4
  %mul14.i.i = shl nuw nsw i32 %j.071.i.i, 8
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %mul14.i.i
  %desc_wb.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 %add.i.i, i32 1
  %44 = ptrtoint ptr %desc_wb.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i, ptr %desc_wb.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 128
  %45 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr16.i.i, ptr %arrayidx11.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add20.i.i = add i32 %47, %mul14.i.i
  %desc_dma.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 %add.i.i, i32 2
  %48 = ptrtoint ptr %desc_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add20.i.i, ptr %desc_dma.i.i, align 4
  %inc.i.i = add nuw nsw i32 %j.071.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %for.inc21.i.i, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i.i

for.inc21.i.i:                                    ; preds = %for.body9.i.i
  %inc22.i.i = add nuw nsw i32 %i.072.i.i, 1
  %exitcond75.not.i.i = icmp eq i32 %inc22.i.i, 16
  br i1 %exitcond75.not.i.i, label %for.inc21.i.i.for.body26.i.i_crit_edge, label %for.inc21.i.i.for.body.i.i_crit_edge

for.inc21.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc21.i.i.for.body26.i.i_crit_edge:           ; preds = %for.inc21.i.i
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.body26.i.i.for.body26.i.i_crit_edge, %for.inc21.i.i.for.body26.i.i_crit_edge
  %i.173.i.i = phi i32 [ %add30.i.i, %for.body26.i.i.for.body26.i.i_crit_edge ], [ 0, %for.inc21.i.i.for.body26.i.i_crit_edge ]
  %arrayidx28.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 %i.173.i.i
  %add30.i.i = add nuw nsw i32 %i.173.i.i, 1
  %rem.i.i = and i32 %add30.i.i, 255
  %desc_dma32.i.i = getelementptr %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 %rem.i.i, i32 2
  %49 = ptrtoint ptr %desc_dma32.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc_dma32.i.i, align 4
  %conv.i.i = zext i32 %50 to i64
  %51 = call i64 @llvm.bswap.i64(i64 %conv.i.i) #7
  %52 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.tsnep_tx_desc, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %51, ptr %next.i.i, align 8
  %exitcond76.not.i.i = icmp eq i32 %add30.i.i, 256
  br i1 %exitcond76.not.i.i, label %if.end16, label %for.body26.i.i.for.body26.i.i_crit_edge

for.body26.i.i.for.body26.i.i_crit_edge:          ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i.i

if.end16:                                         ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %desc_dma.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 5, i32 0, i32 2
  %55 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desc_dma.i, align 4
  %or.i = or i32 %56, 1
  %57 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %addr3.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %58, i32 320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %59 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %59) #7, !srcloc !71
  %60 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %addr3.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %61, i32 324
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #7, !srcloc !71
  %owner_counter.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 8
  %62 = ptrtoint ptr %owner_counter.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %owner_counter.i, align 4
  %increment_owner_counter.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 9
  %63 = ptrtoint ptr %increment_owner_counter.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 255, ptr %increment_owner_counter.i, align 4
  %lock.i = getelementptr inbounds %struct.tsnep_tx, ptr %21, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @tsnep_tx_open.__key, i16 noundef signext 3) #7
  %inc = add i32 %tx_queue_index.0214, 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body.if.end17_crit_edge
  %tx_queue_index.1 = phi i32 [ %inc, %if.end16 ], [ %tx_queue_index.0214, %for.body.if.end17_crit_edge ]
  %rx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.0213, i32 2
  %64 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx, align 8
  %tobool20.not = icmp eq ptr %65, null
  br i1 %tobool20.not, label %if.end17.for.inc_crit_edge, label %if.then21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %if.end17
  %66 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_queue_index.0215)
  %cmp25 = icmp eq i32 %rx_queue_index.0215, 0
  %sub28 = shl i32 %rx_queue_index.0215, 12
  %add30 = add i32 %sub28, 12288
  %cond32 = select i1 %cmp25, i32 0, i32 %add30
  %add.ptr33 = getelementptr i8, ptr %67, i32 %cond32
  %68 = getelementptr inbounds i8, ptr %65, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 7324)
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i, ptr %65, align 4
  %addr3.i157 = getelementptr inbounds %struct.tsnep_rx, ptr %65, i32 0, i32 1
  %71 = ptrtoint ptr %addr3.i157 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr33, ptr %addr3.i157, align 4
  %72 = ptrtoint ptr %dmadev1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dmadev1.i.i, align 4
  br label %for.body.i.i163

for.body.i.i163:                                  ; preds = %for.inc21.i.i178.for.body.i.i163_crit_edge, %if.then21
  %i.079.i.i = phi i32 [ 0, %if.then21 ], [ %inc22.i.i177, %for.inc21.i.i178.for.body.i.i163_crit_edge ]
  %arrayidx.i.i159 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 3, i32 %i.079.i.i
  %call.i.i.i160 = call ptr @dma_alloc_attrs(ptr noundef %73, i32 noundef 4096, ptr noundef %arrayidx.i.i159, i32 noundef 3264, i32 noundef 0) #7
  %arrayidx4.i.i161 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 2, i32 %i.079.i.i
  %74 = ptrtoint ptr %arrayidx4.i.i161 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i.i160, ptr %arrayidx4.i.i161, align 4
  %tobool.not.i.i162 = icmp eq ptr %call.i.i.i160, null
  br i1 %tobool.not.i.i162, label %for.body.i.i163.tsnep_rx_open.exit_crit_edge, label %for.cond7.preheader.i.i165

for.body.i.i163.tsnep_rx_open.exit_crit_edge:     ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_open.exit

for.cond7.preheader.i.i165:                       ; preds = %for.body.i.i163
  %mul.i.i164 = shl i32 %i.079.i.i, 4
  br label %for.body9.i.i176

for.body9.i.i176:                                 ; preds = %for.body9.i.i176.for.body9.i.i176_crit_edge, %for.cond7.preheader.i.i165
  %j.078.i.i = phi i32 [ 0, %for.cond7.preheader.i.i165 ], [ %inc.i.i174, %for.body9.i.i176.for.body9.i.i176_crit_edge ]
  %add.i.i166 = add nuw nsw i32 %j.078.i.i, %mul.i.i164
  %arrayidx11.i.i167 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %add.i.i166
  %75 = ptrtoint ptr %arrayidx4.i.i161 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx4.i.i161, align 4
  %mul14.i.i168 = shl nuw nsw i32 %j.078.i.i, 8
  %add.ptr.i.i169 = getelementptr i8, ptr %76, i32 %mul14.i.i168
  %desc_wb.i.i170 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %add.i.i166, i32 1
  %77 = ptrtoint ptr %desc_wb.i.i170 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i169, ptr %desc_wb.i.i170, align 4
  %add.ptr16.i.i171 = getelementptr i8, ptr %add.ptr.i.i169, i32 128
  %78 = ptrtoint ptr %arrayidx11.i.i167 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr16.i.i171, ptr %arrayidx11.i.i167, align 4
  %79 = ptrtoint ptr %arrayidx.i.i159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i159, align 4
  %add20.i.i172 = add i32 %80, %mul14.i.i168
  %desc_dma.i.i173 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %add.i.i166, i32 2
  %81 = ptrtoint ptr %desc_dma.i.i173 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add20.i.i172, ptr %desc_dma.i.i173, align 4
  %inc.i.i174 = add nuw nsw i32 %j.078.i.i, 1
  %exitcond.not.i.i175 = icmp eq i32 %inc.i.i174, 16
  br i1 %exitcond.not.i.i175, label %for.inc21.i.i178, label %for.body9.i.i176.for.body9.i.i176_crit_edge

for.body9.i.i176.for.body9.i.i176_crit_edge:      ; preds = %for.body9.i.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i.i176

for.inc21.i.i178:                                 ; preds = %for.body9.i.i176
  %inc22.i.i177 = add nuw nsw i32 %i.079.i.i, 1
  %exitcond81.not.i.i = icmp eq i32 %inc22.i.i177, 16
  br i1 %exitcond81.not.i.i, label %for.inc21.i.i178.for.cond24.i.i_crit_edge, label %for.inc21.i.i178.for.body.i.i163_crit_edge

for.inc21.i.i178.for.body.i.i163_crit_edge:       ; preds = %for.inc21.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i163

for.inc21.i.i178.for.cond24.i.i_crit_edge:        ; preds = %for.inc21.i.i178
  br label %for.cond24.i.i

for.cond24.i.i:                                   ; preds = %for.body26.i.i185.for.cond24.i.i_crit_edge, %for.inc21.i.i178.for.cond24.i.i_crit_edge
  %i.1.i.i = phi i32 [ %add30.i.i180, %for.body26.i.i185.for.cond24.i.i_crit_edge ], [ 0, %for.inc21.i.i178.for.cond24.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.1.i.i)
  %exitcond82.not.i.i = icmp eq i32 %i.1.i.i, 256
  br i1 %exitcond82.not.i.i, label %if.end.i192, label %for.body26.i.i185

for.body26.i.i185:                                ; preds = %for.cond24.i.i
  %arrayidx28.i.i179 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %i.1.i.i
  %add30.i.i180 = add nuw nsw i32 %i.1.i.i, 1
  %rem.i.i181 = and i32 %add30.i.i180, 255
  %desc_dma32.i.i182 = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %rem.i.i181, i32 2
  %82 = ptrtoint ptr %desc_dma32.i.i182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %desc_dma32.i.i182, align 4
  %conv.i.i183 = zext i32 %83 to i64
  %84 = call i64 @llvm.bswap.i64(i64 %conv.i.i183) #7
  %85 = ptrtoint ptr %arrayidx28.i.i179 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx28.i.i179, align 4
  %next.i.i184 = getelementptr inbounds %struct.tsnep_rx_desc, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %next.i.i184 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %84, ptr %next.i.i184, align 8
  %call34.i.i = call fastcc i32 @tsnep_rx_alloc_and_map_skb(ptr noundef nonnull %65, ptr noundef %arrayidx28.i.i179) #7
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %for.body26.i.i185.for.cond24.i.i_crit_edge, label %for.body26.i.i185.tsnep_rx_open.exit_crit_edge

for.body26.i.i185.tsnep_rx_open.exit_crit_edge:   ; preds = %for.body26.i.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_open.exit

for.body26.i.i185.for.cond24.i.i_crit_edge:       ; preds = %for.body26.i.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.i.i

if.end.i192:                                      ; preds = %for.cond24.i.i
  %desc_dma.i186 = getelementptr inbounds %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 0, i32 2
  %88 = ptrtoint ptr %desc_dma.i186 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc_dma.i186, align 4
  %or.i187 = or i32 %89, 1
  %90 = ptrtoint ptr %addr3.i157 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %addr3.i157, align 4
  %add.ptr.i188 = getelementptr i8, ptr %91, i32 384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %92 = call i32 @llvm.bswap.i32(i32 %or.i187) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %92) #7, !srcloc !71
  %93 = ptrtoint ptr %addr3.i157 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr3.i157, align 4
  %add.ptr7.i189 = getelementptr i8, ptr %94, i32 388
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i189, i32 0) #7, !srcloc !71
  %owner_counter.i190 = getelementptr inbounds %struct.tsnep_rx, ptr %65, i32 0, i32 6
  %95 = ptrtoint ptr %owner_counter.i190 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %owner_counter.i190, align 4
  %increment_owner_counter.i191 = getelementptr inbounds %struct.tsnep_rx, ptr %65, i32 0, i32 7
  %96 = ptrtoint ptr %increment_owner_counter.i191 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 255, ptr %increment_owner_counter.i191, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %tsnep_rx_activate.exit.i.for.body.i_crit_edge, %if.end.i192
  %i.030.i = phi i32 [ 0, %if.end.i192 ], [ %inc.i, %tsnep_rx_activate.exit.i.for.body.i_crit_edge ]
  %len.i.i = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %i.030.i, i32 5
  %97 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i.i, align 4
  %and.i.i = and i32 %98, 16383
  %properties.i.i = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %i.030.i, i32 3
  %or.i.i = or i32 %and.i.i, 262144
  %99 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i, ptr %properties.i.i, align 4
  %100 = ptrtoint ptr %increment_owner_counter.i191 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %increment_owner_counter.i191, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %i.030.i)
  %cmp.i.i = icmp eq i32 %101, %i.030.i
  br i1 %cmp.i.i, label %if.then.i.i193, label %for.body.i.tsnep_rx_activate.exit.i_crit_edge

for.body.i.tsnep_rx_activate.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_activate.exit.i

if.then.i.i193:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %owner_counter.i190 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %owner_counter.i190, align 4
  %inc.i25.i = add i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i25.i)
  %cmp5.i.i = icmp eq i32 %inc.i25.i, 4
  %spec.select.i.i = select i1 %cmp5.i.i, i32 1, i32 %inc.i25.i
  %104 = ptrtoint ptr %owner_counter.i190 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.select.i.i, ptr %owner_counter.i190, align 4
  %dec.i.i = add nsw i32 %i.030.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030.i)
  %cmp10.i.i = icmp eq i32 %i.030.i, 0
  %spec.store.select.i.i = select i1 %cmp10.i.i, i32 255, i32 %dec.i.i
  %105 = ptrtoint ptr %increment_owner_counter.i191 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %spec.store.select.i.i, ptr %increment_owner_counter.i191, align 4
  br label %tsnep_rx_activate.exit.i

tsnep_rx_activate.exit.i:                         ; preds = %if.then.i.i193, %for.body.i.tsnep_rx_activate.exit.i_crit_edge
  %arrayidx.i26.i = getelementptr %struct.tsnep_rx, ptr %65, i32 0, i32 4, i32 %i.030.i
  %106 = ptrtoint ptr %owner_counter.i190 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %owner_counter.i190, align 4
  %shl.i.i = shl i32 %107, 30
  %108 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %properties.i.i, align 4
  %or18.i.i = or i32 %109, %shl.i.i
  store i32 %or18.i.i, ptr %properties.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  %110 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %properties.i.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #7
  %113 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i26.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %112, ptr %114, align 8
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end40, label %tsnep_rx_activate.exit.i.for.body.i_crit_edge

tsnep_rx_activate.exit.i.for.body.i_crit_edge:    ; preds = %tsnep_rx_activate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tsnep_rx_open.exit:                               ; preds = %for.body26.i.i185.tsnep_rx_open.exit_crit_edge, %for.body.i.i163.tsnep_rx_open.exit_crit_edge
  %retval3.0.i.i = phi i32 [ %call34.i.i, %for.body26.i.i185.tsnep_rx_open.exit_crit_edge ], [ -12, %for.body.i.i163.tsnep_rx_open.exit_crit_edge ]
  call fastcc void @tsnep_rx_ring_cleanup(ptr noundef nonnull %65) #7
  br label %failed

if.end40:                                         ; preds = %tsnep_rx_activate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !82
  %116 = ptrtoint ptr %addr3.i157 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %addr3.i157, align 4
  %add.ptr9.i = getelementptr i8, ptr %117, i32 264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 131072) #7, !srcloc !71
  %inc41 = add i32 %rx_queue_index.0215, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %if.end17.for.inc_crit_edge
  %rx_queue_index.1 = phi i32 [ %inc41, %if.end40 ], [ %rx_queue_index.0215, %if.end17.for.inc_crit_edge ]
  %inc43 = add nuw nsw i32 %i.0213, 1
  %118 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_queues, align 4
  %cmp = icmp slt i32 %inc43, %119
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tsnep_phy_open.exit.for.end_crit_edge
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 8
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %122 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_tx_queues, align 4
  %call45 = call i32 @netif_set_real_num_tx_queues(ptr noundef %121, i32 noundef %123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.end.failed_crit_edge

for.end.failed_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end48:                                         ; preds = %for.end
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 8
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %126 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_rx_queues, align 8
  %call50 = call i32 @netif_set_real_num_rx_queues(ptr noundef %125, i32 noundef %127) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %for.cond54.preheader, label %if.end48.failed_crit_edge

if.end48.failed_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

for.cond54.preheader:                             ; preds = %if.end48
  %128 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp56216 = icmp sgt i32 %129, 0
  br i1 %cmp56216, label %for.body57.lr.ph, label %for.cond54.preheader.cleanup_crit_edge

for.cond54.preheader.cleanup_crit_edge:           ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body57.lr.ph:                                 ; preds = %for.cond54.preheader
  %addr.i = getelementptr i8, ptr %netdev, i32 2344
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.body57.lr.ph
  %i.1217 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc67, %for.body57.for.body57_crit_edge ]
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 8
  %napi = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.1217, i32 3
  call void @netif_napi_add(ptr noundef %131, ptr noundef %napi, ptr noundef nonnull @tsnep_poll, i32 noundef 64) #7
  call void @napi_enable(ptr noundef %napi) #7
  %irq_mask = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.1217, i32 4
  %132 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq_mask, align 8
  %134 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %addr.i, align 8
  %add.ptr.i195 = getelementptr i8, ptr %135, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %136 = call i32 @llvm.bswap.i32(i32 %133) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %136) #7, !srcloc !71
  %inc67 = add nuw nsw i32 %i.1217, 1
  %137 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_queues, align 4
  %cmp56 = icmp slt i32 %inc67, %138
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.cleanup_crit_edge

for.body57.cleanup_crit_edge:                     ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

failed:                                           ; preds = %if.end48.failed_crit_edge, %for.end.failed_crit_edge, %tsnep_rx_open.exit, %for.inc.i.i.i.failed_crit_edge
  %retval1.0 = phi i32 [ %retval3.0.i.i, %tsnep_rx_open.exit ], [ %call45, %for.end.failed_crit_edge ], [ %call50, %if.end48.failed_crit_edge ], [ -12, %for.inc.i.i.i.failed_crit_edge ]
  %139 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp71218 = icmp sgt i32 %140, 0
  br i1 %cmp71218, label %failed.for.body72_crit_edge, label %failed.for.end93_crit_edge

failed.for.end93_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93

failed.for.body72_crit_edge:                      ; preds = %failed
  br label %for.body72

for.body72:                                       ; preds = %for.inc91.for.body72_crit_edge, %failed.for.body72_crit_edge
  %i.2219 = phi i32 [ %inc92, %for.inc91.for.body72_crit_edge ], [ 0, %failed.for.body72_crit_edge ]
  %rx75 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.2219, i32 2
  %141 = ptrtoint ptr %rx75 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rx75, align 8
  %tobool76.not = icmp eq ptr %142, null
  br i1 %tobool76.not, label %for.body72.if.end81_crit_edge, label %if.then77

for.body72.if.end81_crit_edge:                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then77:                                        ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tsnep_rx_close(ptr noundef nonnull %142)
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %for.body72.if.end81_crit_edge
  %tx84 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.2219, i32 1
  %143 = ptrtoint ptr %tx84 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx84, align 4
  %tobool85.not = icmp eq ptr %144, null
  br i1 %tobool85.not, label %if.end81.for.inc91_crit_edge, label %if.then86

if.end81.for.inc91_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc91

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tsnep_tx_close(ptr noundef nonnull %144)
  br label %for.inc91

for.inc91:                                        ; preds = %if.then86, %if.end81.for.inc91_crit_edge
  %inc92 = add nuw nsw i32 %i.2219, 1
  %145 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_queues, align 4
  %cmp71 = icmp slt i32 %inc92, %146
  br i1 %cmp71, label %for.inc91.for.body72_crit_edge, label %for.inc91.for.end93_crit_edge

for.inc91.for.end93_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93

for.inc91.for.body72_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body72

for.end93:                                        ; preds = %for.inc91.for.end93_crit_edge, %failed.for.end93_crit_edge
  %147 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 145
  %149 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phydev.i, align 16
  call void @phy_stop(ptr noundef %150) #7
  %151 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr.i, align 8
  %phydev2.i196 = getelementptr inbounds %struct.net_device, ptr %152, i32 0, i32 145
  %153 = ptrtoint ptr %phydev2.i196 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %phydev2.i196, align 16
  call void @phy_disconnect(ptr noundef %154) #7
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 8
  %phydev4.i197 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 145
  %157 = ptrtoint ptr %phydev4.i197 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %phydev4.i197, align 16
  br label %cleanup

cleanup:                                          ; preds = %for.end93, %for.body57.cleanup_crit_edge, %for.cond54.preheader.cleanup_crit_edge, %tsnep_phy_open.exit.thread
  %retval.0 = phi i32 [ %retval1.0, %for.end93 ], [ %call.i, %tsnep_phy_open.exit.thread ], [ 0, %for.cond54.preheader.cleanup_crit_edge ], [ 0, %for.body57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_netdev_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_queues = getelementptr i8, ptr %netdev, i32 132716
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38 = icmp sgt i32 %1, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %addr.i = getelementptr i8, ptr %netdev, i32 2344
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %irq_mask = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.039, i32 4
  %2 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_mask, align 8
  %or.i = or i32 %3, -2147483648
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %6) #7, !srcloc !71
  %napi = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.039, i32 3
  tail call void @napi_disable(ptr noundef %napi) #7
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  %rx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.039, i32 2
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsnep_rx_close(ptr noundef nonnull %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %tx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 25, i32 %i.039, i32 1
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tsnep_tx_close(ptr noundef nonnull %10)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_queues, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 145
  %15 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %16) #7
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 145
  %19 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev2.i, align 16
  tail call void @phy_disconnect(ptr noundef %20) #7
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %phydev4.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 145
  %23 = ptrtoint ptr %phydev4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %phydev4.i, align 16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_netdev_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp sgt i32 %3, %conv
  %idxprom = select i1 %cmp.not, i32 %conv, i32 0
  %arrayidx = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %idxprom
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %conv6.i = zext i8 %7 to i32
  %add.i = add nuw nsw i32 %conv6.i, 1
  %count.0.i = select i1 %cmp.not.i, i32 1, i32 %add.i
  %lock.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 4
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %read.i.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 7
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 6
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i.i = icmp sgt i32 %9, %11
  %add.i.i = add i32 %9, 255
  %sub3.i.i = sub i32 %add.i.i, %11
  %12 = xor i32 %11, -1
  %sub7.i.i = add i32 %9, %12
  %retval.0.i.i = select i1 %cmp.not.i.i, i32 %sub7.i.i, i32 %sub3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %count.0.i)
  %cmp15.i = icmp slt i32 %retval.0.i.i, %count.0.i
  br i1 %cmp15.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call11.i) #7
  br label %tsnep_xmit_frame_ring.exit

if.end19.i:                                       ; preds = %entry
  %skb21.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %11, i32 5
  %19 = ptrtoint ptr %skb21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb, ptr %skb21.i, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %dmadev1.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %dmadev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmadev1.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end16.i.i.for.body.i.i_crit_edge, %if.end19.i
  %i.057.i.i = phi i32 [ 0, %if.end19.i ], [ %inc.i.i, %if.end16.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write.i.i, align 4
  %add.i110.i = add i32 %25, %i.057.i.i
  %rem.i.i = srem i32 %add.i110.i, 256
  %arrayidx.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057.i.i)
  %cmp4.i.i = icmp eq i32 %i.057.i.i, 0
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %26 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i.i, align 4
  %28 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i, align 8
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #7
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.end.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !83

land.rhs.i.i.i.if.end.thread.i.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %23) #7
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %35, %if.end.i.i.i.i ], [ %33, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #7
  br label %if.end.thread.i.i

if.end39.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub i32 %27, %29
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef %31, i32 noundef %sub.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %31 to i32
  %sub.i42.i.i = add i32 %37, 1073741824
  %shr.i.i.i = lshr i32 %sub.i42.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %36, i32 %shr.i.i.i
  %and.i.i.i = and i32 %37, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %sub.i.i = add nsw i32 %i.057.i.i, -1
  %arrayidx7.i.i = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %sub.i.i
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %sub.i.i, i32 1
  %40 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len.i.i.i, align 4
  %42 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %sub.i.i, i32 2
  %44 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %43, i32 noundef %45, i32 noundef %41, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i.i

if.end.thread.i.i:                                ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.if.end.thread.i.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #7
  br label %if.then25.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end39.i.i.i
  %len.0.i.i = phi i32 [ %41, %if.else.i.i ], [ %sub.i.i.i, %if.end39.i.i.i ]
  %dma.0.i.i = phi i32 [ %call2.i.i.i, %if.else.i.i ], [ %call41.i.i.i, %if.end39.i.i.i ]
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %dma.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma.0.i.i)
  %cmp.i.i.i = icmp eq i32 %dma.0.i.i, -1
  br i1 %cmp.i.i.i, label %if.end.i.i.if.then25.i_crit_edge, label %if.end16.i.i

if.end.i.i.if.then25.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  %len17.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i.i, i32 6
  %46 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %len.0.i.i, ptr %len17.i.i, align 4
  %dma18.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i.i, i32 7
  %47 = ptrtoint ptr %dma18.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dma.0.i.i, ptr %dma18.i.i, align 4
  %conv.i.i = zext i32 %dma.0.i.i to i64
  %48 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #7
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %tx19.i.i = getelementptr inbounds %struct.tsnep_tx_desc, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %tx19.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %tx19.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.057.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.0.i
  br i1 %exitcond.not.i.i, label %if.end31.i, label %if.end16.i.i.for.body.i.i_crit_edge

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then25.i:                                      ; preds = %if.end.i.i.if.then25.i_crit_edge, %if.end.thread.i.i
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %dmadev1.i112.i = getelementptr inbounds %struct.tsnep_adapter, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %dmadev1.i112.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dmadev1.i112.i, align 4
  %56 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %read.i.i, align 4
  %rem.peel.i.i = srem i32 %57, 256
  %len.peel.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.peel.i.i, i32 6
  %58 = ptrtoint ptr %len.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.peel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.peel.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.peel.i.i, label %if.then25.i.for.inc.peel.i.i_crit_edge, label %if.end.peel.i.i

if.then25.i.for.inc.peel.i.i_crit_edge:           ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.peel.i.i

if.end.peel.i.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma.peel.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.peel.i.i, i32 7
  %60 = ptrtoint ptr %dma.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma.peel.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %61, i32 noundef %59, i32 noundef 1, i32 noundef 0) #7
  %62 = ptrtoint ptr %len.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %len.peel.i.i, align 4
  br label %for.inc.peel.i.i

for.inc.peel.i.i:                                 ; preds = %if.end.peel.i.i, %if.then25.i.for.inc.peel.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %exitcond.peel.not.i.i = icmp eq i32 %count.0.i, 1
  br i1 %exitcond.peel.not.i.i, label %for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge, label %for.inc.peel.i.i.for.body.i116.i_crit_edge

for.inc.peel.i.i.for.body.i116.i_crit_edge:       ; preds = %for.inc.peel.i.i
  br label %for.body.i116.i

for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge: ; preds = %for.inc.peel.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_tx_unmap.exit.i

for.body.i116.i:                                  ; preds = %for.inc.i.i.for.body.i116.i_crit_edge, %for.inc.peel.i.i.for.body.i116.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i118.i, %for.inc.i.i.for.body.i116.i_crit_edge ], [ 1, %for.inc.peel.i.i.for.body.i116.i_crit_edge ]
  %63 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %read.i.i, align 4
  %add.i114.i = add i32 %64, %i.023.i.i
  %rem.i115.i = srem i32 %add.i114.i, 256
  %len.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i115.i, i32 6
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i, label %for.body.i116.i.for.inc.i.i_crit_edge, label %if.end.i117.i

for.body.i116.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i117.i:                                    ; preds = %for.body.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma7.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i115.i, i32 7
  %67 = ptrtoint ptr %dma7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma7.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %68, i32 noundef %66, i32 noundef 1, i32 noundef 0) #7
  %69 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %len.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i117.i, %for.body.i116.i.for.inc.i.i_crit_edge
  %inc.i118.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i119.i = icmp eq i32 %inc.i118.i, %count.0.i
  br i1 %exitcond.not.i119.i, label %for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge, label %for.inc.i.i.for.body.i116.i_crit_edge, !llvm.loop !84

for.inc.i.i.for.body.i116.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i116.i

for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_tx_unmap.exit.i

tsnep_tx_unmap.exit.i:                            ; preds = %for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge, %for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge
  %70 = ptrtoint ptr %skb21.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skb21.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %71, i32 noundef 1) #7
  %72 = ptrtoint ptr %skb21.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %skb21.i, align 4
  %dropped.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 12
  %73 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dropped.i, align 4
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %dropped.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call11.i) #7
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %78, ptr noundef nonnull @.str.23) #10
  br label %tsnep_xmit_frame_ring.exit

if.end31.i:                                       ; preds = %if.end16.i.i
  %79 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tx_flags.i, align 1
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then34.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = or i8 %82, 4
  %85 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %tx_flags.i, align 1
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end39.i_crit_edge
  %sub.i = add nsw i32 %count.0.i, -1
  %increment_owner_counter.i.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 9
  %owner_counter38.i.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %tsnep_tx_activate.exit.i.for.body.i_crit_edge, %if.end39.i
  %i.0154.i = phi i32 [ 0, %if.end39.i ], [ %inc46.i, %tsnep_tx_activate.exit.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %write.i.i, align 4
  %add43.i = add i32 %87, %i.0154.i
  %rem.i = srem i32 %add43.i, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0154.i, i32 %sub.i)
  %cmp44.i = icmp eq i32 %i.0154.i, %sub.i
  %properties.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i, i32 4
  %88 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %properties.i.i, align 4
  %skb.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i, i32 5
  %89 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i122.i = icmp eq ptr %90, null
  br i1 %tobool.not.i122.i, label %for.body.i.if.end16.i125.i_crit_edge, label %if.then.i123.i

for.body.i.if.end16.i125.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i125.i

if.then.i123.i:                                   ; preds = %for.body.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 7
  %93 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len.i.i.i.i, align 8
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 17
  %95 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %end.i.i.i.i.i, align 4
  %nr_frags.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %nr_frags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %nr_frags.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp10.not.i.i.i.i = icmp eq i8 %98, 0
  br i1 %cmp10.not.i.i.i.i, label %if.then.i123.i.skb_pagelen.exit.i.i_crit_edge, label %for.body.preheader.i.i.i.i

if.then.i123.i.skb_pagelen.exit.i.i_crit_edge:    ; preds = %if.then.i123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_pagelen.exit.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.then.i123.i
  %conv.i.i.i.i = zext i8 %98 to i32
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %i.012.in.i.i.i.i = phi i32 [ %i.012.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %conv.i.i.i.i, %for.body.preheader.i.i.i.i ]
  %len.011.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i ]
  %i.012.i.i.i.i = add nsw i32 %i.012.in.i.i.i.i, -1
  %bv_len.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %96, i32 0, i32 12, i32 %i.012.i.i.i.i, i32 1
  %99 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bv_len.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %100, %len.011.i.i.i.i
  %cmp.i.i.i.i = icmp ugt i32 %i.012.in.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge

for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge:  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_pagelen.exit.i.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

skb_pagelen.exit.i.i:                             ; preds = %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge, %if.then.i123.i.skb_pagelen.exit.i.i_crit_edge
  %len.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then.i123.i.skb_pagelen.exit.i.i_crit_edge ], [ %add.i.i.i.i, %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 %92, %94
  %add.i.i.i = add i32 %sub.i.i.i.i, %len.0.lcssa.i.i.i.i
  %and.i.i = and i32 %add.i.i.i, 16383
  %or.i.i = or i32 %and.i.i, 262144
  %101 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i.i, ptr %properties.i.i, align 4
  %102 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i.i.i.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tx_flags.i.i, align 1
  %106 = and i8 %105, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool9.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool9.not.i.i, label %skb_pagelen.exit.i.i.if.end.i124.i_crit_edge, label %if.then10.i.i

skb_pagelen.exit.i.i.if.end.i124.i_crit_edge:     ; preds = %skb_pagelen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124.i

if.then10.i.i:                                    ; preds = %skb_pagelen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i.i = or i32 %and.i.i, 786432
  %107 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or12.i.i, ptr %properties.i.i, align 4
  br label %if.end.i124.i

if.end.i124.i:                                    ; preds = %if.then10.i.i, %skb_pagelen.exit.i.i.if.end.i124.i_crit_edge
  %owner_user_flag.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i, i32 3
  %108 = ptrtoint ptr %owner_user_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %owner_user_flag.i.i, align 4, !range !76
  %110 = xor i8 %109, 1
  store i8 %110, ptr %owner_user_flag.i.i, align 4
  br label %if.end16.i125.i

if.end16.i125.i:                                  ; preds = %if.end.i124.i, %for.body.i.if.end16.i125.i_crit_edge
  br i1 %cmp44.i, label %if.then18.i.i, label %if.end16.i125.i.if.end21.i.i_crit_edge

if.end16.i125.i.if.end21.i.i_crit_edge:           ; preds = %if.end16.i125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %if.end16.i125.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %properties.i.i, align 4
  %or20.i.i = or i32 %112, 65536
  store i32 %or20.i.i, ptr %properties.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %if.end16.i125.i.if.end21.i.i_crit_edge
  %113 = ptrtoint ptr %increment_owner_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %increment_owner_counter.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %rem.i)
  %cmp.i.i = icmp eq i32 %114, %rem.i
  br i1 %cmp.i.i, label %if.then23.i.i, label %if.end21.i.i.if.end37.i.i_crit_edge

if.end21.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %owner_counter38.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %owner_counter38.i.i, align 4
  %inc.i126.i = add i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i126.i)
  %cmp25.i.i = icmp eq i32 %inc.i126.i, 4
  %spec.select.i.i = select i1 %cmp25.i.i, i32 1, i32 %inc.i126.i
  %117 = ptrtoint ptr %owner_counter38.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select.i.i, ptr %owner_counter38.i.i, align 4
  %dec.i.i = add nsw i32 %rem.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i)
  %cmp32.i.i = icmp slt i32 %rem.i, 1
  %spec.store.select.i.i = select i1 %cmp32.i.i, i32 255, i32 %dec.i.i
  %118 = ptrtoint ptr %increment_owner_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %spec.store.select.i.i, ptr %increment_owner_counter.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then23.i.i, %if.end21.i.i.if.end37.i.i_crit_edge
  %119 = ptrtoint ptr %owner_counter38.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %owner_counter38.i.i, align 4
  %shl.i.i = shl i32 %120, 30
  %121 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %properties.i.i, align 4
  %or41.i.i = or i32 %122, %shl.i.i
  store i32 %or41.i.i, ptr %properties.i.i, align 4
  %owner_user_flag42.i.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i, i32 3
  %123 = ptrtoint ptr %owner_user_flag42.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %owner_user_flag42.i.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool43.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool43.not.i.i, label %if.end37.i.i.tsnep_tx_activate.exit.i_crit_edge, label %if.then44.i.i

if.end37.i.i.tsnep_tx_activate.exit.i_crit_edge:  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_tx_activate.exit.i

if.then44.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or46.i.i = or i32 %or41.i.i, 536870912
  %125 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or46.i.i, ptr %properties.i.i, align 4
  br label %tsnep_tx_activate.exit.i

tsnep_tx_activate.exit.i:                         ; preds = %if.then44.i.i, %if.end37.i.i.tsnep_tx_activate.exit.i_crit_edge
  %arrayidx.i127.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i
  %len.i128.i = getelementptr %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 5, i32 %rem.i, i32 6
  %126 = ptrtoint ptr %len.i128.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len.i128.i, align 4
  %and48.i.i = and i32 %127, 16383
  %128 = tail call i32 @llvm.bswap.i32(i32 %and48.i.i) #7
  %129 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i127.i, align 4
  %more_properties.i.i = getelementptr inbounds %struct.tsnep_tx_desc, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %more_properties.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %128, ptr %more_properties.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  %132 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %properties.i.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  %135 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i127.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %134, ptr %136, align 8
  %inc46.i = add nuw nsw i32 %i.0154.i, 1
  %exitcond.not.i = icmp eq i32 %i.0154.i, %conv6.i
  br i1 %exitcond.not.i, label %for.end.i, label %tsnep_tx_activate.exit.i.for.body.i_crit_edge

tsnep_tx_activate.exit.i.for.body.i_crit_edge:    ; preds = %tsnep_tx_activate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %tsnep_tx_activate.exit.i
  %138 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %write.i.i, align 4
  %add48.i = add i32 %139, %count.0.i
  %rem49.i = srem i32 %add48.i, 256
  store i32 %rem49.i, ptr %write.i.i, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #7
  %140 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i130.i = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %tx_flags.i130.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %tx_flags.i130.i, align 1
  %144 = and i8 %143, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i131.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i131.i, label %for.end.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i132.i

for.end.i.skb_tx_timestamp.exit.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_tx_timestamp.exit.i

if.then.i132.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #7
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i132.i, %for.end.i.skb_tx_timestamp.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  %addr.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 1
  %145 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %addr.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %146, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 33554432) #7, !srcloc !71
  %147 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %read.i.i, align 4
  %149 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %write.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %150)
  %cmp.not.i136.i = icmp sgt i32 %148, %150
  %add.i137.i = add i32 %148, 255
  %sub3.i138.i = sub i32 %add.i137.i, %150
  %151 = xor i32 %150, -1
  %sub7.i139.i = add i32 %148, %151
  %retval.0.i140.i = select i1 %cmp.not.i136.i, i32 %sub7.i139.i, i32 %sub3.i138.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %retval.0.i140.i)
  %cmp52.i = icmp ult i32 %retval.0.i140.i, 18
  br i1 %cmp52.i, label %if.then54.i, label %skb_tx_timestamp.exit.i.if.end57.i_crit_edge

skb_tx_timestamp.exit.i.if.end57.i_crit_edge:     ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then54.i:                                      ; preds = %skb_tx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %_tx.i.i141.i = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 103
  %156 = ptrtoint ptr %_tx.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %_tx.i.i141.i, align 128
  %state.i.i142.i = getelementptr inbounds %struct.netdev_queue, ptr %157, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i142.i) #7
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %skb_tx_timestamp.exit.i.if.end57.i_crit_edge
  %packets.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 10
  %158 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %packets.i, align 4
  %inc58.i = add i32 %159, 1
  store i32 %inc58.i, ptr %packets.i, align 4
  %160 = ptrtoint ptr %skb21.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %skb21.i, align 4
  %len.i.i143.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %len.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i143.i, align 4
  %data_len.i.i144.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 7
  %164 = ptrtoint ptr %data_len.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data_len.i.i144.i, align 8
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %161, i32 0, i32 17
  %166 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %end.i.i.i.i, align 4
  %nr_frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %nr_frags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %nr_frags.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp10.not.i.i.i = icmp eq i8 %169, 0
  br i1 %cmp10.not.i.i.i, label %if.end57.i.skb_pagelen.exit.i_crit_edge, label %for.body.preheader.i.i.i

if.end57.i.skb_pagelen.exit.i_crit_edge:          ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_pagelen.exit.i

for.body.preheader.i.i.i:                         ; preds = %if.end57.i
  %conv.i.i.i = zext i8 %169 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.012.in.i.i.i = phi i32 [ %i.012.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %conv.i.i.i, %for.body.preheader.i.i.i ]
  %len.011.i.i.i = phi i32 [ %add.i.i145.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %i.012.i.i.i = add nsw i32 %i.012.in.i.i.i, -1
  %bv_len.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %167, i32 0, i32 12, i32 %i.012.i.i.i, i32 1
  %170 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bv_len.i.i.i.i, align 4
  %add.i.i145.i = add i32 %171, %len.011.i.i.i
  %cmp.i.i146.i = icmp ugt i32 %i.012.in.i.i.i, 1
  br i1 %cmp.i.i146.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.skb_pagelen.exit.i_crit_edge

for.body.i.i.i.skb_pagelen.exit.i_crit_edge:      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_pagelen.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

skb_pagelen.exit.i:                               ; preds = %for.body.i.i.i.skb_pagelen.exit.i_crit_edge, %if.end57.i.skb_pagelen.exit.i_crit_edge
  %len.0.lcssa.i.i.i = phi i32 [ 0, %if.end57.i.skb_pagelen.exit.i_crit_edge ], [ %add.i.i145.i, %for.body.i.i.i.skb_pagelen.exit.i_crit_edge ]
  %bytes.i = getelementptr inbounds %struct.tsnep_tx, ptr %arrayidx, i32 0, i32 11
  %172 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %bytes.i, align 4
  %sub.i.i147.i = add i32 %163, 4
  %add.i148.i = sub i32 %sub.i.i147.i, %165
  %add61.i = add i32 %add.i148.i, %len.0.lcssa.i.i.i
  %add62.i = add i32 %add61.i, %173
  store i32 %add62.i, ptr %bytes.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call11.i) #7
  br label %tsnep_xmit_frame_ring.exit

tsnep_xmit_frame_ring.exit:                       ; preds = %skb_pagelen.exit.i, %tsnep_tx_unmap.exit.i, %if.then17.i
  %retval.0.i = phi i32 [ 16, %if.then17.i ], [ 0, %tsnep_tx_unmap.exit.i ], [ 0, %skb_pagelen.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_netdev_set_multicast(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %and7 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp, i1 %tobool8.not, i1 false
  %spec.select = select i1 %or.cond, i16 0, i16 256
  br label %if.end13

if.end13:                                         ; preds = %if.else, %entry.if.end13_crit_edge
  %rx_filter.0 = phi i16 [ 768, %entry.if.end13_crit_edge ], [ %spec.select, %if.else ]
  %addr = getelementptr i8, ptr %netdev, i32 2344
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 2054
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %rx_filter.0) #7, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_netdev_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %netdev, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #7
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %addr1.i = getelementptr i8, ptr %netdev, i32 2344
  %2 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr1.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %4) #7, !srcloc !71
  %add.ptr2.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr2.i, align 2
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr1.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %8, i32 2052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %9 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %9) #7, !srcloc !73
  %mac_address.i = getelementptr i8, ptr %netdev, i32 2308
  %10 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sa_data, align 4
  %12 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac_address.i, align 4
  %13 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr2.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %netdev, i32 2312
  %15 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i.i, align 2
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 2332
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef %sa_data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_netdev_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = and i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %2)
  %switch = icmp eq i32 %2, 35248
  br i1 %switch, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @tsnep_ptp_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 16
  %call5 = tail call i32 @phy_mii_ioctl(ptr noundef %4, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.end4 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_netdev_get_stats64(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %num_tx_queues = getelementptr i8, ptr %netdev, i32 6852
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp134 = icmp sgt i32 %1, 0
  br i1 %cmp134, label %for.body.lr.ph, label %entry.for.cond9.preheader_crit_edge

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %num_rx_queues = getelementptr i8, ptr %netdev, i32 74056
  %2 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10136 = icmp sgt i32 %3, 0
  br i1 %cmp10136, label %for.body12.lr.ph, label %for.cond9.preheader.for.end60_crit_edge

for.cond9.preheader.for.end60_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body12.lr.ph:                                 ; preds = %for.cond9.preheader
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %multicast30 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %addr = getelementptr i8, ptr %netdev, i32 2344
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %packets = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.0135, i32 10
  %4 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packets, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_packets, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %tx_packets, align 8
  %bytes = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.0135, i32 11
  %8 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes, align 8
  %conv3 = zext i32 %9 to i64
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_bytes, align 8
  %add4 = add i64 %11, %conv3
  store i64 %add4, ptr %tx_bytes, align 8
  %dropped = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 21, i32 %i.0135, i32 12
  %12 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dropped, align 4
  %conv7 = zext i32 %13 to i64
  %14 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_dropped, align 8
  %add8 = add i64 %15, %conv7
  store i64 %add8, ptr %tx_dropped, align 8
  %inc = add nuw nsw i32 %i.0135, 1
  %16 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.1137 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc59, %for.body12.for.body12_crit_edge ]
  %packets14 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.1137, i32 8
  %18 = ptrtoint ptr %packets14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packets14, align 4
  %conv15 = zext i32 %19 to i64
  %20 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %stats, align 8
  %add16 = add i64 %21, %conv15
  store i64 %add16, ptr %stats, align 8
  %bytes19 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.1137, i32 9
  %22 = ptrtoint ptr %bytes19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes19, align 4
  %conv20 = zext i32 %23 to i64
  %24 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_bytes, align 8
  %add21 = add i64 %25, %conv20
  store i64 %add21, ptr %rx_bytes, align 8
  %dropped24 = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.1137, i32 10
  %26 = ptrtoint ptr %dropped24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dropped24, align 4
  %conv25 = zext i32 %27 to i64
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_dropped, align 8
  %add26 = add i64 %29, %conv25
  store i64 %add26, ptr %rx_dropped, align 8
  %multicast = getelementptr %struct.tsnep_adapter, ptr %add.ptr.i, i32 0, i32 23, i32 %i.1137, i32 11
  %30 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %multicast, align 4
  %conv29 = zext i32 %31 to i64
  %32 = ptrtoint ptr %multicast30 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %multicast30, align 8
  %add31 = add i64 %33, %conv29
  store i64 %add31, ptr %multicast30, align 8
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1137)
  %cmp32 = icmp eq i32 %i.1137, 0
  %sub = shl i32 %i.1137, 12
  %add34 = add i32 %sub, 12288
  %cond = select i1 %cmp32, i32 0, i32 %add34
  %add.ptr = getelementptr i8, ptr %35, i32 400
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %cond
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #7, !srcloc !68
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and = and i32 %37, 255
  %conv37 = zext i32 %and to i64
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_dropped, align 8
  %add39 = add i64 %39, %conv37
  %and40 = lshr i32 %37, 8
  %shr41 = and i32 %and40, 255
  %conv42 = zext i32 %shr41 to i64
  %add44 = add i64 %add39, %conv42
  store i64 %add44, ptr %rx_dropped, align 8
  %and45 = lshr i32 %37, 16
  %shr46 = and i32 %and45, 255
  %conv47 = zext i32 %shr46 to i64
  %40 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_errors, align 8
  %add48 = add i64 %41, %conv47
  %42 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_fifo_errors, align 8
  %add50 = add i64 %43, %conv47
  store i64 %add50, ptr %rx_fifo_errors, align 8
  %shr52 = lshr i32 %37, 24
  %conv53 = zext i32 %shr52 to i64
  %add55 = add i64 %add48, %conv53
  store i64 %add55, ptr %rx_errors, align 8
  %44 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_frame_errors, align 8
  %add57 = add i64 %45, %conv53
  store i64 %add57, ptr %rx_frame_errors, align 8
  %inc59 = add nuw nsw i32 %i.1137, 1
  %46 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_rx_queues, align 8
  %cmp10 = icmp slt i32 %inc59, %47
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end60_crit_edge

for.body12.for.end60_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end60:                                        ; preds = %for.body12.for.end60_crit_edge, %for.cond9.preheader.for.end60_crit_edge
  %addr61 = getelementptr i8, ptr %netdev, i32 2344
  %48 = ptrtoint ptr %addr61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr61, align 8
  %add.ptr62 = getelementptr i8, ptr %49, i32 176
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !68
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and64 = and i32 %51, 255
  %conv66 = zext i32 %and64 to i64
  %rx_errors67 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %52 = ptrtoint ptr %rx_errors67 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_errors67, align 8
  %add68 = add i64 %53, %conv66
  %and69 = lshr i32 %51, 8
  %shr70 = and i32 %and69, 255
  %conv71 = zext i32 %shr70 to i64
  %add73 = add i64 %add68, %conv71
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %54 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_crc_errors, align 8
  %add75 = add i64 %55, %conv71
  store i64 %add75, ptr %rx_crc_errors, align 8
  %and76 = lshr i32 %51, 16
  %shr77 = and i32 %and76, 255
  %conv78 = zext i32 %shr77 to i64
  %add80 = add i64 %add73, %conv78
  store i64 %add80, ptr %rx_errors67, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_tc_setup(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsnep_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %hwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %tx = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.tsnep_tx, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %read.i = getelementptr inbounds %struct.tsnep_tx, ptr %1, i32 0, i32 7
  %write.i = getelementptr inbounds %struct.tsnep_tx, ptr %1, i32 0, i32 6
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.end40.i.do.body6.i_crit_edge, %if.then
  %budget.0.i = phi i32 [ 128, %if.then ], [ %dec.i, %if.end40.i.do.body6.i_crit_edge ]
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read.i, align 4
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7.i = icmp eq i32 %3, %5
  br i1 %cmp7.i, label %do.body6.i.do.end50.i_crit_edge, label %if.end.i

do.body6.i.do.end50.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

if.end.i:                                         ; preds = %do.body6.i
  %desc_wb.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %3, i32 1
  %6 = ptrtoint ptr %desc_wb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_wb.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = shl i32 %9, 24
  %properties11.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %3, i32 4
  %11 = ptrtoint ptr %properties11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %properties11.i, align 4
  %13 = xor i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %13)
  %cmp13.not.i = icmp ult i32 %13, 536870912
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end.i.do.end50.i_crit_edge

if.end.i.do.end50.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

if.end16.i:                                       ; preds = %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  %skb.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %3, i32 5
  %14 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp19.not.i = icmp eq i8 %19, 0
  %conv25.i = zext i8 %19 to i32
  %add.i = add nuw nsw i32 %conv25.i, 1
  %count.0.i = select i1 %cmp19.not.i, i32 1, i32 %add.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dmadev1.i.i = getelementptr inbounds %struct.tsnep_adapter, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %dmadev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmadev1.i.i, align 4
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read.i, align 4
  %rem.peel.i.i = srem i32 %25, 256
  %len.peel.i.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %rem.peel.i.i, i32 6
  %26 = ptrtoint ptr %len.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.peel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.peel.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.peel.i.i, label %if.end16.i.for.inc.peel.i.i_crit_edge, label %if.end.peel.i.i

if.end16.i.for.inc.peel.i.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.peel.i.i

if.end.peel.i.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma.peel.i.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %rem.peel.i.i, i32 7
  %28 = ptrtoint ptr %dma.peel.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.peel.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %29, i32 noundef %27, i32 noundef 1, i32 noundef 0) #7
  %30 = ptrtoint ptr %len.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %len.peel.i.i, align 4
  br label %for.inc.peel.i.i

for.inc.peel.i.i:                                 ; preds = %if.end.peel.i.i, %if.end16.i.for.inc.peel.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0.i)
  %exitcond.peel.not.i.i = icmp eq i32 %count.0.i, 1
  br i1 %exitcond.peel.not.i.i, label %for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge, label %for.inc.peel.i.i.for.body.i.i_crit_edge

for.inc.peel.i.i.for.body.i.i_crit_edge:          ; preds = %for.inc.peel.i.i
  br label %for.body.i.i

for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge: ; preds = %for.inc.peel.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_tx_unmap.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.inc.peel.i.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %for.inc.peel.i.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read.i, align 4
  %add.i.i = add i32 %32, %i.023.i.i
  %rem.i.i = srem i32 %add.i.i, 256
  %len.i.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %rem.i.i, i32 6
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma7.i.i = getelementptr %struct.tsnep_tx, ptr %1, i32 0, i32 5, i32 %rem.i.i, i32 7
  %35 = ptrtoint ptr %dma7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma7.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %36, i32 noundef %34, i32 noundef 1, i32 noundef 0) #7
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %len.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.0.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge, !llvm.loop !84

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_tx_unmap.exit.i

tsnep_tx_unmap.exit.i:                            ; preds = %for.inc.i.i.tsnep_tx_unmap.exit.i_crit_edge, %for.inc.peel.i.i.tsnep_tx_unmap.exit.i_crit_edge
  %38 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb.i, align 4
  %end.i2.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %end.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i2.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_flags.i, align 1
  %44 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i, label %tsnep_tx_unmap.exit.i.if.end40.i_crit_edge, label %land.lhs.true.i

tsnep_tx_unmap.exit.i.if.end40.i_crit_edge:       ; preds = %tsnep_tx_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.lhs.true.i:                                  ; preds = %tsnep_tx_unmap.exit.i
  %45 = ptrtoint ptr %desc_wb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_wb.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %49 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool34.not.i = icmp eq i32 %49, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.if.end40.i_crit_edge, label %if.then35.i

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamps.i) #7
  %timestamp37.i = getelementptr inbounds %struct.tsnep_tx_desc_wb, ptr %46, i32 0, i32 2
  %50 = ptrtoint ptr %timestamp37.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %timestamp37.i, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #7
  %53 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %hwtstamps.i, align 8
  call void @skb_tstamp_tx(ptr noundef %39, ptr noundef nonnull %hwtstamps.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwtstamps.i) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %land.lhs.true.i.if.end40.i_crit_edge, %tsnep_tx_unmap.exit.i.if.end40.i_crit_edge
  %54 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb.i, align 4
  call void @napi_consume_skb(ptr noundef %55, i32 noundef %budget.0.i) #7
  %56 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %skb.i, align 4
  %57 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read.i, align 4
  %add44.i = add i32 %58, %count.0.i
  %rem.i = srem i32 %add44.i, 256
  store i32 %rem.i, ptr %read.i, align 4
  %dec.i = add nsw i32 %budget.0.i, -1
  %tobool47.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool47.not.i, label %if.end40.i.do.end50.i_crit_edge, label %if.end40.i.do.body6.i_crit_edge, !prof !89

if.end40.i.do.body6.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

if.end40.i.do.end50.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.end40.i.do.end50.i_crit_edge, %if.end.i.do.end50.i_crit_edge, %do.body6.i.do.end50.i_crit_edge
  %budget.1.i = phi i32 [ %budget.0.i, %do.body6.i.do.end50.i_crit_edge ], [ %budget.0.i, %if.end.i.do.end50.i_crit_edge ], [ 0, %if.end40.i.do.end50.i_crit_edge ]
  %59 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %read.i, align 4
  %61 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp.not.i.i = icmp sgt i32 %60, %62
  %add.i4.i = add i32 %60, 255
  %sub3.i.i = sub i32 %add.i4.i, %62
  %63 = xor i32 %62, -1
  %sub7.i.i = add i32 %60, %63
  %retval.0.i.i = select i1 %cmp.not.i.i, i32 %sub7.i.i, i32 %sub3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %retval.0.i.i)
  %cmp52.i = icmp ugt i32 %retval.0.i.i, 35
  br i1 %cmp52.i, label %land.lhs.true54.i, label %do.end50.i.if.end_crit_edge

do.end50.i.if.end_crit_edge:                      ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true54.i:                                ; preds = %do.end50.i
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 103
  %68 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 13
  %70 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true54.i.if.end_crit_edge, label %if.then57.i

land.lhs.true54.i.if.end_crit_edge:               ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then57.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @netif_tx_wake_queue(ptr noundef %69) #7
  br label %if.end

if.end:                                           ; preds = %if.then57.i, %land.lhs.true54.i.if.end_crit_edge, %do.end50.i.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.1.i)
  %cmp62.i = icmp ne i32 %budget.1.i, 0
  %rx = getelementptr i8, ptr %napi, i32 -8
  %72 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx, align 8
  %tobool2.not = icmp eq ptr %73, null
  br i1 %tobool2.not, label %if.end8, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.thread:                                    ; preds = %entry
  %rx60 = getelementptr i8, ptr %napi, i32 -8
  %74 = ptrtoint ptr %rx60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx60, align 8
  %tobool2.not61 = icmp eq ptr %75, null
  br i1 %tobool2.not61, label %if.end.thread.if.end11_crit_edge, label %if.end.thread.if.then3_crit_edge

if.end.thread.if.then3_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.thread.if.end11_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3:                                         ; preds = %if.end.thread.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %76 = phi ptr [ %75, %if.end.thread.if.then3_crit_edge ], [ %73, %if.end.if.then3_crit_edge ]
  %complete.0.off062 = phi i1 [ true, %if.end.thread.if.then3_crit_edge ], [ %cmp62.i, %if.end.if.then3_crit_edge ]
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dmadev1.i = getelementptr inbounds %struct.tsnep_adapter, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %dmadev1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dmadev1.i, align 4
  %read.i39 = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp76.i = icmp sgt i32 %budget, 0
  br i1 %cmp76.i, label %while.body.lr.ph.i, label %if.then3.tsnep_rx_poll.exit_crit_edge, !prof !83

if.then3.tsnep_rx_poll.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_poll.exit

while.body.lr.ph.i:                               ; preds = %if.then3
  %dropped.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 10
  %packets.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 8
  %bytes.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 9
  %multicast.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 11
  %increment_owner_counter.i.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 7
  %owner_counter.i.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 6
  %81 = ptrtoint ptr %read.i39 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %read.i39, align 4
  %desc_wb.i4051 = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %82, i32 1
  %83 = ptrtoint ptr %desc_wb.i4051 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc_wb.i4051, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %87 = shl i32 %86, 24
  %properties6.i52 = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %82, i32 3
  %88 = ptrtoint ptr %properties6.i52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %properties6.i52, align 4
  %90 = xor i32 %87, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %90)
  %cmp8.not.i53 = icmp ult i32 %90, 1073741824
  br i1 %cmp8.not.i53, label %while.body.lr.ph.i.if.end.i41_crit_edge, label %while.body.lr.ph.i.tsnep_rx_poll.exit_crit_edge

while.body.lr.ph.i.tsnep_rx_poll.exit_crit_edge:  ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_poll.exit

while.body.lr.ph.i.if.end.i41_crit_edge:          ; preds = %while.body.lr.ph.i
  br label %if.end.i41

while.body.i:                                     ; preds = %tsnep_rx_activate.exit.i
  %91 = ptrtoint ptr %read.i39 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %read.i39, align 4
  %desc_wb.i40 = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %92, i32 1
  %93 = ptrtoint ptr %desc_wb.i40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc_wb.i40, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %97 = shl i32 %96, 24
  %properties6.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %92, i32 3
  %98 = ptrtoint ptr %properties6.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %properties6.i, align 4
  %100 = xor i32 %97, %99
  %cmp8.not.i = icmp ult i32 %100, 1073741824
  br i1 %cmp8.not.i, label %while.body.i.if.end.i41_crit_edge, label %while.end.i

while.body.i.if.end.i41_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i41

if.end.i41:                                       ; preds = %while.body.i.if.end.i41_crit_edge, %while.body.lr.ph.i.if.end.i41_crit_edge
  %desc_wb.i4055 = phi ptr [ %desc_wb.i40, %while.body.i.if.end.i41_crit_edge ], [ %desc_wb.i4051, %while.body.lr.ph.i.if.end.i41_crit_edge ]
  %101 = phi i32 [ %92, %while.body.i.if.end.i41_crit_edge ], [ %82, %while.body.lr.ph.i.if.end.i41_crit_edge ]
  %done.078.i54 = phi i32 [ %done.1.i, %while.body.i.if.end.i41_crit_edge ], [ 0, %while.body.lr.ph.i.if.end.i41_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !90
  %skb9.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %101, i32 4
  %102 = ptrtoint ptr %skb9.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skb9.i, align 4
  %len10.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %101, i32 5
  %104 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len10.i, align 4
  %dma11.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %101, i32 6
  %106 = ptrtoint ptr %dma11.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma11.i, align 4
  %call.i = call fastcc i32 @tsnep_rx_alloc_and_map_skb(ptr noundef %76, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end.i41
  call void @dma_unmap_page_attrs(ptr noundef %80, i32 noundef %107, i32 noundef %105, i32 noundef 2, i32 noundef 0) #7
  %108 = ptrtoint ptr %desc_wb.i4055 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc_wb.i4055, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %112 = and i32 %111, -12648448
  %113 = call i32 @llvm.bswap.i32(i32 %112) #7
  %sub.i = add nsw i32 %113, -4
  %call17.i = call ptr @skb_put(ptr noundef %103, i32 noundef %sub.i) #7
  %114 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %76, align 4
  %rx_filter.i = getelementptr inbounds %struct.tsnep_adapter, ptr %115, i32 0, i32 16, i32 2
  %116 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp19.i = icmp eq i32 %117, 1
  br i1 %cmp19.i, label %if.then20.i, label %if.then13.i.if.end24.i_crit_edge

if.then13.i.if.end24.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %118 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i.i.i, align 4
  %hwtstamps.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 19
  %120 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i, align 4
  %timestamp22.i = getelementptr inbounds %struct.tsnep_rx_inline, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %timestamp22.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %timestamp22.i, align 8
  %124 = call i64 @llvm.bswap.i64(i64 %123) #7
  %125 = ptrtoint ptr %hwtstamps.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %hwtstamps.i.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.then13.i.if.end24.i_crit_edge
  %call25.i = call ptr @skb_pull(ptr noundef %103, i32 noundef 16) #7
  %126 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %76, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 8
  %call27.i = call zeroext i16 @eth_type_trans(ptr noundef %103, ptr noundef %129) #7
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 15, i32 0, i32 18
  %130 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %call27.i, ptr %protocol.i, align 8
  %131 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %packets.i, align 4
  %inc.i = add i32 %132, 1
  store i32 %inc.i, ptr %packets.i, align 4
  %sub28.i = add nsw i32 %113, -16
  %133 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bytes.i, align 4
  %add.i42 = add i32 %sub28.i, %134
  store i32 %add.i42, ptr %bytes.i, align 4
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 15
  %135 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp29.i = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp29.i, label %if.then31.i, label %if.end24.i.if.end33.i_crit_edge

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %multicast.i, align 4
  %inc32.i = add i32 %137, 1
  store i32 %inc32.i, ptr %multicast.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end24.i.if.end33.i_crit_edge
  %call34.i = call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %103) #7
  %inc35.i = add nsw i32 %done.078.i54, 1
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dropped.i, align 4
  %inc36.i = add i32 %139, 1
  store i32 %inc36.i, ptr %dropped.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.end33.i
  %done.1.i = phi i32 [ %done.078.i54, %if.else.i ], [ %inc35.i, %if.end33.i ]
  %140 = ptrtoint ptr %read.i39 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %read.i39, align 4
  %len.i.i43 = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %141, i32 5
  %142 = ptrtoint ptr %len.i.i43 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len.i.i43, align 4
  %and.i.i = and i32 %143, 16383
  %properties.i.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %141, i32 3
  %or.i.i = or i32 %and.i.i, 262144
  %144 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i.i, ptr %properties.i.i, align 4
  %145 = ptrtoint ptr %increment_owner_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %increment_owner_counter.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %141)
  %cmp.i.i = icmp eq i32 %146, %141
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end37.i.tsnep_rx_activate.exit.i_crit_edge

if.end37.i.tsnep_rx_activate.exit.i_crit_edge:    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_activate.exit.i

if.then.i.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %owner_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %owner_counter.i.i, align 4
  %inc.i.i44 = add i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.i44)
  %cmp5.i.i = icmp eq i32 %inc.i.i44, 4
  %spec.select.i.i = select i1 %cmp5.i.i, i32 1, i32 %inc.i.i44
  %149 = ptrtoint ptr %owner_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %spec.select.i.i, ptr %owner_counter.i.i, align 4
  %dec.i.i = add i32 %141, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp10.i.i = icmp slt i32 %dec.i.i, 0
  %spec.store.select.i.i = select i1 %cmp10.i.i, i32 255, i32 %dec.i.i
  %150 = ptrtoint ptr %increment_owner_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %spec.store.select.i.i, ptr %increment_owner_counter.i.i, align 4
  br label %tsnep_rx_activate.exit.i

tsnep_rx_activate.exit.i:                         ; preds = %if.then.i.i, %if.end37.i.tsnep_rx_activate.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.tsnep_rx, ptr %76, i32 0, i32 4, i32 %141
  %151 = ptrtoint ptr %owner_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %owner_counter.i.i, align 4
  %shl.i.i = shl i32 %152, 30
  %153 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %properties.i.i, align 4
  %or18.i.i = or i32 %154, %shl.i.i
  store i32 %or18.i.i, ptr %properties.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  %155 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %properties.i.i, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #7
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %157, ptr %159, align 8
  %161 = ptrtoint ptr %read.i39 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %read.i39, align 4
  %add40.i = add i32 %162, 1
  %rem.i45 = srem i32 %add40.i, 256
  store i32 %rem.i45, ptr %read.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1.i, i32 %budget)
  %cmp.i = icmp slt i32 %done.1.i, %budget
  br i1 %cmp.i, label %while.body.i, label %tsnep_rx_activate.exit.i.if.then43.i_crit_edge, !prof !83

tsnep_rx_activate.exit.i.if.then43.i_crit_edge:   ; preds = %tsnep_rx_activate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

while.end.i:                                      ; preds = %while.body.i
  br i1 %cmp8.not.i53, label %while.end.i.if.then43.i_crit_edge, label %while.end.i.tsnep_rx_poll.exit_crit_edge

while.end.i.tsnep_rx_poll.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tsnep_rx_poll.exit

while.end.i.if.then43.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.i:                                      ; preds = %while.end.i.if.then43.i_crit_edge, %tsnep_rx_activate.exit.i.if.then43.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !91
  %addr.i = getelementptr inbounds %struct.tsnep_rx, ptr %76, i32 0, i32 1
  %163 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %164, i32 264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #7, !srcloc !71
  br label %tsnep_rx_poll.exit

tsnep_rx_poll.exit:                               ; preds = %if.then43.i, %while.end.i.tsnep_rx_poll.exit_crit_edge, %while.body.lr.ph.i.tsnep_rx_poll.exit_crit_edge, %if.then3.tsnep_rx_poll.exit_crit_edge
  %done.0.lcssa84.i = phi i32 [ %done.1.i, %if.then43.i ], [ %done.1.i, %while.end.i.tsnep_rx_poll.exit_crit_edge ], [ 0, %if.then3.tsnep_rx_poll.exit_crit_edge ], [ 0, %while.body.lr.ph.i.tsnep_rx_poll.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %done.0.lcssa84.i, i32 %budget)
  %cmp.not = icmp slt i32 %done.0.lcssa84.i, %budget
  %spec.select = select i1 %cmp.not, i1 %complete.0.off062, i1 false
  br i1 %spec.select, label %tsnep_rx_poll.exit.if.end11_crit_edge, label %tsnep_rx_poll.exit.cleanup_crit_edge

tsnep_rx_poll.exit.cleanup_crit_edge:             ; preds = %tsnep_rx_poll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tsnep_rx_poll.exit.if.end11_crit_edge:            ; preds = %tsnep_rx_poll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end8:                                          ; preds = %if.end
  br i1 %cmp62.i, label %if.end8.if.end11_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.end8.if.end11_crit_edge, %tsnep_rx_poll.exit.if.end11_crit_edge, %if.end.thread.if.end11_crit_edge
  %done.048 = phi i32 [ %done.0.lcssa84.i, %tsnep_rx_poll.exit.if.end11_crit_edge ], [ 0, %if.end8.if.end11_crit_edge ], [ 0, %if.end.thread.if.end11_crit_edge ]
  %call12 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.048) #7
  br i1 %call12, label %if.then15, label %if.end11.if.end16_crit_edge, !prof !83

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr, align 8
  %irq_mask = getelementptr i8, ptr %napi, i32 224
  %167 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %irq_mask, align 8
  %addr.i46 = getelementptr inbounds %struct.tsnep_adapter, ptr %166, i32 0, i32 9
  %169 = ptrtoint ptr %addr.i46 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %addr.i46, align 8
  %add.ptr.i47 = getelementptr i8, ptr %170, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %171 = call i32 @llvm.bswap.i32(i32 %168) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %171) #7, !srcloc !71
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %sub = add i32 %budget, -1
  %172 = call i32 @llvm.smin.i32(i32 %done.048, i32 %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end8.cleanup_crit_edge, %tsnep_rx_poll.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %172, %if.end16 ], [ %budget, %if.end8.cleanup_crit_edge ], [ %budget, %tsnep_rx_poll.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsnep_rx_close(ptr nocapture noundef %rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.tsnep_rx, ptr %rx, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 262144) #7, !srcloc !71
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 786) #7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr935 = getelementptr i8, ptr %3, i32 264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr935) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1136 = icmp eq i32 %5, 0
  br i1 %cmp1136, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then23

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr19 = getelementptr i8, ptr %7, i32 264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %for.end

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 264
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %12 = and i32 %11, 131072
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then23.for.end_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then23.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  tail call fastcc void @tsnep_rx_ring_cleanup(ptr noundef %rx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsnep_tx_close(ptr nocapture noundef %tx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 531) #7
  %addr = getelementptr inbounds %struct.tsnep_tx, ptr %tx, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr33 = getelementptr i8, ptr %1, i32 264
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp934 = icmp eq i32 %3, 0
  br i1 %cmp934, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then21

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %add.ptr17 = getelementptr i8, ptr %5, i32 264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 264
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %10 = and i32 %9, 33554432
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then21.for.end_crit_edge, label %if.then21.land.lhs.true_crit_edge

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  %dmadev1.i = getelementptr inbounds %struct.tsnep_adapter, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %dmadev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmadev1.i, align 4
  %entry2.i = getelementptr inbounds %struct.tsnep_tx, ptr %tx, i32 0, i32 5
  %15 = call ptr @memset(ptr %entry2.i, i32 0, i32 8192)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %i.022.i = phi i32 [ 0, %for.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tsnep_tx, ptr %tx, i32 0, i32 2, i32 %i.022.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i = getelementptr %struct.tsnep_tx, ptr %tx, i32 0, i32 3, i32 %i.022.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef 4096, ptr noundef nonnull %17, i32 noundef %19, i32 noundef 0) #7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx5.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %tsnep_tx_ring_cleanup.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tsnep_tx_ring_cleanup.exit:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsnep_phy_link_status_change(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 1000
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %switch.selectcmp7 = icmp eq i32 %5, 100
  %switch.select8 = select i1 %switch.selectcmp7, i32 2, i32 %switch.select
  %addr = getelementptr i8, ptr %netdev, i32 2344
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %switch.select8) #7, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev1, align 16
  tail call void @phy_print_status(ptr noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsnep_rx_alloc_and_map_skb(ptr nocapture noundef readonly %rx, ptr nocapture noundef %entry1) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %dmadev2 = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dmadev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmadev2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef 2086, i32 noundef 2593) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !83

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #7
  br label %if.then7

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef 2084) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i25 = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i25, i32 noundef %and.i, i32 noundef 2084, i32 noundef 2, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then7_crit_edge, label %if.end8

dma_map_single_attrs.exit.if.then7_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %dma_map_single_attrs.exit.if.then7_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @consume_skb(ptr noundef nonnull %call) #7
  br label %cleanup

if.end8:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %skb9 = getelementptr inbounds %struct.tsnep_rx_entry, ptr %entry1, i32 0, i32 4
  %16 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %skb9, align 4
  %len = getelementptr inbounds %struct.tsnep_rx_entry, ptr %entry1, i32 0, i32 5
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2084, ptr %len, align 4
  %dma10 = getelementptr inbounds %struct.tsnep_rx_entry, ptr %entry1, i32 0, i32 6
  %18 = ptrtoint ptr %dma10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call41.i, ptr %dma10, align 4
  %conv = zext i32 %call41.i to i64
  %19 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %20 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry1, align 4
  %rx11 = getelementptr inbounds %struct.tsnep_rx_desc, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %rx11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %rx11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsnep_rx_ring_cleanup(ptr nocapture noundef %rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %dmadev1 = getelementptr inbounds %struct.tsnep_adapter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dmadev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmadev1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %dma = getelementptr %struct.tsnep_rx, ptr %rx, i32 0, i32 4, i32 %i.050, i32 6
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr %struct.tsnep_rx, ptr %rx, i32 0, i32 4, i32 %i.050, i32 5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 2, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %skb = getelementptr %struct.tsnep_rx, ptr %rx, i32 0, i32 4, i32 %i.050, i32 4
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %9) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %entry9 = getelementptr inbounds %struct.tsnep_rx, ptr %rx, i32 0, i32 4
  %10 = call ptr @memset(ptr %entry9, i32 0, i32 7168)
  br label %for.body12

for.body12:                                       ; preds = %for.inc24.for.body12_crit_edge, %for.end
  %i.152 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24.for.body12_crit_edge ]
  %arrayidx13 = getelementptr %struct.tsnep_rx, ptr %rx, i32 0, i32 2, i32 %i.152
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %for.body12.for.inc24_crit_edge, label %if.then15

for.body12.for.inc24_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc24

if.then15:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr %struct.tsnep_rx, ptr %rx, i32 0, i32 3, i32 %i.152
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %12, i32 noundef %14, i32 noundef 0) #7
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx13, align 4
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx18, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %if.then15, %for.body12.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.152, 1
  %exitcond54.not = icmp eq i32 %inc25, 16
  br i1 %exitcond54.not, label %for.end26, label %for.inc24.for.body12_crit_edge

for.inc24.for.body12_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.end26:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsnep_ptp_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_tsnep__351_1268_tsnep_driver_init6, !1, !"__initcall__kmod_tsnep__351_1268_tsnep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1268, i32 1}
!2 = !{ptr @__exitcall_tsnep_driver_exit, !1, !"__exitcall_tsnep_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author352, !4, !"__UNIQUE_ID_author352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1270, i32 1}
!5 = !{ptr @__UNIQUE_ID_description353, !6, !"__UNIQUE_ID_description353", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1271, i32 1}
!7 = !{ptr @__UNIQUE_ID_file354, !8, !"__UNIQUE_ID_file354", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1272, i32 1}
!9 = !{ptr @__UNIQUE_ID_license355, !8, !"__UNIQUE_ID_license355", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1262, i32 11}
!12 = !{ptr @tsnep_driver, !13, !"tsnep_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1260, i32 31}
!14 = !{ptr @tsnep_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1150, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1177, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tsnep_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tsnep_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1215, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tsnep_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @tsnep_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1218, i32 3}
!32 = !{ptr @tsnep_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tsnep_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 994, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1065, i32 33}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1070, i32 30}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1084, i32 27}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1085, i32 50}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1110, i32 58}
!46 = !{ptr @tsnep_netdev_ops, !47, !"tsnep_netdev_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1013, i32 36}
!48 = !{ptr @tsnep_tx_open.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 520, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 406, i32 35}
!57 = !{ptr @tsnep_of_match, !58, !"tsnep_of_match", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/engleder/tsnep_main.c", i32 1254, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 6273156}
!69 = !{i64 2153813505}
!70 = !{i64 2153814860}
!71 = !{i64 6272738}
!72 = !{i64 2153814310}
!73 = !{i64 6272118}
!74 = !{i64 6272318}
!75 = !{i64 2153812893}
!76 = !{i8 0, i8 2}
!77 = !{i64 2156621600}
!78 = !{i64 2156622106}
!79 = !{i64 2156624771}
!80 = !{i64 2156625277}
!81 = !{i64 2156634593}
!82 = !{i64 2156635838}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.peeled.count", i32 1}
!86 = !{i64 2156627239}
!87 = !{i64 2156628660}
!88 = !{i64 2156629393}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 2156635014}
!91 = !{i64 2156635619}
