; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hix5hd2_gmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.hix5hd2_priv = type { [4 x %struct.hix5hd2_desc_sw], %struct.hix5hd2_sg_desc_ring, ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [3 x i32], ptr, %struct.napi_struct, %struct.work_struct }
%struct.hix5hd2_desc_sw = type { ptr, i32, i32, i32 }
%struct.hix5hd2_sg_desc_ring = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sg_desc = type { i32, i32, i32, i32, [18 x %struct.frags_info] }
%struct.frags_info = type { i32, i32 }
%struct.hix5hd2_desc = type { i32, i32, [24 x i8] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }

@__initcall__kmod_hix5hd2_gmac__349_1326_hix5hd2_dev_driver_init6 = internal global ptr @hix5hd2_dev_driver_init, section ".initcall6.init", align 4
@hix5hd2_dev_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hix5hd2_dev_probe, ptr @hix5hd2_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hix5hd2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hix5hd2_dev_driver_exit = internal global ptr @hix5hd2_dev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [63 x i8] c"hix5hd2_gmac.description=HISILICON Gigabit Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [62 x i8] c"hix5hd2_gmac.file=drivers/net/ethernet/hisilicon/hix5hd2_gmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [28 x i8] c"hix5hd2_gmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias353 = internal constant [38 x i8] c"hix5hd2_gmac.alias=platform:hisi-gmac\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hisi-gmac\00", [22 x i8] zeroinitializer }, align 32
@hix5hd2_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-gmac-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-gmac-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516a-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac_core\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mac core clk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable mac core clk %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mac_ifc\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable mac ifc clk %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hisilicon,phy-reset-delays-us\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hix5hd2_mii_bus\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-mii\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not find phy-mode\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not find phy-handle\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No irq resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_request_irq failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using random MAC address %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@hix5hd2_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->tx_timeout_task)\00", [54 x i8] zeroinitializer }, align 32
@hix5hd2_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hix5hd2_net_open, ptr @hix5hd2_net_close, ptr @hix5hd2_net_xmit, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_net_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_net_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hix5hd2_ethtools_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_netdev failed!\00", [40 x i8] zeroinitializer }, align 32
@hix5hd2_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 949, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SMI bus read not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hix5hd2_mdio_read\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/hisilicon/hix5hd2_gmac.c\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hix5hd2_mdio_read._entry_ptr = internal global ptr @hix5hd2_mdio_read._entry, section ".printk_index", align 4
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not supported mode\0A\00", [44 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inconsistent tx_skb\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inconsistent rx_skb\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcv len err, len = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"hix5hd2_dev_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1317, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1319, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"hix5hd2_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1306, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1132, i32 48 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1134, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1141, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1145, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1151, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1164, i32 46 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1169, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1184, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1188, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1197, i32 20 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1201, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1203, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1210, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1218, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1225, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1229, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"hix5hd2_netdev_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 903, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"hix5hd2_ethtools_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 911, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1256, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 949, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 308, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 326, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 607, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 529, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [49 x i8] c"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 543, i32 20 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias353, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_hix5hd2_dev_driver_exit, ptr @__initcall__kmod_hix5hd2_gmac__349_1326_hix5hd2_dev_driver_init6, ptr @hix5hd2_dev_driver_exit, ptr @hix5hd2_mdio_read._entry, ptr @hix5hd2_mdio_read._entry_ptr, ptr @hix5hd2_dev_driver, ptr @.str, ptr @hix5hd2_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @hix5hd2_dev_probe.__key, ptr @.str.16, ptr @hix5hd2_netdev_ops, ptr @hix5hd2_ethtools_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_dev_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ethtools_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hix5hd2_dev_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_dev_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hix5hd2_dev_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 8608, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev3 = getelementptr i8, ptr %call, i32 10576
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 8
  %netdev = getelementptr i8, ptr %call, i32 10580
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %netdev, align 4
  %call4 = tail call ptr @of_match_device(ptr noundef nonnull @hix5hd2_of_match, ptr noundef %dev1) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_free_netdev_crit_edge, label %if.end7

if.end.out_free_netdev_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_netdev

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  %hw_cap = getelementptr i8, ptr %call, i32 10592
  %8 = ptrtoint ptr %hw_cap to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hw_cap, align 8
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr i8, ptr %call, i32 2376
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call8 to i32
  br label %out_free_netdev

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %ctrl_base = getelementptr i8, ptr %call, i32 2380
  %11 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %ctrl_base, align 4
  %cmp.i285 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call15 to i32
  br label %out_free_netdev

if.end21:                                         ; preds = %if.end14
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %mac_core_clk = getelementptr i8, ptr %call, i32 10604
  %13 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %mac_core_clk, align 4
  %cmp.i286 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.2) #11
  br label %out_free_netdev

if.end27:                                         ; preds = %if.end21
  %call.i = tail call i32 @clk_prepare(ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.clk_prepare_enable.exit_crit_edge

if.end27.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call23) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end27.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end27.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then30, label %clk_prepare_enable.exit.if.end31_crit_edge

clk_prepare_enable.exit.if.end31_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i) #11
  br label %out_free_netdev

if.end31:                                         ; preds = %clk_prepare_enable.exit.if.end31_crit_edge, %if.end.i.if.end31_crit_edge
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  %mac_ifc_clk = getelementptr i8, ptr %call, i32 10608
  %cmp.i287 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i287, ptr null, ptr %call33
  %14 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.store.select, ptr %mac_ifc_clk, align 8
  %call.i288 = tail call i32 @clk_prepare(ptr noundef %spec.store.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool.not.i289 = icmp eq i32 %call.i288, 0
  br i1 %tobool.not.i289, label %if.end.i292, label %if.end31.clk_prepare_enable.exit295_crit_edge

if.end31.clk_prepare_enable.exit295_crit_edge:    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit295

if.end.i292:                                      ; preds = %if.end31
  %call1.i290 = tail call i32 @clk_enable(ptr noundef %spec.store.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i290)
  %tobool2.not.i291 = icmp eq i32 %call1.i290, 0
  br i1 %tobool2.not.i291, label %if.end.i292.if.end43_crit_edge, label %if.then3.i293

if.end.i292.if.end43_crit_edge:                   ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then3.i293:                                    ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %spec.store.select) #8
  br label %clk_prepare_enable.exit295

clk_prepare_enable.exit295:                       ; preds = %if.then3.i293, %if.end31.clk_prepare_enable.exit295_crit_edge
  %retval.0.i294 = phi i32 [ %call.i288, %if.end31.clk_prepare_enable.exit295_crit_edge ], [ %call1.i290, %if.then3.i293 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i294)
  %cmp41 = icmp slt i32 %retval.0.i294, 0
  br i1 %cmp41, label %if.then42, label %clk_prepare_enable.exit295.if.end43_crit_edge

clk_prepare_enable.exit295.if.end43_crit_edge:    ; preds = %clk_prepare_enable.exit295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %clk_prepare_enable.exit295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i294) #11
  br label %out_disable_mac_core_clk

if.end43:                                         ; preds = %clk_prepare_enable.exit295.if.end43_crit_edge, %if.end.i292.if.end43_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %mac_core_rst = getelementptr i8, ptr %call, i32 10612
  %15 = ptrtoint ptr %mac_core_rst to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %mac_core_rst, align 4
  %cmp.i296 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.end49.thread, label %if.end49

if.end49.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mac_core_rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mac_core_rst, align 4
  br label %hix5hd2_mac_core_reset.exit

if.end49:                                         ; preds = %if.end43
  %tobool.not.i297 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i297, label %if.end49.hix5hd2_mac_core_reset.exit_crit_edge, label %if.end.i299

if.end49.hix5hd2_mac_core_reset.exit_crit_edge:   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_mac_core_reset.exit

if.end.i299:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call.i298 = tail call i32 @reset_control_assert(ptr noundef nonnull %call.i.i) #8
  %17 = ptrtoint ptr %mac_core_rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac_core_rst, align 4
  %call3.i = tail call i32 @reset_control_deassert(ptr noundef %18) #8
  br label %hix5hd2_mac_core_reset.exit

hix5hd2_mac_core_reset.exit:                      ; preds = %if.end.i299, %if.end49.hix5hd2_mac_core_reset.exit_crit_edge, %if.end49.thread
  %call.i.i300 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %mac_ifc_rst = getelementptr i8, ptr %call, i32 10616
  %cmp.i301 = icmp ugt ptr %call.i.i300, inttoptr (i32 -4096 to ptr)
  %spec.store.select315 = select i1 %cmp.i301, ptr null, ptr %call.i.i300
  %19 = ptrtoint ptr %mac_ifc_rst to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spec.store.select315, ptr %mac_ifc_rst, align 8
  %call.i.i302 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %phy_rst = getelementptr i8, ptr %call, i32 10620
  %20 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i302, ptr %phy_rst, align 4
  %cmp.i303 = icmp ugt ptr %call.i.i302, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then59, label %if.else

if.then59:                                        ; preds = %hix5hd2_mac_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %phy_rst, align 4
  br label %if.end65

if.else:                                          ; preds = %hix5hd2_mac_core_reset.exit
  %phy_reset_delays = getelementptr i8, ptr %call, i32 10624
  %call.i304 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %phy_reset_delays, i32 noundef 3, i32 noundef 0) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i304, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i304)
  %tobool62.not = icmp sgt i32 %call.i304, -1
  br i1 %tobool62.not, label %if.end64, label %if.else.out_disable_clk_crit_edge

if.else.out_disable_clk_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_clk

if.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hix5hd2_phy_reset(ptr noundef %add.ptr.i)
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then59
  %call.i305 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #8
  %cmp67 = icmp eq ptr %call.i305, null
  br i1 %cmp67, label %if.end65.out_disable_clk_crit_edge, label %if.end69

if.end65.out_disable_clk_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable_clk

if.end69:                                         ; preds = %if.end65
  %priv70 = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 3
  %23 = ptrtoint ptr %priv70 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %priv70, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.8, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 4
  %25 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hix5hd2_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 5
  %26 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hix5hd2_mdio_write, ptr %write, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 9
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %parent, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i305, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i306 = icmp eq ptr %29, null
  br i1 %tobool.not.i306, label %if.end.i307, label %if.end69.dev_name.exit_crit_edge

if.end69.dev_name.exit_crit_edge:                 ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i307:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i307, %if.end69.dev_name.exit_crit_edge
  %retval.0.i308 = phi ptr [ %31, %if.end.i307 ], [ %29, %if.end69.dev_name.exit_crit_edge ]
  %call75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i308)
  %bus76 = getelementptr i8, ptr %call, i32 10636
  %32 = ptrtoint ptr %bus76 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i305, ptr %bus76, align 4
  %call77 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i305, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %dev_name.exit.err_free_mdio_crit_edge

dev_name.exit.err_free_mdio_crit_edge:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mdio

if.end80:                                         ; preds = %dev_name.exit
  %phy_mode = getelementptr i8, ptr %call, i32 10588
  %call81 = tail call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef %phy_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.10) #11
  br label %err_mdiobus

if.end84:                                         ; preds = %if.end80
  %call85 = tail call fastcc ptr @of_parse_phandle(ptr noundef %1)
  %phy_node = getelementptr i8, ptr %call, i32 10584
  %33 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call85, ptr %phy_node, align 8
  %tobool87.not = icmp eq ptr %call85, null
  br i1 %tobool87.not, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.12) #11
  br label %err_mdiobus

if.end89:                                         ; preds = %if.end84
  %call90 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call90, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call90)
  %cmp92 = icmp slt i32 %call90, 1
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #11
  br label %out_phy_node

if.end94:                                         ; preds = %if.end89
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %call.i309 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call90, ptr noundef nonnull @hix5hd2_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %36, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool98.not = icmp eq i32 %call.i309, 0
  br i1 %tobool98.not, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.14) #11
  br label %out_phy_node

if.end100:                                        ; preds = %if.end94
  %call101 = tail call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.do.body_crit_edge, label %if.then103

if.end100.do.body_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.15, ptr noundef %38) #11
  br label %do.body

do.body:                                          ; preds = %if.then103, %if.end100.do.body_crit_edge
  %tx_timeout_task = getelementptr i8, ptr %call, i32 10864
  tail call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #8
  %39 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %tx_timeout_task, align 8
  %lockdep_map = getelementptr i8, ptr %call, i32 10880
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @hix5hd2_dev_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry109 = getelementptr i8, ptr %call, i32 10868
  %40 = ptrtoint ptr %entry109 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry109, ptr %entry109, align 4
  %prev.i = getelementptr i8, ptr %call, i32 10872
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry109, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 10876
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hix5hd2_tx_timeout_task, ptr %func, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %43 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 600, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %44 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %priv_flags, align 16
  %or = or i64 %45, 4096
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %46 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @hix5hd2_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %47 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @hix5hd2_ethtools_ops, ptr %ethtool_ops, align 16
  %parent112 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %48 = ptrtoint ptr %parent112 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev1, ptr %parent112, align 8
  %49 = ptrtoint ptr %hw_cap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_cap, align 8
  %and = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool114.not = icmp eq i32 %and, 0
  br i1 %tobool114.not, label %do.body.if.end117_crit_edge, label %if.then115

do.body.if.end117_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then115:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %51 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %hw_features, align 8
  %or116 = or i64 %52, 1
  store i64 %or116, ptr %hw_features, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %do.body.if.end117_crit_edge
  %hw_features118 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %53 = ptrtoint ptr %hw_features118 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hw_features118, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %55 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %features, align 16
  %or119 = or i64 %54, %56
  %or120 = or i64 %or119, 32
  store i64 %or120, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %57 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %vlan_features, align 8
  %or122 = or i64 %58, %or120
  store i64 %or122, ptr %vlan_features, align 8
  %call123 = tail call fastcc i32 @hix5hd2_init_hw_desc_queue(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end117.out_phy_node_crit_edge

if.end117.out_phy_node_crit_edge:                 ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_phy_node

if.end126:                                        ; preds = %if.end117
  %napi = getelementptr i8, ptr %call, i32 10640
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @hix5hd2_poll, i32 noundef 64) #8
  %59 = ptrtoint ptr %hw_cap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_cap, align 8
  %and128 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end135_crit_edge, label %if.then130

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  %call131 = tail call fastcc i32 @hix5hd2_init_sg_desc_queue(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then130.if.end135_crit_edge, label %if.then130.out_destroy_queue_crit_edge

if.then130.out_destroy_queue_crit_edge:           ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_destroy_queue

if.then130.if.end135_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.end135:                                        ; preds = %if.then130.if.end135_crit_edge, %if.end126.if.end135_crit_edge
  %61 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev, align 4
  %call137 = tail call i32 @register_netdev(ptr noundef %62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.17) #11
  br label %out_destroy_queue

if.end140:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mac_ifc_clk, align 8
  tail call void @clk_disable(ptr noundef %64) #8
  tail call void @clk_unprepare(ptr noundef %64) #8
  %65 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mac_core_clk, align 4
  tail call void @clk_disable(ptr noundef %66) #8
  tail call void @clk_unprepare(ptr noundef %66) #8
  br label %cleanup

out_destroy_queue:                                ; preds = %if.then139, %if.then130.out_destroy_queue_crit_edge
  %ret.0 = phi i32 [ %call131, %if.then130.out_destroy_queue_crit_edge ], [ %call137, %if.then139 ]
  %67 = ptrtoint ptr %hw_cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hw_cap, align 8
  %and144 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %out_destroy_queue.if.end147_crit_edge, label %if.then146

out_destroy_queue.if.end147_crit_edge:            ; preds = %out_destroy_queue
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then146:                                       ; preds = %out_destroy_queue
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @hix5hd2_destroy_sg_desc_queue(ptr noundef %add.ptr.i)
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %out_destroy_queue.if.end147_crit_edge
  tail call void @__netif_napi_del(ptr noundef %napi) #8
  tail call void @synchronize_net() #8
  tail call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %add.ptr.i)
  br label %out_phy_node

out_phy_node:                                     ; preds = %if.end147, %if.end117.out_phy_node_crit_edge, %if.then99, %if.then93
  %ret.1 = phi i32 [ -22, %if.then93 ], [ %call.i309, %if.then99 ], [ %call123, %if.end117.out_phy_node_crit_edge ], [ %ret.0, %if.end147 ]
  %69 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy_node, align 8
  tail call void @of_node_put(ptr noundef %70) #8
  br label %err_mdiobus

err_mdiobus:                                      ; preds = %out_phy_node, %if.then88, %if.then83
  %ret.2 = phi i32 [ %call81, %if.then83 ], [ %ret.1, %out_phy_node ], [ -22, %if.then88 ]
  tail call void @mdiobus_unregister(ptr noundef nonnull %call.i305) #8
  br label %err_free_mdio

err_free_mdio:                                    ; preds = %err_mdiobus, %dev_name.exit.err_free_mdio_crit_edge
  %ret.3 = phi i32 [ %call77, %dev_name.exit.err_free_mdio_crit_edge ], [ %ret.2, %err_mdiobus ]
  tail call void @mdiobus_free(ptr noundef nonnull %call.i305) #8
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %err_free_mdio, %if.end65.out_disable_clk_crit_edge, %if.else.out_disable_clk_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_mdio ], [ %22, %if.else.out_disable_clk_crit_edge ], [ -12, %if.end65.out_disable_clk_crit_edge ]
  %71 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mac_ifc_clk, align 8
  tail call void @clk_disable(ptr noundef %72) #8
  tail call void @clk_unprepare(ptr noundef %72) #8
  br label %out_disable_mac_core_clk

out_disable_mac_core_clk:                         ; preds = %out_disable_clk, %if.then42
  %ret.5 = phi i32 [ %retval.0.i294, %if.then42 ], [ %ret.4, %out_disable_clk ]
  %73 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_core_clk, align 4
  tail call void @clk_disable(ptr noundef %74) #8
  tail call void @clk_unprepare(ptr noundef %74) #8
  br label %out_free_netdev

out_free_netdev:                                  ; preds = %out_disable_mac_core_clk, %if.then30, %if.then26, %if.then18, %if.then11, %if.end.out_free_netdev_crit_edge
  %ret.6 = phi i32 [ %10, %if.then11 ], [ %12, %if.then18 ], [ -19, %if.then26 ], [ %retval.0.i, %if.then30 ], [ %ret.5, %out_disable_mac_core_clk ], [ -22, %if.end.out_free_netdev_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_netdev, %if.end140, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %out_free_netdev ], [ 0, %if.end140 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_dev_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %napi = getelementptr i8, ptr %1, i32 10640
  tail call void @__netif_napi_del(ptr noundef %napi) #8
  tail call void @synchronize_net() #8
  tail call void @unregister_netdev(ptr noundef %1) #8
  %bus = getelementptr i8, ptr %1, i32 10636
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  tail call void @mdiobus_free(ptr noundef %5) #8
  %hw_cap = getelementptr i8, ptr %1, i32 10592
  %6 = ptrtoint ptr %hw_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_cap, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %1, i32 2368
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr i8, ptr %1, i32 10576
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %phys_addr.i = getelementptr i8, ptr %1, i32 2372
  %12 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 163840, ptr noundef nonnull %9, i32 noundef %13, i32 noundef 0) #8
  %14 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_ring.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %add.ptr.i)
  %phy_node = getelementptr i8, ptr %1, i32 10584
  %15 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_node, align 8
  tail call void @of_node_put(ptr noundef %16) #8
  %tx_timeout_task = getelementptr i8, ptr %1, i32 10864
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #8
  tail call void @free_netdev(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_phy_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_rst = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_rst, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #8
  %phy_reset_delays = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %phy_reset_delays to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_reset_delays, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.hix5hd2_sleep_us.exit_crit_edge, label %if.end.i

entry.hix5hd2_sleep_us.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_sleep_us.exit

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %3, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 20000
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add2.i = add nsw i32 %3, 500
  tail call void @usleep_range_state(i32 noundef %3, i32 noundef %add2.i, i32 noundef 2) #8
  br label %hix5hd2_sleep_us.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %sub.i, 1000
  tail call void @msleep(i32 noundef %div.i) #8
  br label %hix5hd2_sleep_us.exit

hix5hd2_sleep_us.exit:                            ; preds = %if.else.i, %if.then1.i, %entry.hix5hd2_sleep_us.exit_crit_edge
  %4 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %arrayidx4 = getelementptr %struct.hix5hd2_priv, ptr %priv, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i14 = icmp eq i32 %7, 0
  br i1 %tobool.not.i14, label %hix5hd2_sleep_us.exit.hix5hd2_sleep_us.exit22_crit_edge, label %if.end.i17

hix5hd2_sleep_us.exit.hix5hd2_sleep_us.exit22_crit_edge: ; preds = %hix5hd2_sleep_us.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_sleep_us.exit22

if.end.i17:                                       ; preds = %hix5hd2_sleep_us.exit
  %sub.i15 = add i32 %7, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i15)
  %cmp.i16 = icmp ult i32 %sub.i15, 20000
  br i1 %cmp.i16, label %if.then1.i19, label %if.else.i21

if.then1.i19:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  %add2.i18 = add nsw i32 %7, 500
  tail call void @usleep_range_state(i32 noundef %7, i32 noundef %add2.i18, i32 noundef 2) #8
  br label %hix5hd2_sleep_us.exit22

if.else.i21:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  %div.i20 = udiv i32 %sub.i15, 1000
  tail call void @msleep(i32 noundef %div.i20) #8
  br label %hix5hd2_sleep_us.exit22

hix5hd2_sleep_us.exit22:                          ; preds = %if.else.i21, %if.then1.i19, %hix5hd2_sleep_us.exit.hix5hd2_sleep_us.exit22_crit_edge
  %8 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_rst, align 4
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %9) #8
  %arrayidx8 = getelementptr %struct.hix5hd2_priv, ptr %priv, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i23 = icmp eq i32 %11, 0
  br i1 %tobool.not.i23, label %hix5hd2_sleep_us.exit22.hix5hd2_sleep_us.exit31_crit_edge, label %if.end.i26

hix5hd2_sleep_us.exit22.hix5hd2_sleep_us.exit31_crit_edge: ; preds = %hix5hd2_sleep_us.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_sleep_us.exit31

if.end.i26:                                       ; preds = %hix5hd2_sleep_us.exit22
  %sub.i24 = add i32 %11, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i24)
  %cmp.i25 = icmp ult i32 %sub.i24, 20000
  br i1 %cmp.i25, label %if.then1.i28, label %if.else.i30

if.then1.i28:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %add2.i27 = add nsw i32 %11, 500
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add2.i27, i32 noundef 2) #8
  br label %hix5hd2_sleep_us.exit31

if.else.i30:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #10
  %div.i29 = udiv i32 %sub.i24, 1000
  tail call void @msleep(i32 noundef %div.i29) #8
  br label %hix5hd2_sleep_us.exit31

hix5hd2_sleep_us.exit31:                          ; preds = %if.else.i30, %if.then1.i28, %hix5hd2_sleep_us.exit22.hix5hd2_sleep_us.exit31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %base2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 960
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %5 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not7.i = icmp eq i32 %5, 0
  br i1 %tobool.not7.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.08.i)
  %cmp.i = icmp eq i32 %i.08.i, 10000
  br i1 %cmp.i, label %for.body.i.out_crit_edge, label %if.end.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %7 = and i32 %6, 4096
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %shl = shl i32 %phy, 8
  %or = or i32 %shl, %reg
  %or3 = or i32 %or, 1179648
  %8 = tail call i32 @llvm.bswap.i32(i32 %or3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !85
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 8
  %base2.i27 = getelementptr inbounds %struct.hix5hd2_priv, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base2.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base2.i27, align 8
  %add.ptr.i28 = getelementptr i8, ptr %12, i32 960
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !84
  %14 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not7.i29 = icmp eq i32 %14, 0
  br i1 %tobool.not7.i29, label %if.end.if.end7_crit_edge, label %if.end.for.body.i32_crit_edge

if.end.for.body.i32_crit_edge:                    ; preds = %if.end
  br label %for.body.i32

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.body.i32:                                     ; preds = %if.end.i35.for.body.i32_crit_edge, %if.end.for.body.i32_crit_edge
  %i.08.i30 = phi i32 [ %inc.i33, %if.end.i35.for.body.i32_crit_edge ], [ 0, %if.end.for.body.i32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.08.i30)
  %cmp.i31 = icmp eq i32 %i.08.i30, 10000
  br i1 %cmp.i31, label %for.body.i32.out_crit_edge, label %if.end.i35

for.body.i32.out_crit_edge:                       ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i35:                                       ; preds = %for.body.i32
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %inc.i33 = add nuw nsw i32 %i.08.i30, 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !84
  %16 = and i32 %15, 4096
  %tobool.not.i34 = icmp eq i32 %16, 0
  br i1 %tobool.not.i34, label %if.end.i35.if.end7_crit_edge, label %if.end.i35.for.body.i32_crit_edge

if.end.i35.for.body.i32_crit_edge:                ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32

if.end.i35.if.end7_crit_edge:                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.end.i35.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %add.ptr8 = getelementptr i8, ptr %3, i32 976
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !84
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.18) #11
  br label %out

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base2, align 8
  %add.ptr14 = getelementptr i8, ptr %22, i32 964
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !84
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = lshr i32 %24, 16
  br label %out

out:                                              ; preds = %if.end11, %do.end, %for.body.i32.out_crit_edge, %for.body.i.out_crit_edge
  %ret.0 = phi i32 [ -19, %do.end ], [ %25, %if.end11 ], [ -110, %for.body.i32.out_crit_edge ], [ -110, %for.body.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %base2 = getelementptr inbounds %struct.hix5hd2_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 960
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %5 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not7.i = icmp eq i32 %5, 0
  br i1 %tobool.not7.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.08.i)
  %cmp.i = icmp eq i32 %i.08.i, 10000
  br i1 %cmp.i, label %for.body.i.out_crit_edge, label %if.end.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %7 = and i32 %6, 4096
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i16 %val to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !85
  %shl = shl i32 %phy, 8
  %or = or i32 %shl, %reg
  %or3 = or i32 %or, 1114112
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !85
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 8
  %base2.i11 = getelementptr inbounds %struct.hix5hd2_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base2.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base2.i11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 960
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !84
  %15 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not7.i13 = icmp eq i32 %15, 0
  br i1 %tobool.not7.i13, label %if.end.out_crit_edge, label %if.end.for.body.i16_crit_edge

if.end.for.body.i16_crit_edge:                    ; preds = %if.end
  br label %for.body.i16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i16:                                     ; preds = %if.end.i19.for.body.i16_crit_edge, %if.end.for.body.i16_crit_edge
  %i.08.i14 = phi i32 [ %inc.i17, %if.end.i19.for.body.i16_crit_edge ], [ 0, %if.end.for.body.i16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %i.08.i14)
  %cmp.i15 = icmp eq i32 %i.08.i14, 10000
  br i1 %cmp.i15, label %for.body.i16.out_crit_edge, label %if.end.i19

for.body.i16.out_crit_edge:                       ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i19:                                       ; preds = %for.body.i16
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %inc.i17 = add nuw nsw i32 %i.08.i14, 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !84
  %17 = and i32 %16, 4096
  %tobool.not.i18 = icmp eq i32 %17, 0
  br i1 %tobool.not.i18, label %if.end.i19.out_crit_edge, label %if.end.i19.for.body.i16_crit_edge

if.end.i19.for.body.i16_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i16

if.end.i19.out_crit_edge:                         ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end.i19.out_crit_edge, %for.body.i16.out_crit_edge, %if.end.out_crit_edge, %for.body.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ -110, %for.body.i16.out_crit_edge ], [ 0, %if.end.i19.out_crit_edge ], [ -110, %for.body.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #6 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #8
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2376
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1472
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !85
  %5 = and i32 %2, 2608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr.i10 = getelementptr i8, ptr %7, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #8, !srcloc !85
  %napi = getelementptr i8, ptr %dev_id, i32 10640
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #8
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_tx_timeout_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %work, i32 -284
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call = tail call i32 @hix5hd2_net_close(ptr noundef %1)
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %call2 = tail call i32 @hix5hd2_net_open(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hix5hd2_init_hw_desc_queue(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %phys_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr) #8
  %2 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %phys_addr, align 4, !annotation !87
  %count = getelementptr %struct.hix5hd2_desc_sw, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %count, align 8
  %count4 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %count4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %count4, align 8
  %count7 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %count7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1024, ptr %count7, align 8
  %count10 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %count10, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 32768, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #8
  %cmp14 = icmp eq ptr %call.i, null
  br i1 %cmp14, label %entry.error_free_pool_crit_edge, label %if.end

entry.error_free_pool_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_pool

if.end:                                           ; preds = %entry
  %size17 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %size17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32768, ptr %size17, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %priv, align 8
  %9 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_addr, align 4
  %phys_addr22 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %phys_addr22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phys_addr22, align 4
  %12 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count4, align 8
  %mul.1 = shl i32 %13, 5
  %call.i.1 = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %mul.1, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #8
  %cmp14.1 = icmp eq ptr %call.i.1, null
  br i1 %cmp14.1, label %if.end.error_free_pool_crit_edge, label %if.end.1

if.end.error_free_pool_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_pool

if.end.1:                                         ; preds = %if.end
  %arrayidx12.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1
  %size17.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %size17.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.1, ptr %size17.1, align 4
  %15 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.1, ptr %arrayidx12.1, align 8
  %16 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_addr, align 4
  %phys_addr22.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %phys_addr22.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %phys_addr22.1, align 4
  %19 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count7, align 8
  %mul.2 = shl i32 %20, 5
  %call.i.2 = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %mul.2, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #8
  %cmp14.2 = icmp eq ptr %call.i.2, null
  br i1 %cmp14.2, label %if.end.1.error_free_pool_crit_edge, label %if.end.2

if.end.1.error_free_pool_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_pool

if.end.2:                                         ; preds = %if.end.1
  %arrayidx12.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2
  %size17.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %size17.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.2, ptr %size17.2, align 4
  %22 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.2, ptr %arrayidx12.2, align 8
  %23 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_addr, align 4
  %phys_addr22.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %phys_addr22.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys_addr22.2, align 4
  %26 = ptrtoint ptr %count10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count10, align 8
  %mul.3 = shl i32 %27, 5
  %call.i.3 = call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %mul.3, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #8
  %cmp14.3 = icmp eq ptr %call.i.3, null
  br i1 %cmp14.3, label %if.end.2.error_free_pool_crit_edge, label %if.end.3

if.end.2.error_free_pool_crit_edge:               ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_pool

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3
  %size17.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %size17.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.3, ptr %size17.3, align 4
  %29 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.3, ptr %arrayidx12.3, align 8
  %30 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys_addr, align 4
  %phys_addr22.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %phys_addr22.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %phys_addr22.3, align 4
  br label %cleanup

error_free_pool:                                  ; preds = %if.end.2.error_free_pool_crit_edge, %if.end.1.error_free_pool_crit_edge, %if.end.error_free_pool_crit_edge, %entry.error_free_pool_crit_edge
  call fastcc void @hix5hd2_destroy_hw_desc_queue(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %error_free_pool, %if.end.3
  %retval.0 = phi i32 [ -12, %error_free_pool ], [ 0, %if.end.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %napi, i32 -60
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %base.i = getelementptr i8, ptr %1, i32 2376
  %tx_ring.i.i = getelementptr i8, ptr %1, i32 2368
  %dev.i.i = getelementptr i8, ptr %1, i32 10576
  %arrayidx11.i = getelementptr i8, ptr %1, i32 2352
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %netdev.i = getelementptr i8, ptr %1, i32 10580
  %arrayidx16.i = getelementptr i8, ptr %1, i32 2320
  %napi.i = getelementptr i8, ptr %1, i32 10640
  %stats32.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %base = getelementptr i8, ptr %napi, i32 -8264
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %task.0 = phi i32 [ %budget, %entry ], [ %sub, %if.end.do.body_crit_edge ]
  tail call void @netif_tx_lock(ptr noundef %1) #8
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1452
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %shr.i = lshr i32 %5, 5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %7, i32 1448
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !84
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %shr7.i = lshr i32 %9, 5
  %sub.i = sub nsw i32 %shr7.i, %shr.i
  %and.i = and i32 %sub.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp86.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp86.not.i, label %do.body.if.end29.i_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.if.end29.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %bytes_compl.091.i = phi i32 [ %add.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %i.090.i = phi i32 [ %inc24.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %pos.088.i = phi i32 [ %and23.i, %if.end19.i.for.body.i_crit_edge ], [ %shr.i, %do.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hix5hd2_priv, ptr %add.ptr.i.i, i32 0, i32 4, i32 %pos.088.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !86

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #11
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc24.i = add nuw nsw i32 %i.090.i, 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %add.i = add i32 %13, %bytes_compl.091.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not.i = icmp eq i8 %17, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  %18 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring.i.i, align 8
  %linear_addr.i.i = getelementptr %struct.sg_desc, ptr %19, i32 %pos.088.i, i32 2
  %20 = ptrtoint ptr %linear_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %linear_addr.i.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %linear_len.i.i = getelementptr %struct.sg_desc, ptr %19, i32 %pos.088.i, i32 3
  %23 = ptrtoint ptr %linear_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %linear_len.i.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %22, i32 noundef %25, i32 noundef 1, i32 noundef 0) #8
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %nr_frags17.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags17.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags17.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp19.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp19.not.i.i, label %if.then16.i.if.end19.i_crit_edge, label %if.then16.i.for.body.i.i_crit_edge

if.then16.i.for.body.i.i_crit_edge:               ; preds = %if.then16.i
  br label %for.body.i.i

if.then16.i.if.end19.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then16.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then16.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sg_desc, ptr %19, i32 %pos.088.i, i32 4, i32 %i.020.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %size.i.i = getelementptr %struct.sg_desc, ptr %19, i32 %pos.088.i, i32 4, i32 %i.020.i.i, i32 1
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %34, i32 noundef %37, i32 noundef 1, i32 noundef 0) #8
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %40 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_frags.i.i, align 2
  %conv.i.i = zext i8 %43 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end19.i_crit_edge

for.body.i.i.if.end19.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx11.i, align 8
  %add.ptr13.i = getelementptr %struct.hix5hd2_desc, ptr %45, i32 %pos.088.i
  %46 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr13.i, align 32
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %48, i32 noundef %13, i32 noundef 1, i32 noundef 0) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %for.body.i.i.if.end19.i_crit_edge, %if.then16.i.if.end19.i_crit_edge
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 0) #8
  %add22.i = add nuw nsw i32 %pos.088.i, 1
  %and23.i = and i32 %add22.i, 1023
  %exitcond.not.i = icmp eq i32 %inc24.i, %and.i
  br i1 %exitcond.not.i, label %if.end19.i.for.end.i_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end19.i.for.end.i_crit_edge, %if.then.i
  %pkts_compl.085.i = phi i32 [ %i.090.i, %if.then.i ], [ 1, %if.end19.i.for.end.i_crit_edge ]
  %pos.083.i = phi i32 [ %pos.088.i, %if.then.i ], [ %and23.i, %if.end19.i.for.end.i_crit_edge ]
  %bytes_compl.081.i = phi i32 [ %bytes_compl.091.i, %if.then.i ], [ %add.i, %if.end19.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.083.i, i32 %shr.i)
  %cmp25.not.i = icmp eq i32 %pos.083.i, %shr.i
  br i1 %cmp25.not.i, label %for.end.i.if.end29.i_crit_edge, label %if.then26.i

for.end.i.if.end29.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then26.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 %pos.083.i, 5
  %52 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %54, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %52) #8, !srcloc !85
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %for.end.i.if.end29.i_crit_edge, %do.body.if.end29.i_crit_edge
  %bytes_compl.081102.i = phi i32 [ %bytes_compl.081.i, %if.then26.i ], [ %bytes_compl.081.i, %for.end.i.if.end29.i_crit_edge ], [ 0, %do.body.if.end29.i_crit_edge ]
  %pkts_compl.085101.i = phi i32 [ %pkts_compl.085.i, %if.then26.i ], [ %pkts_compl.085.i, %for.end.i.if.end29.i_crit_edge ], [ 0, %do.body.if.end29.i_crit_edge ]
  tail call void @netif_tx_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts_compl.085101.i)
  %tobool30.not.i = icmp eq i32 %pkts_compl.085101.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.081102.i)
  %tobool31.not.i = icmp eq i32 %bytes_compl.081102.i, 0
  %or.cond.i = select i1 %tobool30.not.i, i1 %tobool31.not.i, i1 false
  br i1 %or.cond.i, label %if.end29.i.if.end33.i_crit_edge, label %if.then32.i

if.end29.i.if.end33.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end29.i
  %55 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i.i, align 128
  br i1 %tobool31.not.i, label %if.then32.i.if.end33.i_crit_edge, label %if.end.i.i.i, !prof !86

if.then32.i.if.end33.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end.i.i.i:                                     ; preds = %if.then32.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_compl.081102.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 15, i32 1
  %57 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %59 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %58, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.end33.i_crit_edge, label %if.end14.i.i.i, !prof !86

if.end.i.i.i.if.end33.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.if.end33.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.if.end33.i_crit_edge:              ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_schedule_queue(ptr noundef %56) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then17.i.i.i, %if.end14.i.i.i.if.end33.i_crit_edge, %if.end.i.i.i.if.end33.i_crit_edge, %if.then32.i.if.end33.i_crit_edge, %if.end29.i.if.end33.i_crit_edge
  %61 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i77.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i77.i, align 128
  %state.i.i78.i = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 13
  %65 = ptrtoint ptr %state.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i.i78.i, align 4
  %and1.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  %brmerge.i = select i1 %tobool.i.i.not.i, i1 true, i1 %tobool30.not.i
  br i1 %brmerge.i, label %if.end33.i.hix5hd2_xmit_reclaim.exit_crit_edge, label %if.then42.i, !prof !89

if.end33.i.hix5hd2_xmit_reclaim.exit_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_xmit_reclaim.exit

if.then42.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %64) #8
  br label %hix5hd2_xmit_reclaim.exit

hix5hd2_xmit_reclaim.exit:                        ; preds = %if.then42.i, %if.end33.i.hix5hd2_xmit_reclaim.exit_crit_edge
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %68, i32 1324
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !84
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %shr.i29 = lshr i32 %70, 5
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 8
  %add.ptr4.i30 = getelementptr i8, ptr %72, i32 1320
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i30) #8, !srcloc !84
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %shr7.i31 = lshr i32 %74, 5
  %sub.i32 = sub nsw i32 %shr7.i31, %shr.i29
  %and.i33 = and i32 %sub.i32, 1023
  %75 = tail call i32 @llvm.umin.i32(i32 %and.i33, i32 %task.0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp881.not.i = icmp eq i32 %75, 0
  br i1 %cmp881.not.i, label %hix5hd2_xmit_reclaim.exit.hix5hd2_rx.exit_crit_edge, label %hix5hd2_xmit_reclaim.exit.for.body.i37_crit_edge

hix5hd2_xmit_reclaim.exit.for.body.i37_crit_edge: ; preds = %hix5hd2_xmit_reclaim.exit
  br label %for.body.i37

hix5hd2_xmit_reclaim.exit.hix5hd2_rx.exit_crit_edge: ; preds = %hix5hd2_xmit_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_rx.exit

for.body.i37:                                     ; preds = %next.i.for.body.i37_crit_edge, %hix5hd2_xmit_reclaim.exit.for.body.i37_crit_edge
  %i.083.i = phi i32 [ %inc38.i, %next.i.for.body.i37_crit_edge ], [ 0, %hix5hd2_xmit_reclaim.exit.for.body.i37_crit_edge ]
  %pos.082.i = phi i32 [ %and37.i, %next.i.for.body.i37_crit_edge ], [ %shr.i29, %hix5hd2_xmit_reclaim.exit.for.body.i37_crit_edge ]
  %arrayidx.i35 = getelementptr %struct.hix5hd2_priv, ptr %add.ptr.i.i, i32 0, i32 5, i32 %pos.082.i
  %76 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i35, align 4
  %tobool.not.i36 = icmp eq ptr %77, null
  br i1 %tobool.not.i36, label %if.then12.i, label %if.end13.i, !prof !86

if.then12.i:                                      ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #11
  br label %for.end.i41

if.end13.i:                                       ; preds = %for.body.i37
  %78 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx.i35, align 4
  %79 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx16.i, align 8
  %add.ptr18.i = getelementptr %struct.hix5hd2_desc, ptr %80, i32 %pos.082.i
  %cmd.i = getelementptr %struct.hix5hd2_desc, ptr %80, i32 %pos.082.i, i32 1
  %81 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cmd.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %shr19.i = lshr i32 %83, 16
  %and20.i = and i32 %shr19.i, 2047
  %84 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr18.i, align 32
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  %87 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %88, i32 noundef %86, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #8
  %call22.i = tail call ptr @skb_put(ptr noundef nonnull %77, i32 noundef %and20.i) #8
  %len23.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 6
  %89 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %90)
  %cmp24.i = icmp ugt i32 %90, 1600
  br i1 %cmp24.i, label %if.then25.i, label %if.end29.i39

if.then25.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %90) #11
  %91 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %92, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %93 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_length_errors.i, align 8
  %inc28.i = add i32 %94, 1
  store i32 %inc28.i, ptr %rx_length_errors.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %77, i32 noundef 1) #8
  br label %next.i

if.end29.i39:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call30.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %77, ptr noundef %1) #8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15, i32 0, i32 18
  %95 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %call30.i, ptr %protocol.i, align 8
  %call31.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %77) #8
  %96 = ptrtoint ptr %stats32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stats32.i, align 8
  %inc33.i = add i32 %97, 1
  store i32 %inc33.i, ptr %stats32.i, align 8
  %98 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len23.i, align 4
  %100 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_bytes.i, align 8
  %add.i38 = add i32 %101, %99
  store i32 %add.i38, ptr %rx_bytes.i, align 8
  br label %next.i

next.i:                                           ; preds = %if.end29.i39, %if.then25.i
  %add36.i = add nuw nsw i32 %pos.082.i, 1
  %and37.i = and i32 %add36.i, 1023
  %inc38.i = add nuw nsw i32 %i.083.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc38.i, %75
  br i1 %exitcond.not.i40, label %next.i.for.end.i41_crit_edge, label %next.i.for.body.i37_crit_edge

next.i.for.body.i37_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

next.i.for.end.i41_crit_edge:                     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i41

for.end.i41:                                      ; preds = %next.i.for.end.i41_crit_edge, %if.then12.i
  %pos.080.i = phi i32 [ %pos.082.i, %if.then12.i ], [ %and37.i, %next.i.for.end.i41_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.080.i, i32 %shr.i29)
  %cmp39.not.i = icmp eq i32 %pos.080.i, %shr.i29
  br i1 %cmp39.not.i, label %for.end.i41.hix5hd2_rx.exit_crit_edge, label %if.then40.i

for.end.i41.hix5hd2_rx.exit_crit_edge:            ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_rx.exit

if.then40.i:                                      ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i42 = shl nuw i32 %pos.080.i, 5
  %102 = tail call i32 @llvm.bswap.i32(i32 %shl.i42) #8
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %104, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %102) #8, !srcloc !85
  br label %hix5hd2_rx.exit

hix5hd2_rx.exit:                                  ; preds = %if.then40.i, %for.end.i41.hix5hd2_rx.exit_crit_edge, %hix5hd2_xmit_reclaim.exit.hix5hd2_rx.exit_crit_edge
  tail call fastcc void @hix5hd2_rx_refill(ptr noundef %add.ptr.i.i) #8
  %add = add i32 %75, %work_done.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp.not = icmp sge i32 %add, %budget
  %or.cond = or i1 %cmp881.not.i, %cmp.not
  br i1 %or.cond, label %hix5hd2_rx.exit.do.end_crit_edge, label %if.end

hix5hd2_rx.exit.do.end_crit_edge:                 ; preds = %hix5hd2_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %hix5hd2_rx.exit
  %sub = sub i32 %task.0, %75
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %106, i32 1472
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !84
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %109, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %107) #8, !srcloc !85
  %110 = and i32 %107, 2608
  %tobool.not = icmp eq i32 %110, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %hix5hd2_rx.exit.do.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp7 = icmp slt i32 %add, %budget
  br i1 %cmp7, label %if.then8, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #8
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 8
  %add.ptr.i44 = getelementptr i8, ptr %112, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 2608) #8, !srcloc !85
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end.if.end10_crit_edge
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hix5hd2_init_sg_desc_queue(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %phys_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr) #8
  %0 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phys_addr, align 4, !annotation !87
  %dev = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 163840, ptr noundef nonnull %phys_addr, i32 noundef 3264, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %tx_ring, align 8
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %phys_addr3 = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %phys_addr3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %phys_addr3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_destroy_sg_desc_queue(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %phys_addr = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 163840, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_ring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_destroy_hw_desc_queue(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %size = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %phys_addr = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %priv, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 8
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %size.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.1, align 4
  %phys_addr.1 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %phys_addr.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phys_addr.1, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %10, i32 noundef %16, i32 noundef 0) #8
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 8
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %size.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.2, align 4
  %phys_addr.2 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %phys_addr.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_addr.2, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %19, i32 noundef %25, i32 noundef 0) #8
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.3, align 8
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %size.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.3, align 4
  %phys_addr.3 = getelementptr [4 x %struct.hix5hd2_desc_sw], ptr %priv, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %phys_addr.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys_addr.3, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %28, i32 noundef %34, i32 noundef 0) #8
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base.i = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 -100663297) #8, !srcloc !85
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !85
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #8, !srcloc !85
  %napi = getelementptr i8, ptr %dev, i32 10640
  tail call void @napi_disable(ptr noundef %napi) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %dev.i = getelementptr i8, ptr %dev, i32 10576
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %cleanup.i
  %arrayidx15.i = getelementptr i8, ptr %dev, i32 2352
  br label %for.body8.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.050.i = phi i32 [ 0, %entry ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hix5hd2_priv, ptr %add.ptr.i, i32 0, i32 5, i32 %i.050.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %9, null
  br i1 %cmp1.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i15 = getelementptr %struct.hix5hd2_desc, ptr %11, i32 %i.050.i
  %12 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i15, align 32
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %14, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond6.preheader.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body8.i:                                      ; preds = %cleanup22.i.for.body8.i_crit_edge, %for.cond6.preheader.i
  %i.151.i = phi i32 [ 0, %for.cond6.preheader.i ], [ %inc26.i, %cleanup22.i.for.body8.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.hix5hd2_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %i.151.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx10.i, align 4
  %cmp11.i = icmp eq ptr %19, null
  br i1 %cmp11.i, label %for.body8.i.cleanup22.i_crit_edge, label %if.end13.i

for.body8.i.cleanup22.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22.i

if.end13.i:                                       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15.i, align 8
  %add.ptr17.i = getelementptr %struct.hix5hd2_desc, ptr %21, i32 %i.151.i
  %22 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr17.i, align 32
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %24, i32 noundef %28, i32 noundef 1, i32 noundef 0) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %19, i32 noundef 1) #8
  %29 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx10.i, align 4
  br label %cleanup22.i

cleanup22.i:                                      ; preds = %if.end13.i, %for.body8.i.cleanup22.i_crit_edge
  %inc26.i = add nuw nsw i32 %i.151.i, 1
  %exitcond52.not.i = icmp eq i32 %inc26.i, 1024
  br i1 %exitcond52.not.i, label %hix5hd2_free_dma_desc_rings.exit, label %cleanup22.i.for.body8.i_crit_edge

cleanup22.i.for.body8.i_crit_edge:                ; preds = %cleanup22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

hix5hd2_free_dma_desc_rings.exit:                 ; preds = %cleanup22.i
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %hix5hd2_free_dma_desc_rings.exit.if.end_crit_edge, label %if.then

hix5hd2_free_dma_desc_rings.exit.if.end_crit_edge: ; preds = %hix5hd2_free_dma_desc_rings.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %hix5hd2_free_dma_desc_rings.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_stop(ptr noundef nonnull %31) #8
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %33) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %hix5hd2_free_dma_desc_rings.exit.if.end_crit_edge
  %mac_ifc_clk = getelementptr i8, ptr %dev, i32 10608
  %34 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac_ifc_clk, align 8
  tail call void @clk_disable(ptr noundef %35) #8
  tail call void @clk_unprepare(ptr noundef %35) #8
  %mac_core_clk = getelementptr i8, ptr %dev, i32 10604
  %36 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mac_core_clk, align 4
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mac_core_clk = getelementptr i8, ptr %dev, i32 10604
  %0 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_core_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i) #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %mac_ifc_clk = getelementptr i8, ptr %dev, i32 10608
  %2 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_ifc_clk, align 8
  %call.i36 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %if.end.clk_prepare_enable.exit43_crit_edge

if.end.clk_prepare_enable.exit43_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit43

if.end.i40:                                       ; preds = %if.end
  %call1.i38 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i39, label %if.end.i40.if.end6_crit_edge, label %if.then3.i41

if.end.i40.if.end6_crit_edge:                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3.i41:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit43

clk_prepare_enable.exit43:                        ; preds = %if.then3.i41, %if.end.clk_prepare_enable.exit43_crit_edge
  %retval.0.i42 = phi i32 [ %call.i36, %if.end.clk_prepare_enable.exit43_crit_edge ], [ %call1.i38, %if.then3.i41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i42)
  %cmp3 = icmp slt i32 %retval.0.i42, 0
  br i1 %cmp3, label %if.then4, label %clk_prepare_enable.exit43.if.end6_crit_edge

clk_prepare_enable.exit43.if.end6_crit_edge:      ; preds = %clk_prepare_enable.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %clk_prepare_enable.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_core_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i42) #11
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit43.if.end6_crit_edge, %if.end.i40.if.end6_crit_edge
  %phy_node = getelementptr i8, ptr %dev, i32 10584
  %6 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_node, align 8
  %phy_mode = getelementptr i8, ptr %dev, i32 10588
  %8 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_mode, align 4
  %call7 = tail call ptr @of_phy_connect(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull @hix5hd2_adjust_link, i32 noundef 0, i32 noundef %9) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mac_ifc_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_ifc_clk, align 8
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %12 = ptrtoint ptr %mac_core_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_core_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @phy_start(ptr noundef nonnull %call7) #8
  %base.i = getelementptr i8, ptr %dev, i32 2376
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %15, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #8, !srcloc !85
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #8, !srcloc !85
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %19, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 536870912) #8, !srcloc !85
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %21, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 1074135040) #8, !srcloc !85
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %23, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #8, !srcloc !85
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %25, i32 1496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777472) #8, !srcloc !85
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %27, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 256) #8, !srcloc !85
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %29, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 1280) #8, !srcloc !85
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #8, !srcloc !85
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %33, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 2097152) #8, !srcloc !85
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !85
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %37, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 33554432) #8, !srcloc !85
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %39, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 2097152) #8, !srcloc !85
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %41, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 0) #8, !srcloc !85
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %add.ptr13.i.i = getelementptr i8, ptr %43, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 33554432) #8, !srcloc !85
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %add.ptr16.i.i = getelementptr i8, ptr %45, i32 1412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 2097152) #8, !srcloc !85
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %47, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 0) #8, !srcloc !85
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr20.i.i = getelementptr i8, ptr %49, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 33554432) #8, !srcloc !85
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %add.ptr23.i.i = getelementptr i8, ptr %51, i32 1444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 2097152) #8, !srcloc !85
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %53, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 0) #8, !srcloc !85
  %phys_addr.i.i = getelementptr i8, ptr %dev, i32 2308
  %54 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys_addr.i.i, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 67108864) #8, !srcloc !85
  %58 = tail call i32 @llvm.bswap.i32(i32 %55) #8
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %60, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 %58) #8, !srcloc !85
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 8
  %add.ptr4.i.i.i = getelementptr i8, ptr %62, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 0) #8, !srcloc !85
  %phys_addr3.i.i = getelementptr i8, ptr %dev, i32 2324
  %63 = ptrtoint ptr %phys_addr3.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phys_addr3.i.i, align 4
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %66, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 67108864) #8, !srcloc !85
  %67 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 8
  %add.ptr2.i19.i.i = getelementptr i8, ptr %69, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i19.i.i, i32 %67) #8, !srcloc !85
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 8
  %add.ptr4.i20.i.i = getelementptr i8, ptr %71, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i20.i.i, i32 0) #8, !srcloc !85
  %phys_addr6.i.i = getelementptr i8, ptr %dev, i32 2356
  %72 = ptrtoint ptr %phys_addr6.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %phys_addr6.i.i, align 4
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %75, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 67108864) #8, !srcloc !85
  %76 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 8
  %add.ptr2.i23.i.i = getelementptr i8, ptr %78, i32 1440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i23.i.i, i32 %76) #8, !srcloc !85
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 8
  %add.ptr4.i24.i.i = getelementptr i8, ptr %80, i32 1464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24.i.i, i32 0) #8, !srcloc !85
  %phys_addr9.i.i = getelementptr i8, ptr %dev, i32 2340
  %81 = ptrtoint ptr %phys_addr9.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %phys_addr9.i.i, align 4
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 8
  %add.ptr.i26.i.i = getelementptr i8, ptr %84, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 67108864) #8, !srcloc !85
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 8
  %add.ptr2.i27.i.i = getelementptr i8, ptr %87, i32 1408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i27.i.i, i32 %85) #8, !srcloc !85
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 8
  %add.ptr4.i28.i.i = getelementptr i8, ptr %89, i32 1432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i28.i.i, i32 0) #8, !srcloc !85
  tail call fastcc void @hix5hd2_rx_refill(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #8
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #8
  %92 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i46 = getelementptr inbounds %struct.netdev_queue, ptr %93, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i46) #8
  %napi = getelementptr i8, ptr %dev, i32 10640
  tail call void @napi_enable(ptr noundef %napi) #8
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %95, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 251658240) #8, !srcloc !85
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 8
  %add.ptr2.i49 = getelementptr i8, ptr %97, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i49, i32 100663296) #8, !srcloc !85
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %99, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 2608) #8, !srcloc !85
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %retval.0.i42, %if.then4 ], [ 0, %if.end11 ], [ -19, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_adjust_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %speed = getelementptr i8, ptr %dev, i32 10596
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %speed1 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %duplex = getelementptr i8, ptr %dev, i32 10600
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex, align 8
  %duplex2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %duplex2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp eq i32 %7, %9
  br i1 %cmp3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %duplex5 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex5, align 4
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %speed, align 4
  %duplex2.i = getelementptr i8, ptr %dev, i32 10600
  %13 = ptrtoint ptr %duplex2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %duplex2.i, align 8
  %phy_mode.i = getelementptr i8, ptr %dev, i32 10588
  %14 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_mode.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default.i [
    i32 9, label %sw.bb.i
    i32 2, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 100
  %switch.select.i = select i1 %switch.selectcmp.i, i32 47, i32 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %switch.selectcmp46.i = icmp eq i32 %5, 1000
  %switch.select47.i = select i1 %switch.selectcmp46.i, i32 44, i32 %switch.select.i
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %cmp8.i = icmp eq i32 %5, 100
  %..i = select i1 %cmp8.i, i32 15, i32 13
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb7.i, %sw.bb.i
  %val.0.i = phi i32 [ 13, %sw.default.i ], [ %..i, %sw.bb7.i ], [ %switch.select47.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %or.i = or i32 %val.0.i, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %val.0.i, i32 %or.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %ctrl_base.i = getelementptr i8, ptr %dev, i32 2380
  %18 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !85
  %mac_ifc_rst.i.i = getelementptr i8, ptr %dev, i32 10616
  %20 = ptrtoint ptr %mac_ifc_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_ifc_rst.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.hix5hd2_config_port.exit_crit_edge, label %if.end.i.i

sw.epilog.i.hix5hd2_config_port.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hix5hd2_config_port.exit

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @reset_control_assert(ptr noundef nonnull %21) #8
  %22 = ptrtoint ptr %mac_ifc_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_ifc_rst.i.i, align 8
  %call3.i.i = tail call i32 @reset_control_deassert(ptr noundef %23) #8
  br label %hix5hd2_config_port.exit

hix5hd2_config_port.exit:                         ; preds = %if.end.i.i, %sw.epilog.i.hix5hd2_config_port.exit_crit_edge
  %base.i = getelementptr i8, ptr %dev, i32 2376
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %25, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #8, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %switch.selectcmp48.i = icmp eq i32 %5, 100
  %switch.select49.i = select i1 %switch.selectcmp48.i, i32 16777216, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %switch.selectcmp50.i = icmp eq i32 %5, 1000
  %switch.select51.i = select i1 %switch.selectcmp50.i, i32 83886080, i32 %switch.select49.i
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %switch.select51.i) #8, !srcloc !85
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %29, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #8, !srcloc !85
  %30 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %30) #8, !srcloc !85
  tail call void @phy_print_status(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %hix5hd2_config_port.exit, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hix5hd2_rx_refill(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1292
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !84
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shr6 = lshr i32 %7, 5
  %add.neg = xor i32 %shr, -1
  %sub = add nsw i32 %shr6, %add.neg
  %and = and i32 %sub, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp72.not = icmp eq i32 %and, 0
  br i1 %cmp72.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %netdev = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 7
  %dev = getelementptr inbounds %struct.hix5hd2_priv, ptr %priv, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %pos.073 = phi i32 [ %shr, %for.body.lr.ph ], [ %and26, %if.end18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hix5hd2_priv, ptr %priv, i32 0, i32 5, i32 %pos.073
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %for.body
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %11, i32 noundef 1602, i32 noundef 2592) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.do.body_crit_edge, label %if.end12

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end12:                                         ; preds = %if.else
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %15, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end12
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !91

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i56 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i56, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #8
  br label %if.then17

dma_map_single_attrs.exit:                        ; preds = %if.end12
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %add.ptr.i.i.i, i32 noundef 1600) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then17_crit_edge, label %if.end18

dma_map_single_attrs.exit.if.then17_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %dma_map_single_attrs.exit.if.then17_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %do.body

if.end18:                                         ; preds = %dma_map_single_attrs.exit
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %add.ptr21 = getelementptr %struct.hix5hd2_desc, ptr %29, i32 %pos.073
  %30 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %31 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr21, align 32
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %cmd = getelementptr %struct.hix5hd2_desc, ptr %29, i32 %pos.073, i32 1
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1057357824, ptr %cmd, align 4
  %add25 = add nuw nsw i32 %pos.073, 1
  %and26 = and i32 %add25, 1023
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %if.end18.do.body_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.then17, %if.else.do.body_crit_edge, %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %pos.066 = phi i32 [ %pos.073, %if.then17 ], [ %shr, %entry.do.body_crit_edge ], [ %pos.073, %for.body.do.body_crit_edge ], [ %and26, %if.end18.do.body_crit_edge ], [ %pos.073, %if.else.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.066, i32 %shr)
  %cmp27.not = icmp eq i32 %pos.066, %shr
  br i1 %cmp27.not, label %do.body.if.end32_crit_edge, label %if.then28

do.body.if.end32_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %shl29 = shl nuw i32 %pos.066, 5
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl29)
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %36, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %34) #8, !srcloc !85
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %do.body.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2376
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1416
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 5
  %arrayidx = getelementptr %struct.hix5hd2_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %8 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_fifo_errors, align 8
  %inc5 = add i32 %9, 1
  store i32 %inc5, ptr %tx_fifo_errors, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %dev, i32 2336
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 8
  %add.ptr8 = getelementptr %struct.hix5hd2_desc, ptr %13, i32 %shr
  %hw_cap = getelementptr i8, ptr %dev, i32 10592
  %14 = ptrtoint ptr %hw_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_cap, align 8
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 0, i32 1073741824
  %conv.i = zext i8 %19 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 11
  %or5.i = or i32 %spec.select.i, %shl.i
  br label %hix5hd2_get_desc_cmd.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %and6.i = and i32 %21, 2047
  %or8.i = or i32 %and6.i, 1610612736
  br label %hix5hd2_get_desc_cmd.exit

hix5hd2_get_desc_cmd.exit:                        ; preds = %if.else.i, %if.then.i
  %cmd.1.i = phi i32 [ %or5.i, %if.then.i ], [ %or8.i, %if.else.i ]
  %len11.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len11.i, align 4
  %and12.i = shl i32 %23, 16
  %shl13.i = and i32 %and12.i, 134152192
  %or14.i = or i32 %cmd.1.i, %shl13.i
  %or15.i = or i32 %or14.i, -2147483648
  %24 = tail call i32 @llvm.bswap.i32(i32 %or15.i)
  %cmd10 = getelementptr %struct.hix5hd2_desc, ptr %13, i32 %shr, i32 1
  %25 = ptrtoint ptr %cmd10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cmd10, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not = icmp eq i8 %29, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %hix5hd2_get_desc_cmd.exit
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2368
  %30 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring.i, align 8
  %add.ptr.i95 = getelementptr %struct.sg_desc, ptr %31, i32 %shr
  %32 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len11.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr.i95, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 10576
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len11.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then13
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !91

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %37) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %37, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %47, %if.end.i.i.i ], [ %45, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %49, i32 noundef -1) #8
  br label %if.then22

dma_map_single_attrs.exit.i:                      ; preds = %if.then13
  %sub.i.i = sub i32 %41, %43
  tail call void @debug_dma_map_single(ptr noundef %37, ptr noundef %39, i32 noundef %sub.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %39 to i32
  %sub.i58.i = add i32 %51, 1073741824
  %shr.i.i = lshr i32 %sub.i58.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %50, i32 %shr.i.i
  %and.i.i = and i32 %51, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %37, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #8
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %53, i32 noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then22_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then22_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #8
  %linear_addr.i = getelementptr %struct.sg_desc, ptr %31, i32 %shr, i32 2
  %55 = ptrtoint ptr %linear_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %linear_addr.i, align 4
  %56 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len11.i, align 4
  %58 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i.i, align 8
  %sub.i61.i = sub i32 %57, %59
  %60 = tail call i32 @llvm.bswap.i32(i32 %sub.i61.i) #8
  %linear_len.i = getelementptr %struct.sg_desc, ptr %31, i32 %shr, i32 3
  %61 = ptrtoint ptr %linear_len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %linear_len.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %nr_frags72.i = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %nr_frags72.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nr_frags72.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp74.not.i = icmp eq i8 %65, 0
  br i1 %cmp74.not.i, label %if.end.i.if.end26_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body.i:                                       ; preds = %if.end25.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %66 = phi ptr [ %82, %if.end25.i.for.body.i_crit_edge ], [ %63, %if.end.i.for.body.i_crit_edge ]
  %i.075.i = phi i32 [ %inc.i, %if.end25.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %66, i32 0, i32 12, i32 %i.075.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %66, i32 0, i32 12, i32 %i.075.i, i32 1
  %67 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_len.i.i, align 4
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 8
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %66, i32 0, i32 12, i32 %i.075.i, i32 2
  %73 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %72, i32 noundef %74, i32 noundef %68, i32 noundef 1, i32 noundef 0) #8
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %76, i32 noundef %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i63.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i63.not.i, label %for.body.i.if.then22_crit_edge, label %if.end25.i, !prof !86

for.body.i.if.then22_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end25.i:                                       ; preds = %for.body.i
  %77 = tail call i32 @llvm.bswap.i32(i32 %call2.i.i) #8
  %arrayidx27.i = getelementptr %struct.sg_desc, ptr %31, i32 %shr, i32 4, i32 %i.075.i
  %78 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx27.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %size.i = getelementptr %struct.sg_desc, ptr %31, i32 %shr, i32 4, i32 %i.075.i, i32 1
  %80 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %size.i, align 4
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %nr_frags.i98 = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %nr_frags.i98 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_frags.i98, align 2
  %conv.i99 = zext i8 %84 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i99
  br i1 %cmp.i, label %if.end25.i.for.body.i_crit_edge, label %if.end25.i.if.end26_crit_edge

if.end25.i.if.end26_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end25.i.for.body.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then22:                                        ; preds = %for.body.i.if.then22_crit_edge, %dma_map_single_attrs.exit.i.if.then22_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %tx_dropped24 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %85 = ptrtoint ptr %tx_dropped24 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_dropped24, align 4
  %inc25 = add i32 %86, 1
  store i32 %inc25, ptr %tx_dropped24, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end25.i.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %phys_addr = getelementptr i8, ptr %dev, i32 2372
  %87 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %phys_addr, align 4
  %mul = mul i32 %shr, 160
  %add = add i32 %88, %mul
  br label %if.end43

if.else:                                          ; preds = %hix5hd2_get_desc_cmd.exit
  %dev27 = getelementptr i8, ptr %dev, i32 10576
  %89 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev27, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %93 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len11.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %92) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i100, !prof !91

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i100:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %90) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %95 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i100.dev_name.exit.i_crit_edge

if.then.i100.dev_name.exit.i_crit_edge:           ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %90, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i100.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %98, %if.end.i.i ], [ %96, %if.then.i100.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %99 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev27, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %100, i32 noundef -1) #8
  br label %if.then38

dma_map_single_attrs.exit:                        ; preds = %if.else
  tail call void @debug_dma_map_single(ptr noundef %90, ptr noundef %92, i32 noundef %94) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %101 = load ptr, ptr @mem_map, align 4
  %102 = ptrtoint ptr %92 to i32
  %sub.i = add i32 %102, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i101 = getelementptr %struct.page, ptr %101, i32 %shr.i
  %and.i102 = and i32 %102, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %90, ptr noundef %add.ptr.i101, i32 noundef %and.i102, i32 noundef %94, i32 noundef 1, i32 noundef 0) #8
  %103 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev27, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %104, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i103 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i103, label %dma_map_single_attrs.exit.if.then38_crit_edge, label %dma_map_single_attrs.exit.if.end43_crit_edge

dma_map_single_attrs.exit.if.end43_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

dma_map_single_attrs.exit.if.then38_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then38:                                        ; preds = %dma_map_single_attrs.exit.if.then38_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %tx_dropped40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %105 = ptrtoint ptr %tx_dropped40 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tx_dropped40, align 4
  %inc41 = add i32 %106, 1
  store i32 %inc41, ptr %tx_dropped40, align 4
  br label %cleanup

if.end43:                                         ; preds = %dma_map_single_attrs.exit.if.end43_crit_edge, %if.end26
  %addr.0 = phi i32 [ %add, %if.end26 ], [ %call41.i, %dma_map_single_attrs.exit.if.end43_crit_edge ]
  %107 = tail call i32 @llvm.bswap.i32(i32 %addr.0)
  %108 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %add.ptr8, align 32
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %skb, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  %110 = add i32 %3, 32
  %shl = and i32 %110, 32736
  %111 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 8
  %add.ptr48 = getelementptr i8, ptr %113, i32 1416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %111) #8, !srcloc !85
  %_tx.i.i104 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %114 = ptrtoint ptr %_tx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %_tx.i.i104, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %115, i32 0, i32 12
  %117 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %116)
  %cmp.not.i.i = icmp eq i32 %118, %116
  br i1 %cmp.not.i.i, label %if.end43.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end43.netif_trans_update.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 %116, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end43.netif_trans_update.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %120 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_packets, align 4
  %inc50 = add i32 %121, 1
  store i32 %inc50, ptr %tx_packets, align 4
  %122 = ptrtoint ptr %len11.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len11.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %124 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_bytes, align 4
  %add53 = add i32 %125, %123
  store i32 %add53, ptr %tx_bytes, align 4
  %126 = load i32, ptr %len11.i, align 4
  %127 = ptrtoint ptr %_tx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %_tx.i.i104, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %126)
  %cmp.i.i.i = icmp ugt i32 %126, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !86

do.body2.i.i.i:                                   ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !94
  unreachable

dql_queued.exit.i.i:                              ; preds = %netif_trans_update.exit
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 15, i32 2
  %129 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %130 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %131, %126
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 15, i32 1
  %132 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %134 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %133, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i106 = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i106, label %dql_queued.exit.i.i.cleanup_crit_edge, label %if.end.i.i108, !prof !91

dql_queued.exit.i.i.cleanup_crit_edge:            ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i108:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i107 = getelementptr inbounds %struct.netdev_queue, ptr %128, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i107) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  %135 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %137 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %136, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i108.cleanup_crit_edge, !prof !86

if.end.i.i108.cleanup_crit_edge:                  ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.i.i:                                    ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i.i, %if.end.i.i108.cleanup_crit_edge, %dql_queued.exit.i.i.cleanup_crit_edge, %if.then38, %if.then22, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.then22 ], [ 0, %if.then38 ], [ 0, %dql_queued.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i108.cleanup_crit_edge ], [ 0, %if.then14.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_net_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv2.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %base.i = getelementptr i8, ptr %dev, i32 2376
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !85
  %arrayidx3.i = getelementptr i8, ptr %1, i32 5
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %10 to i32
  %arrayidx5.i = getelementptr i8, ptr %1, i32 4
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %12 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %shl7.i, %conv4.i
  %arrayidx9.i = getelementptr i8, ptr %1, i32 3
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %14 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or12.i = or i32 %or8.i, %shl11.i
  %arrayidx13.i = getelementptr i8, ptr %1, i32 2
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %16 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or12.i, %shl15.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !85
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_net_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_task = getelementptr i8, ptr %dev, i32 10864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_task) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_hix5hd2_gmac__349_1326_hix5hd2_dev_driver_init6, !1, !"__initcall__kmod_hix5hd2_gmac__349_1326_hix5hd2_dev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1326, i32 1}
!2 = !{ptr @__exitcall_hix5hd2_dev_driver_exit, !1, !"__exitcall_hix5hd2_dev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1328, i32 1}
!5 = !{ptr @__UNIQUE_ID_file351, !6, !"__UNIQUE_ID_file351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1329, i32 1}
!7 = !{ptr @__UNIQUE_ID_license352, !6, !"__UNIQUE_ID_license352", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias353, !9, !"__UNIQUE_ID_alias353", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1330, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1319, i32 11}
!12 = !{ptr @hix5hd2_dev_driver, !13, !"hix5hd2_dev_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1317, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1132, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1134, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1141, i32 20}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1145, i32 47}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1151, i32 20}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1164, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1169, i32 8}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1184, i32 14}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1188, i32 37}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1197, i32 20}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1201, i32 42}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1203, i32 20}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1210, i32 20}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1218, i32 20}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1225, i32 21}
!44 = !{ptr @hix5hd2_dev_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1229, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1256, i32 20}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 949, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @hix5hd2_mdio_read._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @hix5hd2_mdio_read._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 308, i32 20}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hix5hd2_netdev_ops, !64, !"hix5hd2_netdev_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 903, i32 36}
!65 = !{ptr @hix5hd2_ethtools_ops, !66, !"hix5hd2_ethtools_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 911, i32 33}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 607, i32 20}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 529, i32 20}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 543, i32 20}
!73 = !{ptr @hix5hd2_of_match, !74, !"hix5hd2_of_match", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hix5hd2_gmac.c", i32 1306, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4648524}
!85 = !{i64 4648106}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"auto-init"}
!88 = !{i64 2155811231}
!89 = !{!"branch_weights", i32 4001, i32 1}
!90 = !{i64 2156692769}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2156691423}
!93 = !{i64 2156701435}
!94 = !{i64 2154974895, i64 2154975395, i64 2154974932, i64 2154974988, i64 2154975022, i64 2154975046, i64 2154975087, i64 2154975108, i64 2154975136, i64 2154975170}
!95 = !{i64 2154976239}
!96 = !{i64 2155810160}
