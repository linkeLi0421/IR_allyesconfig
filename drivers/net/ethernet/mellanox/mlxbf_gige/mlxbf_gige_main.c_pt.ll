; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mlxbf_gige = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i16, i16, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i16, i16, i64, i64, i64, [1024 x ptr], [256 x ptr], i32, i32, i32, i32, i32, i8, i8, %struct.napi_struct, %struct.mlxbf_gige_stats }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlxbf_gige_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { %union.anon, %union.anon.100, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, i32, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.99, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.99 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_mlxbf_gige__349_435_mlxbf_gige_driver_init6 = internal global ptr @mlxbf_gige_driver_init, section ".initcall6.init", align 4
@mlxbf_gige_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxbf_gige_probe, ptr @mlxbf_gige_remove, ptr @mlxbf_gige_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxbf_gige_driver_exit = internal global ptr @mlxbf_gige_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [70 x i8] c"mlxbf_gige.description=Mellanox BlueField SoC Gigabit Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [58 x i8] c"mlxbf_gige.author=David Thompson <davthompson@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [50 x i8] c"mlxbf_gige.author=Asmaa Mnebhi <asmaa@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [68 x i8] c"mlxbf_gige.file=drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [32 x i8] c"mlxbf_gige.license=Dual BSD/GPL\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxbf_gige\00", [21 x i8] zeroinitializer }, align 32
@mlxbf_gige_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mlxbf_gige_open, ptr @mlxbf_gige_stop, ptr @mlxbf_gige_start_xmit, ptr null, ptr null, ptr null, ptr @mlxbf_gige_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @mlxbf_gige_eth_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxbf_gige_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlxbf_gige_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@mlxbf_gige_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@mlxbf_gige_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 337, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA configuration failed: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlxbf_gige_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxbf_gige_probe._entry_ptr = internal global ptr @mlxbf_gige_probe._entry, section ".printk_index", align 4
@mlxbf_gige_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 347, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error getting PHY irq. Use polling instead\00", [53 x i8] zeroinitializer }, align 32
@mlxbf_gige_probe._entry_ptr.12 = internal global ptr @mlxbf_gige_probe._entry.10, section ".printk_index", align 4
@mlxbf_gige_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 365, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxbf_gige_probe._entry_ptr.15 = internal global ptr @mlxbf_gige_probe._entry.13, section ".printk_index", align 4
@mlxbf_gige_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register netdev\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxbf_gige_probe._entry_ptr.18 = internal global ptr @mlxbf_gige_probe._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"mlxbf_gige_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 425, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 326, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 430, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"mlxbf_gige_netdev_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 257, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 318, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 337, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 347, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 365, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 387, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_mlxbf_gige_driver_exit, ptr @__initcall__kmod_mlxbf_gige__349_435_mlxbf_gige_driver_init6, ptr @mlxbf_gige_driver_exit, ptr @mlxbf_gige_probe._entry, ptr @mlxbf_gige_probe._entry.10, ptr @mlxbf_gige_probe._entry.13, ptr @mlxbf_gige_probe._entry.16, ptr @mlxbf_gige_probe._entry_ptr, ptr @mlxbf_gige_probe._entry_ptr.12, ptr @mlxbf_gige_probe._entry_ptr.15, ptr @mlxbf_gige_probe._entry_ptr.18, ptr @mlxbf_gige_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mlxbf_gige_netdev_ops, ptr @mlxbf_gige_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxbf_gige_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxbf_gige_alloc_skb(ptr nocapture noundef readonly %priv, i32 noundef %map_len, ptr nocapture noundef writeonly %buf_dma, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 4096, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %conv = sext i32 %4 to i64
  %sub = add nsw i64 %conv, 2047
  %and = and i64 %sub, -2048
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %tobool2.not = icmp eq i64 %and, %conv
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = trunc i64 %and to i32
  %conv4 = sub i32 %5, %4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 %conv4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %call.i27 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %12) #7
  br i1 %call.i27, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end5
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !56

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %10) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %10, ptr noundef %12, i32 noundef %map_len) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %12 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i28 = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %10, ptr noundef %add.ptr.i28, i32 noundef %and.i, i32 noundef %map_len, i32 noundef %dir, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %19 = ptrtoint ptr %buf_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %buf_dma, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then11, label %dma_map_single_attrs.exit.cleanup_crit_edge

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef nonnull %call.i) #7
  %22 = ptrtoint ptr %buf_dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf_dma, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %dma_map_single_attrs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxbf_gige_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxbf_gige_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 3) #7
  %cmp.i155 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 4) #7
  %cmp.i156 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %call, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i = getelementptr i8, ptr %call, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %5 = zext i32 %4 to i64
  %6 = zext i32 %3 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or i64 %7, %5
  %9 = or i64 %8, 72057594037927936
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i64 %10, 32
  %conv3.i = trunc i64 %shr.i to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !61
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call15 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev, i32 noundef 5608, i32 noundef 1, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %parent = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 16
  %15 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mlxbf_gige_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 44
  %16 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlxbf_gige_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i158 = getelementptr i8, ptr %call15, i32 2304
  %netdev21 = getelementptr i8, ptr %call15, i32 2320
  %17 = ptrtoint ptr %netdev21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call15, ptr %netdev21, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i158, ptr %driver_data.i.i, align 4
  %dev23 = getelementptr i8, ptr %call15, i32 2316
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev23, align 4
  %pdev24 = getelementptr i8, ptr %call15, i32 2324
  %20 = ptrtoint ptr %pdev24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %pdev24, align 4
  %lock = getelementptr i8, ptr %call15, i32 2336
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mlxbf_gige_probe.__key, i16 noundef signext 3) #7
  %call26 = tail call i32 @mlxbf_gige_mdio_probe(ptr noundef %pdev, ptr noundef %add.ptr.i158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %21 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %add.ptr.i158, align 8
  %llu_base31 = getelementptr i8, ptr %call15, i32 2308
  %22 = ptrtoint ptr %llu_base31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call3, ptr %llu_base31, align 4
  %plu_base32 = getelementptr i8, ptr %call15, i32 2312
  %23 = ptrtoint ptr %plu_base32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %plu_base32, align 8
  %rx_q_entries = getelementptr i8, ptr %call15, i32 2380
  %24 = ptrtoint ptr %rx_q_entries to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 128, ptr %rx_q_entries, align 4
  %tx_q_entries = getelementptr i8, ptr %call15, i32 2382
  %25 = ptrtoint ptr %tx_q_entries to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 128, ptr %tx_q_entries, align 2
  tail call fastcc void @mlxbf_gige_initial_mac(ptr noundef %add.ptr.i158)
  %call34 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call34) #10
  br label %out

if.end41:                                         ; preds = %if.end29
  %call42 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %error_irq = getelementptr i8, ptr %call15, i32 7568
  %26 = ptrtoint ptr %error_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call42, ptr %error_irq, align 8
  %call43 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  %rx_irq = getelementptr i8, ptr %call15, i32 7572
  %27 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call43, ptr %rx_irq, align 4
  %call44 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #7
  %llu_plu_irq = getelementptr i8, ptr %call15, i32 7576
  %28 = ptrtoint ptr %llu_plu_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call44, ptr %llu_plu_irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %mdiobus = getelementptr i8, ptr %call15, i32 2332
  %29 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdiobus, align 4
  %call52 = tail call ptr @phy_find_first(ptr noundef %30) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end41.out_crit_edge, label %if.end55

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end55:                                         ; preds = %if.end41
  %addr56 = getelementptr inbounds %struct.mdio_device, ptr %call52, i32 0, i32 6
  %31 = ptrtoint ptr %addr56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr56, align 8
  %33 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdiobus, align 4
  %arrayidx = getelementptr %struct.mii_bus, ptr %34, i32 0, i32 15, i32 %32
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx, align 4
  %irq58 = getelementptr inbounds %struct.phy_device, ptr %call52, i32 0, i32 25
  %36 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %irq58, align 4
  %call59 = tail call i32 @phy_connect_direct(ptr noundef nonnull %call15, ptr noundef nonnull %call52, ptr noundef nonnull @mlxbf_gige_adjust_link, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %out

if.end66:                                         ; preds = %if.end55
  tail call void @phy_remove_link_mode(ptr noundef nonnull %call52, i32 noundef 4) #7
  tail call void @phy_remove_link_mode(ptr noundef nonnull %call52, i32 noundef 3) #7
  tail call void @phy_remove_link_mode(ptr noundef nonnull %call52, i32 noundef 2) #7
  tail call void @phy_remove_link_mode(ptr noundef nonnull %call52, i32 noundef 1) #7
  tail call void @phy_remove_link_mode(ptr noundef nonnull %call52, i32 noundef 0) #7
  %advertising = getelementptr inbounds %struct.phy_device, ptr %call52, i32 0, i32 17
  %37 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %advertising, align 4
  %and.i.i159 = and i32 %38, -24577
  store i32 %and.i.i159, ptr %advertising, align 4
  tail call void @phy_attached_info(ptr noundef nonnull %call52) #7
  %call69 = tail call i32 @register_netdev(ptr noundef nonnull %call15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end66.cleanup_crit_edge, label %do.end74

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  tail call void @phy_disconnect(ptr noundef nonnull %call52) #7
  br label %out

out:                                              ; preds = %do.end74, %do.end64, %if.end41.out_crit_edge, %do.end39
  %err.0 = phi i32 [ %call34, %do.end39 ], [ %call59, %do.end64 ], [ %call69, %do.end74 ], [ -19, %if.end41.out_crit_edge ]
  tail call void @mlxbf_gige_mdio_remove(ptr noundef %add.ptr.i158) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end66.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then5 ], [ %2, %if.then10 ], [ %err.0, %out ], [ -12, %if.end12.cleanup_crit_edge ], [ %call26, %if.end17.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.mlxbf_gige, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  tail call void @unregister_netdev(ptr noundef %3) #7
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %7) #7
  tail call void @mlxbf_gige_mdio_remove(ptr noundef %1) #7
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !61
  %call1 = tail call fastcc i32 @mlxbf_gige_clean_port(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_mdio_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxbf_gige_initial_mac(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %mac = alloca [6 x i8], align 4
  %local_mac = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #7
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_mac) #7
  %5 = ptrtoint ptr %local_mac to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %local_mac, align 8, !annotation !63
  call void @mlxbf_gige_get_mac_rx_filter(ptr noundef %priv, i32 noundef 1, ptr noundef nonnull %local_mac) #7
  %6 = ptrtoint ptr %local_mac to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %local_mac, align 8
  %conv.i = trunc i64 %7 to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %4, align 1
  %shr.i = lshr i64 %7, 8
  %conv.1.i = trunc i64 %shr.i to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.1.i, ptr %3, align 4
  %shr.1.i = lshr i64 %7, 16
  %conv.2.i = trunc i64 %shr.1.i to i8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.2.i, ptr %2, align 1
  %shr.2.i = lshr i64 %7, 24
  %conv.3.i = trunc i64 %shr.2.i to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.3.i, ptr %1, align 2
  %shr.3.i = lshr i64 %7, 32
  %conv.4.i = trunc i64 %shr.3.i to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.4.i, ptr %0, align 1
  %shr.4.i = lshr i64 %7, 40
  %conv.5.i = trunc i64 %shr.4.i to i8
  %13 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.5.i, ptr %mac, align 4
  %14 = load i32, ptr %mac, align 4
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %entry
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %conv.i.i = zext i16 %17 to i32
  %or.i.i = or i32 %14, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 4
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 8
  call void @dev_addr_mod(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #7
  br label %if.end

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %netdev4 = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 4
  %20 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev4, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #7
  %22 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr.i, align 1
  %25 = and i8 %24, -4
  %26 = or i8 %25, 2
  store i8 %26, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #7
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 55
  %27 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %netdev5 = getelementptr inbounds %struct.mlxbf_gige, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev5, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i11 = zext i8 %33 to i64
  %arrayidx.1.i12 = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i12 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.1.i12, align 1
  %conv.1.i13 = zext i8 %35 to i64
  %36 = shl nuw nsw i64 %conv.i11, 16
  %37 = shl nuw nsw i64 %conv.1.i13, 8
  %shl.2.i = or i64 %37, %36
  %arrayidx.2.i14 = getelementptr i8, ptr %31, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.2.i14, align 1
  %conv.2.i15 = zext i8 %39 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i15
  %arrayidx.3.i16 = getelementptr i8, ptr %31, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i16 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.3.i16, align 1
  %conv.3.i17 = zext i8 %41 to i64
  %arrayidx.4.i18 = getelementptr i8, ptr %31, i32 4
  %42 = ptrtoint ptr %arrayidx.4.i18 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.4.i18, align 1
  %conv.4.i19 = zext i8 %43 to i64
  %44 = shl nuw nsw i64 %or.2.i, 24
  %45 = shl nuw nsw i64 %conv.3.i17, 16
  %46 = shl nuw nsw i64 %conv.4.i19, 8
  %47 = or i64 %45, %46
  %shl.5.i = or i64 %44, %47
  %arrayidx.5.i = getelementptr i8, ptr %31, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i20 = zext i8 %49 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i20
  %50 = ptrtoint ptr %local_mac to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or.5.i, ptr %local_mac, align 8
  call void @mlxbf_gige_set_mac_rx_filter(ptr noundef %priv, i32 noundef 1, i64 noundef %or.5.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_mac) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_adjust_link(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  tail call void @phy_print_status(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_mdio_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %call2 = tail call i32 @mlxbf_gige_request_irqs(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i37 = getelementptr i8, ptr %3, i32 608
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 612
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #7
  %rx_din_dropped_pkts.i = getelementptr i8, ptr %netdev, i32 7880
  %11 = ptrtoint ptr %rx_din_dropped_pkts.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_din_dropped_pkts.i, align 8
  %add.i = add i64 %10, %12
  store i64 %add.i, ptr %rx_din_dropped_pkts.i, align 8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %14, i32 1360
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i14.i = getelementptr i8, ptr %14, i32 1364
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %17 = zext i32 %16 to i64
  %18 = zext i32 %15 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #7
  %rx_filter_passed_pkts.i = getelementptr i8, ptr %netdev, i32 7896
  %22 = ptrtoint ptr %rx_filter_passed_pkts.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_filter_passed_pkts.i, align 8
  %add4.i = add i64 %21, %23
  store i64 %add4.i, ptr %rx_filter_passed_pkts.i, align 8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %25, i32 1376
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i15.i = getelementptr i8, ptr %25, i32 1380
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #7
  %rx_filter_discard_pkts.i = getelementptr i8, ptr %netdev, i32 7904
  %33 = ptrtoint ptr %rx_filter_discard_pkts.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_filter_discard_pkts.i, align 8
  %add8.i = add i64 %32, %34
  store i64 %add8.i, ptr %rx_filter_discard_pkts.i, align 8
  %call3 = tail call fastcc i32 @mlxbf_gige_clean_port(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.free_irqs_crit_edge

if.end.free_irqs_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_irqs

if.end6:                                          ; preds = %if.end
  %valid_polarity = getelementptr i8, ptr %netdev, i32 7589
  %35 = ptrtoint ptr %valid_polarity to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %valid_polarity, align 1
  %call7 = tail call i32 @mlxbf_gige_rx_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.free_irqs_crit_edge

if.end6.free_irqs_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_irqs

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @mlxbf_gige_tx_init(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %rx_deinit

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_start(ptr noundef %1) #7
  %napi = getelementptr i8, ptr %netdev, i32 7592
  tail call void @netif_napi_add(ptr noundef %netdev, ptr noundef %napi, ptr noundef nonnull @mlxbf_gige_poll, i32 noundef 64) #7
  tail call void @napi_enable(ptr noundef %napi) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -117374976) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %add.ptr.i38 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #7, !srcloc !61
  br label %cleanup

rx_deinit:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlxbf_gige_rx_deinit(ptr noundef %add.ptr.i) #7
  br label %free_irqs

free_irqs:                                        ; preds = %rx_deinit, %if.end6.free_irqs_crit_edge, %if.end.free_irqs_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.free_irqs_crit_edge ], [ %call7, %if.end6.free_irqs_crit_edge ], [ %call11, %rx_deinit ]
  tail call void @mlxbf_gige_free_irqs(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_irqs, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_irqs ], [ 0, %if.end14 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_stop(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %add.ptr.i12 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !61
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %napi = getelementptr i8, ptr %netdev, i32 7592
  tail call void @napi_disable(ptr noundef %napi) #7
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  tail call void @mlxbf_gige_free_irqs(ptr noundef %add.ptr.i) #7
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %5) #7
  tail call void @mlxbf_gige_rx_deinit(ptr noundef %add.ptr.i) #7
  tail call void @mlxbf_gige_tx_deinit(ptr noundef %add.ptr.i) #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 608
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 612
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #7
  %rx_din_dropped_pkts.i = getelementptr i8, ptr %netdev, i32 7880
  %15 = ptrtoint ptr %rx_din_dropped_pkts.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_din_dropped_pkts.i, align 8
  %add.i = add i64 %14, %16
  store i64 %add.i, ptr %rx_din_dropped_pkts.i, align 8
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %18, i32 1360
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i14.i = getelementptr i8, ptr %18, i32 1364
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %21 = zext i32 %20 to i64
  %22 = zext i32 %19 to i64
  %23 = shl nuw i64 %22, 32
  %24 = or i64 %23, %21
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #7
  %rx_filter_passed_pkts.i = getelementptr i8, ptr %netdev, i32 7896
  %26 = ptrtoint ptr %rx_filter_passed_pkts.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_filter_passed_pkts.i, align 8
  %add4.i = add i64 %25, %27
  store i64 %add4.i, ptr %rx_filter_passed_pkts.i, align 8
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %29, i32 1376
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 1380
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %32 = zext i32 %31 to i64
  %33 = zext i32 %30 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #7
  %rx_filter_discard_pkts.i = getelementptr i8, ptr %netdev, i32 7904
  %37 = ptrtoint ptr %rx_filter_discard_pkts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_filter_discard_pkts.i, align 8
  %add8.i = add i64 %36, %38
  store i64 %add8.i, ptr %rx_filter_discard_pkts.i, align 8
  %call2 = tail call fastcc i32 @mlxbf_gige_clean_port(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_set_rx_mode(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  %and.lobit17 = lshr exact i32 %and, 8
  %promisc_enabled = getelementptr i8, ptr %netdev, i32 7588
  %2 = ptrtoint ptr %promisc_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %promisc_enabled, align 4, !range !65
  %4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit17, i32 %4)
  %cmp.not = icmp eq i32 %and.lobit17, %4
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %5 = trunc i32 %and.lobit17 to i8
  %6 = ptrtoint ptr %promisc_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %promisc_enabled, align 4
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlxbf_gige_enable_promisc(ptr noundef %add.ptr.i) #7
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlxbf_gige_disable_promisc(ptr noundef %add.ptr.i) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxbf_gige_eth_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %call1 = tail call i32 @phy_mii_ioctl(ptr noundef %3, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxbf_gige_get_stats64(ptr noundef %netdev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats1) #7
  %rx_truncate_errors = getelementptr i8, ptr %netdev, i32 7864
  %0 = ptrtoint ptr %rx_truncate_errors to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_truncate_errors, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %2 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %rx_length_errors, align 8
  %rx_din_dropped_pkts = getelementptr i8, ptr %netdev, i32 7880
  %3 = ptrtoint ptr %rx_din_dropped_pkts to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_din_dropped_pkts, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 608
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i28 = getelementptr i8, ptr %6, i32 612
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %9 = zext i32 %8 to i64
  %10 = zext i32 %7 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #7
  %add = add i64 %13, %4
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %14 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add, ptr %rx_fifo_errors, align 8
  %rx_mac_errors = getelementptr i8, ptr %netdev, i32 7872
  %15 = ptrtoint ptr %rx_mac_errors to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_mac_errors, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %17 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rx_crc_errors, align 8
  %18 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_length_errors, align 8
  %add8 = add i64 %add, %16
  %add10 = add i64 %add8, %19
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add10, ptr %rx_errors, align 8
  %tx_fifo_full = getelementptr i8, ptr %netdev, i32 7888
  %21 = ptrtoint ptr %tx_fifo_full to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_fifo_full, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 18
  %23 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_fifo_errors, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %24 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %22, ptr %tx_errors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_request_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxbf_gige_clean_port(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = or i64 %7, 549755813888
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %add.ptr2 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %12 = lshr i64 %8, 32
  %13 = trunc i64 %12 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %13) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i64 %9, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %add.ptr.i45 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %14) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %call3 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call3, 100000000
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %add.ptr655 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr655) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i4656 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4656) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %19 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not57 = icmp eq i32 %19, 0
  br i1 %tobool.not57, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call9 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call9, %add.i
  br i1 %cmp3.i, label %if.then11, label %cond.false

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %add.ptr13 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %24 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %phi.cmp = icmp eq i32 %24, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %add.ptr6 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i46 = getelementptr i8, ptr %27, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %30 = and i32 %28, 16777216
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then11, %entry.for.end_crit_edge
  %and23.pre-phi = phi i32 [ %phi.sel, %if.then11 ], [ 0, %entry.for.end_crit_edge ], [ 0, %cond.false.for.end_crit_edge ]
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %add.ptr26 = getelementptr i8, ptr %32, i32 64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %add.ptr.i48 = getelementptr i8, ptr %32, i32 68
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %35 = and i32 %33, -129
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr30 = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %35) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %add.ptr.i52 = getelementptr i8, ptr %37, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 0) #7, !srcloc !61
  ret i32 %and23.pre-phi
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_tx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxbf_gige_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_rx_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_free_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_tx_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_enable_promisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_disable_promisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_get_mac_rx_filter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxbf_gige_set_mac_rx_filter(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_mlxbf_gige__349_435_mlxbf_gige_driver_init6, !1, !"__initcall__kmod_mlxbf_gige__349_435_mlxbf_gige_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_mlxbf_gige_driver_exit, !1, !"__exitcall_mlxbf_gige_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_author352, !8, !"__UNIQUE_ID_author352", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_file353, !10, !"__UNIQUE_ID_file353", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 440, i32 1}
!11 = !{ptr @__UNIQUE_ID_license354, !10, !"__UNIQUE_ID_license354", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 430, i32 11}
!18 = !{ptr @mlxbf_gige_driver, !19, !"mlxbf_gige_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 425, i32 31}
!20 = !{ptr @mlxbf_gige_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 318, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 337, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlxbf_gige_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlxbf_gige_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 345, i32 65}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 347, i32 3}
!35 = !{ptr @mlxbf_gige_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlxbf_gige_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 365, i32 3}
!39 = !{ptr @mlxbf_gige_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlxbf_gige_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 387, i32 3}
!43 = !{ptr @mlxbf_gige_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlxbf_gige_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mlxbf_gige_netdev_ops, !46, !"mlxbf_gige_netdev_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxbf_gige/mlxbf_gige_main.c", i32 257, i32 36}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 6881497}
!58 = !{i64 2157037881}
!59 = !{i64 2157038319}
!60 = !{i64 2157038689}
!61 = !{i64 6881079}
!62 = !{i64 2157039062}
!63 = !{!"auto-init"}
!64 = !{i64 2157050210}
!65 = !{i8 0, i8 2}
!66 = !{i64 2157047134}
