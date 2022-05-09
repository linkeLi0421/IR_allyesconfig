; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mv643xx_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mv643xx_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mv643xx_eth_stats = type { [32 x i8], i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mv643xx_eth_platform_data = type { ptr, i32, i32, ptr, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mv643xx_eth_shared_private = type { ptr, i32, i32, i32, i32, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.mv643xx_eth_shared_platform_data = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mv643xx_eth_private = type { ptr, ptr, i32, ptr, %struct.timer_list, %struct.spinlock, %struct.mib_counters, %struct.work_struct, %struct.napi_struct, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.timer_list, [8 x %struct.rx_queue], i32, i32, i32, i32, [8 x %struct.tx_queue], ptr, i32 }
%struct.mib_counters = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rx_queue = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr }
%struct.tx_queue = type { i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.sk_buff_head, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rx_desc = type { i16, i16, i32, i32, i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.tx_desc = type { i16, i16, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.tso_t = type { i32, i32, ptr, i16, i8, i8, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@__initcall__kmod_mv643xx_eth__523_3292_mv643xx_eth_init_module6 = internal global ptr @mv643xx_eth_init_module, section ".initcall6.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mv643xx_eth_shared_driver, ptr @mv643xx_eth_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_mv643xx_eth_cleanup_module = internal global ptr @mv643xx_eth_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author524 = internal constant [119 x i8] c"mv643xx_eth.author=Rabeeh Khoury, Assaf Hoffman, Matthew Dharm, Manish Lachwani, Dale Farnsworth and Lennert Buytenhek\00", section ".modinfo", align 1
@__UNIQUE_ID_description525 = internal constant [60 x i8] c"mv643xx_eth.description=Ethernet driver for Marvell MV643XX\00", section ".modinfo", align 1
@__UNIQUE_ID_file526 = internal constant [58 x i8] c"mv643xx_eth.file=drivers/net/ethernet/marvell/mv643xx_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license527 = internal constant [24 x i8] c"mv643xx_eth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias528 = internal constant [39 x i8] c"mv643xx_eth.alias=platform:mv643xx_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_alias529 = internal constant [44 x i8] c"mv643xx_eth.alias=platform:mv643xx_eth_port\00", section ".modinfo", align 1
@mv643xx_eth_shared_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv643xx_eth_shared_probe, ptr @mv643xx_eth_shared_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv643xx_eth_shared_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mv643xx_eth_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv643xx_eth_probe, ptr @mv643xx_eth_remove, ptr @mv643xx_eth_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv643xx_eth\00", [20 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_probe.mv643xx_eth_version_printed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mv643xx_eth_shared_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015mv643xx_eth: MV-643xx 10/100/1000 ethernet driver version %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv643xx_eth_shared_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/marvell/mv643xx_eth.c\00", [53 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_probe._entry_ptr = internal global ptr @mv643xx_eth_shared_probe._entry, section ".printk_index", align 4
@mv643xx_eth_driver_version = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1.4\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,tx-checksum-limit\00", [38 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 2731, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing interrupt on %pOFn\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mv643xx_eth_shared_of_add_port\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry_ptr = internal global ptr @mv643xx_eth_shared_of_add_port._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 2736, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing reg property on %pOFn\0A\00", [33 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry_ptr.12 = internal global ptr @mv643xx_eth_shared_of_add_port._entry.10, section ".printk_index", align 4
@mv643xx_eth_shared_of_add_port._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.3, i32 2741, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid reg property on %pOFn\0A\00", [33 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry_ptr.15 = internal global ptr @mv643xx_eth_shared_of_add_port._entry.13, section ".printk_index", align 4
@port_platdev = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@mv643xx_eth_shared_of_add_port._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.3, i32 2749, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too many ports registered\0A\00", [37 x i8] zeroinitializer }, align 32
@mv643xx_eth_shared_of_add_port._entry_ptr.18 = internal global ptr @mv643xx_eth_shared_of_add_port._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,tx-queue-size\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,tx-sram-addr\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,tx-sram-size\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,rx-queue-size\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,rx-sram-addr\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,rx-sram-size\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"duplex\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv643xx_eth_port\00", [47 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 3100, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no mv643xx_eth_platform_data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv643xx_eth_probe\00", [46 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe._entry_ptr = internal global ptr @mv643xx_eth_probe._entry, section ".printk_index", align 4
@mv643xx_eth_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 3105, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no mv643xx_eth_platform_data->shared\0A\00", [58 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe._entry_ptr.33 = internal global ptr @mv643xx_eth_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,kirkwood-eth-port\00", [38 x i8] zeroinitializer }, align 32
@mv643xx_eth_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @mv643xx_eth_get_drvinfo, ptr null, ptr null, ptr @mv643xx_eth_get_wol, ptr @mv643xx_eth_set_wol, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_coalesce, ptr @mv643xx_eth_set_coalesce, ptr @mv643xx_eth_get_ringparam, ptr @mv643xx_eth_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_strings, ptr null, ptr @mv643xx_eth_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_link_ksettings, ptr @mv643xx_eth_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&mp->mib_counters_timer)\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mv643xx_eth_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mp->mib_counters_lock\00", [41 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&mp->tx_timeout_task)\00", [56 x i8] zeroinitializer }, align 32
@mv643xx_eth_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&mp->rx_oom)\00", [18 x i8] zeroinitializer }, align 32
@mv643xx_eth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mv643xx_eth_open, ptr @mv643xx_eth_stop, ptr @mv643xx_eth_xmit, ptr null, ptr null, ptr null, ptr @mv643xx_eth_set_rx_mode, ptr @mv643xx_eth_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @mv643xx_eth_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_change_mtu, ptr null, ptr @mv643xx_eth_tx_timeout, ptr null, ptr null, ptr null, ptr @mv643xx_eth_get_stats, ptr null, ptr null, ptr @mv643xx_eth_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv643xx_eth_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port %d with MAC address %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"configured with sram\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TX queue size set to %u (requested %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orion-mdio-mii\00", [17 x i8] zeroinitializer }, align 32
@mv643xx_eth_driver_name = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"mv643xx_eth\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"The PHY does not support set_wol, was CONFIG_MARVELL_PHY enabled?\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"fatal error on re-opening device after ring param change\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error freeing rx ring -- %d skbs stuck\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx error\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't assign irq\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't allocate rx ring (%d bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't allocate tx ring (%d bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mv643xx_eth_stats = internal constant { [40 x %struct.mv643xx_eth_stats], [416 x i8] } { [40 x %struct.mv643xx_eth_stats] [%struct.mv643xx_eth_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 216, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 220, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 224, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 228, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 232, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 236, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 240, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 244, i32 -1 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_octets_received\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 -1, i32 112 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_octets_received\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 120 }, %struct.mv643xx_eth_stats { [32 x i8] c"internal_mac_transmit_err\00\00\00\00\00\00\00", i32 4, i32 -1, i32 124 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_frames_received\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 128 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_frames_received\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 132 }, %struct.mv643xx_eth_stats { [32 x i8] c"broadcast_frames_received\00\00\00\00\00\00\00", i32 4, i32 -1, i32 136 }, %struct.mv643xx_eth_stats { [32 x i8] c"multicast_frames_received\00\00\00\00\00\00\00", i32 4, i32 -1, i32 140 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_64_octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 144 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_65_to_127_octets\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 148 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_128_to_255_octets\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 152 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_256_to_511_octets\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 156 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_512_to_1023_octets\00\00\00\00\00\00\00", i32 4, i32 -1, i32 160 }, %struct.mv643xx_eth_stats { [32 x i8] c"frames_1024_to_max_octets\00\00\00\00\00\00\00", i32 4, i32 -1, i32 164 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_octets_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 -1, i32 168 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_frames_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 176 }, %struct.mv643xx_eth_stats { [32 x i8] c"excessive_collision\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 180 }, %struct.mv643xx_eth_stats { [32 x i8] c"multicast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 184 }, %struct.mv643xx_eth_stats { [32 x i8] c"broadcast_frames_sent\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 188 }, %struct.mv643xx_eth_stats { [32 x i8] c"unrec_mac_control_received\00\00\00\00\00\00", i32 4, i32 -1, i32 192 }, %struct.mv643xx_eth_stats { [32 x i8] c"fc_sent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 196 }, %struct.mv643xx_eth_stats { [32 x i8] c"good_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 200 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_fc_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 204 }, %struct.mv643xx_eth_stats { [32 x i8] c"undersize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 208 }, %struct.mv643xx_eth_stats { [32 x i8] c"fragments_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 212 }, %struct.mv643xx_eth_stats { [32 x i8] c"oversize_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 216 }, %struct.mv643xx_eth_stats { [32 x i8] c"jabber_received\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 220 }, %struct.mv643xx_eth_stats { [32 x i8] c"mac_receive_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 224 }, %struct.mv643xx_eth_stats { [32 x i8] c"bad_crc_event\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 228 }, %struct.mv643xx_eth_stats { [32 x i8] c"collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 232 }, %struct.mv643xx_eth_stats { [32 x i8] c"late_collision\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 236 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 240 }, %struct.mv643xx_eth_stats { [32 x i8] c"rx_overrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 -1, i32 244 }], [416 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"link up, %d Mb/s, %s duplex, flow control %sabled\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"received packet spanning multiple descriptors\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to linearize skb with tiny unaligned fragment\0A\00", [42 x i8] zeroinitializer }, align 32
@txq_submit_tso.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txq_submit_tso\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not enough descriptors for TSO!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to prepare checksum!\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"protocol not supported\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_map_single failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx queue full?!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00^\00\00\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fatal error on re-opening device after MTU change\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 33024]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3283, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"mv643xx_eth_shared_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2901, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"mv643xx_eth_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3274, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2905, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"mv643xx_eth_shared_ids\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2689, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"mv643xx_eth_version_printed\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2839, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2847, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"mv643xx_eth_driver_version\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 57, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2813, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2731, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2735, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2736, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2741, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"port_platdev\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2705, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2749, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2757, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2758, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2759, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2760, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2761, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2762, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2764, i32 39 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2767, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2768, i32 29 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2771, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3100, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3105, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3128, i32 9 }
@___asan_gen_.209 = private unnamed_addr constant [24 x i8] c"mv643xx_eth_ethtool_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1743, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3180, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3183, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3185, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3189, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"mv643xx_eth_netdev_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3072, i32 36 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3228, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3232, i32 22 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2960, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3008, i32 36 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 3009, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant [24 x i8] c"mv643xx_eth_driver_name\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 56, i32 13 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1610, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1611, i32 29 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1561, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1675, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2019, i32 23 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1112, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2434, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1966, i32 7 }
@___asan_gen_.285 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 326, i32 6 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2070, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 1984, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [18 x i8] c"mv643xx_eth_stats\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1438, i32 39 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2206, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2237, i32 19 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2238, i32 23 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2238, i32 32 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2238, i32 45 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2238, i32 52 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 582, i32 9 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1004, i32 17 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1005, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 829, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 791, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 714, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 756, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 944, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1883, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2579, i32 7 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [46 x i8] c"../drivers/net/ethernet/marvell/mv643xx_eth.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2602, i32 19 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias528, ptr @__UNIQUE_ID_alias529, ptr @__UNIQUE_ID_author524, ptr @__UNIQUE_ID_description525, ptr @__UNIQUE_ID_file526, ptr @__UNIQUE_ID_license527, ptr @__exitcall_mv643xx_eth_cleanup_module, ptr @__initcall__kmod_mv643xx_eth__523_3292_mv643xx_eth_init_module6, ptr @mv643xx_eth_cleanup_module, ptr @mv643xx_eth_probe._entry, ptr @mv643xx_eth_probe._entry.31, ptr @mv643xx_eth_probe._entry_ptr, ptr @mv643xx_eth_probe._entry_ptr.33, ptr @mv643xx_eth_shared_of_add_port._entry, ptr @mv643xx_eth_shared_of_add_port._entry.10, ptr @mv643xx_eth_shared_of_add_port._entry.13, ptr @mv643xx_eth_shared_of_add_port._entry.16, ptr @mv643xx_eth_shared_of_add_port._entry_ptr, ptr @mv643xx_eth_shared_of_add_port._entry_ptr.12, ptr @mv643xx_eth_shared_of_add_port._entry_ptr.15, ptr @mv643xx_eth_shared_of_add_port._entry_ptr.18, ptr @mv643xx_eth_shared_probe._entry, ptr @mv643xx_eth_shared_probe._entry_ptr, ptr @drivers, ptr @mv643xx_eth_shared_driver, ptr @mv643xx_eth_driver, ptr @.str, ptr @mv643xx_eth_shared_ids, ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mv643xx_eth_driver_version, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @port_platdev, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @mv643xx_eth_ethtool_ops, ptr @mv643xx_eth_probe.__key, ptr @.str.35, ptr @mv643xx_eth_probe.__key.36, ptr @.str.37, ptr @mv643xx_eth_probe.__key.38, ptr @.str.39, ptr @mv643xx_eth_probe.__key.40, ptr @.str.41, ptr @mv643xx_eth_netdev_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mv643xx_eth_driver_name, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @skb_queue_head_init.__key, ptr @.str.58, ptr @mv643xx_eth_stats, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_driver_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_of_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_of_add_port._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_of_add_port._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_platdev to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_shared_of_add_port._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_driver_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv643xx_eth_stats to i32), i32 1760, i32 2176, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #18
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_shared_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i.i = alloca %struct.of_phandle_args, align 4
  %ppd.i.i = alloca %struct.mv643xx_eth_platform_data, align 4
  %res.i.i = alloca %struct.resource, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp37.i.i = alloca i32, align 4
  %tmp45.i.i = alloca i32, align 4
  %tmp53.i.i = alloca i32, align 4
  %tmp61.i.i = alloca i32, align 4
  %tmp69.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @mv643xx_eth_driver_version) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #18
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #18
  %cmp5 = icmp eq ptr %call.i, null
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %3, i32 noundef %add.i) #18
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %call.i, align 4
  %cmp12 = icmp eq ptr %call10, null
  br i1 %cmp12, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #18
  %clk = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end14.if.end22_crit_edge, label %if.then19

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then19:                                        ; preds = %if.end14
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %call16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then19.if.end22_crit_edge

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.end.i:                                         ; preds = %if.then19
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end22_crit_edge, label %if.then3.i

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %call16) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then3.i, %if.end.i.if.end22_crit_edge, %if.then19.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %call23 = tail call ptr @mv_mbus_dram_info() #18
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.peel.i = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.peel.i = getelementptr i8, ptr %9, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.peel.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !195
  tail call void @arm_heavy_mb() #18
  %add.ptr14.peel.i = getelementptr i8, ptr %9, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.peel.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.peel87.i = getelementptr i8, ptr %9, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel87.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.peel89.i = getelementptr i8, ptr %9, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.peel89.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !195
  tail call void @arm_heavy_mb() #18
  %add.ptr14.peel94.i = getelementptr i8, ptr %9, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.peel94.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.peel102.i = getelementptr i8, ptr %9, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel102.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.peel104.i = getelementptr i8, ptr %9, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.peel104.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !195
  tail call void @arm_heavy_mb() #18
  %add.ptr14.peel109.i = getelementptr i8, ptr %9, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.peel109.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.peel117.i = getelementptr i8, ptr %9, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.peel117.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.peel119.i = getelementptr i8, ptr %9, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.peel119.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !195
  tail call void @arm_heavy_mb() #18
  %add.ptr14.peel124.i = getelementptr i8, ptr %9, i32 652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.peel124.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.i = getelementptr i8, ptr %9, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.i = getelementptr i8, ptr %9, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !192
  tail call void @arm_heavy_mb() #18
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !194
  tail call void @arm_heavy_mb() #18
  %add.ptr7.i.1 = getelementptr i8, ptr %9, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.1, i32 0) #18, !srcloc !193
  %num_cs.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call23, i32 0, i32 1
  %10 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1678.i = icmp sgt i32 %11, 0
  br i1 %cmp1678.i, label %for.body17.lr.ph.i, label %if.then25.mv643xx_eth_conf_mbus_windows.exit_crit_edge

if.then25.mv643xx_eth_conf_mbus_windows.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_conf_mbus_windows.exit

for.body17.lr.ph.i:                               ; preds = %if.then25
  %cs18.i = getelementptr inbounds %struct.mbus_dram_target_info, ptr %call23, i32 0, i32 2
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %i.181.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %inc45.i, %for.body17.i.for.body17.i_crit_edge ]
  %win_protect.080.i = phi i32 [ 0, %for.body17.lr.ph.i ], [ %or43.i, %for.body17.i.for.body17.i_crit_edge ]
  %win_enable.079.i = phi i32 [ 63, %for.body17.lr.ph.i ], [ %and41.i, %for.body17.i.for.body17.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !196
  tail call void @arm_heavy_mb() #18
  %base23.i = getelementptr %struct.mbus_dram_window, ptr %cs18.i, i32 %i.181.i, i32 2
  %12 = ptrtoint ptr %base23.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %base23.i, align 8
  %and.i = and i64 %13, 4294901760
  %mbus_attr.i = getelementptr %struct.mbus_dram_window, ptr %cs18.i, i32 %i.181.i, i32 1
  %14 = ptrtoint ptr %mbus_attr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mbus_attr.i, align 1
  %conv.i = zext i8 %15 to i32
  %shl24.i = shl nuw nsw i32 %conv.i, 8
  %16 = ptrtoint ptr %call23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call23, align 8
  %conv26.i = zext i8 %17 to i64
  %or.i = or i64 %and.i, %conv26.i
  %18 = trunc i64 %or.i to i32
  %conv28.i = or i32 %shl24.i, %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv28.i) #18
  %shl29.i = shl i32 %i.181.i, 3
  %add30.i = add i32 %shl29.i, 512
  %add.ptr31.i = getelementptr i8, ptr %9, i32 %add30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %19) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !197
  tail call void @arm_heavy_mb() #18
  %size.i = getelementptr %struct.mbus_dram_window, ptr %cs18.i, i32 %i.181.i, i32 3
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size.i, align 8
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %conv36.i = and i32 %23, -65536
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv36.i) #18
  %add38.i = add i32 %shl29.i, 516
  %add.ptr39.i = getelementptr i8, ptr %9, i32 %add38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %24) #18, !srcloc !193
  %shl40.i = shl nuw i32 1, %i.181.i
  %neg.i = xor i32 %shl40.i, -1
  %and41.i = and i32 %win_enable.079.i, %neg.i
  %mul.i = shl nuw i32 %i.181.i, 1
  %shl42.i = shl i32 3, %mul.i
  %or43.i = or i32 %shl42.i, %win_protect.080.i
  %inc45.i = add nuw nsw i32 %i.181.i, 1
  %25 = ptrtoint ptr %num_cs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cs.i, align 4
  %cmp16.i = icmp slt i32 %inc45.i, %26
  br i1 %cmp16.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.mv643xx_eth_conf_mbus_windows.exit_crit_edge

for.body17.i.mv643xx_eth_conf_mbus_windows.exit_crit_edge: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_conf_mbus_windows.exit

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body17.i

mv643xx_eth_conf_mbus_windows.exit:               ; preds = %for.body17.i.mv643xx_eth_conf_mbus_windows.exit_crit_edge, %if.then25.mv643xx_eth_conf_mbus_windows.exit_crit_edge
  %win_enable.0.lcssa.i = phi i32 [ 63, %if.then25.mv643xx_eth_conf_mbus_windows.exit_crit_edge ], [ %and41.i, %for.body17.i.mv643xx_eth_conf_mbus_windows.exit_crit_edge ]
  %win_protect.0.lcssa.i = phi i32 [ 0, %if.then25.mv643xx_eth_conf_mbus_windows.exit_crit_edge ], [ %or43.i, %for.body17.i.mv643xx_eth_conf_mbus_windows.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !198
  tail call void @arm_heavy_mb() #18
  %27 = tail call i32 @llvm.bswap.i32(i32 %win_enable.0.lcssa.i) #18
  %add.ptr50.i = getelementptr i8, ptr %9, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %27) #18, !srcloc !193
  %win_protect51.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %win_protect51.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %win_protect.0.lcssa.i, ptr %win_protect51.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %mv643xx_eth_conf_mbus_windows.exit, %if.end22.if.end26_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i71 = icmp eq ptr %30, null
  br i1 %tobool.not.i71, label %if.end26.if.end30_crit_edge, label %if.end.i73

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end.i73:                                       ; preds = %if.end26
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #18
  %tobool2.not.i72 = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i72, label %if.end.i73.err_put_clk_crit_edge, label %if.end4.i

if.end.i73.err_put_clk_crit_edge:                 ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_put_clk

if.end4.i:                                        ; preds = %if.end.i73
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %31 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #18
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tmp.i, align 4, !annotation !199
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %30, ptr noundef nonnull @.str.4, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end4.i.if.end9.i_crit_edge

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tmp.i, align 4
  %tx_csum_limit.i = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %tx_csum_limit.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tx_csum_limit.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end4.i.if.end9.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #18
  %call10.i = call ptr @of_get_next_available_child(ptr noundef nonnull %30, ptr noundef null) #18
  %cmp.not43.i = icmp eq ptr %call10.i, null
  br i1 %cmp.not43.i, label %if.end9.i.if.end30_crit_edge, label %for.body.lr.ph.i

if.end9.i.if.end30_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %36 = getelementptr inbounds i8, ptr %ppd.i.i, i32 4
  %mac_addr.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 4
  %tx_queue_size.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 10
  %tx_sram_addr.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 13
  %tx_sram_size.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 14
  %rx_queue_size.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 9
  %rx_sram_addr.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 11
  %rx_sram_size.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 12
  %phy_node152.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 3
  %phy_addr.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 2
  %speed.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 5
  %duplex.i.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %ppd.i.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i74.for.body.i_crit_edge, %for.body.lr.ph.i
  %pnp.044.i = phi ptr [ %call10.i, %for.body.lr.ph.i ], [ %call15.i, %for.inc.i74.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ppd.i.i) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #18
  %37 = call ptr @memset(ptr %36, i32 0, i32 60)
  %38 = ptrtoint ptr %ppd.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pdev, ptr %ppd.i.i, align 4
  %39 = call ptr @memset(ptr %res.i.i, i32 0, i32 32)
  %call.i31.i = call i32 @of_irq_to_resource(ptr noundef nonnull %pnp.044.i, i32 noundef 0, ptr noundef nonnull %res.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31.i)
  %cmp.i.i = icmp slt i32 %call.i31.i, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull %pnp.044.i) #21
  br label %if.then13.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.9, ptr noundef %36, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %do.end5.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %pnp.044.i) #21
  br label %if.then13.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp9.i.i = icmp sgt i32 %41, 2
  br i1 %cmp9.i.i, label %do.end13.i.i, label %land.rhs.preheader.i.i

land.rhs.preheader.i.i:                           ; preds = %if.end7.i.i
  %42 = load ptr, ptr @port_platdev, align 4
  %tobool17.not.i.i = icmp eq ptr %42, null
  br i1 %tobool17.not.i.i, label %land.rhs.preheader.i.i.if.end24.i.i_crit_edge, label %while.body.i.i

land.rhs.preheader.i.i.if.end24.i.i_crit_edge:    ; preds = %land.rhs.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

do.end13.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %pnp.044.i) #21
  br label %if.then13.i

while.body.i.i:                                   ; preds = %land.rhs.preheader.i.i
  %43 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %tobool17.not.1.i.i = icmp eq ptr %43, null
  br i1 %tobool17.not.1.i.i, label %while.body.i.i.if.end24.i.i_crit_edge, label %while.body.1.i.i

while.body.i.i.if.end24.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

while.body.1.i.i:                                 ; preds = %while.body.i.i
  %44 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  %tobool17.not.2.i.i = icmp eq ptr %44, null
  br i1 %tobool17.not.2.i.i, label %while.body.1.i.i.if.end24.i.i_crit_edge, label %do.end22.i.i

while.body.1.i.i.if.end24.i.i_crit_edge:          ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24.i.i

do.end22.i.i:                                     ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #21
  br label %if.then13.i

if.end24.i.i:                                     ; preds = %while.body.1.i.i.if.end24.i.i_crit_edge, %while.body.i.i.if.end24.i.i_crit_edge, %land.rhs.preheader.i.i.if.end24.i.i_crit_edge
  %dev_num.0156.lcssa.i.i = phi i32 [ 0, %land.rhs.preheader.i.i.if.end24.i.i_crit_edge ], [ 1, %while.body.i.i.if.end24.i.i_crit_edge ], [ 2, %while.body.1.i.i.if.end24.i.i_crit_edge ]
  %call25.i.i = call i32 @of_get_mac_address(ptr noundef nonnull %pnp.044.i, ptr noundef %mac_addr.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %do.body29.i.i, label %if.end24.i.i.if.then13.i_crit_edge

if.end24.i.i.if.then13.i_crit_edge:               ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13.i

do.body29.i.i:                                    ; preds = %if.end24.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #18
  %45 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !199
  %call.i.i142.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %tmp.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142.i.i)
  %tobool31.not.i.i = icmp sgt i32 %call.i.i142.i.i, -1
  br i1 %tobool31.not.i.i, label %if.then32.i.i, label %do.body29.i.i.if.end33.i.i_crit_edge

do.body29.i.i.if.end33.i.i_crit_edge:             ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %46 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tmp.i.i, align 4
  %48 = ptrtoint ptr %tx_queue_size.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_queue_size.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then32.i.i, %do.body29.i.i.if.end33.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp37.i.i) #18
  %49 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %tmp37.i.i, align 4, !annotation !199
  %call.i.i143.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp37.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i143.i.i)
  %tobool39.not.i.i = icmp sgt i32 %call.i.i143.i.i, -1
  br i1 %tobool39.not.i.i, label %if.then40.i.i, label %if.end33.i.i.if.end41.i.i_crit_edge

if.end33.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41.i.i

if.then40.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %tmp37.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tmp37.i.i, align 4
  %52 = ptrtoint ptr %tx_sram_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tx_sram_addr.i.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then40.i.i, %if.end33.i.i.if.end41.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp37.i.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp45.i.i) #18
  %53 = ptrtoint ptr %tmp45.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %tmp45.i.i, align 4, !annotation !199
  %call.i.i144.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %tmp45.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i144.i.i)
  %tobool47.not.i.i = icmp sgt i32 %call.i.i144.i.i, -1
  br i1 %tobool47.not.i.i, label %if.then48.i.i, label %if.end41.i.i.if.end49.i.i_crit_edge

if.end41.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49.i.i

if.then48.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %tmp45.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp45.i.i, align 4
  %56 = ptrtoint ptr %tx_sram_size.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tx_sram_size.i.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then48.i.i, %if.end41.i.i.if.end49.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp45.i.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp53.i.i) #18
  %57 = ptrtoint ptr %tmp53.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %tmp53.i.i, align 4, !annotation !199
  %call.i.i145.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %tmp53.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i145.i.i)
  %tobool55.not.i.i = icmp sgt i32 %call.i.i145.i.i, -1
  br i1 %tobool55.not.i.i, label %if.then56.i.i, label %if.end49.i.i.if.end57.i.i_crit_edge

if.end49.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57.i.i

if.then56.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %58 = ptrtoint ptr %tmp53.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tmp53.i.i, align 4
  %60 = ptrtoint ptr %rx_queue_size.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rx_queue_size.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then56.i.i, %if.end49.i.i.if.end57.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp53.i.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp61.i.i) #18
  %61 = ptrtoint ptr %tmp61.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %tmp61.i.i, align 4, !annotation !199
  %call.i.i146.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %tmp61.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i146.i.i)
  %tobool63.not.i.i = icmp sgt i32 %call.i.i146.i.i, -1
  br i1 %tobool63.not.i.i, label %if.then64.i.i, label %if.end57.i.i.if.end65.i.i_crit_edge

if.end57.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65.i.i

if.then64.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %62 = ptrtoint ptr %tmp61.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tmp61.i.i, align 4
  %64 = ptrtoint ptr %rx_sram_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rx_sram_addr.i.i, align 4
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then64.i.i, %if.end57.i.i.if.end65.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp61.i.i) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp69.i.i) #18
  %65 = ptrtoint ptr %tmp69.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %tmp69.i.i, align 4, !annotation !199
  %call.i.i147.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %tmp69.i.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i147.i.i)
  %tobool71.not.i.i = icmp sgt i32 %call.i.i147.i.i, -1
  br i1 %tobool71.not.i.i, label %if.then72.i.i, label %if.end65.i.i.if.end73.i.i_crit_edge

if.end65.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73.i.i

if.then72.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %tmp69.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tmp69.i.i, align 4
  %68 = ptrtoint ptr %rx_sram_size.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rx_sram_size.i.i, align 4
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.then72.i.i, %if.end65.i.i.if.end73.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp69.i.i) #18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i.i) #18
  %69 = call ptr @memset(ptr %args.i.i.i, i32 255, i32 72)
  %call.i.i32.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i.i.i, label %of_parse_phandle.exit.i.i, label %of_parse_phandle.exit.thread.i.i

of_parse_phandle.exit.thread.i.i:                 ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #18
  %70 = ptrtoint ptr %phy_node152.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %phy_node152.i.i, align 4
  br label %if.then79.i.i

of_parse_phandle.exit.i.i:                        ; preds = %if.end73.i.i
  %71 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %args.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i.i) #18
  %73 = ptrtoint ptr %phy_node152.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %phy_node152.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %72, null
  br i1 %tobool78.not.i.i, label %of_parse_phandle.exit.i.i.if.then79.i.i_crit_edge, label %of_parse_phandle.exit.i.i.if.end82.i.i_crit_edge

of_parse_phandle.exit.i.i.if.end82.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82.i.i

of_parse_phandle.exit.i.i.if.then79.i.i_crit_edge: ; preds = %of_parse_phandle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then79.i.i

if.then79.i.i:                                    ; preds = %of_parse_phandle.exit.i.i.if.then79.i.i_crit_edge, %of_parse_phandle.exit.thread.i.i
  %74 = ptrtoint ptr %phy_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 255, ptr %phy_addr.i.i, align 4
  %call.i.i148.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.26, ptr noundef %speed.i.i, i32 noundef 1, i32 noundef 0) #18
  %call.i.i149.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pnp.044.i, ptr noundef nonnull @.str.27, ptr noundef %duplex.i.i, i32 noundef 1, i32 noundef 0) #18
  br label %if.end82.i.i

if.end82.i.i:                                     ; preds = %if.then79.i.i, %of_parse_phandle.exit.i.i.if.end82.i.i_crit_edge
  %call83.i.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str.28, i32 noundef %dev_num.0156.lcssa.i.i) #18
  %tobool84.not.i.i = icmp eq ptr %call83.i.i, null
  br i1 %tobool84.not.i.i, label %if.end82.i.i.if.then13.i_crit_edge, label %if.end86.i.i

if.end82.i.i.if.then13.i_crit_edge:               ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then13.i

if.end86.i.i:                                     ; preds = %if.end82.i.i
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.platform_device, ptr %call83.i.i, i32 0, i32 3, i32 19
  %75 = ptrtoint ptr %coherent_dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 4294967295, ptr %coherent_dma_mask.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %call83.i.i, i32 0, i32 3, i32 27
  %76 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %pnp.044.i, ptr %of_node.i.i, align 8
  %call89.i.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call83.i.i, ptr noundef nonnull %res.i.i, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool90.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.end92.i.i, label %if.end86.i.i.port_err.i.i_crit_edge

if.end86.i.i.port_err.i.i_crit_edge:              ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %port_err.i.i

if.end92.i.i:                                     ; preds = %if.end86.i.i
  %call93.i.i = call i32 @platform_device_add_data(ptr noundef nonnull %call83.i.i, ptr noundef nonnull %ppd.i.i, i32 noundef 64) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i.i)
  %tobool94.not.i.i = icmp eq i32 %call93.i.i, 0
  br i1 %tobool94.not.i.i, label %if.end96.i.i, label %if.end92.i.i.port_err.i.i_crit_edge

if.end92.i.i.port_err.i.i_crit_edge:              ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %port_err.i.i

if.end96.i.i:                                     ; preds = %if.end92.i.i
  %call97.i.i = call i32 @platform_device_add(ptr noundef nonnull %call83.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i.i)
  %tobool98.not.i.i = icmp eq i32 %call97.i.i, 0
  br i1 %tobool98.not.i.i, label %for.inc.i74, label %if.end96.i.i.port_err.i.i_crit_edge

if.end96.i.i.port_err.i.i_crit_edge:              ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %port_err.i.i

port_err.i.i:                                     ; preds = %if.end96.i.i.port_err.i.i_crit_edge, %if.end92.i.i.port_err.i.i_crit_edge, %if.end86.i.i.port_err.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call89.i.i, %if.end86.i.i.port_err.i.i_crit_edge ], [ %call93.i.i, %if.end92.i.i.port_err.i.i_crit_edge ], [ %call97.i.i, %if.end96.i.i.port_err.i.i_crit_edge ]
  call void @platform_device_put(ptr noundef nonnull %call83.i.i) #18
  br label %if.then13.i

if.then13.i:                                      ; preds = %port_err.i.i, %if.end82.i.i.if.then13.i_crit_edge, %if.end24.i.i.if.then13.i_crit_edge, %do.end22.i.i, %do.end13.i.i, %do.end5.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %ret.0.i.i, %port_err.i.i ], [ -22, %do.end22.i.i ], [ -22, %do.end13.i.i ], [ -22, %do.end5.i.i ], [ -22, %do.end.i.i ], [ %call25.i.i, %if.end24.i.i.if.then13.i_crit_edge ], [ -12, %if.end82.i.i.if.then13.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ppd.i.i) #18
  call void @of_node_put(ptr noundef nonnull %pnp.044.i) #18
  %77 = load ptr, ptr @port_platdev, align 4
  call void @platform_device_del(ptr noundef %77) #18
  store ptr null, ptr @port_platdev, align 4
  %78 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  call void @platform_device_del(ptr noundef %78) #18
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %79 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  call void @platform_device_del(ptr noundef %79) #18
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  br label %err_put_clk

for.inc.i74:                                      ; preds = %if.end96.i.i
  %arrayidx101.i.i = getelementptr [3 x ptr], ptr @port_platdev, i32 0, i32 %dev_num.0156.lcssa.i.i
  %80 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call83.i.i, ptr %arrayidx101.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ppd.i.i) #18
  %call15.i = call ptr @of_get_next_available_child(ptr noundef nonnull %30, ptr noundef nonnull %pnp.044.i) #18
  %cmp.not.i = icmp eq ptr %call15.i, null
  br i1 %cmp.not.i, label %for.inc.i74.if.end30_crit_edge, label %for.inc.i74.for.body.i_crit_edge

for.inc.i74.for.body.i_crit_edge:                 ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i74.if.end30_crit_edge:                   ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.end30:                                         ; preds = %for.inc.i74.if.end30_crit_edge, %if.end9.i.if.end30_crit_edge, %if.end26.if.end30_crit_edge
  %platform_data.i75 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %81 = ptrtoint ptr %platform_data.i75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %platform_data.i75, align 8
  %cmp33.not = icmp eq ptr %82, null
  br i1 %cmp33.not, label %if.end30.cond.end_crit_edge, label %land.lhs.true

if.end30.cond.end_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %tx_csum_limit = getelementptr inbounds %struct.mv643xx_eth_shared_platform_data, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %tx_csum_limit to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_csum_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool34.not = icmp eq i32 %84, 0
  %spec.select = select i1 %tobool34.not, i32 9216, i32 %84
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %if.end30.cond.end_crit_edge
  %cond = phi i32 [ 9216, %if.end30.cond.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %tx_csum_limit36 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 4
  %85 = ptrtoint ptr %tx_csum_limit36 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond, ptr %tx_csum_limit36, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !200
  call void @arm_heavy_mb() #18
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %87, i32 1052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 2) #18, !srcloc !193
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %89, i32 1052
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !202
  %91 = lshr i32 %90, 1
  %.lobit.i = and i32 %91, 1
  %92 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.lobit.i, ptr %92, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !203
  call void @arm_heavy_mb() #18
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %95, i32 1256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16777216) #18, !srcloc !193
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %97, i32 1256
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !204
  %99 = and i32 %98, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool21.not.i = icmp eq i32 %99, 0
  br i1 %tobool21.not.i, label %do.body24.i, label %if.then22.i

if.then22.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %tx_bw_control.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 3
  %100 = ptrtoint ptr %tx_bw_control.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %tx_bw_control.i, align 4
  br label %cleanup

do.body24.i:                                      ; preds = %cond.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !205
  call void @arm_heavy_mb() #18
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %102, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 117440512) #18, !srcloc !193
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %104, i32 1104
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !206
  %106 = and i32 %105, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool38.not.i = icmp eq i32 %106, 0
  %tx_bw_control42.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %call.i, i32 0, i32 3
  br i1 %tobool38.not.i, label %if.else41.i, label %if.then39.i

if.then39.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #20
  %107 = ptrtoint ptr %tx_bw_control42.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %tx_bw_control42.i, align 4
  br label %cleanup

if.else41.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #20
  %108 = ptrtoint ptr %tx_bw_control42.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %tx_bw_control42.i, align 4
  br label %cleanup

err_put_clk:                                      ; preds = %if.then13.i, %if.end.i73.err_put_clk_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %if.then13.i ], [ -12, %if.end.i73.err_put_clk_crit_edge ]
  %109 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk, align 4
  %cmp.i76 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %err_put_clk.cleanup_crit_edge, label %if.then39

err_put_clk.cleanup_crit_edge:                    ; preds = %err_put_clk
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then39:                                        ; preds = %err_put_clk
  call void @__sanitizer_cov_trace_pc() #20
  call void @clk_disable(ptr noundef %110) #18
  call void @clk_unprepare(ptr noundef %110) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %err_put_clk.cleanup_crit_edge, %if.else41.i, %if.then39.i, %if.then22.i, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %retval.0.i, %if.then39 ], [ %retval.0.i, %err_put_clk.cleanup_crit_edge ], [ 0, %if.then22.i ], [ 0, %if.then39.i ], [ 0, %if.else41.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_shared_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @port_platdev, align 4
  tail call void @platform_device_del(ptr noundef %2) #18
  store ptr null, ptr @port_platdev, align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  tail call void @platform_device_del(ptr noundef %3) #18
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 1), align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  tail call void @platform_device_del(ptr noundef %4) #18
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @port_platdev, i32 0, i32 2), align 4
  %clk = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_disable(ptr noundef %6) #18
  tail call void @clk_unprepare(ptr noundef %6) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %iface.i.i = alloca i32, align 4
  %phy_id.i = alloca [64 x i8], align 1
  %iface.i = alloca i32, align 4
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #21
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1872, i32 noundef 8, i32 noundef 8) #18
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %parent = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call10, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %driver_data.i.i251 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i251 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i251, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 1024
  %port_number = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %port_number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_number, align 4
  %shl = shl i32 %14, 10
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 %shl
  %base21 = getelementptr i8, ptr %call10, i32 2308
  %15 = ptrtoint ptr %base21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr20, ptr %base21, align 4
  %16 = load i32, ptr %port_number, align 4
  %port_num = getelementptr i8, ptr %call10, i32 2312
  %17 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %port_num, align 8
  %dev23 = getelementptr i8, ptr %call10, i32 2316
  %18 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %dev23, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call25 = tail call i32 @of_device_is_compatible(ptr noundef %20, ptr noundef nonnull @.str.34) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end12.if.end29_crit_edge, label %if.then27

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base21, align 4
  %add.ptr.i252 = getelementptr i8, ptr %22, i32 76
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %24 = and i32 %23, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %25 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base21, align 4
  %add.ptr.i254 = getelementptr i8, ptr %26, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %24) #18, !srcloc !193
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end12.if.end29_crit_edge
  %t_clk = getelementptr i8, ptr %call10, i32 4172
  %27 = ptrtoint ptr %t_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 133000000, ptr %t_clk, align 4
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #18
  %clk = getelementptr i8, ptr %call10, i32 4168
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end29
  %call.i = tail call i32 @clk_prepare(ptr noundef %call31) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then34.clk_prepare_enable.exit_crit_edge

if.then34.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then34
  %call1.i = tail call i32 @clk_enable(ptr noundef %call31) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %call31) #18
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then34.clk_prepare_enable.exit_crit_edge
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 8
  br label %if.end49.sink.split

if.else:                                          ; preds = %if.end29
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %clk41 = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %clk41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk41, align 4
  %cmp.i255 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.else.if.end49_crit_edge, label %if.else.if.end49.sink.split_crit_edge

if.else.if.end49.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49.sink.split

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.end49.sink.split:                              ; preds = %if.else.if.end49.sink.split_crit_edge, %clk_prepare_enable.exit
  %.sink = phi ptr [ %30, %clk_prepare_enable.exit ], [ %34, %if.else.if.end49.sink.split_crit_edge ]
  %call46 = tail call i32 @clk_get_rate(ptr noundef %.sink) #18
  %35 = ptrtoint ptr %t_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call46, ptr %t_clk, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %if.else.if.end49_crit_edge
  %36 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev23, align 4
  %mac_addr.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mac_addr.i, align 4
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end49.if.else.i_crit_edge

if.end49.if.else.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end49
  %add.ptr.i.i.i = getelementptr %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %42 to i32
  %or.i.i.i = or i32 %39, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.else.i_crit_edge, label %if.then.i

is_valid_ether_addr.exit.i.if.else.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.then.i:                                        ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dev_addr_mod(ptr noundef %37, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #18
  br label %if.end.i257

if.else.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.else.i_crit_edge, %if.end49.if.else.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #18
  %43 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %44 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %47 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %48 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base21, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %49, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69.i) #18, !srcloc !201
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %52 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base21, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #18, !srcloc !201
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %shr.i.i = lshr i32 %51, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i.i, ptr %addr.i, align 1
  %shr2.i.i = lshr i32 %51, 16
  %conv4.i.i = trunc i32 %shr2.i.i to i8
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv4.i.i, ptr %43, align 1
  %shr6.i.i = lshr i32 %51, 8
  %conv8.i.i = trunc i32 %shr6.i.i to i8
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv8.i.i, ptr %44, align 1
  %conv11.i.i = trunc i32 %51 to i8
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv11.i.i, ptr %45, align 1
  %shr13.i.i = lshr i32 %55, 8
  %conv15.i.i = trunc i32 %shr13.i.i to i8
  %60 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv15.i.i, ptr %46, align 1
  %conv18.i.i = trunc i32 %55 to i8
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv18.i.i, ptr %47, align 1
  call void @dev_addr_mod(ptr noundef %37, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #18
  br label %if.end.i257

if.end.i257:                                      ; preds = %if.else.i, %if.then.i
  %rx_ring_size.i = getelementptr i8, ptr %call10, i32 2840
  %62 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 128, ptr %rx_ring_size.i, align 8
  %rx_queue_size.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %rx_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i256 = icmp eq i32 %64, 0
  %spec.store.select.i = select i1 %tobool.not.i256, i32 128, i32 %64
  %65 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.store.select.i, ptr %rx_ring_size.i, align 8
  %rx_sram_addr.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %rx_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_sram_addr.i, align 4
  %rx_desc_sram_addr.i = getelementptr i8, ptr %call10, i32 2844
  %68 = ptrtoint ptr %rx_desc_sram_addr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rx_desc_sram_addr.i, align 4
  %rx_sram_size.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %rx_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_sram_size.i, align 4
  %rx_desc_sram_size.i = getelementptr i8, ptr %call10, i32 2848
  %71 = ptrtoint ptr %rx_desc_sram_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rx_desc_sram_size.i, align 8
  %rx_queue_count.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 7
  %72 = ptrtoint ptr %rx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool10.not.i = icmp eq i32 %73, 0
  %..i = select i1 %tobool10.not.i, i32 1, i32 %73
  %rxq_count.i = getelementptr i8, ptr %call10, i32 2852
  %74 = ptrtoint ptr %rxq_count.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %..i, ptr %rxq_count.i, align 4
  %tx_queue_size.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 10
  %75 = ptrtoint ptr %tx_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool11.not.i = icmp eq i32 %76, 0
  %tx_ring_size.0.i = select i1 %tobool11.not.i, i32 512, i32 %76
  %77 = call i32 @llvm.umax.i32(i32 %tx_ring_size.0.i, i32 434) #18
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 4096) #18
  %tx_ring_size25.i = getelementptr i8, ptr %call10, i32 3192
  %79 = ptrtoint ptr %tx_ring_size25.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %tx_ring_size25.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %tx_ring_size.0.i)
  %cmp27.not.i = icmp eq i32 %78, %tx_ring_size.0.i
  br i1 %cmp27.not.i, label %if.end.i257.set_params.exit_crit_edge, label %if.then28.i

if.end.i257.set_params.exit_crit_edge:            ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #20
  br label %set_params.exit

if.then28.i:                                      ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.44, i32 noundef %78, i32 noundef %tx_ring_size.0.i) #21
  br label %set_params.exit

set_params.exit:                                  ; preds = %if.then28.i, %if.end.i257.set_params.exit_crit_edge
  %tx_sram_addr.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 13
  %80 = ptrtoint ptr %tx_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_sram_addr.i, align 4
  %tx_desc_sram_addr.i = getelementptr i8, ptr %call10, i32 3196
  %82 = ptrtoint ptr %tx_desc_sram_addr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %tx_desc_sram_addr.i, align 4
  %tx_sram_size.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 14
  %83 = ptrtoint ptr %tx_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_sram_size.i, align 4
  %tx_desc_sram_size.i = getelementptr i8, ptr %call10, i32 3200
  %85 = ptrtoint ptr %tx_desc_sram_size.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tx_desc_sram_size.i, align 8
  %tx_queue_count.i = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 8
  %86 = ptrtoint ptr %tx_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool31.not.i = icmp eq i32 %87, 0
  %.36.i = select i1 %tobool31.not.i, i32 1, i32 %87
  %txq_count.i = getelementptr i8, ptr %call10, i32 3204
  %88 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.36.i, ptr %txq_count.i, align 4
  %call50 = call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %call10, i32 noundef %.36.i) #18
  %89 = ptrtoint ptr %rxq_count.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rxq_count.i, align 4
  %call51 = call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %call10, i32 noundef %90) #18
  %phy_node = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 3
  %91 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_node, align 4
  %tobool52.not = icmp eq ptr %92, null
  br i1 %tobool52.not, label %if.else62, label %if.then53

if.then53:                                        ; preds = %set_params.exit
  %93 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev23, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 133, i32 1
  %95 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iface.i) #18
  %97 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %iface.i, align 4, !annotation !199
  %of_node.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 27
  %98 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i259 = icmp eq ptr %99, null
  br i1 %tobool.not.i259, label %if.then53.if.then7.i_crit_edge, label %if.end.i261

if.then53.if.then7.i_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i261:                                      ; preds = %if.then53
  %call.i260 = call i32 @of_get_phy_mode(ptr noundef nonnull %99, ptr noundef nonnull %iface.i) #18
  %100 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %of_node.i, align 8
  %tobool5.not.i = icmp ne ptr %101, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool6.not.i = icmp eq i32 %call.i260, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i261.get_phy_mode.exit_crit_edge, label %if.end.i261.if.then7.i_crit_edge

if.end.i261.if.then7.i_crit_edge:                 ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i

if.end.i261.get_phy_mode.exit_crit_edge:          ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_phy_mode.exit

if.then7.i:                                       ; preds = %if.end.i261.if.then7.i_crit_edge, %if.then53.if.then7.i_crit_edge
  %102 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %iface.i, align 4
  br label %get_phy_mode.exit

get_phy_mode.exit:                                ; preds = %if.then7.i, %if.end.i261.get_phy_mode.exit_crit_edge
  %103 = ptrtoint ptr %iface.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iface.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iface.i) #18
  %call57 = call ptr @of_phy_connect(ptr noundef %94, ptr noundef nonnull %92, ptr noundef nonnull @mv643xx_eth_adjust_link, i32 noundef 0, i32 noundef %104) #18
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %get_phy_mode.exit.out_crit_edge, label %if.else60

get_phy_mode.exit.out_crit_edge:                  ; preds = %get_phy_mode.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.else60:                                        ; preds = %get_phy_mode.exit
  call void @__sanitizer_cov_trace_pc() #20
  %addr = getelementptr inbounds %struct.mdio_device, ptr %call57, i32 0, i32 6
  %105 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr, align 8
  %107 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port_num, align 8
  %mul.i = mul i32 %108, 5
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #18, !srcloc !201
  %114 = call i32 @llvm.bswap.i32(i32 %113) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %shl.i = shl i32 31, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %114, %neg.i
  %and1.i = and i32 %106, 31
  %shl2.i = shl i32 %and1.i, %mul.i
  %or.i = or i32 %and.i, %shl2.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  call void @arm_heavy_mb() #18
  %115 = call i32 @llvm.bswap.i32(i32 %or.i) #18
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %115) #18, !srcloc !193
  br label %if.end79

if.else62:                                        ; preds = %set_params.exit
  %phy_addr = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 2
  %120 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %121)
  %cmp63.not = icmp eq i32 %121, 255
  br i1 %cmp63.not, label %if.else62.if.end79_crit_edge, label %if.then64

if.else62.if.end79_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then64:                                        ; preds = %if.else62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_id.i) #18
  %122 = call ptr @memset(ptr %phy_id.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i262 = icmp eq i32 %121, 0
  br i1 %cmp.i262, label %if.then.i264, label %if.then64.if.end.i265_crit_edge

if.then64.if.end.i265_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i265

if.then.i264:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #18, !srcloc !201
  %128 = call i32 @llvm.bswap.i32(i32 %127) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %129 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port_num, align 8
  %mul.i.i = mul i32 %130, 5
  %shr.i.i263 = lshr i32 %128, %mul.i.i
  %and.i.i = and i32 %shr.i.i263, 31
  br label %if.end.i265

if.end.i265:                                      ; preds = %if.then.i264, %if.then64.if.end.i265_crit_edge
  %start.0.in.i = phi i32 [ %and.i.i, %if.then.i264 ], [ %121, %if.then64.if.end.i265_crit_edge ]
  %num.0.i = phi i32 [ 32, %if.then.i264 ], [ 1, %if.then64.if.end.i265_crit_edge ]
  br label %for.body.i

for.cond.i:                                       ; preds = %get_phy_mode.exit.i
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num.0.i
  br i1 %exitcond.not.i, label %if.end73, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i265
  %i.031.i = phi i32 [ 0, %if.end.i265 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %add.i = add i32 %i.031.i, %start.0.in.i
  %and4.i = and i32 %add.i, 31
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_id.i, i32 noundef 64, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %and4.i) #18
  %131 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev23, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 133, i32 1
  %133 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iface.i.i) #18
  %135 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %iface.i.i, align 4, !annotation !199
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 27
  %136 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then7.i.i_crit_edge, label %if.end.i.i

for.body.i.if.then7.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i = call i32 @of_get_phy_mode(ptr noundef nonnull %137, ptr noundef nonnull %iface.i.i) #18
  %138 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %of_node.i.i, align 8
  %tobool5.not.i.i = icmp ne ptr %139, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  %or.cond.i.i = select i1 %tobool5.not.i.i, i1 %tobool6.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.get_phy_mode.exit.i_crit_edge, label %if.end.i.i.if.then7.i.i_crit_edge

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7.i.i

if.end.i.i.get_phy_mode.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_phy_mode.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i.if.then7.i.i_crit_edge, %for.body.i.if.then7.i.i_crit_edge
  %140 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 3, ptr %iface.i.i, align 4
  br label %get_phy_mode.exit.i

get_phy_mode.exit.i:                              ; preds = %if.then7.i.i, %if.end.i.i.get_phy_mode.exit.i_crit_edge
  %141 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %iface.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iface.i.i) #18
  %call8.i = call ptr @phy_connect(ptr noundef %132, ptr noundef nonnull %phy_id.i, ptr noundef nonnull @mv643xx_eth_adjust_link, i32 noundef %142) #18
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.cond.i, label %if.else70

if.else70:                                        ; preds = %get_phy_mode.exit.i
  %143 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port_num, align 8
  %mul.i26.i = mul i32 %144, 5
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #18, !srcloc !201
  %150 = call i32 @llvm.bswap.i32(i32 %149) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %shl.i.i = shl i32 31, %mul.i26.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i27.i = and i32 %150, %neg.i.i
  %shl2.i.i = shl i32 %and4.i, %mul.i26.i
  %or.i.i = or i32 %and.i27.i, %shl2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  call void @arm_heavy_mb() #18
  %151 = call i32 @llvm.bswap.i32(i32 %or.i.i) #18
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %151) #18, !srcloc !193
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_id.i) #18
  %speed = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 5
  %156 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %speed, align 4
  %158 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev23, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 145
  %160 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %phydev.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp.i268 = icmp eq i32 %157, 0
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  br i1 %cmp.i268, label %if.then.i270, label %if.else.i271

if.then.i270:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set.i = or i16 %bf.load.i, 8
  %163 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %bf.set.i, ptr %autoneg.i, align 8
  %advertising.i = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 17
  %supported.i = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 16
  %164 = call ptr @memcpy(ptr %advertising.i, ptr %supported.i, i32 12)
  %165 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %advertising.i, align 4
  %or.i.i.i269 = or i32 %166, 64
  store i32 %or.i.i.i269, ptr %advertising.i, align 4
  br label %phy_init.exit

if.else.i271:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #20
  %duplex = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 6
  %167 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %duplex, align 4
  %bf.clear9.i = and i16 %bf.load.i, -9
  %169 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %bf.clear9.i, ptr %autoneg.i, align 8
  %advertising11.i = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 17
  %170 = call ptr @memset(ptr %advertising11.i, i32 0, i32 12)
  br label %phy_init.exit

phy_init.exit:                                    ; preds = %if.else.i271, %if.then.i270
  %duplex.sink.i = phi i32 [ 0, %if.then.i270 ], [ %168, %if.else.i271 ]
  %171 = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %157, ptr %171, align 8
  %173 = getelementptr inbounds %struct.phy_device, ptr %161, i32 0, i32 9
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %duplex.sink.i, ptr %173, align 4
  %call.i272 = call i32 @phy_start_aneg(ptr noundef %161) #18
  br label %if.end79

if.end73:                                         ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_id.i) #18
  %175 = ptrtoint ptr %call8.i to i32
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values)
  switch i32 %175, label %out.fold.split [
    i32 -19, label %if.end73.out_crit_edge
    i32 0, label %if.end73.if.end79_crit_edge
  ]

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end79:                                         ; preds = %if.end73.if.end79_crit_edge, %phy_init.exit, %if.else62.if.end79_crit_edge, %if.else60
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 44
  %177 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @mv643xx_eth_ethtool_ops, ptr %ethtool_ops, align 16
  %speed80 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 5
  %178 = ptrtoint ptr %speed80 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %speed80, align 4
  %duplex81 = getelementptr inbounds %struct.mv643xx_eth_platform_data, ptr %1, i32 0, i32 6
  %180 = ptrtoint ptr %duplex81 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %duplex81, align 4
  %182 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev23, align 4
  %184 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base21, align 4
  %add.ptr.i.i = getelementptr i8, ptr %185, i32 60
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %187 = call i32 @llvm.bswap.i32(i32 %186) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i275 = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i275)
  %tobool.not.i276 = icmp eq i32 %and.i275, 0
  br i1 %tobool.not.i276, label %if.end79.if.end.i279_crit_edge, label %if.then.i277

if.end79.if.end.i279_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i279

if.then.i277:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  %and2.i = and i32 %187, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %188 = call i32 @llvm.bswap.i32(i32 %and2.i) #18
  %189 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base21, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %190, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %188) #18, !srcloc !193
  br label %if.end.i279

if.end.i279:                                      ; preds = %if.then.i277, %if.end79.if.end.i279_crit_edge
  %phydev.i278 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 145
  %191 = ptrtoint ptr %phydev.i278 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %phydev.i278, align 16
  %tobool3.not.i = icmp eq ptr %192, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i279.init_pscr.exit_crit_edge

if.end.i279.init_pscr.exit_crit_edge:             ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #20
  br label %init_pscr.exit

if.then4.i:                                       ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %179)
  %switch.selectcmp.i = icmp eq i32 %179, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 17441292, i32 664076
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %179)
  %switch.selectcmp32.i = icmp eq i32 %179, 1000
  %switch.select33.i = select i1 %switch.selectcmp32.i, i32 9052684, i32 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp14.i = icmp eq i32 %181, 1
  %or16.i = or i32 %switch.select33.i, 2097152
  %spec.select.i = select i1 %cmp14.i, i32 %or16.i, i32 %switch.select33.i
  br label %init_pscr.exit

init_pscr.exit:                                   ; preds = %if.then4.i, %if.end.i279.init_pscr.exit_crit_edge
  %pscr.1.i = phi i32 [ 655872, %if.end.i279.init_pscr.exit_crit_edge ], [ %spec.select.i, %if.then4.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %193 = call i32 @llvm.bswap.i32(i32 %pscr.1.i) #18
  %194 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base21, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %195, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %193) #18, !srcloc !193
  br label %for.body.i285

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %init_pscr.exit
  %i.09.i = phi i32 [ 0, %init_pscr.exit ], [ %add.i283, %for.body.i285.for.body.i285_crit_edge ]
  %196 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %port_num, align 8
  %shl.i.i281 = shl i32 %197, 7
  %add.i.i = add nuw nsw i32 %i.09.i, 4096
  %add1.i.i = add i32 %add.i.i, %shl.i.i281
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %add.ptr.i.i.i282 = getelementptr i8, ptr %201, i32 %add1.i.i
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i282) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %add.i283 = add nuw nsw i32 %i.09.i, 4
  %cmp.i284 = icmp ult i32 %i.09.i, 124
  br i1 %cmp.i284, label %for.body.i285.for.body.i285_crit_edge, label %mib_counters_clear.exit

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i285

mib_counters_clear.exit:                          ; preds = %for.body.i285
  %203 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base21, align 4
  %add.ptr.i.i287 = getelementptr i8, ptr %204, i32 132
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i287) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %206 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base21, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %207, i32 136
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #18, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %mib_counters_timer = getelementptr i8, ptr %call10, i32 2320
  call void @init_timer_key(ptr noundef %mib_counters_timer, ptr noundef nonnull @mib_counters_timer_wrapper, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @mv643xx_eth_probe.__key) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %209 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %209, 3000
  %expires = getelementptr i8, ptr %call10, i32 2328
  %210 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add, ptr %expires, align 8
  %mib_counters_lock = getelementptr i8, ptr %call10, i32 2368
  call void @__raw_spin_lock_init(ptr noundef %mib_counters_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @mv643xx_eth_probe.__key.36, i16 noundef signext 3) #18
  %tx_timeout_task = getelementptr i8, ptr %call10, i32 2552
  call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #18
  %211 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -64, ptr %tx_timeout_task, align 8
  %lockdep_map = getelementptr i8, ptr %call10, i32 2568
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.39, ptr noundef nonnull @mv643xx_eth_probe.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry94 = getelementptr i8, ptr %call10, i32 2556
  %212 = ptrtoint ptr %entry94 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %entry94, ptr %entry94, align 4
  %prev.i = getelementptr i8, ptr %call10, i32 2560
  %213 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %entry94, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call10, i32 2564
  %214 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @tx_timeout_task, ptr %func, align 4
  %napi = getelementptr i8, ptr %call10, i32 2600
  call void @netif_napi_add(ptr noundef %call10, ptr noundef %napi, ptr noundef nonnull @mv643xx_eth_poll, i32 noundef 64) #18
  %rx_oom = getelementptr i8, ptr %call10, i32 2856
  call void @init_timer_key(ptr noundef %rx_oom, ptr noundef nonnull @oom_timer_wrapper, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @mv643xx_eth_probe.__key.40) #18
  %call101 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #18
  %tobool103.not = icmp eq ptr %call101, null
  br i1 %tobool103.not, label %do.body108, label %do.end116, !prof !211

do.body108:                                       ; preds = %mib_counters_clear.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3193, 0\0A.popsection", ""() #18, !srcloc !212
  unreachable

do.end116:                                        ; preds = %mib_counters_clear.exit
  %215 = ptrtoint ptr %call101 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %call101, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 64
  %217 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %irq, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 16
  %218 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @mv643xx_eth_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 115
  %219 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 200, ptr %watchdog_timeo, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 5
  %220 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %base_addr, align 32
  %features = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 23
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 26
  %221 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 65539, ptr %vlan_features, align 8
  %222 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 1099511693315, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 24
  %223 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 1099511693315, ptr %hw_features, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 15
  %224 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %priv_flags, align 16
  %or120 = or i64 %225, 4096
  store i64 %or120, ptr %priv_flags, align 16
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 138
  %226 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store volatile i16 100, ptr %gso_max_segs.i, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 30
  %227 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 31
  %228 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 9500, ptr %max_mtu, align 4
  %229 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %add.ptr.i, align 8
  %win_protect = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %win_protect to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %win_protect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool122.not = icmp eq i32 %232, 0
  br i1 %tobool122.not, label %do.end116.if.end129_crit_edge, label %if.then123

do.end116.if.end129_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end129

if.then123:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #20
  %233 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %port_num, align 8
  %shl125 = shl i32 %234, 4
  %add126 = add i32 %shl125, 660
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  call void @arm_heavy_mb() #18
  %235 = call i32 @llvm.bswap.i32(i32 %232) #18
  %236 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %add.ptr.i, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %add.ptr.i288 = getelementptr i8, ptr %239, i32 %add126
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 %235) #18, !srcloc !193
  br label %if.end129

if.end129:                                        ; preds = %if.then123, %do.end116.if.end129_crit_edge
  call void @netif_carrier_off(ptr noundef %call10) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %240 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base21, align 4
  %add.ptr.i290 = getelementptr i8, ptr %241, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 67141632) #18, !srcloc !193
  %242 = ptrtoint ptr %t_clk to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %t_clk, align 4
  %conv1.i = zext i32 %243 to i64
  %mul.i291 = mul nuw nsw i64 %conv1.i, 250
  %add.i292 = add nuw nsw i64 %mul.i291, 31999999
  %244 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i292) #22, !srcloc !213
  %245 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i292, i64 %244, i32 0) #22, !srcloc !214
  %asmresult10.i.i = extractvalue { i64, i32 } %245, 0
  %div163302.i = lshr i64 %asmresult10.i.i, 24
  %246 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %base21, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %247, i32 28
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i294) #18, !srcloc !201
  %249 = call i32 @llvm.bswap.i32(i32 %248) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %250 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %add.ptr.i, align 8
  %extended_rx_coal_limit.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %extended_rx_coal_limit.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %extended_rx_coal_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool186.not.i = icmp eq i32 %253, 0
  br i1 %tobool186.not.i, label %if.else203.i, label %if.then187.i

if.then187.i:                                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627775, i64 %asmresult10.i.i)
  %cmp188.i = icmp ugt i64 %asmresult10.i.i, 1099511627775
  %extract.t304.i = trunc i64 %div163302.i to i32
  %spec.select.i295 = select i1 %cmp188.i, i32 65535, i32 %extract.t304.i
  %and192.i = and i32 %249, -37748609
  %254 = shl i32 %spec.select.i295, 10
  %255 = and i32 %254, 33554432
  %conv197.i = or i32 %255, %and192.i
  %256 = shl i32 %spec.select.i295, 7
  %257 = and i32 %256, 4194176
  %conv202.i = or i32 %conv197.i, %257
  br label %set_rx_coal.exit

if.else203.i:                                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906943, i64 %asmresult10.i.i)
  %cmp204.i = icmp ugt i64 %asmresult10.i.i, 274877906943
  %extract.t.i = trunc i64 %div163302.i to i32
  %and208.i = and i32 %249, -4194049
  %extract.t.op.i = shl i32 %extract.t.i, 8
  %extract.t.op.op.i = and i32 %extract.t.op.i, 4194048
  %258 = select i1 %cmp204.i, i32 4194048, i32 %extract.t.op.op.i
  %conv213.i = or i32 %258, %and208.i
  br label %set_rx_coal.exit

set_rx_coal.exit:                                 ; preds = %if.else203.i, %if.then187.i
  %val.0.i = phi i32 [ %conv202.i, %if.then187.i ], [ %conv213.i, %if.else203.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %259 = call i32 @llvm.bswap.i32(i32 %val.0.i) #18
  %260 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base21, align 4
  %add.ptr.i307.i = getelementptr i8, ptr %261, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307.i, i32 %259) #18, !srcloc !193
  %262 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 31999999) #22, !srcloc !213
  %263 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 31999999, i64 %262, i32 0) #22, !srcloc !214
  %asmresult10.i.i298 = extractvalue { i64, i32 } %263, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906943, i64 %asmresult10.i.i298)
  %cmp185.i = icmp ugt i64 %asmresult10.i.i298, 274877906943
  %sh.diff.i = lshr i64 %asmresult10.i.i298, 20
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %extract.t.op.i299 = and i32 %tr.sh.diff.i, -16
  %conv190.i = select i1 %cmp185.i, i32 262128, i32 %extract.t.op.i299
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %264 = call i32 @llvm.bswap.i32(i32 %conv190.i) #18
  %265 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %base21, align 4
  %add.ptr.i.i301 = getelementptr i8, ptr %266, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i301, i32 %264) #18, !srcloc !193
  %call130 = call i32 @register_netdev(ptr noundef %call10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %set_rx_coal.exit.out_crit_edge

set_rx_coal.exit.out_crit_edge:                   ; preds = %set_rx_coal.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end133:                                        ; preds = %set_rx_coal.exit
  %267 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %port_num, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 86
  %269 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %call10, ptr noundef nonnull @.str.42, i32 noundef %268, ptr noundef %270) #21
  %271 = ptrtoint ptr %tx_desc_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %tx_desc_sram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp135 = icmp sgt i32 %272, 0
  br i1 %cmp135, label %if.then136, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %call10, ptr noundef nonnull @.str.43) #21
  br label %cleanup

out.fold.split:                                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

out:                                              ; preds = %out.fold.split, %set_rx_coal.exit.out_crit_edge, %if.end73.out_crit_edge, %get_phy_mode.exit.out_crit_edge
  %err.1 = phi i32 [ %call130, %set_rx_coal.exit.out_crit_edge ], [ -517, %if.end73.out_crit_edge ], [ %175, %out.fold.split ], [ -517, %get_phy_mode.exit.out_crit_edge ]
  %273 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %clk, align 8
  %cmp.i302 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %out.if.end142_crit_edge, label %if.then140

out.if.end142_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end142

if.then140:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  call void @clk_disable(ptr noundef %274) #18
  call void @clk_unprepare(ptr noundef %274) #18
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %out.if.end142_crit_edge
  call void @free_netdev(ptr noundef %call10) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then136, %if.end133.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end7 ], [ %err.1, %if.end142 ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.then136 ], [ 0, %if.end133.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_disconnect(ptr noundef nonnull %5) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_timeout_task = getelementptr inbounds %struct.mv643xx_eth_private, ptr %1, i32 0, i32 7
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #18
  %clk = getelementptr inbounds %struct.mv643xx_eth_private, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_disable(ptr noundef %7) #18
  tail call void @clk_unprepare(ptr noundef %7) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  tail call void @free_netdev(ptr noundef %9) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #18, !srcloc !193
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @port_reset(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_adjust_link(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #18, !srcloc !201
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %autoneg, align 8
  %7 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i32 %3, -8207
  br label %out_write

if.end:                                           ; preds = %entry
  %or = or i32 %3, 8206
  %speed = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %9, label %if.else [
    i32 1000, label %if.then4
    i32 100, label %if.then12
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %or6 = or i32 %3, 10493966
  br label %out_write

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %and8 = and i32 %or, -25165825
  %or13 = or i32 %and8, 16777216
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %and14 = and i32 %or, -25165825
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %pscr.0 = phi i32 [ %or13, %if.then12 ], [ %and14, %if.else ]
  %duplex = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp eq i32 %12, 1
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %or19 = or i32 %pscr.0, 2097152
  br label %out_write

if.else20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %and21 = and i32 %pscr.0, -2097153
  br label %out_write

out_write:                                        ; preds = %if.else20, %if.then18, %if.then4, %if.then
  %pscr.1 = phi i32 [ %and, %if.then ], [ %or6, %if.then4 ], [ %or19, %if.then18 ], [ %and21, %if.else20 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %13 = tail call i32 @llvm.bswap.i32(i32 %pscr.1) #18
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %13) #18, !srcloc !193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mib_counters_timer_wrapper(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  tail call fastcc void @mib_counters_update(ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 3000
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_timeout_task(ptr nocapture noundef readonly %ugly) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %ugly, i32 -236
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ugly, i32 -248
  tail call void @netif_tx_stop_all_queues(ptr noundef %1) #18
  tail call fastcc void @port_reset(ptr noundef %add.ptr)
  tail call fastcc void @port_start(ptr noundef %add.ptr)
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, 0
  br i1 %cmp4.not.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #18
  %inc.i = add nuw i32 %i.05.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -296
  %oom = getelementptr i8, ptr %napi, i32 228
  %0 = ptrtoint ptr %oom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !215

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %oom to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %oom, align 4
  %rx_oom = getelementptr i8, ptr %napi, i32 256
  %call = tail call i32 @del_timer(ptr noundef %rx_oom) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work_link = getelementptr i8, ptr %napi, i32 229
  %dev1.i = getelementptr i8, ptr %napi, i32 -284
  %base.i.i = getelementptr i8, ptr %napi, i32 -292
  %txq_count.i = getelementptr i8, ptr %napi, i32 604
  %txq4.i = getelementptr i8, ptr %napi, i32 608
  %work_tx = getelementptr i8, ptr %napi, i32 230
  %work_tx_end = getelementptr i8, ptr %napi, i32 231
  %work_rx = getelementptr i8, ptr %napi, i32 232
  %work_rx_refill = getelementptr i8, ptr %napi, i32 233
  %rxq = getelementptr i8, ptr %napi, i32 304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp206 = icmp sgt i32 %budget, 0
  br i1 %cmp206, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %work_done.0207 = phi i32 [ %work_done.2, %cleanup.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %work_link to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %work_link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %while.body
  %5 = ptrtoint ptr %work_link to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %work_link, align 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then5
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then3.i, label %if.then.i.handle_link_event.exit_crit_edge

if.then.i.handle_link_event.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %handle_link_event.exit

if.then3.i:                                       ; preds = %if.then.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.59) #21
  tail call void @netif_carrier_off(ptr noundef %7) #18
  %15 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp43.i = icmp sgt i32 %16, 0
  br i1 %cmp43.i, label %if.then3.i.for.body.i_crit_edge, label %if.then3.i.handle_link_event.exit_crit_edge

if.then3.i.handle_link_event.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %handle_link_event.exit

if.then3.i.for.body.i_crit_edge:                  ; preds = %if.then3.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then3.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then3.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %i.044.i
  %tx_ring_size.i = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %i.044.i, i32 1
  %17 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_ring_size.i, align 4
  %call5.i = tail call fastcc i32 @txq_reclaim(ptr noundef %add.ptr.i, i32 noundef %18, i32 noundef 1) #18
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  %.neg.i.i.i = mul i32 %20, -120
  %idx.neg.i.i.i = add i32 %.neg.i.i.i, -904
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i.i.i
  %tx_desc_dma.i.i = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %i.044.i, i32 11
  %21 = ptrtoint ptr %tx_desc_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_desc_dma.i.i, align 4
  %tx_curr_desc.i.i = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %i.044.i, i32 3
  %23 = ptrtoint ptr %tx_curr_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_curr_desc.i.i, align 4
  %mul.i.i = shl i32 %24, 4
  %add.i.i = add i32 %mul.i.i, %22
  %shl.i.i = shl i32 %20, 2
  %add1.i.i = add i32 %shl.i.i, 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %25 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #18
  %base.i.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %27, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %25) #18, !srcloc !193
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %28 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txq_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.handle_link_event.exit_crit_edge

for.body.i.handle_link_event.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %handle_link_event.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end6.i:                                        ; preds = %if.then5
  %and7.i = and i32 %11, 48
  %30 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and7.i, label %sw.default.i [
    i32 0, label %if.end6.i.sw.epilog.i_crit_edge
    i32 32, label %sw.bb8.i
    i32 16, label %sw.bb9.i
  ]

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb9.i, %sw.bb8.i, %if.end6.i.sw.epilog.i_crit_edge
  %speed.0.i = phi i32 [ -1, %sw.default.i ], [ 1000, %sw.bb9.i ], [ 100, %sw.bb8.i ], [ 10, %if.end6.i.sw.epilog.i_crit_edge ]
  %and10.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %and12.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %cond16.i = select i1 %tobool11.not.i, ptr @.str.62, ptr @.str.61
  %cond18.i = select i1 %tobool13.not.i, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.60, i32 noundef %speed.0.i, ptr noundef nonnull %cond16.i, ptr noundef nonnull %cond18.i) #21
  %state.i41.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %31 = ptrtoint ptr %state.i41.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i41.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i42.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i42.i, label %sw.epilog.i.handle_link_event.exit_crit_edge, label %if.then20.i

sw.epilog.i.handle_link_event.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %handle_link_event.exit

if.then20.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_carrier_on(ptr noundef %7) #18
  br label %handle_link_event.exit

handle_link_event.exit:                           ; preds = %if.then20.i, %sw.epilog.i.handle_link_event.exit_crit_edge, %for.body.i.handle_link_event.exit_crit_edge, %if.then3.i.handle_link_event.exit_crit_edge, %if.then.i.handle_link_event.exit_crit_edge
  %inc = add i32 %work_done.0207, 1
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %34 = ptrtoint ptr %work_tx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %work_tx, align 2
  %36 = ptrtoint ptr %work_tx_end to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %work_tx_end, align 1
  %or161 = or i8 %37, %35
  %38 = ptrtoint ptr %work_rx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %work_rx, align 8
  %or10162 = or i8 %or161, %39
  %40 = ptrtoint ptr %oom to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool13.not = icmp eq i8 %41, 0
  br i1 %tobool13.not, label %if.then22, label %if.end7.if.end27_crit_edge, !prof !215

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %work_rx_refill to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %work_rx_refill, align 1
  %or25163 = or i8 %43, %or10162
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end7.if.end27_crit_edge
  %queue_mask.0 = phi i8 [ %or25163, %if.then22 ], [ %or10162, %if.end7.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %queue_mask.0)
  %tobool28.not = icmp eq i8 %queue_mask.0, 0
  br i1 %tobool28.not, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = tail call fastcc i32 @mv643xx_eth_collect_events(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.while.end_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then29.while.end_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end34:                                         ; preds = %if.end27
  %conv35 = zext i8 %queue_mask.0 to i32
  %44 = tail call i32 @llvm.ctlz.i32(i32 %conv35, i1 true) #18, !range !216
  %sub = xor i32 %44, 31
  %shl = shl nuw i32 1, %sub
  %sub38 = sub i32 %budget, %work_done.0207
  %45 = tail call i32 @llvm.smin.i32(i32 %sub38, i32 16)
  %conv44 = zext i8 %37 to i32
  %and = and i32 %shl, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end34
  %add.ptr48 = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %sub
  %46 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr48, align 4
  %.neg.i.i = mul i32 %47, -120
  %idx.neg.i.i = add i32 %.neg.i.i, -904
  %add.ptr.i.i164 = getelementptr i8, ptr %add.ptr48, i32 %idx.neg.i.i
  %dev.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i164, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %52 = tail call i32 @llvm.read_register.i32(metadata !182) #18
  %and.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i, align 4
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %51, i32 %47, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #18
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %51, i32 %47, i32 11
  %56 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %xmit_lock_owner.i.i, align 4
  %base.i.i165 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i164, i32 0, i32 1
  %57 = ptrtoint ptr %base.i.i165 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i165, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %58, i32 72
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #18, !srcloc !201
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %61 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr48, align 4
  %shl.i = shl nuw i32 1, %62
  %and.i166 = and i32 %shl.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp eq i32 %and.i166, 0
  br i1 %tobool.not.i167, label %if.end.i, label %if.then47.txq_kick.exit_crit_edge

if.then47.txq_kick.exit_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_kick.exit

if.end.i:                                         ; preds = %if.then47
  %shl6.i = shl i32 %62, 2
  %add.i = add i32 %shl6.i, 704
  %63 = ptrtoint ptr %base.i.i165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i165, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %64, i32 %add.i
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #18, !srcloc !201
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %tx_desc_dma.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr48, i32 0, i32 11
  %67 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_desc_dma.i, align 4
  %tx_curr_desc.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr48, i32 0, i32 3
  %69 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_curr_desc.i, align 4
  %mul.i = shl i32 %70, 4
  %add8.i = add i32 %mul.i, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add8.i)
  %cmp.not.i = icmp eq i32 %66, %add8.i
  br i1 %cmp.not.i, label %if.end.i.txq_kick.exit_crit_edge, label %if.then9.i

if.end.i.txq_kick.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_kick.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %71 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr48, align 4
  %.neg.i.i.i168 = mul i32 %72, -120
  %idx.neg.i.i.i169 = add i32 %.neg.i.i.i168, -904
  %add.ptr.i.i.i170 = getelementptr i8, ptr %add.ptr48, i32 %idx.neg.i.i.i169
  %shl.i.i171 = shl nuw i32 1, %72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %73 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i171) #18
  %base.i.i.i172 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i.i170, i32 0, i32 1
  %74 = ptrtoint ptr %base.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i.i172, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %75, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %73) #18, !srcloc !193
  br label %txq_kick.exit

txq_kick.exit:                                    ; preds = %if.then9.i, %if.end.i.txq_kick.exit_crit_edge, %if.then47.txq_kick.exit_crit_edge
  %76 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #18
  %77 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr48, align 4
  %shl12.i = shl nuw i32 1, %78
  %work_tx_end.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i164, i32 0, i32 13
  %79 = ptrtoint ptr %work_tx_end.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %work_tx_end.i, align 1
  %81 = trunc i32 %shl12.i to i8
  %82 = xor i8 %81, -1
  %conv14.i = and i8 %80, %82
  store i8 %conv14.i, ptr %work_tx_end.i, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %conv50 = zext i8 %35 to i32
  %and52 = and i32 %shl, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else62, label %if.then54

if.then54:                                        ; preds = %if.else
  %add.ptr57 = getelementptr %struct.tx_queue, ptr %txq4.i, i32 %sub
  %call58 = tail call fastcc i32 @txq_reclaim(ptr noundef %add.ptr57, i32 noundef %45, i32 noundef 0)
  %add = add i32 %call58, %work_done.0207
  %83 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr57, align 4
  %.neg.i.i173 = mul i32 %84, -120
  %idx.neg.i.i174 = add i32 %.neg.i.i173, -904
  %add.ptr.i.i175 = getelementptr i8, ptr %add.ptr57, i32 %idx.neg.i.i174
  %dev.i176 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i175, i32 0, i32 3
  %85 = ptrtoint ptr %dev.i176 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i176, align 4
  %_tx.i.i177 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 103
  %87 = ptrtoint ptr %_tx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_tx.i.i177, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %88, i32 %84
  %state.i.i178 = getelementptr %struct.netdev_queue, ptr %88, i32 %84, i32 13
  %89 = ptrtoint ptr %state.i.i178 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %state.i.i178, align 4
  %and1.i.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then54.cleanup_crit_edge, label %if.then.i184

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i184:                                     ; preds = %if.then54
  %91 = tail call i32 @llvm.read_register.i32(metadata !182) #18
  %and.i.i179 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i179 to ptr
  %cpu.i180 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i180 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i180, align 4
  %_xmit_lock.i.i181 = getelementptr %struct.netdev_queue, ptr %88, i32 %84, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i181) #18
  %xmit_lock_owner.i.i182 = getelementptr %struct.netdev_queue, ptr %88, i32 %84, i32 11
  %95 = ptrtoint ptr %xmit_lock_owner.i.i182 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %94, ptr %xmit_lock_owner.i.i182, align 4
  %tx_desc_count.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr57, i32 0, i32 2
  %96 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_desc_count.i, align 4
  %tx_wake_threshold.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr57, i32 0, i32 6
  %98 = ptrtoint ptr %tx_wake_threshold.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_wake_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.not.i183 = icmp sgt i32 %97, %99
  br i1 %cmp.not.i183, label %if.then.i184.if.end.i185_crit_edge, label %if.then4.i

if.then.i184.if.end.i185_crit_edge:               ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i185

if.then4.i:                                       ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #18
  br label %if.end.i185

if.end.i185:                                      ; preds = %if.then4.i, %if.then.i184.if.end.i185_crit_edge
  %100 = ptrtoint ptr %xmit_lock_owner.i.i182 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i182, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i181) #18
  br label %cleanup

if.else62:                                        ; preds = %if.else
  %conv64 = zext i8 %39 to i32
  %and66 = and i32 %shl, %conv64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else73, label %if.then68

if.then68:                                        ; preds = %if.else62
  %add.ptr70 = getelementptr %struct.rx_queue, ptr %rxq, i32 %sub
  %101 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr70, align 4
  %.neg.i.i186 = mul i32 %102, -36
  %idx.neg.i.i187 = add i32 %.neg.i.i186, -600
  %add.ptr.i.i188 = getelementptr i8, ptr %add.ptr70, i32 %idx.neg.i.i187
  %dev.i189 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i188, i32 0, i32 3
  %103 = ptrtoint ptr %dev.i189 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i189, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 36
  %rx_desc_count.i = getelementptr inbounds %struct.rx_queue, ptr %add.ptr70, i32 0, i32 2
  %rx_desc_area.i = getelementptr inbounds %struct.rx_queue, ptr %add.ptr70, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub38)
  %cmp115.i = icmp sgt i32 %sub38, 0
  br i1 %cmp115.i, label %land.rhs.lr.ph.i, label %if.then68.while.end.i_crit_edge

if.then68.while.end.i_crit_edge:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.then68
  %rx_curr_desc.i = getelementptr inbounds %struct.rx_queue, ptr %add.ptr70, i32 0, i32 3
  %rx_skb.i = getelementptr inbounds %struct.rx_queue, ptr %add.ptr70, i32 0, i32 8
  %rx_ring_size.i = getelementptr inbounds %struct.rx_queue, ptr %add.ptr70, i32 0, i32 1
  %work_rx_refill.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i188, i32 0, i32 15
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 36, i32 6
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 36, i32 4
  %napi.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i188, i32 0, i32 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %rx.0116.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc18.i, %cleanup.i.land.rhs.i_crit_edge ]
  %105 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_desc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i190 = icmp eq i32 %106, 0
  br i1 %tobool.not.i190, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %107 = ptrtoint ptr %rx_desc_area.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx_desc_area.i, align 4
  %109 = ptrtoint ptr %rx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_curr_desc.i, align 4
  %cmd_sts2.i = getelementptr %struct.rx_desc, ptr %108, i32 %110, i32 2
  %111 = ptrtoint ptr %cmd_sts2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cmd_sts2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %tobool3.not.i = icmp sgt i32 %112, -1
  br i1 %tobool3.not.i, label %if.end.i195, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

if.end.i195:                                      ; preds = %while.body.i
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %108, i32 %110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !217
  %113 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_skb.i, align 4
  %115 = ptrtoint ptr %rx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_curr_desc.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %114, i32 %116
  %117 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx5.i, align 4
  store ptr null, ptr %arrayidx5.i, align 4
  %119 = load i32, ptr %rx_curr_desc.i, align 4
  %inc.i191 = add i32 %119, 1
  %120 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i191, i32 %121)
  %cmp11.i = icmp eq i32 %inc.i191, %121
  %spec.store.select.i = select i1 %cmp11.i, i32 0, i32 %inc.i191
  %122 = ptrtoint ptr %rx_curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.store.select.i, ptr %rx_curr_desc.i, align 4
  %123 = ptrtoint ptr %dev.i189 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i189, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 133, i32 1
  %125 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %parent.i, align 8
  %buf_ptr.i = getelementptr %struct.rx_desc, ptr %108, i32 %110, i32 4
  %127 = ptrtoint ptr %buf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_ptr.i, align 4
  %buf_size.i = getelementptr %struct.rx_desc, ptr %108, i32 %110, i32 1
  %129 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %buf_size.i, align 2
  %conv.i = zext i16 %130 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %126, i32 noundef %128, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #18
  %131 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_desc_count.i, align 4
  %dec.i = add i32 %132, -1
  store i32 %dec.i, ptr %rx_desc_count.i, align 4
  %inc18.i = add nuw nsw i32 %rx.0116.i, 1
  %133 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %add.ptr70, align 4
  %shl.i192 = shl nuw i32 1, %134
  %135 = ptrtoint ptr %work_rx_refill.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %work_rx_refill.i, align 1
  %137 = trunc i32 %shl.i192 to i8
  %conv20.i = or i8 %136, %137
  store i8 %conv20.i, ptr %work_rx_refill.i, align 1
  %138 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx.i, align 4
  %140 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %stats1.i, align 4
  %inc22.i = add i32 %141, 1
  store i32 %inc22.i, ptr %stats1.i, align 4
  %conv23.i = zext i16 %139 to i32
  %sub.i193 = add nsw i32 %conv23.i, -2
  %142 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_bytes.i, align 4
  %add.i194 = add i32 %sub.i193, %143
  store i32 %add.i194, ptr %rx_bytes.i, align 4
  %and24.i = and i32 %112, 201326593
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and24.i)
  %cmp25.not.i = icmp eq i32 %and24.i, 201326592
  br i1 %cmp25.not.i, label %if.end28.i, label %err.i

if.end28.i:                                       ; preds = %if.end.i195
  %sub31.i = add nsw i32 %conv23.i, -6
  %call32.i = tail call ptr @skb_put(ptr noundef %118, i32 noundef %sub31.i) #18
  %and33.i = and i32 %112, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end28.i.if.end36.i_crit_edge, label %if.then35.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 15
  %144 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end28.i.if.end36.i_crit_edge
  %145 = ptrtoint ptr %dev.i189 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i189, align 4
  %call38.i = tail call zeroext i16 @eth_type_trans(ptr noundef %118, ptr noundef %146) #18
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 15, i32 0, i32 18
  %147 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %call38.i, ptr %protocol.i, align 8
  %call39.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef %118) #18
  br label %cleanup.i

err.i:                                            ; preds = %if.end.i195
  %148 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_dropped.i, align 4
  %inc40.i = add i32 %149, 1
  store i32 %inc40.i, ptr %rx_dropped.i, align 4
  %and41.i = and i32 %112, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and41.i)
  %cmp42.not.i = icmp eq i32 %and41.i, 201326592
  br i1 %cmp42.not.i, label %err.i.if.end50.i_crit_edge, label %if.then44.i

err.i.if.end50.i_crit_edge:                       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50.i

if.then44.i:                                      ; preds = %err.i
  %call45.i = tail call i32 @net_ratelimit() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then44.i.if.end50.i_crit_edge, label %if.then47.i

if.then44.i.if.end50.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #20
  %150 = ptrtoint ptr %dev.i189 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i189, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %151, ptr noundef nonnull @.str.65) #21
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.then44.i.if.end50.i_crit_edge, %err.i.if.end50.i_crit_edge
  %and51.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end55.i_crit_edge, label %if.then53.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #20
  %152 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rx_errors.i, align 4
  %inc54.i = add i32 %153, 1
  store i32 %inc54.i, ptr %rx_errors.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end55.i_crit_edge
  tail call void @consume_skb(ptr noundef %118) #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end55.i, %if.end36.i
  %exitcond.not.i = icmp eq i32 %inc18.i, %45
  br i1 %exitcond.not.i, label %cleanup.i.rxq_process.exit_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i

cleanup.i.rxq_process.exit_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_process.exit

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.then68.while.end.i_crit_edge
  %rx.0.lcssa.i = phi i32 [ 0, %if.then68.while.end.i_crit_edge ], [ %rx.0116.i, %land.rhs.i.while.end.i_crit_edge ], [ %rx.0116.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rx.0.lcssa.i, i32 %45)
  %cmp59.i = icmp slt i32 %rx.0.lcssa.i, %45
  br i1 %cmp59.i, label %if.then61.i, label %while.end.i.rxq_process.exit_crit_edge

while.end.i.rxq_process.exit_crit_edge:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_process.exit

if.then61.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %154 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %add.ptr70, align 4
  %shl63.i = shl nuw i32 1, %155
  %work_rx.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i188, i32 0, i32 14
  %156 = ptrtoint ptr %work_rx.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %work_rx.i, align 8
  %158 = trunc i32 %shl63.i to i8
  %159 = xor i8 %158, -1
  %conv66.i = and i8 %157, %159
  store i8 %conv66.i, ptr %work_rx.i, align 8
  br label %rxq_process.exit

rxq_process.exit:                                 ; preds = %if.then61.i, %while.end.i.rxq_process.exit_crit_edge, %cleanup.i.rxq_process.exit_crit_edge
  %rx.0.lcssa121.i = phi i32 [ %rx.0.lcssa.i, %if.then61.i ], [ %rx.0.lcssa.i, %while.end.i.rxq_process.exit_crit_edge ], [ %45, %cleanup.i.rxq_process.exit_crit_edge ]
  %add72 = add i32 %rx.0.lcssa121.i, %work_done.0207
  br label %cleanup

if.else73:                                        ; preds = %if.else62
  br i1 %tobool13.not, label %land.lhs.true, label %if.else73.do.body_crit_edge

if.else73.do.body_crit_edge:                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.lhs.true:                                    ; preds = %if.else73
  %160 = ptrtoint ptr %work_rx_refill to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %work_rx_refill, align 1
  %conv77 = zext i8 %161 to i32
  %and79 = and i32 %shl, %conv77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %land.lhs.true.do.body_crit_edge, label %if.then81

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr84 = getelementptr %struct.rx_queue, ptr %rxq, i32 %sub
  %call85 = tail call fastcc i32 @rxq_refill(ptr noundef %add.ptr84, i32 noundef %45)
  %add86 = add i32 %call85, %work_done.0207
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.else73.do.body_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2296, 0\0A.popsection", ""() #18, !srcloc !218
  unreachable

cleanup:                                          ; preds = %if.then81, %rxq_process.exit, %if.end.i185, %if.then54.cleanup_crit_edge, %txq_kick.exit, %if.then29.cleanup_crit_edge, %handle_link_event.exit
  %work_done.2 = phi i32 [ %inc, %handle_link_event.exit ], [ %work_done.0207, %if.then29.cleanup_crit_edge ], [ %work_done.0207, %txq_kick.exit ], [ %add72, %rxq_process.exit ], [ %add86, %if.then81 ], [ %add, %if.then54.cleanup_crit_edge ], [ %add, %if.end.i185 ]
  %cmp = icmp slt i32 %work_done.2, %budget
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then29.while.end_crit_edge, %if.end.while.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %work_done.2, %cleanup.while.end_crit_edge ], [ %work_done.0207, %if.then29.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa, i32 %budget)
  %cmp97 = icmp slt i32 %work_done.0.lcssa, %budget
  br i1 %cmp97, label %if.then99, label %while.end.if.end108_crit_edge

while.end.if.end108_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.then99:                                        ; preds = %while.end
  %162 = ptrtoint ptr %oom to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool101.not = icmp eq i8 %163, 0
  br i1 %tobool101.not, label %if.then99.if.end106_crit_edge, label %if.then102

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #20
  %rx_oom103 = getelementptr i8, ptr %napi, i32 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %164 = load volatile i32, ptr @jiffies, align 128
  %add104 = add i32 %164, 10
  %call105 = tail call i32 @mod_timer(ptr noundef %rx_oom103, i32 noundef %add104) #18
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.then99.if.end106_crit_edge
  %call107 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #18
  %int_mask = getelementptr i8, ptr %napi, i32 224
  %165 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #18
  %168 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %169, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %167) #18, !srcloc !193
  br label %if.end108

if.end108:                                        ; preds = %if.end106, %while.end.if.end108_crit_edge
  ret i32 %work_done.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oom_timer_wrapper(ptr noundef %t) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %napi = getelementptr i8, ptr %t, i32 -256
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @mv643xx_eth_driver_name, i32 noundef 32) #18
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @mv643xx_eth_driver_version, i32 noundef 32) #18
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.47, i32 noundef 32) #18
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.48, i32 noundef 32) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_wol(ptr nocapture noundef readonly %dev, ptr noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %3, ptr noundef %wol) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_wol(ptr noundef %dev, ptr noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %1, ptr noundef %wol) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp = icmp eq i32 %call, -95
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.49) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %extended_rx_coal_limit.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %extended_rx_coal_limit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extended_rx_coal_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %and3.i = lshr i32 %3, 8
  %shr4.i = and i32 %and3.i, 16383
  %and.i = lshr i32 %3, 10
  %shr.i = and i32 %and.i, 32768
  %and1.i = lshr i32 %3, 7
  %shr2.i = and i32 %and1.i, 32767
  %or.i = or i32 %shr.i, %shr2.i
  %storemerge.in.i = select i1 %tobool.not.i, i32 %shr4.i, i32 %or.i
  %storemerge.i = zext i32 %storemerge.in.i to i64
  %mul.i = mul nuw nsw i64 %storemerge.i, 64000000
  %t_clk.i = getelementptr i8, ptr %dev, i32 4172
  %8 = ptrtoint ptr %t_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_clk.i, align 4
  %div285.i = lshr i32 %9, 1
  %conv6.i = zext i32 %div285.i to i64
  %add.i = add nuw nsw i64 %mul.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp184.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp184.i, label %if.then188.i, label %if.else194.i, !prof !215

if.then188.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv189.i = trunc i64 %add.i to i32
  %div192.i = udiv i32 %conv189.i, %9
  br label %get_rx_coal.exit

if.else194.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %add.i) #22, !srcloc !219
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t311.i = trunc i64 %asmresult1.i.i to i32
  br label %get_rx_coal.exit

get_rx_coal.exit:                                 ; preds = %if.else194.i, %if.then188.i
  %temp.0.off0.i = phi i32 [ %div192.i, %if.then188.i ], [ %extract.t311.i, %if.else194.i ]
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %11 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %temp.0.off0.i, ptr %rx_coalesce_usecs, align 4
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %13, i32 116
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #18, !srcloc !201
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i7 = lshr i32 %15, 4
  %shr.i8 = and i32 %and.i7, 16383
  %conv.i = zext i32 %shr.i8 to i64
  %mul.i9 = mul nuw nsw i64 %conv.i, 64000000
  %16 = ptrtoint ptr %t_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_clk.i, align 4
  %div272.i = lshr i32 %17, 1
  %conv1.i = zext i32 %div272.i to i64
  %add.i11 = add nuw nsw i64 %mul.i9, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i11)
  %cmp174.i = icmp ult i64 %add.i11, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !215

if.then178.i:                                     ; preds = %get_rx_coal.exit
  call void @__sanitizer_cov_trace_pc() #20
  %conv179.i = trunc i64 %add.i11 to i32
  %div182.i = udiv i32 %conv179.i, %17
  br label %get_tx_coal.exit

if.else184.i:                                     ; preds = %get_rx_coal.exit
  call void @__sanitizer_cov_trace_pc() #20
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %add.i11) #22, !srcloc !219
  %asmresult1.i.i49 = extractvalue { i64, i64 } %18, 1
  %extract.t298.i = trunc i64 %asmresult1.i.i49 to i32
  br label %get_tx_coal.exit

get_tx_coal.exit:                                 ; preds = %if.else184.i, %if.then178.i
  %temp.0.off0.i50 = phi i32 [ %div182.i, %if.then178.i ], [ %extract.t298.i, %if.else184.i ]
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %19 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %temp.0.off0.i50, ptr %tx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv.i = zext i32 %1 to i64
  %t_clk.i = getelementptr i8, ptr %dev, i32 4172
  %2 = ptrtoint ptr %t_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_clk.i, align 4
  %conv1.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %add.i = add nuw i64 %mul.i, 31999999
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i) #22, !srcloc !213
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i, i64 %4, i32 0) #22, !srcloc !214
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %div163302.i = lshr i64 %asmresult10.i.i, 24
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %extended_rx_coal_limit.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %extended_rx_coal_limit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extended_rx_coal_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool186.not.i = icmp eq i32 %13, 0
  br i1 %tobool186.not.i, label %if.else203.i, label %if.then187.i

if.then187.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 1099511627775, i64 %asmresult10.i.i)
  %cmp188.i = icmp ugt i64 %asmresult10.i.i, 1099511627775
  %extract.t304.i = trunc i64 %div163302.i to i32
  %spec.select.i = select i1 %cmp188.i, i32 65535, i32 %extract.t304.i
  %and192.i = and i32 %9, -37748609
  %14 = shl i32 %spec.select.i, 10
  %15 = and i32 %14, 33554432
  %conv197.i = or i32 %15, %and192.i
  %16 = shl i32 %spec.select.i, 7
  %17 = and i32 %16, 4194176
  %conv202.i = or i32 %conv197.i, %17
  br label %set_rx_coal.exit

if.else203.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906943, i64 %asmresult10.i.i)
  %cmp204.i = icmp ugt i64 %asmresult10.i.i, 274877906943
  %extract.t.i = trunc i64 %div163302.i to i32
  %and208.i = and i32 %9, -4194049
  %extract.t.op.i = shl i32 %extract.t.i, 8
  %extract.t.op.op.i = and i32 %extract.t.op.i, 4194048
  %18 = select i1 %cmp204.i, i32 4194048, i32 %extract.t.op.op.i
  %conv213.i = or i32 %18, %and208.i
  br label %set_rx_coal.exit

set_rx_coal.exit:                                 ; preds = %if.else203.i, %if.then187.i
  %val.0.i = phi i32 [ %conv202.i, %if.then187.i ], [ %conv213.i, %if.else203.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #18
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i307.i = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307.i, i32 %19) #18, !srcloc !193
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %22 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv.i3 = zext i32 %23 to i64
  %24 = ptrtoint ptr %t_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_clk.i, align 4
  %conv1.i5 = zext i32 %25 to i64
  %mul.i6 = mul nuw i64 %conv1.i5, %conv.i3
  %add.i7 = add nuw i64 %mul.i6, 31999999
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i7) #22, !srcloc !213
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i7, i64 %26, i32 0) #22, !srcloc !214
  %asmresult10.i.i8 = extractvalue { i64, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906943, i64 %asmresult10.i.i8)
  %cmp185.i = icmp ugt i64 %asmresult10.i.i8, 274877906943
  %sh.diff.i = lshr i64 %asmresult10.i.i8, 20
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %extract.t.op.i9 = and i32 %tr.sh.diff.i, -16
  %conv190.i = select i1 %cmp185.i, i32 262128, i32 %extract.t.op.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv190.i) #18
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %30, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 %28) #18, !srcloc !193
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv643xx_eth_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %er, ptr nocapture noundef readnone %kernel_er, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4096, ptr %tx_max_pending, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_size, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pending, align 4
  %tx_ring_size = getelementptr i8, ptr %dev, i32 3192
  %5 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_ring_size, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %er, ptr nocapture noundef readnone %kernel_er, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pending, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 4096)
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2840
  %7 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_ring_size, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %er, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 434)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 4096)
  %tx_ring_size = getelementptr i8, ptr %dev, i32 3192
  %12 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tx_ring_size, align 8
  %13 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp16.not = icmp eq i32 %11, %14
  br i1 %cmp16.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %11, i32 noundef %14) #21
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @mv643xx_eth_stop(ptr noundef %dev)
  %call24 = tail call i32 @mv643xx_eth_open(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.cleanup_crit_edge, label %if.then26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then26 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [40 x %struct.mv643xx_eth_stats], ptr @mv643xx_eth_stats, i32 0, i32 %i.05
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 32)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %txq_count.i = getelementptr i8, ptr %dev, i32 3204
  %0 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.i = icmp sgt i32 %1, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.mv643xx_eth_get_stats.exit_crit_edge

entry.mv643xx_eth_get_stats.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_stats.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %txq2.i = getelementptr i8, ptr %dev, i32 3208
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tx_dropped.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %tx_bytes.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %tx_packets.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %tx_packets3.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 14
  %2 = ptrtoint ptr %tx_packets3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_packets3.i, align 4
  %add.i = add i32 %3, %tx_packets.024.i
  %tx_bytes4.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 15
  %4 = ptrtoint ptr %tx_bytes4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes4.i, align 4
  %add5.i = add i32 %5, %tx_bytes.025.i
  %tx_dropped6.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 16
  %6 = ptrtoint ptr %tx_dropped6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped6.i, align 4
  %add7.i = add i32 %7, %tx_dropped.026.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.mv643xx_eth_get_stats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.mv643xx_eth_get_stats.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_stats.exit

mv643xx_eth_get_stats.exit:                       ; preds = %for.body.i.mv643xx_eth_get_stats.exit_crit_edge, %entry.mv643xx_eth_get_stats.exit_crit_edge
  %tx_packets.0.lcssa.i = phi i32 [ 0, %entry.mv643xx_eth_get_stats.exit_crit_edge ], [ %add.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_bytes.0.lcssa.i = phi i32 [ 0, %entry.mv643xx_eth_get_stats.exit_crit_edge ], [ %add5.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_dropped.0.lcssa.i = phi i32 [ 0, %entry.mv643xx_eth_get_stats.exit_crit_edge ], [ %add7.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_packets8.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tx_packets.0.lcssa.i, ptr %tx_packets8.i, align 4
  %tx_bytes9.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %tx_bytes9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tx_bytes.0.lcssa.i, ptr %tx_bytes9.i, align 4
  %tx_dropped10.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %10 = ptrtoint ptr %tx_dropped10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %tx_dropped.0.lcssa.i, ptr %tx_dropped10.i, align 4
  tail call fastcc void @mib_counters_update(ptr noundef %add.ptr.i)
  %dev3 = getelementptr i8, ptr %dev, i32 2316
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %mv643xx_eth_get_stats.exit
  %i.018 = phi i32 [ 0, %mv643xx_eth_get_stats.exit ], [ %inc, %cond.end.for.body_crit_edge ]
  %netdev_off = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %i.018, i32 2
  %11 = ptrtoint ptr %netdev_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %netdev_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp2 = icmp sgt i32 %12, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 %12
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %mp_off = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %i.018, i32 3
  %15 = ptrtoint ptr %mp_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mp_off, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i, i32 %16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %p.0 = phi ptr [ %add.ptr5, %if.then ], [ %add.ptr6, %if.else ]
  %sizeof_stat = getelementptr %struct.mv643xx_eth_stats, ptr @mv643xx_eth_stats, i32 %i.018, i32 1
  %17 = ptrtoint ptr %sizeof_stat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeof_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp7 = icmp eq i32 %18, 8
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %p.0 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %p.0, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p.0, align 4
  %conv = zext i32 %22 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %conv, %cond.false ]
  %arrayidx = getelementptr i64, ptr %data, i32 %i.018
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %cond, ptr %arrayidx, align 8
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv643xx_eth_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %. = select i1 %cmp, i32 40, i32 -95
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev1.i = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_ethtool_ksettings_get(ptr noundef %5, ptr noundef %cmd) #18
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %link_modes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_modes.i, align 4
  %and.i.i.i = and i32 %7, -17
  store i32 %and.i.i.i, ptr %link_modes.i, align 4
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %advertising.i, align 4
  %and.i.i1.i = and i32 %9, -17
  store i32 %and.i.i1.i, ptr %advertising.i, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i = and i32 %13, 48
  %14 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %if.else.mv643xx_eth_get_link_ksettings_phyless.exit_crit_edge
    i32 32, label %sw.bb1.i
    i32 16, label %sw.bb4.i
  ]

if.else.mv643xx_eth_get_link_ksettings_phyless.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_link_ksettings_phyless.exit

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_link_ksettings_phyless.exit

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_link_ksettings_phyless.exit

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_link_ksettings_phyless.exit

mv643xx_eth_get_link_ksettings_phyless.exit:      ; preds = %sw.default.i, %sw.bb4.i, %sw.bb1.i, %if.else.mv643xx_eth_get_link_ksettings_phyless.exit_crit_edge
  %.sink.i = phi i32 [ -1, %sw.default.i ], [ 1000, %sw.bb4.i ], [ 100, %sw.bb1.i ], [ 10, %if.else.mv643xx_eth_get_link_ksettings_phyless.exit_crit_edge ]
  %speed8.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %speed8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %speed8.i, align 4
  %16 = trunc i32 %13 to i8
  %17 = lshr i8 %16, 2
  %18 = and i8 %17, 1
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %duplex.i, align 4
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %port.i, align 1
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %21 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %phy_address.i, align 2
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %autoneg.i, align 1
  %link_modes.i6 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i6, i32 noundef 512) #18
  %advertising16.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising16.i, i32 noundef 512) #18
  br label %cleanup

cleanup:                                          ; preds = %mv643xx_eth_get_link_ksettings_phyless.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_link_ksettings(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %c = alloca %struct.ethtool_link_ksettings, align 4
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %c) #18
  %0 = call ptr @memcpy(ptr %c, ptr %cmd, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #18
  %1 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %advertising, align 4, !annotation !199
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %advertising1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %c, i32 0, i32 1, i32 1
  %call = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising1) #18
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %advertising, align 4
  %and = and i32 %5, -17
  store i32 %and, ptr %advertising, align 4
  call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising1, i32 noundef %and) #18
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %call6 = call i32 @phy_ethtool_ksettings_set(ptr noundef %7, ptr noundef nonnull %c) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %9, i32 60
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #18, !srcloc !201
  %11 = call i32 @llvm.bswap.i32(i32 %10) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  %15 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i = icmp eq i16 %15, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  %and.i = and i32 %11, -8207
  br label %mv643xx_eth_adjust_link.exit

if.end.i:                                         ; preds = %if.then8
  %or.i = or i32 %11, 8206
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %17, label %if.else.i [
    i32 1000, label %if.then4.i
    i32 100, label %if.then12.i
  ]

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %or6.i = or i32 %11, 10493966
  br label %mv643xx_eth_adjust_link.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %and8.i = and i32 %or.i, -25165825
  %or13.i = or i32 %and8.i, 16777216
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %and14.i = and i32 %or.i, -25165825
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then12.i
  %pscr.0.i = phi i32 [ %or13.i, %if.then12.i ], [ %and14.i, %if.else.i ]
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 9
  %19 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp17.i = icmp eq i32 %20, 1
  br i1 %cmp17.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %or19.i = or i32 %pscr.0.i, 2097152
  br label %mv643xx_eth_adjust_link.exit

if.else20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %and21.i = and i32 %pscr.0.i, -2097153
  br label %mv643xx_eth_adjust_link.exit

mv643xx_eth_adjust_link.exit:                     ; preds = %if.else20.i, %if.then18.i, %if.then4.i, %if.then.i
  %pscr.1.i = phi i32 [ %and.i, %if.then.i ], [ %or6.i, %if.then4.i ], [ %or19.i, %if.then18.i ], [ %and21.i, %if.else20.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %21 = call i32 @llvm.bswap.i32(i32 %pscr.1.i) #18
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %23, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %21) #18, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %mv643xx_eth_adjust_link.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %mv643xx_eth_adjust_link.exit ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %c) #18
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #18, !srcloc !193
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %napi = getelementptr i8, ptr %dev, i32 2600
  tail call void @napi_disable(ptr noundef %napi) #18
  %rx_oom = getelementptr i8, ptr %dev, i32 2856
  %call2 = tail call i32 @del_timer_sync(ptr noundef %rx_oom) #18
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_stop(ptr noundef nonnull %8) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %dev) #18
  tail call fastcc void @port_reset(ptr noundef %add.ptr.i)
  %txq_count.i = getelementptr i8, ptr %dev, i32 3204
  %11 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp23.i = icmp sgt i32 %12, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %if.end.mv643xx_eth_get_stats.exit_crit_edge

if.end.mv643xx_eth_get_stats.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %txq2.i = getelementptr i8, ptr %dev, i32 3208
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tx_dropped.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %tx_bytes.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %tx_packets.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %tx_packets3.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 14
  %13 = ptrtoint ptr %tx_packets3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_packets3.i, align 4
  %add.i = add i32 %14, %tx_packets.024.i
  %tx_bytes4.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 15
  %15 = ptrtoint ptr %tx_bytes4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_bytes4.i, align 4
  %add5.i = add i32 %16, %tx_bytes.025.i
  %tx_dropped6.i = getelementptr %struct.tx_queue, ptr %txq2.i, i32 %i.027.i, i32 16
  %17 = ptrtoint ptr %tx_dropped6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_dropped6.i, align 4
  %add7.i = add i32 %18, %tx_dropped.026.i
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.body.i.mv643xx_eth_get_stats.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.mv643xx_eth_get_stats.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_get_stats.exit

mv643xx_eth_get_stats.exit:                       ; preds = %for.body.i.mv643xx_eth_get_stats.exit_crit_edge, %if.end.mv643xx_eth_get_stats.exit_crit_edge
  %tx_packets.0.lcssa.i = phi i32 [ 0, %if.end.mv643xx_eth_get_stats.exit_crit_edge ], [ %add.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_bytes.0.lcssa.i = phi i32 [ 0, %if.end.mv643xx_eth_get_stats.exit_crit_edge ], [ %add5.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_dropped.0.lcssa.i = phi i32 [ 0, %if.end.mv643xx_eth_get_stats.exit_crit_edge ], [ %add7.i, %for.body.i.mv643xx_eth_get_stats.exit_crit_edge ]
  %tx_packets8.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %tx_packets8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tx_packets.0.lcssa.i, ptr %tx_packets8.i, align 4
  %tx_bytes9.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %20 = ptrtoint ptr %tx_bytes9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tx_bytes.0.lcssa.i, ptr %tx_bytes9.i, align 4
  %tx_dropped10.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %tx_dropped10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tx_dropped.0.lcssa.i, ptr %tx_dropped10.i, align 4
  tail call fastcc void @mib_counters_update(ptr noundef %add.ptr.i)
  %mib_counters_timer = getelementptr i8, ptr %dev, i32 2320
  %call6 = tail call i32 @del_timer_sync(ptr noundef %mib_counters_timer) #18
  %rxq_count = getelementptr i8, ptr %dev, i32 2852
  %22 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42 = icmp sgt i32 %23, 0
  br i1 %cmp42, label %for.body.lr.ph, label %mv643xx_eth_get_stats.exit.for.cond7.preheader_crit_edge

mv643xx_eth_get_stats.exit.for.cond7.preheader_crit_edge: ; preds = %mv643xx_eth_get_stats.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %mv643xx_eth_get_stats.exit
  %rxq = getelementptr i8, ptr %dev, i32 2904
  br label %for.body

for.cond7.preheader:                              ; preds = %for.body.for.cond7.preheader_crit_edge, %mv643xx_eth_get_stats.exit.for.cond7.preheader_crit_edge
  %24 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp844 = icmp sgt i32 %25, 0
  br i1 %cmp844, label %for.body9.lr.ph, label %for.cond7.preheader.for.end14_crit_edge

for.cond7.preheader.for.end14_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end14

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %txq = getelementptr i8, ptr %dev, i32 3208
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.rx_queue, ptr %rxq, i32 %i.043
  tail call fastcc void @rxq_deinit(ptr noundef %add.ptr)
  %inc = add nuw nsw i32 %i.043, 1
  %26 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rxq_count, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond7.preheader_crit_edge

for.body.for.cond7.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond7.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.145 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %add.ptr11 = getelementptr %struct.tx_queue, ptr %txq, i32 %i.145
  tail call fastcc void @txq_deinit(ptr noundef %add.ptr11)
  %inc13 = add nuw nsw i32 %i.145, 1
  %28 = ptrtoint ptr %txq_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txq_count.i, align 4
  %cmp8 = icmp slt i32 %inc13, %29
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end14_crit_edge

for.body9.for.end14_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end14

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body9

for.end14:                                        ; preds = %for.body9.for.end14_crit_edge, %for.cond7.preheader.for.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 0) #18, !srcloc !193
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @mv643xx_eth_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu.i, align 4
  %add1.i = add i32 %12, 43
  %and.i = and i32 %add1.i, -8
  %skb_size2.i = getelementptr i8, ptr %dev, i32 2836
  %13 = ptrtoint ptr %skb_size2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and.i, ptr %skb_size2.i, align 4
  %napi = getelementptr i8, ptr %dev, i32 2600
  tail call void @napi_enable(ptr noundef %napi) #18
  %int_mask = getelementptr i8, ptr %dev, i32 2824
  %14 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %int_mask, align 8
  %rxq_count = getelementptr i8, ptr %dev, i32 2852
  %15 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp209 = icmp sgt i32 %16, 0
  br i1 %cmp209, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %rxq1.i = getelementptr i8, ptr %dev, i32 2904
  %rx_ring_size.i = getelementptr i8, ptr %dev, i32 2840
  %rx_desc_sram_size.i = getelementptr i8, ptr %dev, i32 2848
  %rx_desc_sram_addr.i = getelementptr i8, ptr %dev, i32 2844
  %rx_desc_area.i = getelementptr i8, ptr %dev, i32 2924
  %rx_desc_dma.i = getelementptr i8, ptr %dev, i32 2928
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %i.0210 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %add.ptr.i106 = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210
  %17 = ptrtoint ptr %add.ptr.i106 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0210, ptr %add.ptr.i106, align 4
  %18 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_ring_size.i, align 8
  %rx_ring_size3.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 1
  %20 = ptrtoint ptr %rx_ring_size3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_ring_size3.i, align 4
  %rx_desc_count.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 2
  %21 = ptrtoint ptr %rx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rx_desc_count.i, align 4
  %rx_curr_desc.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 3
  %22 = ptrtoint ptr %rx_curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rx_curr_desc.i, align 4
  %rx_used_desc.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 4
  %23 = ptrtoint ptr %rx_used_desc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_used_desc.i, align 4
  %mul.i = shl i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0210)
  %cmp.i = icmp eq i32 %i.0210, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.if.else.i_crit_edge

for.body.if.else.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body
  %24 = ptrtoint ptr %rx_desc_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_desc_sram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %25)
  %cmp5.not.i = icmp sgt i32 %mul.i, %25
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %rx_desc_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_desc_sram_addr.i, align 4
  %call.i107 = tail call ptr @ioremap(i32 noundef %27, i32 noundef %25) #18
  %28 = ptrtoint ptr %rx_desc_area.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i107, ptr %rx_desc_area.i, align 4
  %29 = ptrtoint ptr %rx_desc_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_desc_sram_addr.i, align 4
  %31 = ptrtoint ptr %rx_desc_dma.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rx_desc_dma.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.if.else.i_crit_edge
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 133, i32 1
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  %rx_desc_dma9.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %35, i32 noundef %mul.i, ptr noundef %rx_desc_dma9.i, i32 noundef 3264, i32 noundef 0) #18
  %rx_desc_area11.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 5
  %36 = ptrtoint ptr %rx_desc_area11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %rx_desc_area11.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %rx_desc_area12.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 5
  %37 = ptrtoint ptr %rx_desc_area12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_desc_area12.i, align 4
  %cmp13.i = icmp eq ptr %38, null
  br i1 %cmp13.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.54, i32 noundef %mul.i) #21
  br label %rxq_init.exit

if.end16.i:                                       ; preds = %if.end.i
  %41 = call ptr @memset(ptr %38, i32 0, i32 %mul.i)
  %rx_desc_area_size.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 7
  %42 = ptrtoint ptr %rx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i, ptr %rx_desc_area_size.i, align 4
  %43 = ptrtoint ptr %rx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_ring_size3.i, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 4) #18
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !211

kcalloc.exit.thread.i:                            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  %rx_skb97.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 8
  %47 = ptrtoint ptr %rx_skb97.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rx_skb97.i, align 4
  br label %out_free.i

if.end7.i.i.i:                                    ; preds = %if.end16.i
  %48 = extractvalue { i32, i1 } %45, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #23
  %rx_skb.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 8
  %49 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call8.i.i.i, ptr %rx_skb.i, align 4
  %cmp21.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp21.i, label %if.end7.i.i.i.out_free.i_crit_edge, label %if.end23.i

if.end7.i.i.i.out_free.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_free.i

if.end23.i:                                       ; preds = %if.end7.i.i.i
  %50 = ptrtoint ptr %rx_desc_area12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_desc_area12.i, align 4
  %52 = ptrtoint ptr %rx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_ring_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp26103.i = icmp sgt i32 %53, 0
  br i1 %cmp26103.i, label %for.body.lr.ph.i, label %if.end23.i.if.end8_crit_edge

if.end23.i.if.end8_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %if.end23.i
  %rx_desc_dma31.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %54 = phi i32 [ %53, %for.body.lr.ph.i ], [ %59, %for.body.i.for.body.i_crit_edge ]
  %i.0104.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.0104.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %54)
  %cmp28.i = icmp eq i32 %add.i, %54
  %55 = ptrtoint ptr %rx_desc_dma31.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_desc_dma31.i, align 4
  %add.op.i = shl i32 %add.i, 4
  %mul32.i = select i1 %cmp28.i, i32 0, i32 %add.op.i
  %add33.i = add i32 %mul32.i, %56
  %next_desc_ptr.i = getelementptr %struct.rx_desc, ptr %51, i32 %i.0104.i, i32 3
  %57 = ptrtoint ptr %next_desc_ptr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add33.i, ptr %next_desc_ptr.i, align 4
  %58 = ptrtoint ptr %rx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_ring_size3.i, align 4
  %cmp26.i = icmp slt i32 %add.i, %59
  br i1 %cmp26.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end8_crit_edge

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

out_free.i:                                       ; preds = %if.end7.i.i.i.out_free.i_crit_edge, %kcalloc.exit.thread.i
  br i1 %cmp.i, label %land.lhs.true35.i, label %out_free.i.if.else40.i_crit_edge

out_free.i.if.else40.i_crit_edge:                 ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else40.i

land.lhs.true35.i:                                ; preds = %out_free.i
  %60 = ptrtoint ptr %rx_desc_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_desc_sram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %61)
  %cmp37.not.i = icmp sgt i32 %mul.i, %61
  br i1 %cmp37.not.i, label %land.lhs.true35.i.if.else40.i_crit_edge, label %rxq_init.exit.thread

land.lhs.true35.i.if.else40.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else40.i

rxq_init.exit.thread:                             ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #20
  %62 = ptrtoint ptr %rx_desc_area12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_desc_area12.i, align 4
  tail call void @iounmap(ptr noundef %63) #18
  br label %out

if.else40.i:                                      ; preds = %land.lhs.true35.i.if.else40.i_crit_edge, %out_free.i.if.else40.i_crit_edge
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  %parent43.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 133, i32 1
  %66 = ptrtoint ptr %parent43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent43.i, align 8
  %68 = ptrtoint ptr %rx_desc_area12.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_desc_area12.i, align 4
  %rx_desc_dma45.i = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %i.0210, i32 6
  %70 = ptrtoint ptr %rx_desc_dma45.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_desc_dma45.i, align 4
  tail call void @dma_free_attrs(ptr noundef %67, i32 noundef %mul.i, ptr noundef %69, i32 noundef %71, i32 noundef 0) #18
  br label %rxq_init.exit

rxq_init.exit:                                    ; preds = %if.else40.i, %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0210)
  %cmp6221.not = icmp eq i32 %i.0210, 0
  br i1 %cmp6221.not, label %rxq_init.exit.out_crit_edge, label %rxq_init.exit.while.body_crit_edge

rxq_init.exit.while.body_crit_edge:               ; preds = %rxq_init.exit
  br label %while.body

rxq_init.exit.out_crit_edge:                      ; preds = %rxq_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rxq_init.exit.while.body_crit_edge
  %dec222.in = phi i32 [ %dec222, %while.body.while.body_crit_edge ], [ %i.0210, %rxq_init.exit.while.body_crit_edge ]
  %dec222 = add nsw i32 %dec222.in, -1
  %add.ptr = getelementptr %struct.rx_queue, ptr %rxq1.i, i32 %dec222
  tail call fastcc void @rxq_deinit(ptr noundef %add.ptr)
  %cmp6 = icmp sgt i32 %dec222.in, 1
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.end8:                                          ; preds = %for.body.i.if.end8_crit_edge, %if.end23.i.if.end8_crit_edge
  %call12 = tail call fastcc i32 @rxq_refill(ptr noundef %add.ptr.i106, i32 noundef 2147483647)
  %shl = shl i32 4, %i.0210
  %72 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %int_mask, align 8
  %or = or i32 %73, %shl
  store i32 %or, ptr %int_mask, align 8
  %inc = add nuw nsw i32 %i.0210, 1
  %74 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rxq_count, align 4
  %cmp = icmp slt i32 %inc, %75
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  %oom = getelementptr i8, ptr %dev, i32 2828
  %76 = ptrtoint ptr %oom to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool14.not = icmp eq i8 %77, 0
  br i1 %tobool14.not, label %for.end.if.end17_crit_edge, label %if.then15

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %78, 10
  %rx_oom = getelementptr i8, ptr %dev, i32 2856
  %expires = getelementptr i8, ptr %dev, i32 2864
  %79 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %rx_oom) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.end.if.end17_crit_edge
  %txq_count = getelementptr i8, ptr %dev, i32 3204
  %80 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp19213 = icmp sgt i32 %81, 0
  br i1 %cmp19213, label %for.body20.lr.ph, label %if.end17.for.end37_crit_edge

if.end17.for.end37_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end37

for.body20.lr.ph:                                 ; preds = %if.end17
  %txq1.i = getelementptr i8, ptr %dev, i32 3208
  %tx_ring_size.i = getelementptr i8, ptr %dev, i32 3192
  %tx_desc_sram_size.i = getelementptr i8, ptr %dev, i32 3200
  %tx_desc_sram_addr.i = getelementptr i8, ptr %dev, i32 3196
  %tx_desc_area.i = getelementptr i8, ptr %dev, i32 3244
  %tx_desc_dma.i = getelementptr i8, ptr %dev, i32 3252
  br label %for.body20

for.body20:                                       ; preds = %if.end31.for.body20_crit_edge, %for.body20.lr.ph
  %i.2214 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc36, %if.end31.for.body20_crit_edge ]
  %add.ptr.i109 = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214
  %82 = ptrtoint ptr %add.ptr.i109 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %i.2214, ptr %add.ptr.i109, align 4
  %83 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_ring_size.i, align 8
  %tx_ring_size3.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 1
  %85 = ptrtoint ptr %tx_ring_size3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tx_ring_size3.i, align 4
  %sub.i = add i32 %84, -217
  %tx_stop_threshold.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 5
  %86 = ptrtoint ptr %tx_stop_threshold.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i, ptr %tx_stop_threshold.i, align 4
  %div.i = sdiv i32 %sub.i, 2
  %tx_wake_threshold.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 6
  %87 = ptrtoint ptr %tx_wake_threshold.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div.i, ptr %tx_wake_threshold.i, align 4
  %tx_desc_count.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 2
  %88 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tx_desc_count.i, align 4
  %tx_curr_desc.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 3
  %89 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %tx_curr_desc.i, align 4
  %tx_used_desc.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 4
  %90 = ptrtoint ptr %tx_used_desc.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %tx_used_desc.i, align 4
  %mul.i110 = shl i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2214)
  %cmp.i111 = icmp eq i32 %i.2214, 0
  br i1 %cmp.i111, label %land.lhs.true.i112, label %for.body20.if.else.i118_crit_edge

for.body20.if.else.i118_crit_edge:                ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i118

land.lhs.true.i112:                               ; preds = %for.body20
  %91 = ptrtoint ptr %tx_desc_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_desc_sram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i110, i32 %92)
  %cmp7.not.i = icmp sgt i32 %mul.i110, %92
  br i1 %cmp7.not.i, label %land.lhs.true.i112.if.else.i118_crit_edge, label %if.then.i114

land.lhs.true.i112.if.else.i118_crit_edge:        ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i118

if.then.i114:                                     ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #20
  %93 = ptrtoint ptr %tx_desc_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_desc_sram_addr.i, align 4
  %call.i113 = tail call ptr @ioremap(i32 noundef %94, i32 noundef %92) #18
  %95 = ptrtoint ptr %tx_desc_area.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i113, ptr %tx_desc_area.i, align 4
  %96 = ptrtoint ptr %tx_desc_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_desc_sram_addr.i, align 4
  %98 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %tx_desc_dma.i, align 4
  br label %if.end.i119

if.else.i118:                                     ; preds = %land.lhs.true.i112.if.else.i118_crit_edge, %for.body20.if.else.i118_crit_edge
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %parent.i116 = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 133, i32 1
  %101 = ptrtoint ptr %parent.i116 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %parent.i116, align 8
  %tx_desc_dma11.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 11
  %call.i.i117 = tail call ptr @dma_alloc_attrs(ptr noundef %102, i32 noundef %mul.i110, ptr noundef %tx_desc_dma11.i, i32 noundef 3264, i32 noundef 0) #18
  %tx_desc_area13.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 9
  %103 = ptrtoint ptr %tx_desc_area13.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i117, ptr %tx_desc_area13.i, align 4
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.else.i118, %if.then.i114
  %tx_desc_area14.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 9
  %104 = ptrtoint ptr %tx_desc_area14.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_desc_area14.i, align 4
  %cmp15.i = icmp eq ptr %105, null
  br i1 %cmp15.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #20
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %107, ptr noundef nonnull @.str.57, i32 noundef %mul.i110) #21
  br label %txq_init.exit

if.end18.i:                                       ; preds = %if.end.i119
  %108 = call ptr @memset(ptr %105, i32 0, i32 %mul.i110)
  %tx_desc_area_size.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 12
  %109 = ptrtoint ptr %tx_desc_area_size.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul.i110, ptr %tx_desc_area_size.i, align 4
  %110 = ptrtoint ptr %tx_desc_area14.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_desc_area14.i, align 4
  %112 = ptrtoint ptr %tx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_ring_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp22132.i = icmp sgt i32 %113, 0
  br i1 %cmp22132.i, label %for.body.lr.ph.i120, label %if.end18.i.if.end7.i.i.i152_crit_edge

if.end18.i.if.end7.i.i.i152_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i.i152

for.body.lr.ph.i120:                              ; preds = %if.end18.i
  %tx_desc_dma28.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 11
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.body.i124.for.body.i124_crit_edge, %for.body.lr.ph.i120
  %114 = phi i32 [ %113, %for.body.lr.ph.i120 ], [ %120, %for.body.i124.for.body.i124_crit_edge ]
  %i.0133.i = phi i32 [ 0, %for.body.lr.ph.i120 ], [ %add.i121, %for.body.i124.for.body.i124_crit_edge ]
  %add.i121 = add nuw nsw i32 %i.0133.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i121, i32 %114)
  %cmp25.i = icmp eq i32 %add.i121, %114
  %cmd_sts.i = getelementptr %struct.tx_desc, ptr %111, i32 %i.0133.i, i32 2
  %115 = ptrtoint ptr %cmd_sts.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %cmd_sts.i, align 4
  %116 = ptrtoint ptr %tx_desc_dma28.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_desc_dma28.i, align 4
  %add.op.i122 = shl i32 %add.i121, 4
  %mul29.i = select i1 %cmp25.i, i32 0, i32 %add.op.i122
  %add30.i = add i32 %mul29.i, %117
  %next_desc_ptr.i123 = getelementptr %struct.tx_desc, ptr %111, i32 %i.0133.i, i32 3
  %118 = ptrtoint ptr %next_desc_ptr.i123 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add30.i, ptr %next_desc_ptr.i123, align 4
  %119 = ptrtoint ptr %tx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tx_ring_size3.i, align 4
  %cmp22.i = icmp slt i32 %add.i121, %120
  br i1 %cmp22.i, label %for.body.i124.for.body.i124_crit_edge, label %for.body.i124.if.end7.i.i.i152_crit_edge

for.body.i124.if.end7.i.i.i152_crit_edge:         ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i.i.i152

for.body.i124.for.body.i124_crit_edge:            ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i124

if.end7.i.i.i152:                                 ; preds = %for.body.i124.if.end7.i.i.i152_crit_edge, %if.end18.i.if.end7.i.i.i152_crit_edge
  %.lcssa.i = phi i32 [ %113, %if.end18.i.if.end7.i.i.i152_crit_edge ], [ %120, %for.body.i124.if.end7.i.i.i152_crit_edge ]
  %call8.i.i.i151 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %.lcssa.i, i32 noundef 3520) #23
  %tx_desc_mapping.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 10
  %121 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call8.i.i.i151, ptr %tx_desc_mapping.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i151, null
  br i1 %tobool.not.i, label %if.end7.i.i.i152.err_free_desc_area.i_crit_edge, label %if.end35.i

if.end7.i.i.i152.err_free_desc_area.i_crit_edge:  ; preds = %if.end7.i.i.i152
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_desc_area.i

if.end35.i:                                       ; preds = %if.end7.i.i.i152
  %122 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i, align 4
  %parent38.i = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 133, i32 1
  %124 = ptrtoint ptr %parent38.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %parent38.i, align 8
  %126 = ptrtoint ptr %tx_ring_size3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_ring_size3.i, align 4
  %mul40.i = shl i32 %127, 8
  %tso_hdrs_dma.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 8
  %call.i123.i = tail call ptr @dma_alloc_attrs(ptr noundef %125, i32 noundef %mul40.i, ptr noundef %tso_hdrs_dma.i, i32 noundef 3264, i32 noundef 0) #18
  %tso_hdrs.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 7
  %128 = ptrtoint ptr %tso_hdrs.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i123.i, ptr %tso_hdrs.i, align 4
  %cmp43.i = icmp eq ptr %call.i123.i, null
  br i1 %cmp43.i, label %if.then44.i, label %if.end31

if.then44.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  %129 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tx_desc_mapping.i, align 4
  tail call void @kfree(ptr noundef %130) #18
  br label %err_free_desc_area.i

err_free_desc_area.i:                             ; preds = %if.then44.i, %if.end7.i.i.i152.err_free_desc_area.i_crit_edge
  br i1 %cmp.i111, label %land.lhs.true48.i, label %err_free_desc_area.i.if.else53.i_crit_edge

err_free_desc_area.i.if.else53.i_crit_edge:       ; preds = %err_free_desc_area.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else53.i

land.lhs.true48.i:                                ; preds = %err_free_desc_area.i
  %131 = ptrtoint ptr %tx_desc_sram_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_desc_sram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i110, i32 %132)
  %cmp50.not.i = icmp sgt i32 %mul.i110, %132
  br i1 %cmp50.not.i, label %land.lhs.true48.i.if.else53.i_crit_edge, label %txq_init.exit.thread

land.lhs.true48.i.if.else53.i_crit_edge:          ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else53.i

txq_init.exit.thread:                             ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #20
  %133 = ptrtoint ptr %tx_desc_area14.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tx_desc_area14.i, align 4
  tail call void @iounmap(ptr noundef %134) #18
  br label %for.cond39.preheader

if.else53.i:                                      ; preds = %land.lhs.true48.i.if.else53.i_crit_edge, %err_free_desc_area.i.if.else53.i_crit_edge
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 4
  %parent56.i = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 133, i32 1
  %137 = ptrtoint ptr %parent56.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %parent56.i, align 8
  %139 = ptrtoint ptr %tx_desc_area_size.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_desc_area_size.i, align 4
  %141 = ptrtoint ptr %tx_desc_area14.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tx_desc_area14.i, align 4
  %tx_desc_dma59.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 11
  %143 = ptrtoint ptr %tx_desc_dma59.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_desc_dma59.i, align 4
  tail call void @dma_free_attrs(ptr noundef %138, i32 noundef %140, ptr noundef %142, i32 noundef %144, i32 noundef 0) #18
  br label %txq_init.exit

txq_init.exit:                                    ; preds = %if.else53.i, %if.then16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2214)
  %cmp26216.not = icmp eq i32 %i.2214, 0
  br i1 %cmp26216.not, label %txq_init.exit.for.cond39.preheader_crit_edge, label %txq_init.exit.while.body27_crit_edge

txq_init.exit.while.body27_crit_edge:             ; preds = %txq_init.exit
  br label %while.body27

txq_init.exit.for.cond39.preheader_crit_edge:     ; preds = %txq_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %while.body27.for.cond39.preheader_crit_edge, %txq_init.exit.for.cond39.preheader_crit_edge, %txq_init.exit.thread
  %145 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rxq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp41218 = icmp sgt i32 %146, 0
  br i1 %cmp41218, label %for.body42.lr.ph, label %for.cond39.preheader.out_crit_edge

for.cond39.preheader.out_crit_edge:               ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %rxq43 = getelementptr i8, ptr %dev, i32 2904
  br label %for.body42

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %txq_init.exit.while.body27_crit_edge
  %dec25217.in = phi i32 [ %dec25217, %while.body27.while.body27_crit_edge ], [ %i.2214, %txq_init.exit.while.body27_crit_edge ]
  %dec25217 = add nsw i32 %dec25217.in, -1
  %add.ptr29 = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %dec25217
  tail call fastcc void @txq_deinit(ptr noundef %add.ptr29)
  %cmp26 = icmp sgt i32 %dec25217.in, 1
  br i1 %cmp26, label %while.body27.while.body27_crit_edge, label %while.body27.for.cond39.preheader_crit_edge

while.body27.for.cond39.preheader_crit_edge:      ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond39.preheader

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body27

if.end31:                                         ; preds = %if.end35.i
  %tx_skb.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 13
  %lock.i.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #18
  %147 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %tx_skb.i, ptr %tx_skb.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %tx_skb.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %tx_skb.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.tx_queue, ptr %txq1.i, i32 %i.2214, i32 13, i32 1
  %149 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %qlen.i.i.i, align 4
  %shl32 = shl i32 524288, %i.2214
  %150 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %int_mask, align 8
  %or34 = or i32 %151, %shl32
  store i32 %or34, ptr %int_mask, align 8
  %inc36 = add nuw nsw i32 %i.2214, 1
  %152 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %txq_count, align 4
  %cmp19 = icmp slt i32 %inc36, %153
  br i1 %cmp19, label %if.end31.for.body20_crit_edge, label %if.end31.for.end37_crit_edge

if.end31.for.end37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end37

if.end31.for.body20_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body20

for.end37:                                        ; preds = %if.end31.for.end37_crit_edge, %if.end17.for.end37_crit_edge
  %mib_counters_timer = getelementptr i8, ptr %dev, i32 2320
  tail call void @add_timer(ptr noundef %mib_counters_timer) #18
  tail call fastcc void @port_start(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %154 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %155, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 -16772864) #18, !srcloc !193
  %156 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #18
  %159 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %160, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %158) #18, !srcloc !193
  br label %cleanup

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.lr.ph
  %i.4219 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc47, %for.body42.for.body42_crit_edge ]
  %add.ptr45 = getelementptr %struct.rx_queue, ptr %rxq43, i32 %i.4219
  tail call fastcc void @rxq_deinit(ptr noundef %add.ptr45)
  %inc47 = add nuw nsw i32 %i.4219, 1
  %161 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rxq_count, align 4
  %cmp41 = icmp slt i32 %inc47, %162
  br i1 %cmp41, label %for.body42.for.body42_crit_edge, label %for.body42.out_crit_edge

for.body42.out_crit_edge:                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body42

out:                                              ; preds = %for.body42.out_crit_edge, %for.cond39.preheader.out_crit_edge, %while.body.out_crit_edge, %rxq_init.exit.out_crit_edge, %rxq_init.exit.thread
  %163 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %irq, align 4
  %call50 = tail call ptr @free_irq(i32 noundef %164, ptr noundef %dev) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end37, %if.then
  %retval.0 = phi i32 [ -11, %if.then ], [ -12, %out ], [ 0, %for.end37 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_reset(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq_count = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 20
  %0 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp44 = icmp sgt i32 %1, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rxq = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 22
  br label %for.body

for.cond1.preheader:                              ; preds = %rxq_disable.exit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %txq_count = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 26
  %2 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp246 = icmp sgt i32 %3, 0
  br i1 %cmp246, label %for.body3.lr.ph, label %for.cond1.preheader.while.cond.preheader_crit_edge

for.cond1.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %txq = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 27
  br label %for.body3

for.body:                                         ; preds = %rxq_disable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rxq_disable.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.rx_queue, ptr %rxq, i32 %i.045
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %.neg.i.i = mul i32 %5, -36
  %idx.neg.i.i = add i32 %.neg.i.i, -600
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i
  %shl.i = shl nuw i32 1, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %conv1.i = shl i32 %shl.i, 16
  %6 = and i32 %conv1.i, 16711680
  %base.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %8, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %6) #18, !srcloc !193
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1011.i = getelementptr i8, ptr %10, i32 640
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i) #18, !srcloc !201
  %12 = lshr i32 %11, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and12.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %for.body.rxq_disable.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.rxq_disable.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_disable.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #18
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #18, !srcloc !201
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i = and i32 %17, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.rxq_disable.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.rxq_disable.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_disable.exit

rxq_disable.exit:                                 ; preds = %while.body.i.rxq_disable.exit_crit_edge, %for.body.rxq_disable.exit_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %18 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxq_count, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %rxq_disable.exit.for.body_crit_edge, label %rxq_disable.exit.for.cond1.preheader_crit_edge

rxq_disable.exit.for.cond1.preheader_crit_edge:   ; preds = %rxq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond1.preheader

rxq_disable.exit.for.body_crit_edge:              ; preds = %rxq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

while.cond.preheader:                             ; preds = %txq_disable.exit.while.cond.preheader_crit_edge, %for.cond1.preheader.while.cond.preheader_crit_edge
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %21, i32 68
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %23 = and i32 %22, -2147221504
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %23)
  %cmp949 = icmp eq i32 %23, 262144
  br i1 %cmp949, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  br label %cleanup

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

for.body3:                                        ; preds = %txq_disable.exit.for.body3_crit_edge, %for.body3.lr.ph
  %i.147 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc7, %txq_disable.exit.for.body3_crit_edge ]
  %add.ptr5 = getelementptr %struct.tx_queue, ptr %txq, i32 %i.147
  %24 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr5, align 4
  %.neg.i.i24 = mul i32 %25, -120
  %idx.neg.i.i25 = add i32 %.neg.i.i24, -904
  %add.ptr.i.i26 = getelementptr i8, ptr %add.ptr5, i32 %idx.neg.i.i25
  %shl.i27 = shl nuw i32 1, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %conv1.i28 = shl i32 %shl.i27, 16
  %26 = and i32 %conv1.i28, 16711680
  %base.i.i29 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i26, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i8.i30 = getelementptr i8, ptr %28, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i30, i32 %26) #18, !srcloc !193
  %29 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i1011.i31 = getelementptr i8, ptr %30, i32 72
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i31) #18, !srcloc !201
  %32 = lshr i32 %31, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and12.i32 = and i32 %32, %shl.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i32)
  %tobool.not13.i33 = icmp eq i32 %and12.i32, 0
  br i1 %tobool.not13.i33, label %for.body3.txq_disable.exit_crit_edge, label %for.body3.while.body.i37_crit_edge

for.body3.while.body.i37_crit_edge:               ; preds = %for.body3
  br label %while.body.i37

for.body3.txq_disable.exit_crit_edge:             ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_disable.exit

while.body.i37:                                   ; preds = %while.body.i37.while.body.i37_crit_edge, %for.body3.while.body.i37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #18
  %34 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i29, align 4
  %add.ptr.i10.i34 = getelementptr i8, ptr %35, i32 72
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i34) #18, !srcloc !201
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i35 = and i32 %37, %shl.i27
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %while.body.i37.txq_disable.exit_crit_edge, label %while.body.i37.while.body.i37_crit_edge

while.body.i37.while.body.i37_crit_edge:          ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i37

while.body.i37.txq_disable.exit_crit_edge:        ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_disable.exit

txq_disable.exit:                                 ; preds = %while.body.i37.txq_disable.exit_crit_edge, %for.body3.txq_disable.exit_crit_edge
  %inc7 = add nuw nsw i32 %i.147, 1
  %38 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txq_count, align 4
  %cmp2 = icmp slt i32 %inc7, %39
  br i1 %cmp2, label %txq_disable.exit.for.body3_crit_edge, label %txq_disable.exit.while.cond.preheader_crit_edge

txq_disable.exit.while.cond.preheader_crit_edge:  ; preds = %txq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

txq_disable.exit.for.body3_crit_edge:             ; preds = %txq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body3

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #18
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 68
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %44 = and i32 %43, -2147221504
  %cmp9 = icmp eq i32 %44, 262144
  br i1 %cmp9, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %46, i32 60
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %48 = and i32 %47, -50593793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %50, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %48) #18, !srcloc !193
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv643xx_eth_get_stats(ptr noundef %dev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_count = getelementptr i8, ptr %dev, i32 3204
  %0 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %txq2 = getelementptr i8, ptr %dev, i32 3208
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tx_dropped.026 = phi i32 [ 0, %for.body.lr.ph ], [ %add7, %for.body.for.body_crit_edge ]
  %tx_bytes.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %for.body.for.body_crit_edge ]
  %tx_packets.024 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %tx_packets3 = getelementptr %struct.tx_queue, ptr %txq2, i32 %i.027, i32 14
  %2 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_packets3, align 4
  %add = add i32 %3, %tx_packets.024
  %tx_bytes4 = getelementptr %struct.tx_queue, ptr %txq2, i32 %i.027, i32 15
  %4 = ptrtoint ptr %tx_bytes4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bytes4, align 4
  %add5 = add i32 %5, %tx_bytes.025
  %tx_dropped6 = getelementptr %struct.tx_queue, ptr %txq2, i32 %i.027, i32 16
  %6 = ptrtoint ptr %tx_dropped6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped6, align 4
  %add7 = add i32 %7, %tx_dropped.026
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_packets.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %tx_bytes.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add5, %for.body.for.end_crit_edge ]
  %tx_dropped.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add7, %for.body.for.end_crit_edge ]
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_packets8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tx_packets.0.lcssa, ptr %tx_packets8, align 4
  %tx_bytes9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %tx_bytes9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tx_bytes.0.lcssa, ptr %tx_bytes9, align 4
  %tx_dropped10 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %10 = ptrtoint ptr %tx_dropped10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %tx_dropped.0.lcssa, ptr %tx_dropped10, align 4
  ret ptr %stats1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mib_counters_update(ptr noundef %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mib_counters = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6
  %mib_counters_lock = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %mib_counters_lock) #18
  %port_num.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num.i, align 8
  %shl.i = shl i32 %1, 7
  %add1.i = add i32 %shl.i, 4096
  %2 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add1.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !201
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %mib_counters to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mib_counters, align 8
  %add = add i64 %9, %conv
  store i64 %add, ptr %mib_counters, align 8
  %10 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_num.i, align 8
  %shl.i131 = shl i32 %11, 7
  %add1.i132 = add i32 %shl.i131, 4104
  %12 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mp, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %15, i32 %add1.i132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i133) #18, !srcloc !201
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %bad_octets_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %bad_octets_received to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bad_octets_received, align 8
  %add2 = add i32 %19, %17
  store i32 %add2, ptr %bad_octets_received, align 8
  %20 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_num.i, align 8
  %shl.i135 = shl i32 %21, 7
  %add1.i136 = add i32 %shl.i135, 4108
  %22 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mp, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %25, i32 %add1.i136
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #18, !srcloc !201
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %internal_mac_transmit_err = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %internal_mac_transmit_err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %internal_mac_transmit_err, align 4
  %add4 = add i32 %29, %27
  store i32 %add4, ptr %internal_mac_transmit_err, align 4
  %30 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_num.i, align 8
  %shl.i139 = shl i32 %31, 7
  %add1.i140 = add i32 %shl.i139, 4112
  %32 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mp, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %35, i32 %add1.i140
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i141) #18, !srcloc !201
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %good_frames_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %good_frames_received to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %good_frames_received, align 8
  %add6 = add i32 %39, %37
  store i32 %add6, ptr %good_frames_received, align 8
  %40 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_num.i, align 8
  %shl.i143 = shl i32 %41, 7
  %add1.i144 = add i32 %shl.i143, 4116
  %42 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mp, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %45, i32 %add1.i144
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145) #18, !srcloc !201
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %bad_frames_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %bad_frames_received to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bad_frames_received, align 4
  %add8 = add i32 %49, %47
  store i32 %add8, ptr %bad_frames_received, align 4
  %50 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port_num.i, align 8
  %shl.i147 = shl i32 %51, 7
  %add1.i148 = add i32 %shl.i147, 4120
  %52 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mp, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %55, i32 %add1.i148
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i149) #18, !srcloc !201
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %broadcast_frames_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 5
  %58 = ptrtoint ptr %broadcast_frames_received to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %broadcast_frames_received, align 8
  %add10 = add i32 %59, %57
  store i32 %add10, ptr %broadcast_frames_received, align 8
  %60 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_num.i, align 8
  %shl.i151 = shl i32 %61, 7
  %add1.i152 = add i32 %shl.i151, 4124
  %62 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mp, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %65, i32 %add1.i152
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i153) #18, !srcloc !201
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %multicast_frames_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 6
  %68 = ptrtoint ptr %multicast_frames_received to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %multicast_frames_received, align 4
  %add12 = add i32 %69, %67
  store i32 %add12, ptr %multicast_frames_received, align 4
  %70 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port_num.i, align 8
  %shl.i155 = shl i32 %71, 7
  %add1.i156 = add i32 %shl.i155, 4128
  %72 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mp, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %add.ptr.i.i157 = getelementptr i8, ptr %75, i32 %add1.i156
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i157) #18, !srcloc !201
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_64_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 7
  %78 = ptrtoint ptr %frames_64_octets to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %frames_64_octets, align 8
  %add14 = add i32 %79, %77
  store i32 %add14, ptr %frames_64_octets, align 8
  %80 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_num.i, align 8
  %shl.i159 = shl i32 %81, 7
  %add1.i160 = add i32 %shl.i159, 4132
  %82 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mp, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %85, i32 %add1.i160
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i161) #18, !srcloc !201
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_65_to_127_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 8
  %88 = ptrtoint ptr %frames_65_to_127_octets to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %frames_65_to_127_octets, align 4
  %add16 = add i32 %89, %87
  store i32 %add16, ptr %frames_65_to_127_octets, align 4
  %90 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port_num.i, align 8
  %shl.i163 = shl i32 %91, 7
  %add1.i164 = add i32 %shl.i163, 4136
  %92 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mp, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %95, i32 %add1.i164
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #18, !srcloc !201
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_128_to_255_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 9
  %98 = ptrtoint ptr %frames_128_to_255_octets to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frames_128_to_255_octets, align 8
  %add18 = add i32 %99, %97
  store i32 %add18, ptr %frames_128_to_255_octets, align 8
  %100 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port_num.i, align 8
  %shl.i167 = shl i32 %101, 7
  %add1.i168 = add i32 %shl.i167, 4140
  %102 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mp, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %105, i32 %add1.i168
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i169) #18, !srcloc !201
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_256_to_511_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 10
  %108 = ptrtoint ptr %frames_256_to_511_octets to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %frames_256_to_511_octets, align 4
  %add20 = add i32 %109, %107
  store i32 %add20, ptr %frames_256_to_511_octets, align 4
  %110 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port_num.i, align 8
  %shl.i171 = shl i32 %111, 7
  %add1.i172 = add i32 %shl.i171, 4144
  %112 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mp, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %115, i32 %add1.i172
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #18, !srcloc !201
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_512_to_1023_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 11
  %118 = ptrtoint ptr %frames_512_to_1023_octets to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frames_512_to_1023_octets, align 8
  %add22 = add i32 %119, %117
  store i32 %add22, ptr %frames_512_to_1023_octets, align 8
  %120 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port_num.i, align 8
  %shl.i175 = shl i32 %121, 7
  %add1.i176 = add i32 %shl.i175, 4148
  %122 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mp, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %125, i32 %add1.i176
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177) #18, !srcloc !201
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %frames_1024_to_max_octets = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 12
  %128 = ptrtoint ptr %frames_1024_to_max_octets to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %frames_1024_to_max_octets, align 4
  %add24 = add i32 %129, %127
  store i32 %add24, ptr %frames_1024_to_max_octets, align 4
  %130 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port_num.i, align 8
  %shl.i179 = shl i32 %131, 7
  %add1.i180 = add i32 %shl.i179, 4152
  %132 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mp, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %135, i32 %add1.i180
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i181) #18, !srcloc !201
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %conv26 = zext i32 %137 to i64
  %good_octets_sent = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 13
  %138 = ptrtoint ptr %good_octets_sent to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %good_octets_sent, align 8
  %add27 = add i64 %139, %conv26
  store i64 %add27, ptr %good_octets_sent, align 8
  %140 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %port_num.i, align 8
  %shl.i183 = shl i32 %141, 7
  %add1.i184 = add i32 %shl.i183, 4160
  %142 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mp, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %add.ptr.i.i185 = getelementptr i8, ptr %145, i32 %add1.i184
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i185) #18, !srcloc !201
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %good_frames_sent = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 14
  %148 = ptrtoint ptr %good_frames_sent to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %good_frames_sent, align 8
  %add29 = add i32 %149, %147
  store i32 %add29, ptr %good_frames_sent, align 8
  %150 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port_num.i, align 8
  %shl.i187 = shl i32 %151, 7
  %add1.i188 = add i32 %shl.i187, 4164
  %152 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mp, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %add.ptr.i.i189 = getelementptr i8, ptr %155, i32 %add1.i188
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i189) #18, !srcloc !201
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %excessive_collision = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 15
  %158 = ptrtoint ptr %excessive_collision to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %excessive_collision, align 4
  %add31 = add i32 %159, %157
  store i32 %add31, ptr %excessive_collision, align 4
  %160 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port_num.i, align 8
  %shl.i191 = shl i32 %161, 7
  %add1.i192 = add i32 %shl.i191, 4168
  %162 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mp, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %add.ptr.i.i193 = getelementptr i8, ptr %165, i32 %add1.i192
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i193) #18, !srcloc !201
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %multicast_frames_sent = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 16
  %168 = ptrtoint ptr %multicast_frames_sent to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %multicast_frames_sent, align 8
  %add33 = add i32 %169, %167
  store i32 %add33, ptr %multicast_frames_sent, align 8
  %170 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port_num.i, align 8
  %shl.i195 = shl i32 %171, 7
  %add1.i196 = add i32 %shl.i195, 4172
  %172 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mp, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %175, i32 %add1.i196
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i197) #18, !srcloc !201
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %broadcast_frames_sent = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 17
  %178 = ptrtoint ptr %broadcast_frames_sent to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %broadcast_frames_sent, align 4
  %add35 = add i32 %179, %177
  store i32 %add35, ptr %broadcast_frames_sent, align 4
  %180 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %port_num.i, align 8
  %shl.i199 = shl i32 %181, 7
  %add1.i200 = add i32 %shl.i199, 4176
  %182 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mp, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %185, i32 %add1.i200
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i201) #18, !srcloc !201
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %unrec_mac_control_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 18
  %188 = ptrtoint ptr %unrec_mac_control_received to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %unrec_mac_control_received, align 8
  %add37 = add i32 %189, %187
  store i32 %add37, ptr %unrec_mac_control_received, align 8
  %190 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %port_num.i, align 8
  %shl.i203 = shl i32 %191, 7
  %add1.i204 = add i32 %shl.i203, 4180
  %192 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mp, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %195, i32 %add1.i204
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i205) #18, !srcloc !201
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %fc_sent = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 19
  %198 = ptrtoint ptr %fc_sent to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %fc_sent, align 4
  %add39 = add i32 %199, %197
  store i32 %add39, ptr %fc_sent, align 4
  %200 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %port_num.i, align 8
  %shl.i207 = shl i32 %201, 7
  %add1.i208 = add i32 %shl.i207, 4184
  %202 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mp, align 8
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %add.ptr.i.i209 = getelementptr i8, ptr %205, i32 %add1.i208
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i209) #18, !srcloc !201
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %good_fc_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 20
  %208 = ptrtoint ptr %good_fc_received to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %good_fc_received, align 8
  %add41 = add i32 %209, %207
  store i32 %add41, ptr %good_fc_received, align 8
  %210 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %port_num.i, align 8
  %shl.i211 = shl i32 %211, 7
  %add1.i212 = add i32 %shl.i211, 4188
  %212 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mp, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %215, i32 %add1.i212
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i213) #18, !srcloc !201
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %bad_fc_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 21
  %218 = ptrtoint ptr %bad_fc_received to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %bad_fc_received, align 4
  %add43 = add i32 %219, %217
  store i32 %add43, ptr %bad_fc_received, align 4
  %220 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %port_num.i, align 8
  %shl.i215 = shl i32 %221, 7
  %add1.i216 = add i32 %shl.i215, 4192
  %222 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mp, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %add.ptr.i.i217 = getelementptr i8, ptr %225, i32 %add1.i216
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i217) #18, !srcloc !201
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %undersize_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 22
  %228 = ptrtoint ptr %undersize_received to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %undersize_received, align 8
  %add45 = add i32 %229, %227
  store i32 %add45, ptr %undersize_received, align 8
  %230 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port_num.i, align 8
  %shl.i219 = shl i32 %231, 7
  %add1.i220 = add i32 %shl.i219, 4196
  %232 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mp, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %235, i32 %add1.i220
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i221) #18, !srcloc !201
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %fragments_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 23
  %238 = ptrtoint ptr %fragments_received to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %fragments_received, align 4
  %add47 = add i32 %239, %237
  store i32 %add47, ptr %fragments_received, align 4
  %240 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %port_num.i, align 8
  %shl.i223 = shl i32 %241, 7
  %add1.i224 = add i32 %shl.i223, 4200
  %242 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mp, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %add.ptr.i.i225 = getelementptr i8, ptr %245, i32 %add1.i224
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i225) #18, !srcloc !201
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %oversize_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 24
  %248 = ptrtoint ptr %oversize_received to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %oversize_received, align 8
  %add49 = add i32 %249, %247
  store i32 %add49, ptr %oversize_received, align 8
  %250 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %port_num.i, align 8
  %shl.i227 = shl i32 %251, 7
  %add1.i228 = add i32 %shl.i227, 4204
  %252 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mp, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %add.ptr.i.i229 = getelementptr i8, ptr %255, i32 %add1.i228
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i229) #18, !srcloc !201
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %jabber_received = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 25
  %258 = ptrtoint ptr %jabber_received to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %jabber_received, align 4
  %add51 = add i32 %259, %257
  store i32 %add51, ptr %jabber_received, align 4
  %260 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %port_num.i, align 8
  %shl.i231 = shl i32 %261, 7
  %add1.i232 = add i32 %shl.i231, 4208
  %262 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mp, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %add.ptr.i.i233 = getelementptr i8, ptr %265, i32 %add1.i232
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i233) #18, !srcloc !201
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %mac_receive_error = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 26
  %268 = ptrtoint ptr %mac_receive_error to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %mac_receive_error, align 8
  %add53 = add i32 %269, %267
  store i32 %add53, ptr %mac_receive_error, align 8
  %270 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %port_num.i, align 8
  %shl.i235 = shl i32 %271, 7
  %add1.i236 = add i32 %shl.i235, 4212
  %272 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mp, align 8
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %275, i32 %add1.i236
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i237) #18, !srcloc !201
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %bad_crc_event = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 27
  %278 = ptrtoint ptr %bad_crc_event to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %bad_crc_event, align 4
  %add55 = add i32 %279, %277
  store i32 %add55, ptr %bad_crc_event, align 4
  %280 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %port_num.i, align 8
  %shl.i239 = shl i32 %281, 7
  %add1.i240 = add i32 %shl.i239, 4216
  %282 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mp, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %285, i32 %add1.i240
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i241) #18, !srcloc !201
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %collision = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 28
  %288 = ptrtoint ptr %collision to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %collision, align 8
  %add57 = add i32 %289, %287
  store i32 %add57, ptr %collision, align 8
  %290 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %port_num.i, align 8
  %shl.i243 = shl i32 %291, 7
  %add1.i244 = add i32 %shl.i243, 4220
  %292 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mp, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %add.ptr.i.i245 = getelementptr i8, ptr %295, i32 %add1.i244
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i245) #18, !srcloc !201
  %297 = tail call i32 @llvm.bswap.i32(i32 %296) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !209
  %late_collision = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 29
  %298 = ptrtoint ptr %late_collision to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %late_collision, align 4
  %add59 = add i32 %299, %297
  store i32 %add59, ptr %late_collision, align 4
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %300 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %301, i32 132
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !201
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %rx_discard = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 30
  %304 = ptrtoint ptr %rx_discard to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rx_discard, align 8
  %add61 = add i32 %305, %303
  store i32 %add61, ptr %rx_discard, align 8
  %306 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %base.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %307, i32 136
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i247) #18, !srcloc !201
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %rx_overrun = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 6, i32 31
  %310 = ptrtoint ptr %rx_overrun to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %rx_overrun, align 4
  %add63 = add i32 %311, %309
  store i32 %add63, ptr %rx_overrun, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mib_counters_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxq_deinit(ptr nocapture noundef %rxq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxq, align 4
  %.neg.i = mul i32 %1, -36
  %idx.neg.i = add i32 %.neg.i, -600
  %add.ptr.i = getelementptr i8, ptr %rxq, i32 %idx.neg.i
  %shl.i = shl nuw i32 1, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %conv1.i = shl i32 %shl.i, 16
  %2 = and i32 %conv1.i, 16711680
  %base.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %2) #18, !srcloc !193
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1011.i = getelementptr i8, ptr %6, i32 640
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i) #18, !srcloc !201
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and12.i = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %entry.rxq_disable.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.rxq_disable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_disable.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #18
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 640
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #18, !srcloc !201
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i = and i32 %13, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.rxq_disable.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.rxq_disable.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rxq_disable.exit

rxq_disable.exit:                                 ; preds = %while.body.i.rxq_disable.exit_crit_edge, %entry.rxq_disable.exit_crit_edge
  %rx_ring_size = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 1
  %14 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37 = icmp sgt i32 %15, 0
  br i1 %cmp37, label %for.body.lr.ph, label %rxq_disable.exit.for.end_crit_edge

rxq_disable.exit.for.end_crit_edge:               ; preds = %rxq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %rxq_disable.exit
  %rx_skb = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 8
  %rx_desc_count = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.038
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %19, i32 noundef 0) #18
  %20 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_desc_count, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %rx_desc_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %22 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ring_size, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rxq_disable.exit.for.end_crit_edge
  %rx_desc_count3 = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 2
  %24 = ptrtoint ptr %rx_desc_count3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_desc_count3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not = icmp eq i32 %25, 0
  br i1 %tobool4.not, label %for.end.if.end7_crit_edge, label %if.then5

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef %25) #21
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.end.if.end7_crit_edge
  %28 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8 = icmp eq i32 %29, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %rx_desc_area_size = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 7
  %30 = ptrtoint ptr %rx_desc_area_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_desc_area_size, align 4
  %rx_desc_sram_size = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 19
  %32 = ptrtoint ptr %rx_desc_sram_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_desc_sram_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp9.not = icmp sgt i32 %31, %33
  br i1 %cmp9.not, label %land.lhs.true.if.else_crit_edge, label %if.then10

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %rx_desc_area = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 5
  %34 = ptrtoint ptr %rx_desc_area to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_desc_area, align 4
  tail call void @iounmap(ptr noundef %35) #18
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %dev11 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %36 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev11, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 133, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 8
  %rx_desc_area_size13 = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 7
  %40 = ptrtoint ptr %rx_desc_area_size13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_desc_area_size13, align 4
  %rx_desc_area14 = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 5
  %42 = ptrtoint ptr %rx_desc_area14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_desc_area14, align 4
  %rx_desc_dma = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 6
  %44 = ptrtoint ptr %rx_desc_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_desc_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %41, ptr noundef %43, i32 noundef %45, i32 noundef 0) #18
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %rx_skb16 = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 8
  %46 = ptrtoint ptr %rx_skb16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_skb16, align 4
  tail call void @kfree(ptr noundef %47) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @txq_deinit(ptr noundef %txq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq, align 4
  %.neg.i = mul i32 %1, -120
  %idx.neg.i = add i32 %.neg.i, -904
  %add.ptr.i = getelementptr i8, ptr %txq, i32 %idx.neg.i
  %shl.i = shl nuw i32 1, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %conv1.i = shl i32 %shl.i, 16
  %2 = and i32 %conv1.i, 16711680
  %base.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %2) #18, !srcloc !193
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i1011.i = getelementptr i8, ptr %6, i32 72
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1011.i) #18, !srcloc !201
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and12.i = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not13.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not13.i, label %entry.txq_disable.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.txq_disable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_disable.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #18
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #18, !srcloc !201
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %and.i = and i32 %13, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.txq_disable.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.txq_disable.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_disable.exit

txq_disable.exit:                                 ; preds = %while.body.i.txq_disable.exit_crit_edge, %entry.txq_disable.exit_crit_edge
  %tx_ring_size = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 1
  %14 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_ring_size, align 4
  %call1 = tail call fastcc i32 @txq_reclaim(ptr noundef %txq, i32 noundef %15, i32 noundef 1)
  %tx_used_desc = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 4
  %16 = ptrtoint ptr %tx_used_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_used_desc, align 4
  %tx_curr_desc = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 3
  %18 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_curr_desc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not = icmp eq i32 %17, %19
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !215

do.body3:                                         ; preds = %txq_disable.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2128, 0\0A.popsection", ""() #18, !srcloc !220
  unreachable

do.end8:                                          ; preds = %txq_disable.exit
  %20 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9 = icmp eq i32 %21, 0
  br i1 %cmp9, label %land.lhs.true, label %do.end8.if.else_crit_edge

do.end8.if.else_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %do.end8
  %tx_desc_area_size = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 12
  %22 = ptrtoint ptr %tx_desc_area_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_desc_area_size, align 4
  %tx_desc_sram_size = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 25
  %24 = ptrtoint ptr %tx_desc_sram_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_desc_sram_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp10.not = icmp sgt i32 %23, %25
  br i1 %cmp10.not, label %land.lhs.true.if.else_crit_edge, label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %tx_desc_area = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 9
  %26 = ptrtoint ptr %tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_desc_area, align 4
  tail call void @iounmap(ptr noundef %27) #18
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end8.if.else_crit_edge
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %tx_desc_area_size13 = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 12
  %32 = ptrtoint ptr %tx_desc_area_size13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_desc_area_size13, align 4
  %tx_desc_area14 = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 9
  %34 = ptrtoint ptr %tx_desc_area14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_desc_area14, align 4
  %tx_desc_dma = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 11
  %36 = ptrtoint ptr %tx_desc_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_desc_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %31, i32 noundef %33, ptr noundef %35, i32 noundef %37, i32 noundef 0) #18
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %tx_desc_mapping = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 10
  %38 = ptrtoint ptr %tx_desc_mapping to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_desc_mapping, align 4
  tail call void @kfree(ptr noundef %39) #18
  %tso_hdrs = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 7
  %40 = ptrtoint ptr %tso_hdrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tso_hdrs, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %if.then17

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %dev18 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %42 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev18, align 4
  %parent20 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent20, align 8
  %46 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_ring_size, align 4
  %mul = shl i32 %47, 8
  %tso_hdrs_dma = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 8
  %48 = ptrtoint ptr %tso_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tso_hdrs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %45, i32 noundef %mul, ptr noundef nonnull %41, i32 noundef %49, i32 noundef 0) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end15.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @txq_reclaim(ptr noundef %txq, i32 noundef %budget, i32 noundef %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq, align 4
  %.neg.i = mul i32 %1, -120
  %idx.neg.i = add i32 %.neg.i, -904
  %add.ptr.i = getelementptr i8, ptr %txq, i32 %idx.neg.i
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %_xmit_lock.i = getelementptr %struct.netdev_queue, ptr %5, i32 %1, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %_xmit_lock.i) #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !182) #18
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr %struct.netdev_queue, ptr %5, i32 %1, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %xmit_lock_owner.i, align 4
  %tx_desc_count = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp137 = icmp sgt i32 %budget, 0
  br i1 %cmp137, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %tx_used_desc = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 4
  %tx_desc_area = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool5.not = icmp eq i32 %force, 0
  %tx_ring_size = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 1
  %tso_hdrs_dma = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 8
  %tx_skb = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 13
  %qlen.i.i = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 13, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %reclaimed.0138 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp sgt i32 %12, 0
  br i1 %cmp2, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %tx_used_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_used_desc, align 4
  %15 = ptrtoint ptr %tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_desc_area, align 4
  %arrayidx = getelementptr %struct.tx_desc, ptr %16, i32 %14
  %cmd_sts4 = getelementptr %struct.tx_desc, ptr %16, i32 %14, i32 2
  %17 = ptrtoint ptr %cmd_sts4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_sts4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not = icmp sgt i32 %18, -1
  br i1 %tobool.not, label %while.body.if.end9_crit_edge, label %if.then

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then:                                          ; preds = %while.body
  br i1 %tobool5.not, label %if.then.while.end_crit_edge, label %if.end

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %and7 = and i32 %18, 2147483647
  %19 = ptrtoint ptr %cmd_sts4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7, ptr %cmd_sts4, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body.if.end9_crit_edge
  %add = add i32 %14, 1
  %20 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp12 = icmp eq i32 %add, %21
  %spec.store.select = select i1 %cmp12, i32 0, i32 %add
  %22 = ptrtoint ptr %tx_used_desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select, ptr %tx_used_desc, align 4
  %inc = add nuw nsw i32 %reclaimed.0138, 1
  %23 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_desc_count, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %tx_desc_count, align 4
  %buf_ptr = getelementptr %struct.tx_desc, ptr %16, i32 %14, i32 4
  %25 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_ptr, align 4
  %27 = ptrtoint ptr %tso_hdrs_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tso_hdrs_dma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp17.not = icmp uge i32 %26, %28
  %mul = shl i32 %21, 8
  %add21 = add i32 %28, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add21)
  %cmp22 = icmp ult i32 %26, %add21
  %or.cond = select i1 %cmp17.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.end9.if.end38_crit_edge, label %if.then23

if.end9.if.end38_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 133, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 4
  %conv30 = zext i16 %34 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %26, i32 noundef %conv30, i32 noundef 1, i32 noundef 0) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %if.end9.if.end38_crit_edge
  %and39 = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end69_crit_edge, label %if.then41

if.end38.if.end69_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then41:                                        ; preds = %if.end38
  %35 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_skb, align 4
  %cmp.i.i = icmp eq ptr %36, %tx_skb
  %tobool.not.i136 = icmp eq ptr %36, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i136
  br i1 %tobool.not.i, label %do.end, label %if.then67.critedge

do.end:                                           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1107, i32 noundef 9, ptr noundef null) #18
  br label %if.end69

if.then67.critedge:                               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %36, i32 noundef 0) #18
  br label %if.end69

if.end69:                                         ; preds = %if.then67.critedge, %do.end, %if.end38.if.end69_crit_edge
  %and70 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.cleanup_crit_edge, label %if.then72

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %46, ptr noundef nonnull @.str.52) #21
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 36, i32 5
  %49 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_errors, align 4
  %inc75 = add i32 %50, 1
  store i32 %inc75, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end69.cleanup_crit_edge
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %while.end.thread, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

while.end.thread:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %_xmit_lock.i) #18
  br label %if.end87

while.end:                                        ; preds = %if.then.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %reclaimed.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %reclaimed.0138, %if.then.while.end_crit_edge ], [ %reclaimed.0138, %land.rhs.while.end_crit_edge ]
  %52 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %_xmit_lock.i) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %reclaimed.0.lcssa, i32 %budget)
  %cmp80 = icmp slt i32 %reclaimed.0.lcssa, %budget
  br i1 %cmp80, label %if.then82, label %while.end.if.end87_crit_edge

while.end.if.end87_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end87

if.then82:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txq, align 4
  %shl = shl nuw i32 1, %54
  %work_tx = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 12
  %55 = ptrtoint ptr %work_tx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %work_tx, align 2
  %57 = trunc i32 %shl to i8
  %58 = xor i8 %57, -1
  %conv86 = and i8 %56, %58
  store i8 %conv86, ptr %work_tx, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %while.end.if.end87_crit_edge, %while.end.thread
  %reclaimed.0.lcssa144 = phi i32 [ %budget, %while.end.thread ], [ %reclaimed.0.lcssa, %if.then82 ], [ %reclaimed.0.lcssa, %while.end.if.end87_crit_edge ]
  ret i32 %reclaimed.0.lcssa144
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %call1 = tail call fastcc i32 @mv643xx_eth_collect_events(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !211

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %base.i = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #18, !srcloc !193
  %napi = getelementptr i8, ptr %dev_id, i32 2600
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxq_refill(ptr nocapture noundef %rxq, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxq, align 4
  %.neg.i = mul i32 %1, -36
  %idx.neg.i = add i32 %.neg.i, -600
  %add.ptr.i = getelementptr i8, ptr %rxq, i32 %idx.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp70 = icmp sgt i32 %budget, 0
  br i1 %cmp70, label %land.rhs.lr.ph, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup31

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_desc_count = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 2
  %rx_ring_size = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 1
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 3
  %skb_size = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 16
  %rx_used_desc = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 4
  %rx_desc_area = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 5
  %rx_skb = getelementptr inbounds %struct.rx_queue, ptr %rxq, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %refilled.071 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_desc_count, align 4
  %4 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %while.body, label %if.then26.critedge

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %skb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_size, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef %9, i32 noundef 2592) #18
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %oom = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 10
  %10 = ptrtoint ptr %oom to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %oom, align 4
  br label %cleanup31

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %refilled.071, 1
  %11 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_desc_count, align 4
  %inc5 = add i32 %12, 1
  store i32 %inc5, ptr %rx_desc_count, align 4
  %13 = ptrtoint ptr %rx_used_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_used_desc, align 4
  %inc6 = add i32 %14, 1
  %15 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc6, i32 %16)
  %cmp9 = icmp eq i32 %inc6, %16
  %spec.store.select = select i1 %cmp9, i32 0, i32 %inc6
  %17 = ptrtoint ptr %rx_used_desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %rx_used_desc, align 4
  %18 = ptrtoint ptr %rx_desc_area to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_desc_area, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 133, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %call.i61 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %23) #18
  br i1 %call.i61, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !215

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %27) #18
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %cleanup

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %27, ptr noundef %23, i32 noundef %sub.ptr.sub) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %sub.ptr.rhs.cast, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i62 = getelementptr %struct.page, ptr %32, i32 %shr.i
  %and.i = and i32 %sub.ptr.rhs.cast, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %27, ptr noundef %add.ptr.i62, i32 noundef %and.i, i32 noundef %sub.ptr.sub, i32 noundef 2, i32 noundef 0) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.cleanup_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.cleanup_crit_edge ]
  %buf_ptr = getelementptr %struct.rx_desc, ptr %19, i32 %14, i32 4
  %33 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i, ptr %buf_ptr, align 4
  %conv = trunc i32 %sub.ptr.sub to i16
  %buf_size = getelementptr %struct.rx_desc, ptr %19, i32 %14, i32 1
  %34 = ptrtoint ptr %buf_size to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv, ptr %buf_size, align 2
  %35 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_skb, align 4
  %arrayidx = getelementptr ptr, ptr %36, i32 %14
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !221
  tail call void @arm_heavy_mb() #18
  %cmd_sts = getelementptr %struct.rx_desc, ptr %19, i32 %14, i32 2
  %38 = ptrtoint ptr %cmd_sts to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1610612736, ptr %cmd_sts, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !222
  tail call void @arm_heavy_mb() #18
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr.i63 = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr.i63, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %cleanup.cleanup31_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

cleanup.cleanup31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup31

if.then26.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rxq, align 4
  %shl = shl nuw i32 1, %44
  %work_rx_refill = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 15
  %45 = ptrtoint ptr %work_rx_refill to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %work_rx_refill, align 1
  %47 = trunc i32 %shl to i8
  %48 = xor i8 %47, -1
  %conv28 = and i8 %46, %48
  store i8 %conv28, ptr %work_rx_refill, align 1
  br label %cleanup31

cleanup31:                                        ; preds = %if.then26.critedge, %cleanup.cleanup31_crit_edge, %cleanup.thread, %entry.cleanup31_crit_edge
  %refilled.069 = phi i32 [ %refilled.071, %cleanup.thread ], [ %refilled.071, %if.then26.critedge ], [ 0, %entry.cleanup31_crit_edge ], [ %budget, %cleanup.cleanup31_crit_edge ]
  ret i32 %refilled.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_start(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cmd) #18
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 88)
  %call = call i32 @mv643xx_eth_get_link_ksettings(ptr noundef %1, ptr noundef nonnull %cmd)
  %5 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phydev, align 16
  %call3 = call i32 @phy_init_hw(ptr noundef %6) #18
  %call4 = call i32 @mv643xx_eth_set_link_ksettings(ptr noundef %1, ptr noundef nonnull %cmd)
  %7 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phydev, align 16
  call void @phy_start(ptr noundef %8) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cmd) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 60
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !201
  %12 = call i32 @llvm.bswap.i32(i32 %11) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %or = or i32 %12, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %13 = call i32 @llvm.bswap.i32(i32 %or) #18
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %15, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %13) #18, !srcloc !193
  %16 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phydev, align 16
  %tobool9.not = icmp eq ptr %17, null
  %spec.select.v = select i1 %tobool9.not, i32 1027, i32 1025
  %spec.select = or i32 %spec.select.v, %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %18 = call i32 @llvm.bswap.i32(i32 %spec.select) #18
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %20, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %18) #18, !srcloc !193
  call fastcc void @tx_set_rate(ptr noundef %mp)
  %txq_count = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 26
  %21 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %txq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp86 = icmp sgt i32 %22, 0
  br i1 %cmp86, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %txq13 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %txq_set_fixed_prio_mode.exit.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %txq_set_fixed_prio_mode.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.tx_queue, ptr %txq13, i32 %i.087
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %.neg.i.i = mul i32 %24, -120
  %idx.neg.i.i = add i32 %.neg.i.i, -904
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i
  %tx_desc_dma.i = getelementptr %struct.tx_queue, ptr %txq13, i32 %i.087, i32 11
  %25 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_desc_dma.i, align 4
  %tx_curr_desc.i = getelementptr %struct.tx_queue, ptr %txq13, i32 %i.087, i32 3
  %27 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_curr_desc.i, align 4
  %mul.i = shl i32 %28, 4
  %add.i = add i32 %mul.i, %26
  %shl.i = shl i32 %24, 2
  %add1.i = add i32 %shl.i, 704
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %29 = call i32 @llvm.bswap.i32(i32 %add.i) #18
  %base.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %31, i32 %add1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %29) #18, !srcloc !193
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %.neg.i.i65 = mul i32 %33, -120
  %idx.neg.i.i66 = add i32 %.neg.i.i65, -904
  %add.ptr.i.i67 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i66
  %t_clk.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i67, i32 0, i32 29
  %34 = ptrtoint ptr %t_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_clk.i, align 4
  %div1.i = udiv i32 %35, 1000
  %div2.i = udiv i32 64000000, %div1.i
  %36 = call i32 @llvm.umin.i32(i32 %div2.i, i32 1023) #18
  %shl.i68 = shl i32 %33, 4
  %add6.i = add i32 %shl.i68, 768
  %shl7.i = shl nuw nsw i32 %36, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %37 = call i32 @llvm.bswap.i32(i32 %shl7.i) #18
  %base.i.i69 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i67, i32 0, i32 1
  %38 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i69, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %39, i32 %add6.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %37) #18, !srcloc !193
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr, align 4
  %shl9.i = shl i32 %41, 4
  %add10.i = add i32 %shl9.i, 772
  %or.i = or i32 %36, 67107840
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %42 = call i32 @llvm.bswap.i32(i32 %or.i) #18
  %43 = ptrtoint ptr %base.i.i69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i69, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %44, i32 %add10.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %42) #18, !srcloc !193
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr, align 4
  %.neg.i.i70 = mul i32 %46, -120
  %idx.neg.i.i71 = add i32 %.neg.i.i70, -904
  %add.ptr.i.i72 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i71
  %47 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i72, align 8
  %tx_bw_control.i = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %tx_bw_control.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_bw_control.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %50, label %for.body.txq_set_fixed_prio_mode.exit_crit_edge [
    i32 1, label %for.body.if.then.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.body.txq_set_fixed_prio_mode.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_set_fixed_prio_mode.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i, %for.body.if.then.i_crit_edge
  %off.0.ph.i = phi i32 [ 220, %sw.bb1.i ], [ 76, %for.body.if.then.i_crit_edge ]
  %base.i.i73 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i72, i32 0, i32 1
  %52 = ptrtoint ptr %base.i.i73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i73, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %53, i32 %off.0.ph.i
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #18, !srcloc !201
  %55 = call i32 @llvm.bswap.i32(i32 %54) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr, align 4
  %shl.i74 = shl nuw i32 1, %57
  %or.i75 = or i32 %shl.i74, %55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %58 = call i32 @llvm.bswap.i32(i32 %or.i75) #18
  %59 = ptrtoint ptr %base.i.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i73, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %60, i32 %off.0.ph.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %58) #18, !srcloc !193
  br label %txq_set_fixed_prio_mode.exit

txq_set_fixed_prio_mode.exit:                     ; preds = %if.then.i, %for.body.txq_set_fixed_prio_mode.exit_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %61 = ptrtoint ptr %txq_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %txq_count, align 4
  %cmp = icmp slt i32 %inc, %62
  br i1 %cmp, label %txq_set_fixed_prio_mode.exit.for.body_crit_edge, label %txq_set_fixed_prio_mode.exit.for.end_crit_edge

txq_set_fixed_prio_mode.exit.for.end_crit_edge:   ; preds = %txq_set_fixed_prio_mode.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

txq_set_fixed_prio_mode.exit.for.body_crit_edge:  ; preds = %txq_set_fixed_prio_mode.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %txq_set_fixed_prio_mode.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %63 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 23
  %65 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %sum.shift.i = lshr i64 %66, 39
  %67 = trunc i64 %sum.shift.i to i32
  %68 = and i32 %67, 2
  %base.i.i76 = getelementptr i8, ptr %64, i32 2308
  %69 = ptrtoint ptr %base.i.i76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i76, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #18, !srcloc !193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %72, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 0) #18, !srcloc !193
  %73 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1, align 4
  call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %74)
  %rxq_count = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 20
  %75 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rxq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp1988 = icmp sgt i32 %76, 0
  br i1 %cmp1988, label %for.body20.lr.ph, label %for.end.for.end27_crit_edge

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end27

for.body20.lr.ph:                                 ; preds = %for.end
  %rxq21 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 22
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %i.189 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc26, %for.body20.for.body20_crit_edge ]
  %add.ptr23 = getelementptr %struct.rx_queue, ptr %rxq21, i32 %i.189
  %rx_desc_dma = getelementptr %struct.rx_queue, ptr %rxq21, i32 %i.189, i32 6
  %77 = ptrtoint ptr %rx_desc_dma to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_desc_dma, align 4
  %rx_curr_desc = getelementptr %struct.rx_queue, ptr %rxq21, i32 %i.189, i32 3
  %79 = ptrtoint ptr %rx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_curr_desc, align 4
  %mul = shl i32 %80, 4
  %add = add i32 %mul, %78
  %shl = shl i32 %i.189, 4
  %add24 = add i32 %shl, 524
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %81 = call i32 @llvm.bswap.i32(i32 %add) #18
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %83, i32 %add24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %81) #18, !srcloc !193
  %84 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr23, align 4
  %.neg.i.i81 = mul i32 %85, -36
  %idx.neg.i.i82 = add i32 %.neg.i.i81, -600
  %add.ptr.i.i83 = getelementptr i8, ptr %add.ptr23, i32 %idx.neg.i.i82
  %shl.i84 = shl nuw i32 1, %85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %86 = call i32 @llvm.bswap.i32(i32 %shl.i84) #18
  %base.i.i85 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i83, i32 0, i32 1
  %87 = ptrtoint ptr %base.i.i85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i85, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %88, i32 640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %86) #18, !srcloc !193
  %inc26 = add nuw nsw i32 %i.189, 1
  %89 = ptrtoint ptr %rxq_count to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rxq_count, align 4
  %cmp19 = icmp slt i32 %inc26, %90
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.for.end27_crit_edge

for.body20.for.end27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end27

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body20

for.end27:                                        ; preds = %for.body20.for.end27_crit_edge, %for.end.for.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv643xx_eth_collect_events(ptr nocapture noundef %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !201
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %int_mask = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 9
  %4 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_mask, align 8
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end.if.then7_crit_edge, label %if.end5

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.end5:                                          ; preds = %if.end
  %and3 = and i32 %and, -3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %7, i32 100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %9 = and i32 %8, -16772864
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool6.not = icmp eq i32 %and3, 0
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then7

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %int_cause_ext.065 = phi i32 [ %10, %if.end5.if.then7_crit_edge ], [ 0, %if.end.if.then7_crit_edge ]
  %int_cause.064 = phi i32 [ %and3, %if.end5.if.then7_crit_edge ], [ %and, %if.end.if.then7_crit_edge ]
  %neg = xor i32 %int_cause.064, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %11 = tail call i32 @llvm.bswap.i32(i32 %neg) #18
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %11) #18, !srcloc !193
  %and8 = lshr i32 %int_cause.064, 19
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %17 = xor i32 %16, -1
  %18 = lshr i32 %17, 24
  %and12 = and i32 %18, %and8
  %work_tx_end = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 13
  %19 = ptrtoint ptr %work_tx_end to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %work_tx_end, align 1
  %21 = trunc i32 %and12 to i8
  %conv13 = or i8 %20, %21
  store i8 %conv13, ptr %work_tx_end, align 1
  %and14 = lshr i32 %int_cause.064, 2
  %work_rx = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 14
  %22 = ptrtoint ptr %work_rx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %work_rx, align 8
  %24 = trunc i32 %and14 to i8
  %conv18 = or i8 %23, %24
  store i8 %conv18, ptr %work_rx, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %if.end5.if.end19_crit_edge
  %int_cause_ext.066 = phi i32 [ %int_cause_ext.065, %if.then7 ], [ %10, %if.end5.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %int_cause_ext.066)
  %tobool21.not = icmp eq i32 %int_cause_ext.066, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %neg23 = xor i32 %int_cause_ext.066, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %25 = tail call i32 @llvm.bswap.i32(i32 %neg23) #18
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %27, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %25) #18, !srcloc !193
  %and24 = and i32 %int_cause_ext.066, 1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then22.if.end27_crit_edge, label %if.then26

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  %work_link = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 11
  %28 = ptrtoint ptr %work_link to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %work_link, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then22.if.end27_crit_edge
  %work_tx = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 12
  %29 = ptrtoint ptr %work_tx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %work_tx, align 2
  %31 = trunc i32 %int_cause_ext.066 to i8
  %conv31 = or i8 %30, %31
  store i8 %conv31, ptr %work_tx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end27 ], [ 1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_set_rate(ptr nocapture noundef readonly %mp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %t_clk = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 29
  %0 = ptrtoint ptr %t_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_clk, align 4
  %div1 = udiv i32 %1, 1000
  %div2 = udiv i32 64000000, %div1
  %2 = tail call i32 @llvm.umin.i32(i32 %div2, i32 1023)
  %dev = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %mtu3 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu3, align 4
  %add = add i32 %6, 255
  %shr = lshr i32 %add, 8
  %7 = tail call i32 @llvm.umin.i32(i32 %shr, i32 63)
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp, align 8
  %tx_bw_control = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tx_bw_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bw_control, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %11, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %13 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  %base.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %16 = shl nuw nsw i32 %7, 24
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %18, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %16) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %20, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -65536) #18, !srcloc !193
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %21 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  %base.i5 = getelementptr inbounds %struct.mv643xx_eth_private, ptr %mp, i32 0, i32 1
  %22 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %23, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %21) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %24 = shl nuw nsw i32 %7, 24
  %25 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i5, align 4
  %add.ptr.i8 = getelementptr i8, ptr %26, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %24) #18, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %27 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i5, align 4
  %add.ptr.i10 = getelementptr i8, ptr %28, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 -65536) #18, !srcloc !193
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %sum.shift = lshr i64 %features, 39
  %0 = trunc i64 %sum.shift to i32
  %1 = and i32 %0, 2
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #18, !srcloc !193
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %5 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %9 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %10 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #18
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #18, !srcloc !193
  %arrayidx11.i = getelementptr i8, ptr %1, i32 4
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %14 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %1, i32 5
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %16 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #18
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %17) #18, !srcloc !193
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.uc_addr_filter_mask.exit_crit_edge

entry.uc_addr_filter_mask.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %uc_addr_filter_mask.exit

if.end.i:                                         ; preds = %entry
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %26, i32 5
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %29 = and i8 %28, 15
  %and1.i = zext i8 %29 to i32
  %shl.i45 = shl nuw nsw i32 1, %and1.i
  %uc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %30 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.042.i = load ptr, ptr %uc.i, align 4
  %cmp.not43.i = icmp eq ptr %ha.042.i, %uc.i
  br i1 %cmp.not43.i, label %if.end.i.uc_addr_filter_mask.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.uc_addr_filter_mask.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uc_addr_filter_mask.exit

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %ha.045.i = phi ptr [ %ha.0.i, %if.end19.i.for.body.i_crit_edge ], [ %ha.042.i, %if.end.i.for.body.i_crit_edge ]
  %nibbles.044.i = phi i32 [ %or.i47, %if.end19.i.for.body.i_crit_edge ], [ %shl.i45, %if.end.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.045.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(5) %26, ptr noundef dereferenceable(5) %addr.i, i32 5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool7.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.uc_addr_filter_mask.exit_crit_edge

for.body.i.uc_addr_filter_mask.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uc_addr_filter_mask.exit

if.end9.i:                                        ; preds = %for.body.i
  %arrayidx14.i46 = getelementptr %struct.netdev_hw_addr, ptr %ha.045.i, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx14.i46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.i46, align 1
  %xor41.i = xor i8 %32, %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %xor41.i)
  %tobool17.not.i = icmp ult i8 %xor41.i, 16
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end9.i.uc_addr_filter_mask.exit_crit_edge

if.end9.i.uc_addr_filter_mask.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uc_addr_filter_mask.exit

if.end19.i:                                       ; preds = %if.end9.i
  %33 = and i8 %32, 15
  %and23.i = zext i8 %33 to i32
  %shl24.i = shl nuw nsw i32 1, %and23.i
  %or.i47 = or i32 %shl24.i, %nibbles.044.i
  %34 = ptrtoint ptr %ha.045.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ha.0.i = load ptr, ptr %ha.045.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp.not.i, label %if.end19.i.uc_addr_filter_mask.exit_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end19.i.uc_addr_filter_mask.exit_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %uc_addr_filter_mask.exit

uc_addr_filter_mask.exit:                         ; preds = %if.end19.i.uc_addr_filter_mask.exit_crit_edge, %if.end9.i.uc_addr_filter_mask.exit_crit_edge, %for.body.i.uc_addr_filter_mask.exit_crit_edge, %if.end.i.uc_addr_filter_mask.exit_crit_edge, %entry.uc_addr_filter_mask.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.uc_addr_filter_mask.exit_crit_edge ], [ %shl.i45, %if.end.i.uc_addr_filter_mask.exit_crit_edge ], [ %or.i47, %if.end19.i.uc_addr_filter_mask.exit_crit_edge ], [ 0, %if.end9.i.uc_addr_filter_mask.exit_crit_edge ], [ 0, %for.body.i.uc_addr_filter_mask.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %spec.select43 = select i1 %tobool.not, i32 65535, i32 %retval.0.i
  %port_num = getelementptr i8, ptr %dev, i32 2312
  %35 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_num, align 8
  %shl = shl i32 %36, 10
  %add3 = add i32 %shl, 5632
  %and4 = and i32 %spec.select43, 1
  %and9 = shl i32 %spec.select43, 7
  %37 = and i32 %and9, 256
  %38 = or i32 %37, %and4
  %and14 = shl i32 %spec.select43, 14
  %39 = and i32 %and14, 65536
  %40 = or i32 %38, %39
  %and19 = shl i32 %spec.select43, 21
  %41 = and i32 %and19, 16777216
  %42 = or i32 %40, %41
  %shr = lshr i32 %spec.select43, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #18
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add.ptr.i48 = getelementptr i8, ptr %47, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %43) #18, !srcloc !193
  %48 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_num, align 8
  %shl.1 = shl i32 %49, 10
  %add3.1 = add i32 %shl.1, 5636
  %and4.1 = and i32 %shr, 1
  %and9.1 = shl i32 %shr, 7
  %50 = and i32 %and9.1, 256
  %51 = or i32 %50, %and4.1
  %and14.1 = shl i32 %shr, 14
  %52 = and i32 %and14.1, 65536
  %53 = or i32 %51, %52
  %and19.1 = shl i32 %shr, 21
  %54 = and i32 %and19.1, 16777216
  %55 = or i32 %53, %54
  %shr.1 = lshr i32 %spec.select43, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #18
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr.i48.1 = getelementptr i8, ptr %60, i32 %add3.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.1, i32 %56) #18, !srcloc !193
  %61 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port_num, align 8
  %shl.2 = shl i32 %62, 10
  %add3.2 = add i32 %shl.2, 5640
  %and4.2 = and i32 %shr.1, 1
  %and9.2 = shl nuw nsw i32 %shr.1, 7
  %63 = and i32 %and9.2, 256
  %64 = or i32 %63, %and4.2
  %and14.2 = shl i32 %shr.1, 14
  %65 = and i32 %and14.2, 65536
  %66 = or i32 %64, %65
  %and19.2 = shl i32 %shr.1, 21
  %67 = and i32 %and19.2, 16777216
  %68 = or i32 %66, %67
  %shr.2 = lshr i32 %spec.select43, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #18
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %add.ptr.i48.2 = getelementptr i8, ptr %73, i32 %add3.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.2, i32 %69) #18, !srcloc !193
  %74 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port_num, align 8
  %shl.3 = shl i32 %75, 10
  %add3.3 = add i32 %shl.3, 5644
  %and4.3 = and i32 %shr.2, 1
  %and9.3 = shl nuw nsw i32 %shr.2, 7
  %76 = and i32 %and9.3, 256
  %77 = or i32 %76, %and4.3
  %and14.3 = shl i32 %shr.2, 14
  %78 = and i32 %and14.3, 65536
  %79 = or i32 %77, %78
  %and19.3 = shl i32 %shr.2, 21
  %80 = and i32 %and19.3, 16777216
  %81 = or i32 %79, %80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #18
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %add.ptr.i48.3 = getelementptr i8, ptr %86, i32 %add3.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.3, i32 %82) #18, !srcloc !193
  %87 = and i32 %22, -16777217
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %masksel = zext i1 %tobool.not to i32
  %spec.select = or i32 %88, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %89 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #18
  %90 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #18, !srcloc !193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %cmd_sts.i = alloca i32, align 4
  %l4i_chk.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %txq2 = getelementptr i8, ptr %dev, i32 3208
  %add.ptr = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13.not.i = icmp eq i8 %7, 0
  br i1 %cmp13.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %frag.014.i = phi i32 [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %frag.014.i, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp4.i = icmp ult i32 %9, 9
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.critedge.i_crit_edge

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %frag.014.i, i32 2
  %10 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_offset.i.i, align 4
  %and.i = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.critedge.i_crit_edge, label %land.lhs.true

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.i.for.inc.critedge.i_crit_edge
  %inc.i = add nuw nsw i32 %frag.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.critedge.i.if.end_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.critedge.i.if.end_crit_edge:              ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %13) #18
  %tobool.not.i43.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i43.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.66, ptr noundef %dev, ptr noundef nonnull @.str.67) #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.inc.critedge.i.if.end_crit_edge, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not = icmp eq i16 %19, 0
  br i1 %tobool.i.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call fastcc i32 @txq_submit_tso(ptr noundef %add.ptr, ptr noundef %skb, ptr noundef %dev)
  br label %if.end11

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %.neg.i.i = mul i32 %21, -120
  %idx.neg.i.i = add i32 %.neg.i.i, -904
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_frags2.i, align 2
  %conv.i46 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_sts.i) #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %l4i_chk.i) #18
  %24 = ptrtoint ptr %cmd_sts.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cmd_sts.i, align 4
  %25 = ptrtoint ptr %l4i_chk.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %l4i_chk.i, align 2
  %tx_ring_size.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_ring_size.i, align 4
  %tx_desc_count.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_desc_count.i, align 4
  %sub.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 18
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.else
  %call4.i = tail call i32 @net_ratelimit() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i47 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i47, label %if.then.i.txq_submit_skb.exit_crit_edge, label %if.then5.i

if.then.i.txq_submit_skb.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_submit_skb.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #21
  br label %txq_submit_skb.exit

if.end6.i:                                        ; preds = %if.else
  %call7.i = call fastcc i32 @skb_tx_csum(ptr noundef %add.ptr.i.i, ptr noundef %skb, ptr noundef nonnull %l4i_chk.i, ptr noundef nonnull %cmd_sts.i, i32 noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.txq_submit_skb.exit_crit_edge

if.end6.i.txq_submit_skb.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_submit_skb.exit

if.end10.i:                                       ; preds = %if.end6.i
  %30 = ptrtoint ptr %cmd_sts.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_sts.i, align 4
  %or.i = or i32 %31, -2141192192
  store i32 %or.i, ptr %cmd_sts.i, align 4
  %tx_curr_desc.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 3
  %32 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_curr_desc.i, align 4
  %inc.i48 = add i32 %33, 1
  %34 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i48, i32 %35)
  %cmp13.i = icmp eq i32 %inc.i48, %35
  %spec.store.select.i = select i1 %cmp13.i, i32 0, i32 %inc.i48
  %36 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select.i, ptr %tx_curr_desc.i, align 4
  %tx_desc_area.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 9
  %37 = ptrtoint ptr %tx_desc_area.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_desc_area.i, align 4
  %arrayidx.i49 = getelementptr %struct.tx_desc, ptr %38, i32 %33
  %tx_desc_mapping.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 10
  %39 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_desc_mapping.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %40, i32 %33
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not.i = icmp eq i8 %23, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end10.i
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nr_frags2.i.i, align 2
  %conv.i.i = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp42.not.i.i = icmp eq i8 %45, 0
  br i1 %cmp42.not.i.i, label %if.then20.i.txq_submit_frag_skb.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then20.i.txq_submit_frag_skb.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_submit_frag_skb.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then20.i
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr, align 4
  %.neg.i.i.i = mul i32 %47, -120
  %idx.neg.i.i.i = add i32 %.neg.i.i.i, -904
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i.i
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %dev.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %frag.043.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc22.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %frag.043.i.i
  %50 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_curr_desc.i, align 4
  %inc.i.i = add i32 %51, 1
  %52 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_ring_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %53)
  %cmp6.i.i = icmp eq i32 %inc.i.i, %53
  %spec.store.select.i.i = select i1 %cmp6.i.i, i32 0, i32 %inc.i.i
  %54 = ptrtoint ptr %tx_curr_desc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select.i.i, ptr %tx_curr_desc.i, align 4
  %55 = ptrtoint ptr %tx_desc_area.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_desc_area.i, align 4
  %arrayidx9.i.i = getelementptr %struct.tx_desc, ptr %56, i32 %51
  %57 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_desc_mapping.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %58, i32 %51
  %59 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.043.i.i, i32 %sub.i.i)
  %cmp11.i.i = icmp eq i32 %frag.043.i.i, %sub.i.i
  %spec.select.i.i = select i1 %cmp11.i.i, i32 -2137522176, i32 -2147483648
  %60 = getelementptr %struct.tx_desc, ptr %56, i32 %51, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select.i.i, ptr %60, align 4
  %l4i_chk.i.i = getelementptr %struct.tx_desc, ptr %56, i32 %51, i32 1
  %62 = ptrtoint ptr %l4i_chk.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %l4i_chk.i.i, align 2
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %frag.043.i.i, i32 1
  %63 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bv_len.i.i.i, align 4
  %conv17.i.i = trunc i32 %64 to i16
  %65 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv17.i.i, ptr %arrayidx9.i.i, align 4
  %66 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 133, i32 1
  %68 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent.i.i, align 8
  %conv20.i.i = and i32 %64, 65535
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %49, i32 0, i32 12, i32 %frag.043.i.i, i32 2
  %72 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef %conv20.i.i, i32 noundef 1, i32 noundef 0) #18
  %buf_ptr.i.i = getelementptr %struct.tx_desc, ptr %56, i32 %51, i32 4
  %74 = ptrtoint ptr %buf_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call2.i.i.i, ptr %buf_ptr.i.i, align 4
  %inc22.i.i = add nuw nsw i32 %frag.043.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc22.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.txq_submit_frag_skb.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.body.i.i.txq_submit_frag_skb.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_submit_frag_skb.exit.i

txq_submit_frag_skb.exit.i:                       ; preds = %for.body.i.i.txq_submit_frag_skb.exit.i_crit_edge, %if.then20.i.txq_submit_frag_skb.exit.i_crit_edge
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %77 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_len.i.i, align 8
  %sub.i75.i = sub i32 %76, %78
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #20
  %or22.i = or i32 %31, -2131230720
  %79 = ptrtoint ptr %cmd_sts.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or22.i, ptr %cmd_sts.i, align 4
  %80 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %txq_submit_frag_skb.exit.i
  %length.0.i = phi i32 [ %sub.i75.i, %txq_submit_frag_skb.exit.i ], [ %81, %if.else.i ]
  %82 = ptrtoint ptr %l4i_chk.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %l4i_chk.i, align 2
  %l4i_chk25.i = getelementptr %struct.tx_desc, ptr %38, i32 %33, i32 1
  %84 = ptrtoint ptr %l4i_chk25.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %l4i_chk25.i, align 2
  %conv26.i = trunc i32 %length.0.i to i16
  %85 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv26.i, ptr %arrayidx.i49, align 4
  %dev27.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev27.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 133, i32 1
  %88 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %parent.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %91) #18
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end24.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !215

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %89) #18
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %92 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %89, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %95, %if.end.i.i.i ], [ %93, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #18
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %89, ptr noundef %91, i32 noundef %length.0.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %96 = load ptr, ptr @mem_map, align 4
  %97 = ptrtoint ptr %91 to i32
  %sub.i76.i = add i32 %97, 1073741824
  %shr.i.i = lshr i32 %sub.i76.i, 12
  %add.ptr.i77.i = getelementptr %struct.page, ptr %96, i32 %shr.i.i
  %and.i.i = and i32 %97, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %89, ptr noundef %add.ptr.i77.i, i32 noundef %and.i.i, i32 noundef %length.0.i, i32 noundef 1, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %buf_ptr.i = getelementptr %struct.tx_desc, ptr %38, i32 %33, i32 4
  %98 = ptrtoint ptr %buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i.i, ptr %buf_ptr.i, align 4
  %tx_skb.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 13
  %prev.i.i.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 13, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %101 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %tx_skb.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %102 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %100, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %skb, ptr %100, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.tx_queue, ptr %add.ptr, i32 0, i32 13, i32 1
  %104 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %105, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #18
  %106 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %tx_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %tx_flags.i.i, align 1
  %110 = and i8 %109, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i.i, label %dma_map_single_attrs.exit.i.skb_tx_timestamp.exit.i_crit_edge, label %if.then.i79.i

dma_map_single_attrs.exit.i.skb_tx_timestamp.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tx_timestamp.exit.i

if.then.i79.i:                                    ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #18
  br label %skb_tx_timestamp.exit.i

skb_tx_timestamp.exit.i:                          ; preds = %if.then.i79.i, %dma_map_single_attrs.exit.i.skb_tx_timestamp.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !223
  tail call void @arm_heavy_mb() #18
  %111 = ptrtoint ptr %cmd_sts.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cmd_sts.i, align 4
  %cmd_sts30.i = getelementptr %struct.tx_desc, ptr %38, i32 %33, i32 2
  %113 = ptrtoint ptr %cmd_sts30.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %cmd_sts30.i, align 4
  %114 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr, align 4
  %shl.i = shl nuw i32 1, %115
  %work_tx_end.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i, i32 0, i32 13
  %116 = ptrtoint ptr %work_tx_end.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %work_tx_end.i, align 1
  %118 = trunc i32 %shl.i to i8
  %119 = xor i8 %118, -1
  %conv32.i = and i8 %117, %119
  store i8 %conv32.i, ptr %work_tx_end.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !224
  tail call void @arm_heavy_mb() #18
  %120 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr, align 4
  %.neg.i.i80.i = mul i32 %121, -120
  %idx.neg.i.i81.i = add i32 %.neg.i.i80.i, -904
  %add.ptr.i.i82.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i.i81.i
  %shl.i.i = shl nuw i32 1, %121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %122 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #18
  %base.i.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i82.i, i32 0, i32 1
  %123 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %124, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %122) #18, !srcloc !193
  %add.i = add nuw nsw i32 %conv.i46, 1
  %125 = ptrtoint ptr %tx_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_desc_count.i, align 4
  %add37.i = add i32 %add.i, %126
  store i32 %add37.i, ptr %tx_desc_count.i, align 4
  br label %txq_submit_skb.exit

txq_submit_skb.exit:                              ; preds = %skb_tx_timestamp.exit.i, %if.end6.i.txq_submit_skb.exit_crit_edge, %if.then5.i, %if.then.i.txq_submit_skb.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %skb_tx_timestamp.exit.i ], [ -16, %if.then5.i ], [ -16, %if.then.i.txq_submit_skb.exit_crit_edge ], [ %call7.i, %if.end6.i.txq_submit_skb.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l4i_chk.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_sts.i) #18
  br label %if.end11

if.end11:                                         ; preds = %txq_submit_skb.exit, %if.then8
  %ret.0 = phi i32 [ %call9, %if.then8 ], [ %retval.0.i, %txq_submit_skb.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end11
  %tx_bytes = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv, i32 15
  %127 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %128, %15
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv, i32 14
  %129 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %130, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_desc_count = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv, i32 2
  %131 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_desc_count, align 4
  %tx_stop_threshold = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv, i32 5
  %133 = ptrtoint ptr %tx_stop_threshold to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_stop_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp.not = icmp slt i32 %132, %134
  br i1 %cmp.not, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %state.i = getelementptr %struct.netdev_queue, ptr %3, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #18
  br label %cleanup

if.else17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  %tx_dropped = getelementptr %struct.tx_queue, ptr %txq2, i32 %conv, i32 16
  %135 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_dropped, align 4
  %inc18 = add i32 %136, 1
  store i32 %inc18, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.then13.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.else17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %dev)
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.promiscuous.i_crit_edge

entry.promiscuous.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %promiscuous.i

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 512) #25
  %tobool2.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.promiscuous.i_crit_edge, label %if.end4.i

if.end.i.promiscuous.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %promiscuous.i

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i32, ptr %call7.i.i.i.i, i32 64
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %3 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ha.094.i = load ptr, ptr %mc.i, align 4
  %cmp.not95.i = icmp eq ptr %ha.094.i, %mc.i
  br i1 %cmp.not95.i, label %if.end4.i.for.cond24.preheader.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.for.cond24.preheader.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %if.end14.i.for.cond24.preheader.i_crit_edge, %if.end4.i.for.cond24.preheader.i_crit_edge
  %port_num.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body27.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %ha.096.i = phi ptr [ %ha.0.i, %if.end14.i.for.body.i_crit_edge ], [ %ha.094.i, %if.end4.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.096.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(5) %addr.i, ptr noundef nonnull dereferenceable(5) @.str.74, i32 5) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp10.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx12.i = getelementptr %struct.netdev_hw_addr, ptr %ha.096.i, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx12.i, align 1
  br label %if.end14.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %crc.020.i.i = phi i32 [ %crc.2.7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %addr.i, i32 %i.021.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %xor.i.i = xor i32 %crc.020.i.i, %conv.i.i
  %shl.i.i = shl i32 %xor.i.i, 8
  %8 = and i32 %xor.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  %xor7.i.i = select i1 %tobool.not.i.i, i32 0, i32 33664
  %crc.2.i.i = xor i32 %xor7.i.i, %shl.i.i
  %9 = and i32 %xor.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  %xor7.1.i.i = select i1 %tobool.not.1.i.i, i32 0, i32 16832
  %crc.2.1.i.i = xor i32 %crc.2.i.i, %xor7.1.i.i
  %10 = and i32 %xor.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2.i.i = icmp eq i32 %10, 0
  %xor7.2.i.i = select i1 %tobool.not.2.i.i, i32 0, i32 8416
  %11 = and i32 %xor.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.3.i.i = icmp eq i32 %11, 0
  %xor7.3.i.i = select i1 %tobool.not.3.i.i, i32 0, i32 4208
  %12 = and i32 %xor.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.4.i.i = icmp eq i32 %12, 0
  %xor7.4.i.i = select i1 %tobool.not.4.i.i, i32 0, i32 2104
  %13 = and i32 %xor.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.5.i.i = icmp eq i32 %13, 0
  %xor7.5.i.i = select i1 %tobool.not.5.i.i, i32 0, i32 1052
  %and.6.i.i = and i32 %crc.2.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  %xor7.6.i.i = select i1 %tobool.not.6.i.i, i32 0, i32 526
  %and.7.i.i = and i32 %crc.2.1.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  %xor7.7.i.i = select i1 %tobool.not.7.i.i, i32 0, i32 263
  %crc.2.2.i.i = xor i32 %xor7.3.i.i, %xor7.2.i.i
  %crc.2.3.i.i = xor i32 %crc.2.2.i.i, %xor7.4.i.i
  %crc.2.4.i.i = xor i32 %crc.2.3.i.i, %xor7.5.i.i
  %crc.2.5.i.i = xor i32 %crc.2.4.i.i, %crc.2.1.i.i
  %crc.2.6.i.i = xor i32 %crc.2.5.i.i, %xor7.6.i.i
  %crc.2.7.i.i = xor i32 %crc.2.6.i.i, %xor7.7.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %addr_crc.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

addr_crc.exit.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i = trunc i32 %crc.2.7.i.i to i8
  br label %if.end14.i

if.end14.i:                                       ; preds = %addr_crc.exit.i, %if.then11.i
  %table.0.i = phi ptr [ %call7.i.i.i.i, %if.then11.i ], [ %arrayidx.i, %addr_crc.exit.i ]
  %entry8.0.i = phi i8 [ %5, %if.then11.i ], [ %conv.i, %addr_crc.exit.i ]
  %conv15.i = zext i8 %entry8.0.i to i32
  %and16.i = shl nuw nsw i32 %conv15.i, 3
  %mul.i = and i32 %and16.i, 24
  %shl.i = shl nuw nsw i32 1, %mul.i
  %14 = lshr i32 %conv15.i, 2
  %arrayidx18.i = getelementptr i32, ptr %table.0.i, i32 %14
  %15 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18.i, align 4
  %or.i = or i32 %shl.i, %16
  store i32 %or.i, ptr %arrayidx18.i, align 4
  %17 = ptrtoint ptr %ha.096.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0.i = load ptr, ptr %ha.096.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %if.end14.i.for.cond24.preheader.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end14.i.for.cond24.preheader.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond24.preheader.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.cond24.preheader.i
  %i.097.i = phi i32 [ 0, %for.cond24.preheader.i ], [ %inc.i, %for.body27.i.for.body27.i_crit_edge ]
  %18 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_num.i, align 8
  %shl28.i = shl i32 %19, 10
  %mul29.i = shl i32 %i.097.i, 2
  %add.i = add nuw nsw i32 %mul29.i, 5120
  %add30.i = add i32 %add.i, %shl28.i
  %arrayidx31.i = getelementptr i32, ptr %call7.i.i.i.i, i32 %i.097.i
  %20 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx31.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #18
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %26, i32 %add30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %22) #18, !srcloc !193
  %27 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_num.i, align 8
  %shl33.i = shl i32 %28, 10
  %add34.i = add nuw nsw i32 %mul29.i, 5376
  %add36.i = add i32 %add34.i, %shl33.i
  %arrayidx37.i = getelementptr i32, ptr %arrayidx.i, i32 %i.097.i
  %29 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx37.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #18
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %35, i32 %add36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %31) #18, !srcloc !193
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end39.i, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body27.i

for.end39.i:                                      ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #18
  br label %mv643xx_eth_program_multicast_filter.exit

promiscuous.i:                                    ; preds = %if.end.i.promiscuous.i_crit_edge, %entry.promiscuous.i_crit_edge
  %port_num44.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.for.body43.i_crit_edge, %promiscuous.i
  %i.198.i = phi i32 [ 0, %promiscuous.i ], [ %inc55.i, %for.body43.i.for.body43.i_crit_edge ]
  %36 = ptrtoint ptr %port_num44.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_num44.i, align 8
  %shl45.i = shl i32 %37, 10
  %mul47.i = shl i32 %i.198.i, 2
  %add46.i = add nuw nsw i32 %mul47.i, 5120
  %add48.i = add i32 %add46.i, %shl45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %41, i32 %add48.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 16843009) #18, !srcloc !193
  %42 = ptrtoint ptr %port_num44.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_num44.i, align 8
  %shl50.i = shl i32 %43, 10
  %add51.i = add nuw nsw i32 %mul47.i, 5376
  %add53.i = add i32 %add51.i, %shl50.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !210
  tail call void @arm_heavy_mb() #18
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %47, i32 %add53.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 16843009) #18, !srcloc !193
  %inc55.i = add nuw nsw i32 %i.198.i, 1
  %exitcond99.not.i = icmp eq i32 %inc55.i, 64
  br i1 %exitcond99.not.i, label %for.body43.i.mv643xx_eth_program_multicast_filter.exit_crit_edge, label %for.body43.i.for.body43.i_crit_edge

for.body43.i.for.body43.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body43.i

for.body43.i.mv643xx_eth_program_multicast_filter.exit_crit_edge: ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_program_multicast_filter.exit

mv643xx_eth_program_multicast_filter.exit:        ; preds = %for.body43.i.mv643xx_eth_program_multicast_filter.exit_crit_edge, %for.end39.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 73
  %5 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #18
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63
  %conv.i = zext i8 %6 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #18
  tail call fastcc void @mv643xx_eth_program_unicast_filter(ptr noundef %dev)
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_ioctl(ptr nocapture noundef readonly %dev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %1, ptr noundef %ifr, i32 noundef %cmd) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %base.i.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #18, !srcloc !201
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  %9 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i = icmp eq i16 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %and.i = and i32 %5, -8207
  br label %mv643xx_eth_adjust_link.exit

if.end.i:                                         ; preds = %if.then3
  %or.i = or i32 %5, 8206
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %11, label %if.else.i [
    i32 1000, label %if.then4.i
    i32 100, label %if.then12.i
  ]

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %or6.i = or i32 %5, 10493966
  br label %mv643xx_eth_adjust_link.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %and8.i = and i32 %or.i, -25165825
  %or13.i = or i32 %and8.i, 16777216
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %and14.i = and i32 %or.i, -25165825
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then12.i
  %pscr.0.i = phi i32 [ %or13.i, %if.then12.i ], [ %and14.i, %if.else.i ]
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %13 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp17.i = icmp eq i32 %14, 1
  br i1 %cmp17.i, label %if.then18.i, label %if.else20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %or19.i = or i32 %pscr.0.i, 2097152
  br label %mv643xx_eth_adjust_link.exit

if.else20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  %and21.i = and i32 %pscr.0.i, -2097153
  br label %mv643xx_eth_adjust_link.exit

mv643xx_eth_adjust_link.exit:                     ; preds = %if.else20.i, %if.then18.i, %if.then4.i, %if.then.i
  %pscr.1.i = phi i32 [ %and.i, %if.then.i ], [ %or6.i, %if.then4.i ], [ %or19.i, %if.then18.i ], [ %and21.i, %if.else20.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %15 = tail call i32 @llvm.bswap.i32(i32 %pscr.1.i) #18
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %15) #18, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %mv643xx_eth_adjust_link.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %mv643xx_eth_adjust_link.exit ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv643xx_eth_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu.i, align 4
  %add1.i = add i32 %4, 43
  %and.i = and i32 %add1.i, -8
  %skb_size2.i = getelementptr i8, ptr %dev, i32 2836
  %5 = ptrtoint ptr %skb_size2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %skb_size2.i, align 4
  tail call fastcc void @tx_set_rate(ptr noundef %add.ptr.i)
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mv643xx_eth_stop(ptr noundef %dev)
  %call3 = tail call i32 @mv643xx_eth_open(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #21
  %tx_timeout_task = getelementptr i8, ptr %dev, i32 2552
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_task) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv643xx_eth_netpoll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #18, !srcloc !193
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %3, i32 104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #18, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !207
  %call1.i = tail call fastcc i32 @mv643xx_eth_collect_events(ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.mv643xx_eth_irq.exit_crit_edge, label %if.end.i, !prof !211

entry.mv643xx_eth_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_irq.exit

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %6, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #18, !srcloc !193
  %napi.i = getelementptr i8, ptr %dev, i32 2600
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #18
  br i1 %call.i.i, label %if.then.i.i, label %if.end.i.mv643xx_eth_irq.exit_crit_edge

if.end.i.mv643xx_eth_irq.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mv643xx_eth_irq.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi.i) #18
  br label %mv643xx_eth_irq.exit

mv643xx_eth_irq.exit:                             ; preds = %if.then.i.i, %if.end.i.mv643xx_eth_irq.exit_crit_edge, %entry.mv643xx_eth_irq.exit_crit_edge
  %int_mask = getelementptr i8, ptr %dev, i32 2824
  %7 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  tail call void @arm_heavy_mb() #18
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %9) #18, !srcloc !193
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @txq_submit_tso(ptr noundef %txq, ptr noundef %skb, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %cmd_csum.i = alloca i32, align 4
  %l4i_chk.i = alloca i16, align 2
  %tso = alloca %struct.tso_t, align 4
  %first_cmd_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq, align 4
  %.neg.i = mul i32 %1, -120
  %idx.neg.i = add i32 %.neg.i, -904
  %add.ptr.i = getelementptr i8, ptr %txq, i32 %idx.neg.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tso) #18
  %2 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tso_t, ptr %tso, i32 0, i32 2
  %4 = call ptr @memset(ptr %tso, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_cmd_sts)
  %5 = ptrtoint ptr %first_cmd_sts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %first_cmd_sts, align 4
  %tx_desc_count = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 2
  %6 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_desc_count, align 4
  %call1 = tail call i32 @tso_count_descs(ptr noundef %skb) #18
  %add = add i32 %call1, %7
  %tx_ring_size = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 1
  %8 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.not = icmp slt i32 %add, %9
  br i1 %cmp.not, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @txq_submit_tso.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@txq_submit_tso, %if.then6)) #18
          to label %cleanup60 [label %if.then6], !srcloc !225

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @txq_submit_tso.__UNIQUE_ID_ddebug508, ptr noundef %dev, ptr noundef nonnull @.str.69) #18
  br label %cleanup60

if.end9:                                          ; preds = %entry
  %tx_desc_area = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 9
  %10 = ptrtoint ptr %tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_desc_area, align 4
  %tx_curr_desc = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 3
  %12 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_curr_desc, align 4
  %call10 = call i32 @tso_start(ptr noundef %skb, ptr noundef nonnull %tso) #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %sub = sub i32 %15, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11156 = icmp sgt i32 %sub, 0
  br i1 %cmp11156, label %while.body.lr.ph, label %if.end9.while.end49_crit_edge

if.end9.while.end49_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end49

while.body.lr.ph:                                 ; preds = %if.end9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tso_hdrs = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tso_hdrs_dma.i = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 8
  %tx_desc_mapping.i = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 10
  %parent.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %cleanup.while.cond.loopexit_crit_edge, %txq_put_hdr_tso.exit.while.cond.loopexit_crit_edge
  %desc_count.1.lcssa = phi i32 [ %desc_count.1152, %txq_put_hdr_tso.exit.while.cond.loopexit_crit_edge ], [ %desc_count.1, %cleanup.while.cond.loopexit_crit_edge ]
  %cmp11 = icmp sgt i32 %sub18, 0
  br i1 %cmp11, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.while.end49_crit_edge

while.cond.loopexit.while.end49_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end49

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %total_len.0158 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub18, %while.cond.loopexit.while.body_crit_edge ]
  %desc_count.0157 = phi i32 [ 0, %while.body.lr.ph ], [ %desc_count.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count.0157)
  %cmp12 = icmp eq i32 %desc_count.0157, 0
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size, align 4
  %conv = zext i16 %19 to i32
  %20 = call i32 @llvm.umin.i32(i32 %total_len.0158, i32 %conv)
  %sub18 = sub nsw i32 %total_len.0158, %20
  %21 = ptrtoint ptr %tso_hdrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tso_hdrs, align 4
  %23 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_curr_desc, align 4
  %mul = shl i32 %24, 8
  %add.ptr = getelementptr i8, ptr %22, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp20 = icmp eq i32 %sub18, 0
  call void @tso_build_hdr(ptr noundef %skb, ptr noundef %add.ptr, ptr noundef nonnull %tso, i32 noundef %20, i1 noundef zeroext %cmp20) #18
  %25 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %txq, align 4
  %.neg.i.i = mul i32 %26, -120
  %idx.neg.i.i = add i32 %.neg.i.i, -904
  %add.ptr.i.i = getelementptr i8, ptr %txq, i32 %idx.neg.i.i
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %29 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_csum.i) #18
  %34 = ptrtoint ptr %cmd_csum.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cmd_csum.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %l4i_chk.i) #18
  %35 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_curr_desc, align 4
  %37 = ptrtoint ptr %tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_desc_area, align 4
  %call3.i = call fastcc i32 @skb_tx_csum(ptr noundef %add.ptr.i.i, ptr noundef %skb, ptr noundef nonnull %l4i_chk.i, ptr noundef nonnull %cmd_csum.i, i32 noundef %20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %while.body.txq_put_hdr_tso.exit_crit_edge, label %do.end.i

while.body.txq_put_hdr_tso.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %txq_put_hdr_tso.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 791, i32 noundef 9, ptr noundef nonnull @.str.70) #18
  br label %txq_put_hdr_tso.exit

txq_put_hdr_tso.exit:                             ; preds = %do.end.i, %while.body.txq_put_hdr_tso.exit_crit_edge
  %arrayidx.i = getelementptr %struct.tx_desc, ptr %38, i32 %36
  %39 = lshr i16 %bf.load.i.i.i, 10
  %40 = and i16 %39, 60
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %l4i_chk21.i = getelementptr %struct.tx_desc, ptr %38, i32 %36, i32 1
  %41 = ptrtoint ptr %l4i_chk21.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %l4i_chk21.i, align 2
  %42 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv.i = add i16 %40, %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %tso_hdrs_dma.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tso_hdrs_dma.i, align 4
  %46 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_curr_desc, align 4
  %mul.i = shl i32 %47, 8
  %add23.i = add i32 %mul.i, %45
  %buf_ptr.i = getelementptr %struct.tx_desc, ptr %38, i32 %36, i32 4
  %48 = ptrtoint ptr %buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add23.i, ptr %buf_ptr.i, align 4
  %49 = ptrtoint ptr %cmd_csum.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_csum.i, align 4
  %or25.i = or i32 %50, -2141192192
  %cmd_sts28.i = getelementptr %struct.tx_desc, ptr %38, i32 %36, i32 2
  %cmd_sts28.sink.i = select i1 %cmp12, ptr %first_cmd_sts, ptr %cmd_sts28.i
  %51 = ptrtoint ptr %cmd_sts28.sink.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or25.i, ptr %cmd_sts28.sink.i, align 4
  %52 = load i32, ptr %tx_curr_desc, align 4
  %inc.i = add i32 %52, 1
  %53 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %54)
  %cmp.i = icmp eq i32 %inc.i, %54
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %55 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select.i, ptr %tx_curr_desc, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %l4i_chk.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_csum.i) #18
  %desc_count.1152 = add i32 %desc_count.0157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp24153.not = icmp eq i32 %20, 0
  br i1 %cmp24153.not, label %txq_put_hdr_tso.exit.while.cond.loopexit_crit_edge, label %while.body26.lr.ph

txq_put_hdr_tso.exit.while.cond.loopexit_crit_edge: ; preds = %txq_put_hdr_tso.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.loopexit

while.body26.lr.ph:                               ; preds = %txq_put_hdr_tso.exit
  %spec.select.i = select i1 %cmp20, i32 -2137522176, i32 -2145910784
  br label %while.body26

while.body26:                                     ; preds = %cleanup.while.body26_crit_edge, %while.body26.lr.ph
  %desc_count.1155 = phi i32 [ %desc_count.1152, %while.body26.lr.ph ], [ %desc_count.1, %cleanup.while.body26_crit_edge ]
  %data_left.0154 = phi i32 [ %20, %while.body26.lr.ph ], [ %sub44, %cleanup.while.body26_crit_edge ]
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %2, align 4
  %58 = call i32 @llvm.smin.i32(i32 %57, i32 %data_left.0154)
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_left.0154, i32 %57)
  %cmp36.not = icmp sgt i32 %data_left.0154, %57
  %61 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_curr_desc, align 4
  %inc.i115 = add i32 %62, 1
  %63 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i115, i32 %64)
  %cmp.i117 = icmp eq i32 %inc.i115, %64
  %spec.store.select.i118 = select i1 %cmp.i117, i32 0, i32 %inc.i115
  %65 = ptrtoint ptr %tx_curr_desc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.store.select.i118, ptr %tx_curr_desc, align 4
  %66 = ptrtoint ptr %tx_desc_area to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_desc_area, align 4
  %arrayidx.i120 = getelementptr %struct.tx_desc, ptr %67, i32 %62
  %68 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_desc_mapping.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %69, i32 %62
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx4.i, align 1
  %l4i_chk.i121 = getelementptr %struct.tx_desc, ptr %67, i32 %62, i32 1
  %71 = ptrtoint ptr %l4i_chk.i121 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %l4i_chk.i121, align 2
  %conv.i122 = trunc i32 %58 to i16
  %72 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i122, ptr %arrayidx.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %58)
  %cmp5.i = icmp sgt i32 %58, 8
  %73 = ptrtoint ptr %60 to i32
  %and.i = and i32 %73, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i123 = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp5.i, %tobool.not.i123
  br i1 %or.cond.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #20
  %74 = ptrtoint ptr %tso_hdrs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tso_hdrs, align 4
  %mul.i124 = shl i32 %62, 8
  %add.ptr.i125 = getelementptr i8, ptr %75, i32 %mul.i124
  %76 = call ptr @memcpy(ptr %add.ptr.i125, ptr %60, i32 %58)
  %77 = ptrtoint ptr %tso_hdrs_dma.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tso_hdrs_dma.i, align 4
  %add.i = add i32 %78, %mul.i124
  %buf_ptr.i127 = getelementptr %struct.tx_desc, ptr %67, i32 %62, i32 4
  %79 = ptrtoint ptr %buf_ptr.i127 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i, ptr %buf_ptr.i127, align 4
  br label %cleanup

if.else.i:                                        ; preds = %while.body26
  %80 = ptrtoint ptr %tx_desc_mapping.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tx_desc_mapping.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %81, i32 %62
  %82 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx10.i, align 1
  %83 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent.i, align 8
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %60) #18
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !215

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %84) #18
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %88, %if.end.i.i.i ], [ %86, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #18
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @debug_dma_map_single(ptr noundef %84, ptr noundef %60, i32 noundef %58) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %73, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i128 = getelementptr %struct.page, ptr %89, i32 %shr.i.i
  %and.i.i = and i32 %73, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %84, ptr noundef %add.ptr.i.i128, i32 noundef %and.i.i, i32 noundef %58, i32 noundef 1, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %buf_ptr12.i = getelementptr %struct.tx_desc, ptr %67, i32 %62, i32 4
  %90 = ptrtoint ptr %buf_ptr12.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i.i, ptr %buf_ptr12.i, align 4
  %91 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent.i, align 8
  call void @debug_dma_mapping_error(ptr noundef %92, i32 noundef %retval.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %cleanup45.thread, label %dma_map_single_attrs.exit.i.cleanup_crit_edge

dma_map_single_attrs.exit.i.cleanup_crit_edge:    ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup45.thread:                                 ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 756, i32 noundef 9, ptr noundef nonnull @.str.72) #18
  br label %cleanup60

cleanup:                                          ; preds = %dma_map_single_attrs.exit.i.cleanup_crit_edge, %if.then7.i
  %cmd_sts.0.i = select i1 %cmp36.not, i32 -2147483648, i32 %spec.select.i
  %cmd_sts51.i = getelementptr %struct.tx_desc, ptr %67, i32 %62, i32 2
  %93 = ptrtoint ptr %cmd_sts51.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %cmd_sts.0.i, ptr %cmd_sts51.i, align 4
  %sub44 = sub i32 %data_left.0154, %58
  call void @tso_build_data(ptr noundef %skb, ptr noundef nonnull %tso, i32 noundef %58) #18
  %desc_count.1 = add i32 %desc_count.1155, 1
  %cmp24 = icmp sgt i32 %sub44, 0
  br i1 %cmp24, label %cleanup.while.body26_crit_edge, label %cleanup.while.cond.loopexit_crit_edge

cleanup.while.cond.loopexit_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.loopexit

cleanup.while.body26_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body26

while.end49:                                      ; preds = %while.cond.loopexit.while.end49_crit_edge, %if.end9.while.end49_crit_edge
  %desc_count.0.lcssa = phi i32 [ 0, %if.end9.while.end49_crit_edge ], [ %desc_count.1.lcssa, %while.cond.loopexit.while.end49_crit_edge ]
  %tx_skb = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 13, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i.i, align 4
  %96 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %tx_skb, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %97 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %skb, ptr %95, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.tx_queue, ptr %txq, i32 0, i32 13, i32 1
  %99 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %100, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  call void @skb_clone_tx_timestamp(ptr noundef %skb) #18
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %101 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %tx_flags.i, align 1
  %105 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i131 = icmp eq i8 %105, 0
  br i1 %tobool.not.i131, label %while.end49.skb_tx_timestamp.exit_crit_edge, label %if.then.i

while.end49.skb_tx_timestamp.exit_crit_edge:      ; preds = %while.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %while.end49
  call void @__sanitizer_cov_trace_pc() #20
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #18
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %while.end49.skb_tx_timestamp.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !226
  call void @arm_heavy_mb() #18
  %106 = ptrtoint ptr %first_cmd_sts to i32
  call void @__asan_load4_noabort(i32 %106)
  %first_cmd_sts.0.first_cmd_sts.0. = load i32, ptr %first_cmd_sts, align 4
  %cmd_sts = getelementptr %struct.tx_desc, ptr %11, i32 %13, i32 2
  %107 = ptrtoint ptr %cmd_sts to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %first_cmd_sts.0.first_cmd_sts.0., ptr %cmd_sts, align 4
  %108 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %txq, align 4
  %shl = shl nuw i32 1, %109
  %work_tx_end = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i, i32 0, i32 13
  %110 = ptrtoint ptr %work_tx_end to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %work_tx_end, align 1
  %112 = trunc i32 %shl to i8
  %113 = xor i8 %112, -1
  %conv54 = and i8 %111, %113
  store i8 %conv54, ptr %work_tx_end, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !227
  call void @arm_heavy_mb() #18
  %114 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %txq, align 4
  %.neg.i.i132 = mul i32 %115, -120
  %idx.neg.i.i133 = add i32 %.neg.i.i132, -904
  %add.ptr.i.i134 = getelementptr i8, ptr %txq, i32 %idx.neg.i.i133
  %shl.i = shl nuw i32 1, %115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !208
  call void @arm_heavy_mb() #18
  %116 = call i32 @llvm.bswap.i32(i32 %shl.i) #18
  %base.i.i = getelementptr inbounds %struct.mv643xx_eth_private, ptr %add.ptr.i.i134, i32 0, i32 1
  %117 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %118, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %116) #18, !srcloc !193
  %119 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tx_desc_count, align 4
  %add59 = add i32 %120, %desc_count.0.lcssa
  store i32 %add59, ptr %tx_desc_count, align 4
  br label %cleanup60

cleanup60:                                        ; preds = %skb_tx_timestamp.exit, %cleanup45.thread, %if.then6, %do.body2
  %retval.0 = phi i32 [ 0, %skb_tx_timestamp.exit ], [ -16, %if.then6 ], [ -16, %do.body2 ], [ -12, %cleanup45.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_cmd_sts)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tso) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_count_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tso_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tso_build_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_tx_csum(ptr nocapture noundef readonly %mp, ptr noundef %skb, ptr nocapture noundef writeonly %l4i_chk, ptr nocapture noundef writeonly %command, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %if.then, label %entry.if.end79_crit_edge

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %3, label %do.body11 [
    i16 -32512, label %if.then.do.end16_crit_edge
    i16 2048, label %if.then.do.end16_crit_edge116
  ]

if.then.do.end16_crit_edge116:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end16

if.then.do.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end16

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/marvell/mv643xx_eth.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 680, 0\0A.popsection", ""() #18, !srcloc !228
  unreachable

do.end16:                                         ; preds = %if.then.do.end16_crit_edge, %if.then.do.end16_crit_edge116
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, -14
  %sub17 = sub i32 %length, %sub.ptr.sub
  %11 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mp, align 8
  %tx_csum_limit = getelementptr inbounds %struct.mv643xx_eth_shared_private, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %tx_csum_limit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_csum_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %14)
  %cmp18 = icmp sle i32 %sub17, %14
  %and = and i32 %sub, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp18, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %if.end32, label %if.then27, !prof !229

if.then27:                                        ; preds = %do.end16
  %call28 = tail call i32 @skb_checksum_help(ptr noundef %skb) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end79_crit_edge, label %if.then27.cleanup80_crit_edge

if.then27.cleanup80_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup80

if.then27.if.end79_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

if.end32:                                         ; preds = %do.end16
  %and33 = shl nuw nsw i32 %sub, 13
  %15 = and i32 %and33, 32768
  %and37 = shl nuw nsw i32 %sub, 6
  %16 = and i32 %and37, 512
  %17 = or i32 %16, %15
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load43 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear44 = and i8 %bf.load43, 15
  %conv45 = zext i8 %bf.clear44 to i32
  %shl = shl nuw nsw i32 %conv45, 11
  %or46 = or i32 %shl, %17
  %or47 = or i32 %or46, 394240
  %protocol49 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %protocol49 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol49, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %20, label %do.end64 [
    i8 17, label %sw.bb
    i8 6, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %or51 = or i32 %or46, 459776
  %22 = ptrtoint ptr %l4i_chk to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %l4i_chk, align 2
  br label %if.end79

sw.bb52:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %l4i_chk to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %l4i_chk, align 2
  br label %if.end79

do.end64:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 714, i32 noundef 9, ptr noundef nonnull @.str.71) #18
  br label %if.end79

if.end79:                                         ; preds = %do.end64, %sw.bb52, %sw.bb, %if.then27.if.end79_crit_edge, %entry.if.end79_crit_edge
  %cmd.5 = phi i32 [ %or51, %sw.bb ], [ %or47, %sw.bb52 ], [ %or47, %do.end64 ], [ 10240, %if.then27.if.end79_crit_edge ], [ 10240, %entry.if.end79_crit_edge ]
  %24 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cmd.5, ptr %command, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %if.end79, %if.then27.cleanup80_crit_edge
  %retval.1 = phi i32 [ 0, %if.end79 ], [ %call28, %if.then27.cleanup80_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !170, !172, !174, !176, !178, !180}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__initcall__kmod_mv643xx_eth__523_3292_mv643xx_eth_init_module6, !1, !"__initcall__kmod_mv643xx_eth__523_3292_mv643xx_eth_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3292, i32 1}
!2 = !{ptr @__exitcall_mv643xx_eth_cleanup_module, !3, !"__exitcall_mv643xx_eth_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3298, i32 1}
!4 = !{ptr @__UNIQUE_ID_author524, !5, !"__UNIQUE_ID_author524", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3300, i32 1}
!6 = !{ptr @__UNIQUE_ID_description525, !7, !"__UNIQUE_ID_description525", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3302, i32 1}
!8 = !{ptr @__UNIQUE_ID_file526, !9, !"__UNIQUE_ID_file526", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3303, i32 1}
!10 = !{ptr @__UNIQUE_ID_license527, !9, !"__UNIQUE_ID_license527", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias528, !12, !"__UNIQUE_ID_alias528", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3304, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias529, !14, !"__UNIQUE_ID_alias529", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3305, i32 1}
!15 = !{ptr @drivers, !16, !"drivers", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3283, i32 39}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2905, i32 11}
!19 = !{ptr @mv643xx_eth_shared_driver, !20, !"mv643xx_eth_shared_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2901, i32 31}
!21 = !{ptr @mv643xx_eth_shared_probe.mv643xx_eth_version_printed, !22, !"mv643xx_eth_version_printed", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2839, i32 13}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2847, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mv643xx_eth_shared_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @mv643xx_eth_shared_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mv643xx_eth_driver_version, !30, !"mv643xx_eth_driver_version", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 57, i32 13}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2813, i32 2}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2731, i32 3}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mv643xx_eth_shared_of_add_port._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @mv643xx_eth_shared_of_add_port._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2735, i32 32}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2736, i32 3}
!44 = !{ptr @mv643xx_eth_shared_of_add_port._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mv643xx_eth_shared_of_add_port._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2741, i32 3}
!48 = !{ptr @mv643xx_eth_shared_of_add_port._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mv643xx_eth_shared_of_add_port._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2749, i32 3}
!52 = !{ptr @mv643xx_eth_shared_of_add_port._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mv643xx_eth_shared_of_add_port._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2757, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2758, i32 2}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2759, i32 2}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2760, i32 2}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2761, i32 2}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2762, i32 2}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2764, i32 39}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2767, i32 29}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2768, i32 29}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2771, i32 32}
!74 = !{ptr @port_platdev, !75, !"port_platdev", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2705, i32 32}
!76 = !{ptr @mv643xx_eth_shared_ids, !77, !"mv643xx_eth_shared_ids", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2689, i32 34}
!78 = !{ptr @mv643xx_eth_driver, !79, !"mv643xx_eth_driver", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3274, i32 31}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3100, i32 3}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mv643xx_eth_probe._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mv643xx_eth_probe._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3105, i32 3}
!87 = !{ptr @mv643xx_eth_probe._entry.31, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mv643xx_eth_probe._entry_ptr.33, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3128, i32 9}
!91 = !{ptr @mv643xx_eth_probe.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3180, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mv643xx_eth_probe.__key.36, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3183, i32 2}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mv643xx_eth_probe.__key.38, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3185, i32 2}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mv643xx_eth_probe.__key.40, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3189, i32 2}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3228, i32 21}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3232, i32 22}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2960, i32 20}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3008, i32 36}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3009, i32 5}
!113 = !{ptr @mv643xx_eth_ethtool_ops, !114, !"mv643xx_eth_ethtool_ops", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1743, i32 33}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1610, i32 31}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1611, i32 29}
!119 = !{ptr @mv643xx_eth_driver_name, !120, !"mv643xx_eth_driver_name", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 56, i32 13}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1561, i32 20}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1675, i32 8}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2019, i32 23}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1112, i32 25}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2434, i32 19}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1966, i32 7}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2070, i32 7}
!139 = !{ptr @skb_queue_head_init.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mv643xx_eth_stats, !143, !"mv643xx_eth_stats", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1438, i32 39}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2206, i32 21}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2237, i32 19}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2238, i32 23}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2238, i32 32}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2238, i32 45}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2238, i32 52}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 582, i32 9}
!158 = !{ptr @mv643xx_eth_netdev_ops, !159, !"mv643xx_eth_netdev_ops", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 3072, i32 36}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1004, i32 17}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1005, i32 10}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 829, i32 3}
!166 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @txq_submit_tso.__UNIQUE_ID_ddebug508, !165, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 791, i32 3}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 714, i32 4}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 756, i32 4}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 944, i32 20}
!176 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 1883, i32 17}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2579, i32 7}
!180 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/marvell/mv643xx_eth.c", i32 2602, i32 19}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2158112701}
!193 = !{i64 6295524}
!194 = !{i64 2158113132}
!195 = !{i64 2158113563}
!196 = !{i64 2158114073}
!197 = !{i64 2158114767}
!198 = !{i64 2158115251}
!199 = !{!"auto-init"}
!200 = !{i64 2158115681}
!201 = !{i64 6295942}
!202 = !{i64 2158116420}
!203 = !{i64 2158116649}
!204 = !{i64 2158117361}
!205 = !{i64 2158117592}
!206 = !{i64 2158118304}
!207 = !{i64 2158009189}
!208 = !{i64 2158010151}
!209 = !{i64 2158008534}
!210 = !{i64 2158009581}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i64 2158152756, i64 2158153264, i64 2158152793, i64 2158152849, i64 2158152883, i64 2158152907, i64 2158152948, i64 2158152969, i64 2158152997, i64 2158153031}
!213 = !{i64 939667, i64 939694}
!214 = !{i64 940362, i64 940389, i64 940422, i64 940443, i64 940470, i64 940496}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{i32 0, i32 33}
!217 = !{i64 2158014294}
!218 = !{i64 2158106034, i64 2158106542, i64 2158106071, i64 2158106127, i64 2158106161, i64 2158106185, i64 2158106226, i64 2158106247, i64 2158106275, i64 2158106309}
!219 = !{i64 2148425498, i64 2148425778, i64 2148426112, i64 2148426446}
!220 = !{i64 2158102890, i64 2158103398, i64 2158102927, i64 2158102983, i64 2158103017, i64 2158103041, i64 2158103082, i64 2158103103, i64 2158103131, i64 2158103165}
!221 = !{i64 2158017932}
!222 = !{i64 2158018102}
!223 = !{i64 2158034171}
!224 = !{i64 2158034319}
!225 = !{i64 2148400311, i64 2148400316, i64 2148400329, i64 2148400373, i64 2148400407, i64 2148400428}
!226 = !{i64 2158033413}
!227 = !{i64 2158033561}
!228 = !{i64 2158019147, i64 2158019654, i64 2158019184, i64 2158019240, i64 2158019274, i64 2158019298, i64 2158019339, i64 2158019360, i64 2158019388, i64 2158019422}
!229 = !{!"branch_weights", i32 2000, i32 2002}
