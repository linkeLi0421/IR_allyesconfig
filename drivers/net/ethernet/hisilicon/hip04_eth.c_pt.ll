; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hip04_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hip04_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hip04_priv = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, i32, [256 x ptr], [256 x i32], i32, i32, i32, %struct.hrtimer, [128 x ptr], [128 x i32], i32, i32, i32, ptr, ptr, ptr, %struct.work_struct, [100 x i8], i32, [124 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
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
%struct.rx_desc = type { [3 x i32], i16, i16, [6 x i32], i32, [5 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_desc = type { [2 x i32], i32, i16, i16, [7 x i32], i32, i32, [3 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_hip04_eth__353_1057_hip04_mac_driver_init6 = internal global ptr @hip04_mac_driver_init, section ".initcall6.init", align 4
@hip04_mac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hip04_mac_probe, ptr @hip04_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hip04_mac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hip04_mac_driver_exit = internal global ptr @hip04_mac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [52 x i8] c"hip04_eth.description=HISILICON P04 Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [56 x i8] c"hip04_eth.file=drivers/net/ethernet/hisilicon/hip04_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [22 x i8] c"hip04_eth.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hip04-ether\00", [20 x i8] zeroinitializer }, align 32
@hip04_mac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip04-mac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port-handle\00", [20 x i8] zeroinitializer }, align 32
@hip04_mac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no port-handle\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hip04_mac_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/hisilicon/hip04_eth.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hip04_mac_probe._entry_ptr = internal global ptr @hip04_mac_probe._entry, section ".printk_index", align 4
@hip04_mac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 951, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no syscon hisilicon,hip04-ppe\0A\00", [33 x i8] zeroinitializer }, align 32
@hip04_mac_probe._entry_ptr.9 = internal global ptr @hip04_mac_probe._entry.7, section ".printk_index", align 4
@hip04_mac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not find phy-mode\0A\00", [45 x i8] zeroinitializer }, align 32
@hip04_mac_probe._entry_ptr.12 = internal global ptr @hip04_mac_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_request_irq failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@hip04_mac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->tx_timeout_task)\00", [54 x i8] zeroinitializer }, align 32
@hip04_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hip04_mac_open, ptr @hip04_mac_stop, ptr @hip04_mac_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @hip04_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hip04_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 48, i32 0, ptr @hip04_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_get_coalesce, ptr @hip04_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc ring fail\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx drop\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx drop\0A\00", [23 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v1.0\00", [27 x i8] zeroinitializer }, align 32
@hip04_rx_poll.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hip04_eth\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hip04_rx_poll\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"build_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not supported mode\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"hip04_mac_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1049, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1053, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"hip04_mac_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1042, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 927, i32 47 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 929, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 951, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 958, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 971, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 975, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 986, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"hip04_netdev_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 845, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"hip04_ethtool_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 837, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1006, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 677, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 681, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 326, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 834, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 596, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [46 x i8] c"../drivers/net/ethernet/hisilicon/hip04_eth.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 280, i32 21 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_hip04_mac_driver_exit, ptr @__initcall__kmod_hip04_eth__353_1057_hip04_mac_driver_init6, ptr @hip04_mac_driver_exit, ptr @hip04_mac_probe._entry, ptr @hip04_mac_probe._entry.10, ptr @hip04_mac_probe._entry.7, ptr @hip04_mac_probe._entry_ptr, ptr @hip04_mac_probe._entry_ptr.12, ptr @hip04_mac_probe._entry_ptr.9, ptr @hip04_mac_driver, ptr @.str, ptr @hip04_mac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @hip04_mac_probe.__key, ptr @.str.15, ptr @hip04_netdev_ops, ptr @hip04_ethtool_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_mac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hip04_mac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hip04_mac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @hip04_mac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %val.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %arg = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %arg) #9
  %2 = call ptr @memset(ptr %arg, i32 255, i32 72)
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 3712, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev2 = getelementptr i8, ptr %call, i32 2568
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 8
  %ndev3 = getelementptr i8, ptr %call, i32 2572
  %4 = ptrtoint ptr %ndev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ndev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %add.ptr.i, align 128
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call6 to i32
  br label %init_fail

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %sysctrl_base = getelementptr i8, ptr %call, i32 2308
  %9 = ptrtoint ptr %sysctrl_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %sysctrl_base, align 4
  %cmp.i171 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call13 to i32
  br label %init_fail

if.end19:                                         ; preds = %if.end12
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %init_fail

if.end22:                                         ; preds = %if.end19
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args, align 4
  %port = getelementptr i8, ptr %call, i32 2320
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %port, align 16
  %arrayidx24 = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %mul = shl i32 %15, 7
  %chan = getelementptr i8, ptr %call, i32 2316
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %chan, align 4
  %arrayidx26 = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26, align 4
  %group = getelementptr i8, ptr %call, i32 2324
  %19 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %group, align 4
  %tx_coalesce_timer = getelementptr i8, ptr %call, i32 4648
  call void @hrtimer_init(ptr noundef %tx_coalesce_timer, i32 noundef 1, i32 noundef 1) #9
  %tx_coalesce_frames = getelementptr i8, ptr %call, i32 4636
  %20 = ptrtoint ptr %tx_coalesce_frames to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 192, ptr %tx_coalesce_frames, align 4
  %tx_coalesce_usecs = getelementptr i8, ptr %call, i32 4640
  %21 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 200, ptr %tx_coalesce_usecs, align 32
  %function = getelementptr i8, ptr %call, i32 4680
  %22 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tx_done, ptr %function, align 8
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg, align 4
  %call28 = call ptr @syscon_node_to_regmap(ptr noundef %24) #9
  %map = getelementptr i8, ptr %call, i32 5740
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call28, ptr %map, align 4
  %cmp.i172 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %init_fail

if.end37:                                         ; preds = %if.end22
  %phy_mode = getelementptr i8, ptr %call, i32 2312
  %call38 = call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef %phy_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %init_fail

if.end44:                                         ; preds = %if.end37
  %call45 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %if.end44.init_fail_crit_edge, label %if.end48

if.end44.init_fail_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

if.end48:                                         ; preds = %if.end44
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call.i173 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call45, ptr noundef nonnull @hip04_mac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %30, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool50.not = icmp eq i32 %call.i173, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #12
  br label %init_fail

if.end52:                                         ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %31 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i174 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %phy_node202 = getelementptr i8, ptr %call, i32 5732
  %32 = ptrtoint ptr %phy_node202 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %phy_node202, align 4
  br label %do.body65

of_parse_phandle.exit:                            ; preds = %if.end52
  %33 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %phy_node = getelementptr i8, ptr %call, i32 5732
  %35 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %phy_node, align 4
  %tobool55.not = icmp eq ptr %34, null
  br i1 %tobool55.not, label %of_parse_phandle.exit.do.body65_crit_edge, label %if.then56

of_parse_phandle.exit.do.body65_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

if.then56:                                        ; preds = %of_parse_phandle.exit
  %36 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_mode, align 8
  %call59 = call ptr @of_phy_connect(ptr noundef nonnull %call, ptr noundef nonnull %34, ptr noundef nonnull @hip04_adjust_link, i32 noundef 0, i32 noundef %37) #9
  %phy = getelementptr i8, ptr %call, i32 5736
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call59, ptr %phy, align 8
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.then56.init_fail_crit_edge, label %if.then56.do.body65_crit_edge

if.then56.do.body65_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

if.then56.init_fail_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_fail

do.body65:                                        ; preds = %if.then56.do.body65_crit_edge, %of_parse_phandle.exit.do.body65_crit_edge, %of_parse_phandle.exit.thread
  %tx_timeout_task = getelementptr i8, ptr %call, i32 5744
  call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #9
  %39 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %tx_timeout_task, align 16
  %lockdep_map = getelementptr i8, ptr %call, i32 5760
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @hip04_mac_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry69 = getelementptr i8, ptr %call, i32 5748
  %40 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i = getelementptr i8, ptr %call, i32 5752
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 5756
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hip04_tx_timeout_task, ptr %func, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %43 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hip04_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %44 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @hip04_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %45 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 600, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %46 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %priv_flags, align 16
  %or = or i64 %47, 4096
  store i64 %or, ptr %priv_flags, align 16
  %irq73 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %48 = ptrtoint ptr %irq73 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call45, ptr %irq73, align 4
  %napi = getelementptr i8, ptr %call, i32 2344
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @hip04_rx_poll, i32 noundef 64) #9
  %49 = ptrtoint ptr %sysctrl_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sysctrl_base, align 4
  %add.ptr.i175 = getelementptr i8, ptr %50, i32 620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 -1) #9, !srcloc !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %52 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %tmp.i, align 4, !annotation !72
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body65
  %timeout.0.i = phi i32 [ 0, %do.body65 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 4
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 16
  %mul.i = shl i32 %56, 2
  %add.i = add i32 %mul.i, 41472
  %call.i176 = call i32 @regmap_read(ptr noundef %54, i32 noundef %add.i, ptr noundef nonnull %val.i) #9
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 16
  %mul3.i = shl i32 %60, 2
  %add4.i = add i32 %mul3.i, 256
  %call5.i = call i32 @regmap_read(ptr noundef %58, i32 noundef %add4.i, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 1001
  br i1 %exitcond.i, label %do.body.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i

do.body.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

do.cond.i:                                        ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i, align 4
  %and.i = and i32 %62, 4095
  %tobool.not.i177 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i177, label %do.cond.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

hip04_reset_ppe.exit:                             ; preds = %do.cond.i.hip04_reset_ppe.exit_crit_edge, %do.body.i.hip04_reset_ppe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %63 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp75 = icmp eq i32 %64, 2
  br i1 %cmp75, label %if.then76, label %hip04_reset_ppe.exit.if.end77_crit_edge

hip04_reset_ppe.exit.if.end77_crit_edge:          ; preds = %hip04_reset_ppe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %hip04_reset_ppe.exit
  %speed1.i = getelementptr i8, ptr %call, i32 2328
  %65 = ptrtoint ptr %speed1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 100, ptr %speed1.i, align 8
  %duplex2.i = getelementptr i8, ptr %call, i32 2332
  %66 = ptrtoint ptr %duplex2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %duplex2.i, align 4
  %67 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %phy_mode, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %sw.default.i [
    i32 4, label %if.then76.hip04_config_port.exit_crit_edge
    i32 2, label %sw.bb7.i
  ]

if.then76.hip04_config_port.exit_crit_edge:       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_config_port.exit

sw.bb7.i:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_config_port.exit

sw.default.i:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %call, ptr noundef nonnull @.str.25) #12
  br label %hip04_config_port.exit

hip04_config_port.exit:                           ; preds = %sw.default.i, %sw.bb7.i, %if.then76.hip04_config_port.exit_crit_edge
  %val.0.i = phi i32 [ 0, %sw.default.i ], [ 16777216, %sw.bb7.i ], [ 117440512, %if.then76.hip04_config_port.exit_crit_edge ]
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i178 = getelementptr i8, ptr %71, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %val.0.i) #9, !srcloc !71
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr13.i = getelementptr i8, ptr %73, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #9, !srcloc !71
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15.i = getelementptr i8, ptr %75, i32 436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 16777216) #9, !srcloc !71
  br label %if.end77

if.end77:                                         ; preds = %hip04_config_port.exit, %hip04_reset_ppe.exit.if.end77_crit_edge
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i179 = getelementptr i8, ptr %77, i32 2176
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #9, !srcloc !73
  %79 = or i32 %78, 16777216
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr2.i = getelementptr i8, ptr %81, i32 2176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %79) #9, !srcloc !71
  %82 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %group, align 4
  %shl.i = shl nuw i32 1, %83
  %84 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map, align 4
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 16
  %mul.i182 = shl i32 %87, 2
  %add.i183 = add i32 %mul.i182, 768
  %call3.i = call i32 @regmap_write(ptr noundef %85, i32 noundef %add.i183, i32 noundef %shl.i) #9
  %88 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %group, align 4
  %shl5.i = shl i32 %89, 4
  %or6.i = or i32 %shl5.i, 32768
  %90 = call i32 @llvm.bswap.i32(i32 %or6.i) #9
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr8.i = getelementptr i8, ptr %92, i32 1312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %90) #9, !srcloc !71
  %93 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %map, align 4
  %95 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port, align 16
  %mul11.i = shl i32 %96, 2
  %add12.i = add i32 %mul11.i, 1024
  %call13.i = call i32 @regmap_write(ptr noundef %94, i32 noundef %add12.i, i32 noundef 25) #9
  %97 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chan, align 4
  %or16.i = or i32 %98, 8390656
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 4
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 16
  %mul19.i = shl i32 %102, 2
  %add20.i = add i32 %mul19.i, 1280
  %call21.i = call i32 @regmap_write(ptr noundef %100, i32 noundef %add20.i, i32 noundef %or16.i) #9
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr23.i = getelementptr i8, ptr %104, i32 1064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 65536) #9, !srcloc !71
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr25.i = getelementptr i8, ptr %106, i32 1284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 1024) #9, !srcloc !71
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr27.i = getelementptr i8, ptr %108, i32 1060
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 25331712) #9, !srcloc !71
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr29.i = getelementptr i8, ptr %110, i32 1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 2063663104) #9, !srcloc !71
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr31.i = getelementptr i8, ptr %112, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 -335216640) #9, !srcloc !71
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr33.i = getelementptr i8, ptr %114, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 520093696) #9, !srcloc !71
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr36.i = getelementptr i8, ptr %116, i32 96
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #9, !srcloc !73
  %118 = or i32 %117, -536870912
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr41.i = getelementptr i8, ptr %120, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %118) #9, !srcloc !71
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr43.i = getelementptr i8, ptr %122, i32 432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 16777216) #9, !srcloc !71
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr46.i = getelementptr i8, ptr %124, i32 480
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #9, !srcloc !73
  %126 = or i32 %125, 402653184
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr51.i = getelementptr i8, ptr %128, i32 480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %126) #9, !srcloc !71
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #9
  %129 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %130 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %addr.i, align 1
  %132 = and i8 %131, -4
  %133 = or i8 %132, 2
  store i8 %133, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #9
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %134 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %135 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_addr.i, align 64
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 1
  %conv.i = zext i8 %138 to i32
  %shl.i185 = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr i8, ptr %136, i32 1
  %139 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %140 to i32
  %or.i = or i32 %shl.i185, %conv3.i
  %141 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i186 = getelementptr i8, ptr %143, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %141) #9, !srcloc !71
  %144 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx5.i = getelementptr i8, ptr %145, i32 2
  %146 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %147 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %arrayidx9.i = getelementptr i8, ptr %145, i32 3
  %148 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %149 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or12.i = or i32 %shl11.i, %shl7.i
  %arrayidx14.i = getelementptr i8, ptr %145, i32 4
  %150 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %151 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or17.i = or i32 %or12.i, %shl16.i
  %arrayidx19.i = getelementptr i8, ptr %145, i32 5
  %152 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %153 to i32
  %or21.i = or i32 %or17.i, %conv20.i
  %154 = call i32 @llvm.bswap.i32(i32 %or21.i) #9
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr24.i = getelementptr i8, ptr %156, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %154) #9, !srcloc !71
  %tx_desc_dma.i = getelementptr i8, ptr %call, i32 2580
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %tx_desc_dma.i, i32 noundef 3264, i32 noundef 0) #9
  %tx_desc.i = getelementptr i8, ptr %call, i32 2576
  %157 = ptrtoint ptr %tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i.i, ptr %tx_desc.i, align 16
  %tobool.not.i188 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i188, label %if.end77.if.then80_crit_edge, label %if.end.i189

if.end77.if.then80_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end.i189:                                      ; preds = %if.end77
  %rx_buf_size.i = getelementptr i8, ptr %call, i32 5724
  %158 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1856, ptr %rx_buf_size.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i190 = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i190, 128
  br i1 %exitcond.not.i, label %if.end81, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i189
  %i.021.i = phi i32 [ 0, %if.end.i189 ], [ %inc.i190, %for.cond.i.for.body.i_crit_edge ]
  %159 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_buf_size.i, align 4
  %call.i20.i = call ptr @__netdev_alloc_frag_align(i32 noundef %160, i32 noundef -1) #9
  %arrayidx.i = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 20, i32 %i.021.i
  %161 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i20.i, ptr %arrayidx.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i20.i, null
  br i1 %tobool7.not.i, label %for.body.i.if.then80_crit_edge, label %for.cond.i

for.body.i.if.then80_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.then80:                                        ; preds = %for.body.i.if.then80_crit_edge, %if.end77.if.then80_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %call, ptr noundef nonnull @.str.16) #12
  br label %alloc_fail

if.end81:                                         ; preds = %for.cond.i
  %call82 = call i32 @register_netdev(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %if.end81.alloc_fail_crit_edge

if.end81.alloc_fail_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_fail

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

alloc_fail:                                       ; preds = %if.end81.alloc_fail_crit_edge, %if.then80
  %ret.0 = phi i32 [ -12, %if.then80 ], [ %call82, %if.end81.alloc_fail_crit_edge ]
  br label %for.body.i195

for.body.i195:                                    ; preds = %for.inc.i.for.body.i195_crit_edge, %alloc_fail
  %i.028.i = phi i32 [ 0, %alloc_fail ], [ %inc.i196, %for.inc.i.for.body.i195_crit_edge ]
  %arrayidx.i193 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 20, i32 %i.028.i
  %162 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i193, align 4
  %tobool.not.i194 = icmp eq ptr %163, null
  br i1 %tobool.not.i194, label %for.body.i195.for.inc.i_crit_edge, label %if.then.i

for.body.i195.for.inc.i_crit_edge:                ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  call void @page_frag_free(ptr noundef nonnull %163) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i195.for.inc.i_crit_edge
  %inc.i196 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i197 = icmp eq i32 %inc.i196, 128
  br i1 %exitcond.not.i197, label %for.inc.i.for.body5.i_crit_edge, label %for.inc.i.for.body.i195_crit_edge

for.inc.i.for.body.i195_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i195

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc12.i.for.body5.i_crit_edge, %for.inc.i.for.body5.i_crit_edge
  %i.129.i = phi i32 [ %inc13.i, %for.inc12.i.for.body5.i_crit_edge ], [ 0, %for.inc.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.129.i
  %164 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i198 = icmp eq ptr %165, null
  br i1 %tobool7.not.i198, label %for.body5.i.for.inc12.i_crit_edge, label %if.then8.i

for.body5.i.for.inc12.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12.i

if.then8.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__dev_kfree_skb_any(ptr noundef nonnull %165, i32 noundef 1) #9
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then8.i, %for.body5.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %i.129.i, 1
  %exitcond30.not.i = icmp eq i32 %inc13.i, 256
  br i1 %exitcond30.not.i, label %hip04_free_ring.exit, label %for.inc12.i.for.body5.i_crit_edge

for.inc12.i.for.body5.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

hip04_free_ring.exit:                             ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tx_desc.i, align 16
  %168 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_desc_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %167, i32 noundef %169, i32 noundef 0) #9
  br label %init_fail

init_fail:                                        ; preds = %hip04_free_ring.exit, %if.then56.init_fail_crit_edge, %if.then51, %if.end44.init_fail_crit_edge, %do.end43, %do.end34, %do.end, %if.then16, %if.then9
  %ret.1 = phi i32 [ %8, %if.then9 ], [ %10, %if.then16 ], [ %call.i, %do.end ], [ %28, %do.end34 ], [ %call38, %do.end43 ], [ %call.i173, %if.then51 ], [ %ret.0, %hip04_free_ring.exit ], [ -22, %if.end44.init_fail_crit_edge ], [ -517, %if.then56.init_fail_crit_edge ]
  %phy_node86 = getelementptr i8, ptr %call, i32 5732
  %170 = ptrtoint ptr %phy_node86 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %phy_node86, align 4
  call void @of_node_put(ptr noundef %171) #9
  call void @free_netdev(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %init_fail, %if.end81.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %init_fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %arg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %phy = getelementptr i8, ptr %1, i32 5736
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.body.i.preheader_crit_edge, label %if.then

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_disconnect(ptr noundef nonnull %3) #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 20, i32 %i.028.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @page_frag_free(ptr noundef nonnull %5) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.for.body5.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc12.i.for.body5.i_crit_edge, %for.inc.i.for.body5.i_crit_edge
  %i.129.i = phi i32 [ %inc13.i, %for.inc12.i.for.body5.i_crit_edge ], [ 0, %for.inc.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %i.129.i
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %for.body5.i.for.inc12.i_crit_edge, label %if.then8.i

for.body5.i.for.inc12.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12.i

if.then8.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #9
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then8.i, %for.body5.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %i.129.i, 1
  %exitcond30.not.i = icmp eq i32 %inc13.i, 256
  br i1 %exitcond30.not.i, label %hip04_free_ring.exit, label %for.inc12.i.for.body5.i_crit_edge

for.inc12.i.for.body5.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

hip04_free_ring.exit:                             ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tx_desc.i = getelementptr i8, ptr %1, i32 2576
  %8 = ptrtoint ptr %tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_desc.i, align 16
  %tx_desc_dma.i = getelementptr i8, ptr %1, i32 2580
  %10 = ptrtoint ptr %tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_desc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  tail call void @unregister_netdev(ptr noundef %1) #9
  %phy_node = getelementptr i8, ptr %1, i32 5732
  %12 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %13) #9
  %tx_timeout_task = getelementptr i8, ptr %1, i32 5744
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_done(ptr noundef %hrtimer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %hrtimer, i32 -2304
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -2344
  %reg_inten = getelementptr i8, ptr %hrtimer, i32 -2312
  %0 = ptrtoint ptr %reg_inten to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_inten, align 32
  %and = and i32 %1, -1025
  store i32 %and, ptr %reg_inten, align 32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %add.ptr1 = getelementptr i8, ptr %3, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1073676288) #9, !srcloc !71
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 1800
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !73
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr4 = getelementptr i8, ptr %5, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1073414144) #9, !srcloc !71
  %and = and i32 %3, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end19_crit_edge, label %if.then8, !prof !74

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then8:                                         ; preds = %if.end
  %and9 = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then11

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %rx_errors, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %8 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_dropped, align 4
  %inc12 = add i32 %9, 1
  store i32 %inc12, ptr %rx_dropped, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.17) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  %and14 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dropped, align 4
  %inc17 = add i32 %11, 1
  store i32 %inc17, ptr %tx_dropped, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.18) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %and20 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %napi = getelementptr i8, ptr %dev_id, i32 2344
  %call22 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call22, label %if.then23, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %reg_inten = getelementptr i8, ptr %dev_id, i32 2336
  %12 = ptrtoint ptr %reg_inten to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_inten, align 32
  %and24 = and i32 %13, -1025
  store i32 %and24, ptr %reg_inten, align 32
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr26 = getelementptr i8, ptr %15, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1073676288) #9, !srcloc !71
  %tx_coalesce_timer = getelementptr i8, ptr %dev_id, i32 4648
  %call27 = tail call i32 @hrtimer_cancel(ptr noundef %tx_coalesce_timer) #9
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then23 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_adjust_link(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phy1 = getelementptr i8, ptr %ndev, i32 5736
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 8
  %speed = getelementptr i8, ptr %ndev, i32 2328
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  %speed2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %duplex = getelementptr i8, ptr %ndev, i32 2332
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex, align 4
  %duplex3 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %duplex3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4.not = icmp eq i32 %7, %9
  br i1 %cmp4.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %duplex6 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex6, align 4
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %speed, align 8
  %duplex2.i = getelementptr i8, ptr %ndev, i32 2332
  %13 = ptrtoint ptr %duplex2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %duplex2.i, align 4
  %phy_mode.i = getelementptr i8, ptr %ndev, i32 2312
  %14 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_mode.i, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %sw.default.i [
    i32 4, label %sw.bb.i
    i32 2, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 117440512, i32 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %switch.selectcmp28.i = icmp eq i32 %5, 1000
  %switch.select29.i = select i1 %switch.selectcmp28.i, i32 134217728, i32 %switch.select.i
  br label %hip04_config_port.exit

sw.bb7.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %cmp8.i = icmp eq i32 %5, 100
  %..i = select i1 %cmp8.i, i32 16777216, i32 0
  br label %hip04_config_port.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %ndev, ptr noundef nonnull @.str.25) #12
  br label %hip04_config_port.exit

hip04_config_port.exit:                           ; preds = %sw.default.i, %sw.bb7.i, %sw.bb.i
  %val.0.i = phi i32 [ 0, %sw.default.i ], [ %..i, %sw.bb7.i ], [ %switch.select29.i, %sw.bb.i ]
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %val.0.i) #9, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  %19 = select i1 %tobool.not.not.i, i32 0, i32 16777216
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr13.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %19) #9, !srcloc !71
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr15.i = getelementptr i8, ptr %23, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 16777216) #9, !srcloc !71
  tail call void @phy_print_status(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %hip04_config_port.exit, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_tx_timeout_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %work, i32 -3172
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %call = tail call i32 @hip04_mac_stop(ptr noundef %1)
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %call2 = tail call i32 @hip04_mac_open(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -40
  %ndev1 = getelementptr i8, ptr %napi, i32 228
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %stats2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %call = tail call fastcc i32 @hip04_tx_reclaim(ptr noundef %1, i1 noundef zeroext false)
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %3, i32 2052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %rx_cnt_remaining = getelementptr i8, ptr %napi, i32 3384
  %6 = ptrtoint ptr %rx_cnt_remaining to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_cnt_remaining, align 32
  %add = add i32 %7, %5
  store i32 %add, ptr %rx_cnt_remaining, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not188 = icmp eq i32 %add, 0
  br i1 %tobool.not188, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_buf = getelementptr i8, ptr %napi, i32 2352
  %rx_head = getelementptr i8, ptr %napi, i32 3376
  %rx_buf_size = getelementptr i8, ptr %napi, i32 3380
  %dev = getelementptr i8, ptr %napi, i32 224
  %rx_phys = getelementptr i8, ptr %napi, i32 2864
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %map.i = getelementptr i8, ptr %napi, i32 3396
  %port.i = getelementptr i8, ptr %napi, i32 -24
  br label %while.body

while.body:                                       ; preds = %if.end85.while.body_crit_edge, %while.body.lr.ph
  %rx.0190 = phi i32 [ 0, %while.body.lr.ph ], [ %rx.1, %if.end85.while.body_crit_edge ]
  %8 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_head, align 8
  %arrayidx = getelementptr [128 x ptr], ptr %rx_buf, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_size, align 4
  %call6 = tail call ptr @build_skb(ptr noundef %11, i32 noundef %13) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body, label %if.end24, !prof !76

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hip04_rx_poll.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hip04_rx_poll, %land.lhs.true)) #9
          to label %refill [label %land.lhs.true], !srcloc !77

land.lhs.true:                                    ; preds = %do.body
  %call21 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.refill_crit_edge, label %if.then23

land.lhs.true.refill_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %refill

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hip04_rx_poll.descriptor, ptr noundef nonnull @.str.24) #9
  br label %refill

if.end24:                                         ; preds = %while.body
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %16 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_head, align 8
  %arrayidx26 = getelementptr [128 x i32], ptr %rx_phys, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %19, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %20 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_head, align 8
  %arrayidx29 = getelementptr [128 x i32], ptr %rx_phys, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx29, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %pkt_len = getelementptr inbounds %struct.rx_desc, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pkt_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pkt_len, align 4
  %conv = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp = icmp eq i16 %26, 0
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call6, i32 noundef 1) #9
  br label %refill

if.else:                                          ; preds = %if.end24
  %pkt_err = getelementptr inbounds %struct.rx_desc, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %pkt_err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pkt_err, align 4
  %and = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1515, i16 %26)
  %cmp34 = icmp ugt i16 %26, 1515
  %or.cond = select i1 %tobool32.not, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call6, i32 noundef 1) #9
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rx_dropped, align 4
  %31 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_errors, align 4
  %inc37 = add i32 %32, 1
  store i32 %inc37, ptr %rx_errors, align 4
  br label %refill

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i165 = getelementptr i8, ptr %24, i32 130
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i165, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %35, i32 130
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call40 = tail call ptr @skb_put(ptr noundef nonnull %call6, i32 noundef %conv) #9
  %call41 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call6, ptr noundef %1) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call6, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call41, ptr %protocol, align 8
  %call43 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call6) #9
  %37 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats2, align 4
  %inc44 = add i32 %38, 1
  store i32 %inc44, ptr %stats2, align 4
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 4
  %add46 = add i32 %40, %conv
  store i32 %add46, ptr %rx_bytes, align 4
  %inc47 = add i32 %rx.0190, 1
  br label %refill

refill:                                           ; preds = %if.else38, %if.then36, %if.then31, %if.then23, %land.lhs.true.refill_crit_edge, %do.body
  %last.1.off0 = phi i1 [ false, %if.then23 ], [ false, %land.lhs.true.refill_crit_edge ], [ true, %if.then31 ], [ false, %if.then36 ], [ false, %if.else38 ], [ false, %do.body ]
  %rx.1 = phi i32 [ %rx.0190, %if.then23 ], [ %rx.0190, %land.lhs.true.refill_crit_edge ], [ %rx.0190, %if.then31 ], [ %rx.0190, %if.then36 ], [ %inc47, %if.else38 ], [ %rx.0190, %do.body ]
  %41 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_buf_size, align 4
  %call.i = tail call ptr @__netdev_alloc_frag_align(i32 noundef %42, i32 noundef -1) #9
  %tobool52.not = icmp eq ptr %call.i, null
  br i1 %tobool52.not, label %refill.done_crit_edge, label %if.end54

refill.done_crit_edge:                            ; preds = %refill
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end54:                                         ; preds = %refill
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %call.i166 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call.i) #9
  br i1 %call.i166, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end54
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !74

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %44) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef -1) #9
  br label %done

dma_map_single_attrs.exit:                        ; preds = %if.end54
  tail call void @debug_dma_map_single(ptr noundef %44, ptr noundef nonnull %call.i, i32 noundef 1600) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %call.i to i32
  %sub.i = add i32 %52, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i167 = getelementptr %struct.page, ptr %51, i32 %shr.i
  %and.i = and i32 %52, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %44, ptr noundef %add.ptr.i167, i32 noundef %and.i, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %54, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.done_crit_edge, label %if.end61

dma_map_single_attrs.exit.done_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end61:                                         ; preds = %dma_map_single_attrs.exit
  %55 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_head, align 8
  %arrayidx64 = getelementptr [128 x ptr], ptr %rx_buf, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %arrayidx64, align 4
  %58 = load i32, ptr %rx_head, align 8
  %arrayidx67 = getelementptr [128 x i32], ptr %rx_phys, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call41.i, ptr %arrayidx67, align 4
  %shr.i169 = lshr i32 %call41.i, 6
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %62 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port.i, align 16
  %mul.i = shl i32 %63, 2
  %add.i = add i32 %mul.i, 256
  %call.i170 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef %add.i, i32 noundef %shr.i169) #9
  %64 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_head, align 8
  %add69 = add i32 %65, 1
  %and70 = and i32 %add69, 127
  store i32 %and70, ptr %rx_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rx.1, i32 %budget)
  %cmp72.not = icmp slt i32 %rx.1, %budget
  %66 = ptrtoint ptr %rx_cnt_remaining to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_cnt_remaining, align 32
  %dec78 = add i32 %67, -1
  store i32 %dec78, ptr %rx_cnt_remaining, align 32
  br i1 %cmp72.not, label %if.end76, label %if.end61.done_crit_edge

if.end61.done_crit_edge:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end76:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec78)
  %cmp79 = icmp eq i32 %dec78, 0
  br i1 %cmp79, label %if.then81, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i171 = getelementptr i8, ptr %69, i32 2052
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #9, !srcloc !73
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %72 = ptrtoint ptr %rx_cnt_remaining to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_cnt_remaining, align 32
  %add84 = add i32 %73, %71
  store i32 %add84, ptr %rx_cnt_remaining, align 32
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end76.if.end85_crit_edge
  %74 = ptrtoint ptr %rx_cnt_remaining to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_cnt_remaining, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not = icmp eq i32 %75, 0
  %brmerge = or i1 %tobool.not, %last.1.off0
  br i1 %brmerge, label %if.end85.while.end_crit_edge, label %if.end85.while.body_crit_edge

if.end85.while.body_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end85.while.end_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end85.while.end_crit_edge, %entry.while.end_crit_edge
  %rx.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %rx.1, %if.end85.while.end_crit_edge ]
  %reg_inten = getelementptr i8, ptr %napi, i32 -8
  %76 = ptrtoint ptr %reg_inten to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reg_inten, align 32
  %and86 = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.then88, label %while.end.if.end92_crit_edge

while.end.if.end92_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then88:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %77, 1024
  %78 = ptrtoint ptr %reg_inten to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or, ptr %reg_inten, align 32
  %79 = tail call i32 @llvm.bswap.i32(i32 %or)
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr, align 128
  %add.ptr91 = getelementptr i8, ptr %81, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %79) #9, !srcloc !71
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %while.end.if.end92_crit_edge
  %call93 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx.0.lcssa) #9
  br label %done

done:                                             ; preds = %if.end92, %if.end61.done_crit_edge, %dma_map_single_attrs.exit.done_crit_edge, %dma_map_single_attrs.exit.thread, %refill.done_crit_edge
  %rx.2 = phi i32 [ %rx.0.lcssa, %if.end92 ], [ %rx.1, %dma_map_single_attrs.exit.thread ], [ %rx.1, %if.end61.done_crit_edge ], [ %rx.1, %refill.done_crit_edge ], [ %rx.1, %dma_map_single_attrs.exit.done_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rx.2, i32 %budget)
  %cmp94 = icmp sge i32 %rx.2, %budget
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool97.not = icmp eq i32 %call, 0
  %or.cond164 = select i1 %cmp94, i1 true, i1 %tobool97.not
  br i1 %or.cond164, label %done.if.end99_crit_edge, label %if.then98

done.if.end99_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then98:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %tx_coalesce_usecs.i = getelementptr i8, ptr %napi, i32 2296
  %82 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_coalesce_usecs.i, align 32
  %mul.i172 = mul i32 %83, 1000
  %div.i = sdiv i32 %mul.i172, 2
  %tx_coalesce_timer.i = getelementptr i8, ptr %napi, i32 2304
  %conv.i = zext i32 %div.i to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %tx_coalesce_timer.i, i64 noundef %conv.i, i64 noundef %conv.i, i32 noundef 1) #9
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %done.if.end99_crit_edge
  ret i32 %rx.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_stop(ptr noundef %ndev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %napi = getelementptr i8, ptr %ndev, i32 2344
  tail call void @napi_disable(ptr noundef %napi) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %reg_inten.i = getelementptr i8, ptr %ndev, i32 2336
  %2 = ptrtoint ptr %reg_inten.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_inten.i, align 32
  %and.i = and i32 %3, -1473
  store i32 %and.i, ptr %reg_inten.i, align 32
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i25 = getelementptr i8, ptr %6, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %4) #9, !srcloc !71
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %8, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !73
  %10 = and i32 %9, -100663297
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr7.i = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %10) #9, !srcloc !71
  %call1 = tail call fastcc i32 @hip04_tx_reclaim(ptr noundef %ndev, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp.i, align 4, !annotation !72
  %map.i = getelementptr i8, ptr %ndev, i32 5740
  %port.i = getelementptr i8, ptr %ndev, i32 2320
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 16
  %mul.i = shl i32 %18, 2
  %add.i = add i32 %mul.i, 41472
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %add.i, ptr noundef nonnull %val.i) #9
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 16
  %mul3.i = shl i32 %22, 2
  %add4.i = add i32 %mul3.i, 256
  %call5.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %add4.i, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 1001
  br i1 %exitcond.i, label %do.body.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i

do.body.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

do.cond.i:                                        ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %and.i26 = and i32 %24, 4095
  %tobool.not.i = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i, label %do.cond.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

hip04_reset_ppe.exit:                             ; preds = %do.cond.i.hip04_reset_ppe.exit_crit_edge, %do.body.i.hip04_reset_ppe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %phy = getelementptr i8, ptr %ndev, i32 5736
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 8
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %hip04_reset_ppe.exit.if.end_crit_edge, label %if.then

hip04_reset_ppe.exit.if.end_crit_edge:            ; preds = %hip04_reset_ppe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %hip04_reset_ppe.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @phy_stop(ptr noundef nonnull %26) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %hip04_reset_ppe.exit.if.end_crit_edge
  %dev = getelementptr i8, ptr %ndev, i32 2568
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.027 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 21, i32 %i.027
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not = icmp eq i32 %28, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %28, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_open(ptr noundef %ndev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %rx_head = getelementptr i8, ptr %ndev, i32 5720
  %0 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_head, align 8
  %rx_cnt_remaining = getelementptr i8, ptr %ndev, i32 5728
  %1 = ptrtoint ptr %rx_cnt_remaining to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_cnt_remaining, align 32
  %tx_head = getelementptr i8, ptr %ndev, i32 4632
  %2 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_head, align 8
  %tx_tail = getelementptr i8, ptr %ndev, i32 5888
  %3 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tx_tail, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp.i, align 4, !annotation !72
  %map.i = getelementptr i8, ptr %ndev, i32 5740
  %port.i = getelementptr i8, ptr %ndev, i32 2320
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 16
  %mul.i = shl i32 %9, 2
  %add.i = add i32 %mul.i, 41472
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %add.i, ptr noundef nonnull %val.i) #9
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 16
  %mul3.i = shl i32 %13, 2
  %add4.i = add i32 %mul3.i, 256
  %call5.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %add4.i, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 1001
  br i1 %exitcond.i, label %do.body.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i

do.body.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

do.cond.i:                                        ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %and.i = and i32 %15, 4095
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.cond.i.hip04_reset_ppe.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.hip04_reset_ppe.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hip04_reset_ppe.exit

hip04_reset_ppe.exit:                             ; preds = %do.cond.i.hip04_reset_ppe.exit_crit_edge, %do.body.i.hip04_reset_ppe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %dev = getelementptr i8, ptr %ndev, i32 2568
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %hip04_reset_ppe.exit
  %i.052 = phi i32 [ 0, %hip04_reset_ppe.exit ], [ %inc, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 20, i32 %i.052
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call.i31 = call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #9
  br i1 %call.i31, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %for.body
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !74

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %17) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %25, i32 noundef -1) #9
  br label %cleanup9

dma_map_single_attrs.exit:                        ; preds = %for.body
  call void @debug_dma_map_single(ptr noundef %17, ptr noundef %19, i32 noundef 1600) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %19 to i32
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i32 = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i33 = and i32 %27, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i32, i32 noundef %and.i33, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup9_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup9_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup9

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %arrayidx4 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 21, i32 %i.052
  %30 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call41.i, ptr %arrayidx4, align 4
  %shr.i34 = lshr i32 %call41.i, 6
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 16
  %mul.i37 = shl i32 %34, 2
  %add.i38 = add i32 %mul.i37, 256
  %call.i39 = call i32 @regmap_write(ptr noundef %32, i32 noundef %add.i38, i32 noundef %shr.i34) #9
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  %phy = getelementptr i8, ptr %ndev, i32 5736
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 8
  %tobool5.not = icmp eq ptr %36, null
  br i1 %tobool5.not, label %for.end.if.end8_crit_edge, label %if.then6

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @phy_start(ptr noundef nonnull %36) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end.if.end8_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #9
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 15
  call void @dql_reset(ptr noundef %dql.i.i) #9
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i41 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i41) #9
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i42 = getelementptr i8, ptr %42, i32 68
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #9, !srcloc !73
  %44 = or i32 %43, 100663296
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %46, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %44) #9, !srcloc !71
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr5.i = getelementptr i8, ptr %48, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 262144) #9, !srcloc !71
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr7.i = getelementptr i8, ptr %50, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 1140850688) #9, !srcloc !71
  %reg_inten.i = getelementptr i8, ptr %ndev, i32 2336
  %51 = ptrtoint ptr %reg_inten.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1472, ptr %reg_inten.i, align 32
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr10.i = getelementptr i8, ptr %53, i32 1792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1073414144) #9, !srcloc !71
  %napi = getelementptr i8, ptr %ndev, i32 2344
  call void @napi_enable(ptr noundef %napi) #9
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %dma_map_single_attrs.exit.cleanup9_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.2 = phi i32 [ 0, %if.end8 ], [ -5, %dma_map_single_attrs.exit.thread ], [ -5, %dma_map_single_attrs.exit.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hip04_tx_reclaim(ptr noundef %ndev, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_tail1 = getelementptr i8, ptr %ndev, i32 5888
  %0 = ptrtoint ptr %tx_tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_tail1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  %tx_head = getelementptr i8, ptr %ndev, i32 4632
  %2 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_head, align 8
  %sub.i = sub i32 %3, %1
  %rem.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp = icmp eq i32 %rem.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %tx_desc = getelementptr i8, ptr %ndev, i32 2576
  %dev = getelementptr i8, ptr %ndev, i32 2568
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.lr.ph
  %count.094 = phi i32 [ %rem.i, %while.body.lr.ph ], [ %dec, %if.end24.while.body_crit_edge ]
  %pkts_compl.092 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end24.while.body_crit_edge ]
  %bytes_compl.090 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end24.while.body_crit_edge ]
  %tx_tail.087 = phi i32 [ %1, %while.body.lr.ph ], [ %and, %if.end24.while.body_crit_edge ]
  %4 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_desc, align 16
  %send_addr = getelementptr %struct.tx_desc, ptr %5, i32 %tx_tail.087, i32 1
  %6 = ptrtoint ptr %send_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %while.body.if.end15_crit_edge, label %if.then10

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %while.body
  br i1 %force, label %if.then12, label %if.then10.while.end_crit_edge

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %send_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %send_addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %while.body.if.end15_crit_edge
  %arrayidx16 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 15, i32 %tx_tail.087
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %if.end15.if.end24_crit_edge, label %if.then18

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %arrayidx21 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %tx_tail.087
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx21, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %10, i32 noundef %16, i32 noundef 1, i32 noundef 0) #9
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx16, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end15.if.end24_crit_edge
  %inc = add nuw nsw i32 %pkts_compl.092, 1
  %arrayidx26 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %tx_tail.087
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %len27 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len27, align 4
  %add = add i32 %21, %bytes_compl.090
  tail call void @consume_skb(ptr noundef %19) #9
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx26, align 4
  %add32 = add i32 %tx_tail.087, 1
  %and = and i32 %add32, 255
  %dec = add nsw i32 %count.094, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %if.then10.while.end_crit_edge
  %tx_tail.0.lcssa = phi i32 [ %tx_tail.087, %if.then10.while.end_crit_edge ], [ %and, %if.end24.while.end_crit_edge ]
  %bytes_compl.0.lcssa = phi i32 [ %bytes_compl.090, %if.then10.while.end_crit_edge ], [ %add, %if.end24.while.end_crit_edge ]
  %pkts_compl.0.lcssa = phi i32 [ %pkts_compl.092, %if.then10.while.end_crit_edge ], [ %rem.i, %if.end24.while.end_crit_edge ]
  %count.0.lcssa = phi i32 [ %count.094, %if.then10.while.end_crit_edge ], [ 0, %if.end24.while.end_crit_edge ]
  %23 = ptrtoint ptr %tx_tail1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %tx_tail.0.lcssa, ptr %tx_tail1, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  br label %out

out:                                              ; preds = %while.end, %entry.out_crit_edge
  %bytes_compl.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %bytes_compl.0.lcssa, %while.end ]
  %pkts_compl.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %pkts_compl.0.lcssa, %while.end ]
  %count.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %count.0.lcssa, %while.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts_compl.1)
  %tobool40.not = icmp eq i32 %pkts_compl.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.1)
  %tobool41.not = icmp eq i32 %bytes_compl.1, 0
  %or.cond = select i1 %tobool40.not, i1 %tobool41.not, i1 false
  br i1 %or.cond, label %out.if.end43_crit_edge, label %if.then42

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then42:                                        ; preds = %out
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  br i1 %tobool41.not, label %if.then42.if.end43_crit_edge, label %if.end.i.i, !prof !76

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end.i.i:                                       ; preds = %if.then42
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i, i32 noundef %bytes_compl.1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %28 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.end43_crit_edge, label %if.end14.i.i, !prof !76

if.end.i.i.if.end43_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end14.i.i:                                     ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  %call15.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end43_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end43_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_schedule_queue(ptr noundef %25) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then17.i.i, %if.end14.i.i.if.end43_crit_edge, %if.end.i.i.if.end43_crit_edge, %if.then42.if.end43_crit_edge, %out.if.end43_crit_edge
  %_tx.i.i83 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i83, align 128
  %state.i.i84 = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %state.i.i84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i84, align 4
  %and1.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end43.if.end49_crit_edge, label %land.lhs.true, !prof !74

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count.1)
  %cmp47 = icmp ult i32 %count.1, 255
  br i1 %cmp47, label %if.then48, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_tx_wake_queue(ptr noundef %31) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true.if.end49_crit_edge, %if.end43.if.end49_crit_edge
  ret i32 %count.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_mac_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_head2 = getelementptr i8, ptr %ndev, i32 4632
  %0 = ptrtoint ptr %tx_head2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_head2, align 8
  %tx_desc = getelementptr i8, ptr %ndev, i32 2576
  %2 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_desc, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  %tx_tail = getelementptr i8, ptr %ndev, i32 5888
  %4 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_tail, align 128
  %sub.i = sub i32 %1, %5
  %rem.i = and i32 %sub.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %rem.i)
  %cmp = icmp eq i32 %rem.i, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr i8, ptr %ndev, i32 2568
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !74

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef -1) #9
  br label %if.then13

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %11, i32 noundef %13) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %11 to i32
  %sub.i98 = add i32 %21, 1073741824
  %shr.i = lshr i32 %sub.i98, 12
  %add.ptr.i99 = getelementptr %struct.page, ptr %20, i32 %shr.i
  %and.i = and i32 %21, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i99, i32 noundef %and.i, i32 noundef %13, i32 noundef 1, i32 noundef 0) #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then13_crit_edge, label %if.end14

dma_map_single_attrs.exit.if.then13_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %dma_map_single_attrs.exit.if.then13_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end14:                                         ; preds = %dma_map_single_attrs.exit
  %arrayidx15 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 14, i32 %1
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr %struct.hip04_priv, ptr %add.ptr.i, i32 0, i32 15, i32 %1
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41.i, ptr %arrayidx16, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %conv = trunc i32 %27 to i16
  %send_size = getelementptr %struct.tx_desc, ptr %3, i32 %1, i32 2
  %28 = ptrtoint ptr %send_size to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %send_size, align 4
  %port = getelementptr i8, ptr %ndev, i32 2320
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 16
  %shl = shl i32 %30, 16
  %or = or i32 %shl, 208
  %cfg = getelementptr %struct.tx_desc, ptr %3, i32 %1, i32 5
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %cfg, align 4
  %32 = trunc i32 %call41.i to i16
  %conv18 = and i16 %32, 63
  %data_offset = getelementptr %struct.tx_desc, ptr %3, i32 %1, i32 3
  %33 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv18, ptr %data_offset, align 2
  %and19 = and i32 %call41.i, -64
  %send_addr = getelementptr %struct.tx_desc, ptr %3, i32 %1, i32 1
  %34 = ptrtoint ptr %send_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and19, ptr %send_addr, align 8
  %tx_desc_dma = getelementptr i8, ptr %ndev, i32 2580
  %35 = ptrtoint ptr %tx_desc_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_desc_dma, align 4
  %mul = shl i32 %1, 6
  %add = add i32 %36, %mul
  %add20 = add i32 %add, 8
  %wb_addr = getelementptr %struct.tx_desc, ptr %3, i32 %1, i32 6
  %37 = ptrtoint ptr %wb_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add20, ptr %wb_addr, align 16
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #9
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_flags.i, align 1
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end14.skb_tx_timestamp.exit_crit_edge, label %if.then.i100

if.end14.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tx_timestamp.exit

if.then.i100:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #9
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i100, %if.end14.skb_tx_timestamp.exit_crit_edge
  %shr.i101 = lshr i32 %add, 6
  %or.i = or i32 %shr.i101, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr.i102 = getelementptr i8, ptr %45, i32 1744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %43) #9, !srcloc !71
  %inc = add nuw nsw i32 %rem.i, 1
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %_tx.i.i103 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i103, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %47)
  %cmp.i.i.i = icmp ugt i32 %47, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !76

do.body2.i.i.i:                                   ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

dql_queued.exit.i.i:                              ; preds = %skb_tx_timestamp.exit
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15, i32 2
  %50 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %51 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %52, %47
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %55 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %54, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge, label %if.end.i.i105, !prof !74

dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_sent_queue.exit

if.end.i.i105:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i104 = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i104) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  %56 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %58 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i105.netdev_sent_queue.exit_crit_edge, !prof !76

if.end.i.i105.netdev_sent_queue.exit_crit_edge:   ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_sent_queue.exit

if.then14.i.i:                                    ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i104) #9
  br label %netdev_sent_queue.exit

netdev_sent_queue.exit:                           ; preds = %if.then14.i.i, %if.end.i.i105.netdev_sent_queue.exit_crit_edge, %dql_queued.exit.i.i.netdev_sent_queue.exit_crit_edge
  %add22 = add i32 %1, 1
  %and23 = and i32 %add22, 255
  %60 = ptrtoint ptr %tx_head2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and23, ptr %tx_head2, align 8
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %63 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_bytes, align 4
  %add26 = add i32 %64, %62
  store i32 %add26, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %65 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_packets, align 4
  %inc27 = add i32 %66, 1
  store i32 %inc27, ptr %tx_packets, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  %tx_coalesce_frames = getelementptr i8, ptr %ndev, i32 4636
  %67 = ptrtoint ptr %tx_coalesce_frames to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_coalesce_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %68)
  %cmp34.not = icmp ult i32 %inc, %68
  br i1 %cmp34.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %netdev_sent_queue.exit
  %napi = getelementptr i8, ptr %ndev, i32 2344
  %call37 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call37, label %if.then38, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %reg_inten = getelementptr i8, ptr %ndev, i32 2336
  %69 = ptrtoint ptr %reg_inten to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_inten, align 32
  %and39 = and i32 %70, -1025
  store i32 %and39, ptr %reg_inten, align 32
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 128
  %add.ptr = getelementptr i8, ptr %72, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073676288) #9, !srcloc !71
  %tx_coalesce_timer = getelementptr i8, ptr %ndev, i32 4648
  %call40 = tail call i32 @hrtimer_cancel(ptr noundef %tx_coalesce_timer) #9
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %cleanup

if.else:                                          ; preds = %netdev_sent_queue.exit
  %state.i = getelementptr i8, ptr %ndev, i32 4688
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load volatile i8, ptr %state.i, align 8
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.i.not = icmp eq i8 %75, 0
  br i1 %tobool.i.not, label %if.then45, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tx_coalesce_timer43 = getelementptr i8, ptr %ndev, i32 4648
  %tx_coalesce_usecs.i = getelementptr i8, ptr %ndev, i32 4640
  %76 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_coalesce_usecs.i, align 32
  %mul.i = mul i32 %77, 1000
  %div.i = sdiv i32 %mul.i, 2
  %conv.i = zext i32 %div.i to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %tx_coalesce_timer43, i64 noundef %conv.i, i64 noundef %conv.i, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.else.cleanup_crit_edge, %if.then38, %if.then36.cleanup_crit_edge, %if.then13, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.then13 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %if.then38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_set_mac_address(ptr noundef %ndev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %addr) #9
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv3.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %8, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !71
  %9 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx5.i = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %12 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %arrayidx9.i = getelementptr i8, ptr %10, i32 3
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %14 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or12.i = or i32 %shl11.i, %shl7.i
  %arrayidx14.i = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %16 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or17.i = or i32 %or12.i, %shl16.i
  %arrayidx19.i = getelementptr i8, ptr %10, i32 5
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %18 to i32
  %or21.i = or i32 %or17.i, %conv20.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #9
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 128
  %add.ptr24.i = getelementptr i8, ptr %21, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %19) #9, !srcloc !71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_task = getelementptr i8, ptr %ndev, i32 5744
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_task) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_get_drvinfo(ptr nocapture noundef readnone %netdev, ptr noundef %drvinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.21, i32 noundef 32) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hip04_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_coalesce_usecs = getelementptr i8, ptr %netdev, i32 4640
  %0 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_coalesce_usecs, align 32
  %tx_coalesce_usecs1 = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tx_coalesce_usecs1, align 4
  %tx_coalesce_frames = getelementptr i8, ptr %netdev, i32 4636
  %3 = ptrtoint ptr %tx_coalesce_frames to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_coalesce_frames, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %5 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hip04_set_coalesce(ptr nocapture noundef writeonly %netdev, ptr nocapture noundef readonly %ec, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 5
  %0 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_coalesce_usecs, align 4
  %2 = add i32 %1, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -101, i32 %2)
  %3 = icmp ult i32 %2, -101
  br i1 %3, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ec, i32 0, i32 6
  %4 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_max_coalesced_frames, align 4
  %6 = add i32 %5, -201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -101, i32 %6)
  %7 = icmp ult i32 %6, -101
  br i1 %7, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  %tx_coalesce_usecs9 = getelementptr i8, ptr %netdev, i32 4640
  %8 = ptrtoint ptr %tx_coalesce_usecs9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %tx_coalesce_usecs9, align 32
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_max_coalesced_frames, align 4
  %tx_coalesce_frames = getelementptr i8, ptr %netdev, i32 4636
  %11 = ptrtoint ptr %tx_coalesce_frames to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_coalesce_frames, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_frag_align(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_hip04_eth__353_1057_hip04_mac_driver_init6, !1, !"__initcall__kmod_hip04_eth__353_1057_hip04_mac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1057, i32 1}
!2 = !{ptr @__exitcall_hip04_mac_driver_exit, !1, !"__exitcall_hip04_mac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description354, !4, !"__UNIQUE_ID_description354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1059, i32 1}
!5 = !{ptr @__UNIQUE_ID_file355, !6, !"__UNIQUE_ID_file355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1060, i32 1}
!7 = !{ptr @__UNIQUE_ID_license356, !6, !"__UNIQUE_ID_license356", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1053, i32 12}
!10 = !{ptr @hip04_mac_driver, !11, !"hip04_mac_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1049, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 927, i32 47}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 929, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hip04_mac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hip04_mac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 951, i32 3}
!24 = !{ptr @hip04_mac_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hip04_mac_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 958, i32 3}
!28 = !{ptr @hip04_mac_probe._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hip04_mac_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 971, i32 20}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 975, i32 42}
!34 = !{ptr @hip04_mac_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 986, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1006, i32 20}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 677, i32 21}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 681, i32 21}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hip04_netdev_ops, !48, !"hip04_netdev_ops", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 845, i32 36}
!49 = !{ptr @hip04_ethtool_ops, !50, !"hip04_ethtool_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 837, i32 33}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 834, i32 28}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 596, i32 4}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hip04_rx_poll.descriptor, !54, !"descriptor", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 280, i32 21}
!60 = !{ptr @hip04_mac_match, !61, !"hip04_mac_match", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/hisilicon/hip04_eth.c", i32 1042, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 6273823}
!72 = !{!"auto-init"}
!73 = !{i64 6274241}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2156636087}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2148978646, i64 2148978651, i64 2148978664, i64 2148978708, i64 2148978742, i64 2148978763}
!78 = !{i64 2156637067}
!79 = !{i64 2156640275}
!80 = !{i64 2155800215}
!81 = !{i64 2156640503}
!82 = !{i64 2156635407}
!83 = !{i64 2154850336, i64 2154850836, i64 2154850373, i64 2154850429, i64 2154850463, i64 2154850487, i64 2154850528, i64 2154850549, i64 2154850577, i64 2154850611}
!84 = !{i64 2154851680}
!85 = !{i64 2155799144}
!86 = !{i64 2156644433}
