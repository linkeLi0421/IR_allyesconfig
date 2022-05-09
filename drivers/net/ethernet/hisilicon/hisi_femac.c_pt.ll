; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hisi_femac.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hisi_femac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.hisi_femac_priv = type { ptr, ptr, ptr, ptr, ptr, [3 x i32], i32, ptr, ptr, %struct.hisi_femac_queue, %struct.hisi_femac_queue, i32, %struct.napi_struct }
%struct.hisi_femac_queue = type { ptr, ptr, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }

@__initcall__kmod_hisi_femac__349_970_hisi_femac_driver_init6 = internal global ptr @hisi_femac_driver_init, section ".initcall6.init", align 4
@hisi_femac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_femac_drv_probe, ptr @hisi_femac_drv_remove, ptr null, ptr @hisi_femac_drv_suspend, ptr @hisi_femac_drv_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hisi_femac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_femac_driver_exit = internal global ptr @hisi_femac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [58 x i8] c"hisi_femac.description=Hisilicon Fast Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [53 x i8] c"hisi_femac.author=Dongpo Li <lidongpo@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [58 x i8] c"hisi_femac.file=drivers/net/ethernet/hisilicon/hisi_femac\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [26 x i8] c"hisi_femac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [37 x i8] c"hisi_femac.alias=platform:hisi-femac\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hisi-femac\00", [21 x i8] zeroinitializer }, align 32
@hisi_femac_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-femac-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hisi-femac-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516cv300-femac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get clk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_femac_drv_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/hisilicon/hisi_femac.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr = internal global ptr @hisi_femac_drv_probe._entry, section ".printk_index", align 4
@hisi_femac_drv_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable clk %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr.8 = internal global ptr @hisi_femac_drv_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hisilicon,phy-reset-delays-us\00", [34 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"connect to PHY failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr.14 = internal global ptr @hisi_femac_drv_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_id=0x%.8lx, phy_mode=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using random MAC address %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr.19 = internal global ptr @hisi_femac_drv_probe._entry.16, section ".printk_index", align 4
@hisi_femac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hisi_femac_net_open, ptr @hisi_femac_net_close, ptr @hisi_femac_net_xmit, ptr null, ptr null, ptr null, ptr @hisi_femac_net_set_rx_mode, ptr @hisi_femac_set_mac_address, ptr null, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hisi_femac_ethtools_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"devm_request_irq %d failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr.22 = internal global ptr @hisi_femac_drv_probe._entry.20, section ".printk_index", align 4
@hisi_femac_drv_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_netdev failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@hisi_femac_drv_probe._entry_ptr.25 = internal global ptr @hisi_femac_drv_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"err skb[%d]=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NULL rx skb. pos=%d, head=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NULL tx skb. pos=%d, head=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xmitq_cnt_inuse=%d, tx_fifo_used=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx skb NULL. pos=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcv len err, len = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.hisi_femac_drv_probe = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.55, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"hisi_femac_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 957, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 959, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"hisi_femac_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 948, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 802, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 809, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 813, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 820, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 825, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 835, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 840, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 847, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"hisi_femac_netdev_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 684, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"hisi_femac_ethtools_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 678, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 872, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 878, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 211, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 213, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 215, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 217, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 219, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 221, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 223, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 225, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 227, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 229, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 231, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 233, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 235, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 237, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 239, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 241, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 243, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 245, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 247, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 249, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 251, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 253, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 255, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 257, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 259, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 261, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 263, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 265, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 267, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 269, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 271, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 223, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 326, i32 6 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 397, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 416, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 165, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 266, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [47 x i8] c"../drivers/net/ethernet/hisilicon/hisi_femac.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 276, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"switch.table.hisi_femac_drv_probe\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_hisi_femac_driver_exit, ptr @__initcall__kmod_hisi_femac__349_970_hisi_femac_driver_init6, ptr @hisi_femac_driver_exit, ptr @hisi_femac_drv_probe._entry, ptr @hisi_femac_drv_probe._entry.12, ptr @hisi_femac_drv_probe._entry.16, ptr @hisi_femac_drv_probe._entry.20, ptr @hisi_femac_drv_probe._entry.23, ptr @hisi_femac_drv_probe._entry.6, ptr @hisi_femac_drv_probe._entry_ptr, ptr @hisi_femac_drv_probe._entry_ptr.14, ptr @hisi_femac_drv_probe._entry_ptr.19, ptr @hisi_femac_drv_probe._entry_ptr.22, ptr @hisi_femac_drv_probe._entry_ptr.25, ptr @hisi_femac_drv_probe._entry_ptr.8, ptr @hisi_femac_driver, ptr @.str, ptr @hisi_femac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @hisi_femac_netdev_ops, ptr @hisi_femac_ethtools_ops, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @switch.table.hisi_femac_drv_probe], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_ethtools_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_femac_drv_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hisi_femac_drv_probe to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_femac_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_femac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_femac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 312, i32 noundef 1, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev5 = getelementptr i8, ptr %call, i32 2340
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev5, align 4
  %ndev6 = getelementptr i8, ptr %call, i32 2344
  %5 = ptrtoint ptr %ndev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ndev6, align 8
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %add.ptr.i, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call7 to i32
  br label %out_free_netdev

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %glb_base = getelementptr i8, ptr %call, i32 2308
  %8 = ptrtoint ptr %glb_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %glb_base, align 4
  %cmp.i173 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call14 to i32
  br label %out_free_netdev

if.end20:                                         ; preds = %if.end13
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr i8, ptr %call, i32 2312
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %clk, align 8
  %cmp.i174 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %out_free_netdev

if.end26:                                         ; preds = %if.end20
  %call.i = tail call i32 @clk_prepare(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.do.end33_crit_edge

if.end26.do.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call22) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then3.i, %if.end26.do.end33_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end26.do.end33_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #10
  br label %out_free_netdev

if.end34:                                         ; preds = %if.end.i
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %mac_rst = getelementptr i8, ptr %call, i32 2316
  %11 = ptrtoint ptr %mac_rst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %mac_rst, align 4
  %cmp.i175 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i.i to i32
  br label %out_disable_clk

if.end41:                                         ; preds = %if.end34
  %call.i176 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #7
  %13 = ptrtoint ptr %mac_rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_rst, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %14) #7
  %call.i.i177 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %phy_rst = getelementptr i8, ptr %call, i32 2320
  %15 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i177, ptr %phy_rst, align 8
  %cmp.i178 = icmp ugt ptr %call.i.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %phy_rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %phy_rst, align 8
  br label %if.end51

if.else:                                          ; preds = %if.end41
  %phy_reset_delays = getelementptr i8, ptr %call, i32 2324
  %call.i179 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %phy_reset_delays, i32 noundef 3, i32 noundef 0) #7
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i179, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i179)
  %tobool48.not = icmp sgt i32 %call.i179, -1
  br i1 %tobool48.not, label %if.end50, label %if.else.out_disable_clk_crit_edge

if.else.out_disable_clk_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disable_clk

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hisi_femac_phy_reset(ptr noundef %add.ptr.i)
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then45
  %call52 = tail call ptr @of_phy_get_and_connect(ptr noundef nonnull %call, ptr noundef %1, ptr noundef nonnull @hisi_femac_adjust_link) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %do.end57, label %if.end58

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %out_disable_clk

if.end58:                                         ; preds = %if.end51
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %call52, i32 0, i32 2
  %18 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_id, align 4
  %interface = getelementptr inbounds %struct.phy_device, ptr %call52, i32 0, i32 7
  %20 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %21)
  %22 = icmp ult i32 %21, 30
  br i1 %22, label %switch.lookup, label %if.end58.phy_modes.exit_crit_edge

if.end58.phy_modes.exit_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.hisi_femac_drv_probe, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %if.end58.phy_modes.exit_crit_edge
  %retval.0.i180 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.56, %if.end58.phy_modes.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @phy_attached_print(ptr noundef nonnull %call52, ptr noundef nonnull @.str.15, i32 noundef %19, ptr noundef nonnull %retval.0.i180) #7
  %call60 = tail call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %phy_modes.exit.if.end66_crit_edge, label %if.then62

phy_modes.exit.if.end66_crit_edge:                ; preds = %phy_modes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then62:                                        ; preds = %phy_modes.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %25) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %phy_modes.exit.if.end66_crit_edge
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %26 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 600, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %priv_flags, align 16
  %or = or i64 %28, 4096
  store i64 %or, ptr %priv_flags, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %29 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hisi_femac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %30 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hisi_femac_ethtools_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call, i32 2392
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @hisi_femac_poll, i32 noundef 16) #7
  tail call fastcc void @hisi_femac_port_init(ptr noundef %add.ptr.i)
  %31 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev5, align 4
  %txq.i = getelementptr i8, ptr %call, i32 2348
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef 256, i32 noundef 3520) #7
  %33 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i.i.i, ptr %txq.i, align 4
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end66.out_disconnect_phy_crit_edge, label %devm_kcalloc.exit20.i.i

if.end66.out_disconnect_phy_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disconnect_phy

devm_kcalloc.exit20.i.i:                          ; preds = %if.end66
  %call5.i.i17.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef 256, i32 noundef 3520) #7
  %dma_phys.i.i = getelementptr i8, ptr %call, i32 2352
  %34 = ptrtoint ptr %dma_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i17.i.i, ptr %dma_phys.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call5.i.i17.i.i, null
  br i1 %tobool4.not.i.i, label %devm_kcalloc.exit20.i.i.out_disconnect_phy_crit_edge, label %if.end.i181

devm_kcalloc.exit20.i.i.out_disconnect_phy_crit_edge: ; preds = %devm_kcalloc.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disconnect_phy

if.end.i181:                                      ; preds = %devm_kcalloc.exit20.i.i
  %num7.i.i = getelementptr i8, ptr %call, i32 2356
  %35 = ptrtoint ptr %num7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %num7.i.i, align 4
  %head.i.i = getelementptr i8, ptr %call, i32 2360
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %head.i.i, align 4
  %tail.i.i = getelementptr i8, ptr %call, i32 2364
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tail.i.i, align 4
  %38 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev5, align 4
  %rxq.i = getelementptr i8, ptr %call, i32 2368
  %call5.i.i.i13.i = tail call noalias ptr @devm_kmalloc(ptr noundef %39, i32 noundef 512, i32 noundef 3520) #7
  %40 = ptrtoint ptr %rxq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i.i13.i, ptr %rxq.i, align 4
  %tobool.not.i14.i = icmp eq ptr %call5.i.i.i13.i, null
  br i1 %tobool.not.i14.i, label %if.end.i181.out_disconnect_phy_crit_edge, label %devm_kcalloc.exit20.i18.i

if.end.i181.out_disconnect_phy_crit_edge:         ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disconnect_phy

devm_kcalloc.exit20.i18.i:                        ; preds = %if.end.i181
  %call5.i.i17.i15.i = tail call noalias ptr @devm_kmalloc(ptr noundef %39, i32 noundef 512, i32 noundef 3520) #7
  %dma_phys.i16.i = getelementptr i8, ptr %call, i32 2372
  %41 = ptrtoint ptr %dma_phys.i16.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i17.i15.i, ptr %dma_phys.i16.i, align 4
  %tobool4.not.i17.i = icmp eq ptr %call5.i.i17.i15.i, null
  br i1 %tobool4.not.i17.i, label %devm_kcalloc.exit20.i18.i.out_disconnect_phy_crit_edge, label %if.end70

devm_kcalloc.exit20.i18.i.out_disconnect_phy_crit_edge: ; preds = %devm_kcalloc.exit20.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disconnect_phy

if.end70:                                         ; preds = %devm_kcalloc.exit20.i18.i
  %num7.i19.i = getelementptr i8, ptr %call, i32 2376
  %42 = ptrtoint ptr %num7.i19.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 128, ptr %num7.i19.i, align 4
  %head.i20.i = getelementptr i8, ptr %call, i32 2380
  %43 = ptrtoint ptr %head.i20.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %head.i20.i, align 4
  %tail.i21.i = getelementptr i8, ptr %call, i32 2384
  %44 = ptrtoint ptr %tail.i21.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %tail.i21.i, align 4
  %tx_fifo_used_cnt.i = getelementptr i8, ptr %call, i32 2388
  %45 = ptrtoint ptr %tx_fifo_used_cnt.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tx_fifo_used_cnt.i, align 4
  %call71 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call71, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp = icmp slt i32 %call71, 1
  br i1 %cmp, label %if.end70.out_disconnect_phy_crit_edge, label %if.end74

if.end70.out_disconnect_phy_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_disconnect_phy

if.end74:                                         ; preds = %if.end70
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %call.i183 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call71, ptr noundef nonnull @hisi_femac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %48, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool77.not = icmp eq i32 %call.i183, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %50) #10
  br label %out_disconnect_phy

if.end83:                                         ; preds = %if.end74
  %call84 = tail call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %do.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %out_disconnect_phy

out_disconnect_phy:                               ; preds = %do.end89, %do.end81, %if.end70.out_disconnect_phy_crit_edge, %devm_kcalloc.exit20.i18.i.out_disconnect_phy_crit_edge, %if.end.i181.out_disconnect_phy_crit_edge, %devm_kcalloc.exit20.i.i.out_disconnect_phy_crit_edge, %if.end66.out_disconnect_phy_crit_edge
  %ret.0 = phi i32 [ %call.i183, %do.end81 ], [ %call84, %do.end89 ], [ -19, %if.end70.out_disconnect_phy_crit_edge ], [ -12, %if.end66.out_disconnect_phy_crit_edge ], [ -12, %devm_kcalloc.exit20.i.i.out_disconnect_phy_crit_edge ], [ -12, %if.end.i181.out_disconnect_phy_crit_edge ], [ -12, %devm_kcalloc.exit20.i18.i.out_disconnect_phy_crit_edge ]
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  tail call void @phy_disconnect(ptr noundef nonnull %call52) #7
  br label %out_disable_clk

out_disable_clk:                                  ; preds = %out_disconnect_phy, %do.end57, %if.else.out_disable_clk_crit_edge, %if.then38
  %ret.1 = phi i32 [ %12, %if.then38 ], [ %ret.0, %out_disconnect_phy ], [ -19, %do.end57 ], [ %17, %if.else.out_disable_clk_crit_edge ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %52) #7
  tail call void @clk_unprepare(ptr noundef %52) #7
  br label %out_free_netdev

out_free_netdev:                                  ; preds = %out_disable_clk, %do.end33, %do.end, %if.then17, %if.then10
  %ret.2 = phi i32 [ %7, %if.then10 ], [ %9, %if.then17 ], [ -19, %do.end ], [ %retval.0.i.ph, %do.end33 ], [ %ret.1, %out_disable_clk ]
  tail call void @free_netdev(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_netdev, %if.end83.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free_netdev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_drv_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %napi = getelementptr i8, ptr %1, i32 2392
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  tail call void @unregister_netdev(ptr noundef %1) #7
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %3) #7
  %clk = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  tail call void @free_netdev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_drv_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #7
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @hisi_femac_net_close(ptr noundef %1)
  tail call void @netif_device_detach(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr i8, ptr %1, i32 2312
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_drv_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %clk = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %phy_rst = getelementptr i8, ptr %1, i32 2320
  %4 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rst, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hisi_femac_phy_reset(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %clk_prepare_enable.exit.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hisi_femac_port_init(ptr noundef %add.ptr.i)
  %call5 = tail call i32 @hisi_femac_net_open(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_femac_phy_reset(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_rst = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_rst, align 8
  %call = tail call i32 @reset_control_deassert(ptr noundef %1) #7
  %phy_reset_delays = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %phy_reset_delays to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_reset_delays, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.hisi_femac_sleep_us.exit_crit_edge, label %if.end.i

entry.hisi_femac_sleep_us.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_sleep_us.exit

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %3, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 20000
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add2.i = add nsw i32 %3, 500
  tail call void @usleep_range_state(i32 noundef %3, i32 noundef %add2.i, i32 noundef 2) #7
  br label %hisi_femac_sleep_us.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %sub.i, 1000
  tail call void @msleep(i32 noundef %div.i) #7
  br label %hisi_femac_sleep_us.exit

hisi_femac_sleep_us.exit:                         ; preds = %if.else.i, %if.then1.i, %entry.hisi_femac_sleep_us.exit_crit_edge
  %4 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_rst, align 8
  %call2 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %arrayidx4 = getelementptr %struct.hisi_femac_priv, ptr %priv, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i14 = icmp eq i32 %7, 0
  br i1 %tobool.not.i14, label %hisi_femac_sleep_us.exit.hisi_femac_sleep_us.exit22_crit_edge, label %if.end.i17

hisi_femac_sleep_us.exit.hisi_femac_sleep_us.exit22_crit_edge: ; preds = %hisi_femac_sleep_us.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_sleep_us.exit22

if.end.i17:                                       ; preds = %hisi_femac_sleep_us.exit
  %sub.i15 = add i32 %7, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i15)
  %cmp.i16 = icmp ult i32 %sub.i15, 20000
  br i1 %cmp.i16, label %if.then1.i19, label %if.else.i21

if.then1.i19:                                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  %add2.i18 = add nsw i32 %7, 500
  tail call void @usleep_range_state(i32 noundef %7, i32 noundef %add2.i18, i32 noundef 2) #7
  br label %hisi_femac_sleep_us.exit22

if.else.i21:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  %div.i20 = udiv i32 %sub.i15, 1000
  tail call void @msleep(i32 noundef %div.i20) #7
  br label %hisi_femac_sleep_us.exit22

hisi_femac_sleep_us.exit22:                       ; preds = %if.else.i21, %if.then1.i19, %hisi_femac_sleep_us.exit.hisi_femac_sleep_us.exit22_crit_edge
  %8 = ptrtoint ptr %phy_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_rst, align 8
  %call6 = tail call i32 @reset_control_deassert(ptr noundef %9) #7
  %arrayidx8 = getelementptr %struct.hisi_femac_priv, ptr %priv, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i23 = icmp eq i32 %11, 0
  br i1 %tobool.not.i23, label %hisi_femac_sleep_us.exit22.hisi_femac_sleep_us.exit31_crit_edge, label %if.end.i26

hisi_femac_sleep_us.exit22.hisi_femac_sleep_us.exit31_crit_edge: ; preds = %hisi_femac_sleep_us.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_sleep_us.exit31

if.end.i26:                                       ; preds = %hisi_femac_sleep_us.exit22
  %sub.i24 = add i32 %11, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %sub.i24)
  %cmp.i25 = icmp ult i32 %sub.i24, 20000
  br i1 %cmp.i25, label %if.then1.i28, label %if.else.i30

if.then1.i28:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %add2.i27 = add nsw i32 %11, 500
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add2.i27, i32 noundef 2) #7
  br label %hisi_femac_sleep_us.exit31

if.else.i30:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %div.i29 = udiv i32 %sub.i24, 1000
  tail call void @msleep(i32 noundef %div.i29) #7
  br label %hisi_femac_sleep_us.exit31

hisi_femac_sleep_us.exit31:                       ; preds = %if.else.i30, %if.then1.i28, %hisi_femac_sleep_us.exit22.hisi_femac_sleep_us.exit31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_femac_adjust_link(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = lshr i16 %bf.load, 1
  %4 = and i16 %3, 2
  %5 = zext i16 %4 to i32
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %or2 = zext i1 %cmp to i32
  %status.1 = or i32 %5, %or2
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %9)
  %cmp4 = icmp eq i32 %9, 100
  %or6 = or i32 %status.1, 4
  %status.2 = select i1 %cmp4, i32 %or6, i32 %status.1
  %link_status = getelementptr i8, ptr %dev, i32 2336
  %10 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %status.2, i32 %11)
  %cmp8.not = icmp eq i32 %status.2, %11
  br i1 %cmp8.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %or10 = or i32 %status.2, %11
  %and = and i32 %or10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end14_crit_edge, label %do.body

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %12 = shl nuw nsw i32 %status.2, 24
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !147
  %15 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %status.2, ptr %link_status, align 8
  tail call void @phy_print_status(ptr noundef %1) #7
  br label %if.end14

if.end14:                                         ; preds = %do.body, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_print(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr i8, ptr %napi, i32 -48
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %txq1.i = getelementptr i8, ptr %1, i32 2348
  %tx_fifo_used_cnt.i = getelementptr i8, ptr %1, i32 2388
  %_tx.i.i82.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %tail.i = getelementptr i8, ptr %1, i32 2364
  %dma_phys.i.i = getelementptr i8, ptr %1, i32 2352
  %dev.i.i = getelementptr i8, ptr %1, i32 2340
  %num.i = getelementptr i8, ptr %1, i32 2356
  %rxq1.i = getelementptr i8, ptr %1, i32 2368
  %tail.i30 = getelementptr i8, ptr %1, i32 2384
  %glb_base.i = getelementptr i8, ptr %1, i32 2308
  %dma_phys.i = getelementptr i8, ptr %1, i32 2372
  %napi.i = getelementptr i8, ptr %1, i32 2392
  %stats38.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %num.i31 = getelementptr i8, ptr %1, i32 2376
  %glb_base = getelementptr i8, ptr %napi, i32 -84
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %task.0 = phi i32 [ %budget, %entry ], [ %sub, %if.end.do.body_crit_edge ]
  %work_done.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  tail call void @netif_tx_lock(ptr noundef %1) #7
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 876
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !148
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %val.070.i = and i32 %5, 63
  %6 = ptrtoint ptr %tx_fifo_used_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fifo_used_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.070.i, i32 %7)
  %cmp71.i = icmp ult i32 %val.070.i, %7
  br i1 %cmp71.i, label %while.body.lr.ph.i, label %netdev_completed_queue.exit.thread.i

while.body.lr.ph.i:                               ; preds = %do.body
  %8 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txq1.i, align 4
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  %arrayidx.i52 = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i52, align 4
  %tobool.not.i53 = icmp eq ptr %13, null
  br i1 %tobool.not.i53, label %while.body.lr.ph.i.if.then.i_crit_edge, label %while.body.lr.ph.i.if.end.i_crit_edge, !prof !150

while.body.lr.ph.i.if.end.i_crit_edge:            ; preds = %while.body.lr.ph.i
  br label %if.end.i

while.body.lr.ph.i.if.then.i_crit_edge:           ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

while.body.i:                                     ; preds = %if.end.i
  %14 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txq1.i, align 4
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %while.body.i.if.then.i_crit_edge, label %while.body.i.if.end.i_crit_edge, !prof !150

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %while.body.i.if.then.i_crit_edge, %while.body.lr.ph.i.if.then.i_crit_edge
  %.lcssa = phi i32 [ %7, %while.body.lr.ph.i.if.then.i_crit_edge ], [ %47, %while.body.i.if.then.i_crit_edge ]
  %val.074.i.lcssa = phi i32 [ %val.070.i, %while.body.lr.ph.i.if.then.i_crit_edge ], [ %val.0.i, %while.body.i.if.then.i_crit_edge ]
  %bytes_compl.073.i.lcssa = phi i32 [ 0, %while.body.lr.ph.i.if.then.i_crit_edge ], [ %add.i, %while.body.i.if.then.i_crit_edge ]
  %pkts_compl.072.i.lcssa = phi i32 [ 0, %while.body.lr.ph.i.if.then.i_crit_edge ], [ %inc.i, %while.body.i.if.then.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %val.074.i.lcssa, i32 noundef %.lcssa) #10
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %while.body.lr.ph.i.if.end.i_crit_edge
  %20 = phi ptr [ %19, %while.body.i.if.end.i_crit_edge ], [ %13, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %21 = phi i32 [ %17, %while.body.i.if.end.i_crit_edge ], [ %11, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %pkts_compl.072.i55 = phi i32 [ %inc.i, %while.body.i.if.end.i_crit_edge ], [ 0, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %bytes_compl.073.i54 = phi i32 [ %add.i, %while.body.i.if.end.i_crit_edge ], [ 0, %while.body.lr.ph.i.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_phys.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 %21
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %28 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %25, i32 noundef %29, i32 noundef 1, i32 noundef 0) #7
  %inc.i = add i32 %pkts_compl.072.i55, 1
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  %add.i = add i32 %31, %bytes_compl.073.i54
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %20, i32 noundef 1) #7
  %32 = ptrtoint ptr %tx_fifo_used_cnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_fifo_used_cnt.i, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %tx_fifo_used_cnt.i, align 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %35, i32 876
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !148
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %38 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %txq1.i, align 4
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i, align 4
  %arrayidx21.i = getelementptr ptr, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx21.i, align 4
  %43 = load i32, ptr %tail.i, align 4
  %add23.i = add i32 %43, 1
  %44 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num.i, align 4
  %rem.i = urem i32 %add23.i, %45
  store i32 %rem.i, ptr %tail.i, align 4
  %val.0.i = and i32 %37, 63
  %46 = ptrtoint ptr %tx_fifo_used_cnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_fifo_used_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.i, i32 %47)
  %cmp.i = icmp ult i32 %val.0.i, %47
  br i1 %cmp.i, label %while.body.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then.i
  %pkts_compl.069.i = phi i32 [ %pkts_compl.072.i.lcssa, %if.then.i ], [ %inc.i, %if.end.i.while.end.i_crit_edge ]
  %bytes_compl.067.i = phi i32 [ %bytes_compl.073.i.lcssa, %if.then.i ], [ %add.i, %if.end.i.while.end.i_crit_edge ]
  %48 = ptrtoint ptr %_tx.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i82.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.067.i)
  %tobool.not.i.i.i = icmp eq i32 %bytes_compl.067.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.i.netdev_completed_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !150

while.end.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit.i

if.end.i.i.i:                                     ; preds = %while.end.i
  %dql.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15
  tail call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_compl.067.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !152
  %adj_limit.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 15, i32 1
  %50 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %52 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !150

if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  %call15.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_completed_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_schedule_queue(ptr noundef %49) #7
  br label %netdev_completed_queue.exit.i

netdev_completed_queue.exit.i:                    ; preds = %if.then17.i.i.i, %if.end14.i.i.i.netdev_completed_queue.exit.i_crit_edge, %if.end.i.i.i.netdev_completed_queue.exit.i_crit_edge, %while.end.i.netdev_completed_queue.exit.i_crit_edge
  %54 = ptrtoint ptr %_tx.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i82.i, align 128
  %state.i.i62.i = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %state.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i.i62.i, align 4
  %and1.i.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %netdev_completed_queue.exit.i.hisi_femac_xmit_reclaim.exit_crit_edge, label %land.lhs.true.i, !prof !153

netdev_completed_queue.exit.i.hisi_femac_xmit_reclaim.exit_crit_edge: ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_xmit_reclaim.exit

netdev_completed_queue.exit.thread.i:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %_tx.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i82.i, align 128
  %state.i.i6288.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %state.i.i6288.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %state.i.i6288.i, align 4
  br label %hisi_femac_xmit_reclaim.exit

land.lhs.true.i:                                  ; preds = %netdev_completed_queue.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts_compl.069.i)
  %tobool32.not.i = icmp eq i32 %pkts_compl.069.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i.hisi_femac_xmit_reclaim.exit_crit_edge, label %if.then33.i

land.lhs.true.i.hisi_femac_xmit_reclaim.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_xmit_reclaim.exit

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_tx_wake_queue(ptr noundef %55) #7
  br label %hisi_femac_xmit_reclaim.exit

hisi_femac_xmit_reclaim.exit:                     ; preds = %if.then33.i, %land.lhs.true.i.hisi_femac_xmit_reclaim.exit_crit_edge, %netdev_completed_queue.exit.thread.i, %netdev_completed_queue.exit.i.hisi_femac_xmit_reclaim.exit_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %1) #7
  %62 = ptrtoint ptr %tail.i30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tail.i30, align 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %task.0, i32 1) #7
  br label %while.cond.i

while.cond.i:                                     ; preds = %next.i.while.cond.i_crit_edge, %hisi_femac_xmit_reclaim.exit
  %rx_pkts_num.0.i = phi i32 [ 0, %hisi_femac_xmit_reclaim.exit ], [ %inc.i34, %next.i.while.cond.i_crit_edge ]
  %pos.0.i = phi i32 [ %63, %hisi_femac_xmit_reclaim.exit ], [ %rem.i41, %next.i.while.cond.i_crit_edge ]
  %64 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %65, i32 56
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %67 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i33 = icmp eq i32 %67, 0
  br i1 %tobool.not.i33, label %while.cond.i.hisi_femac_rx.exit_crit_edge, label %while.body.i36

while.cond.i.hisi_femac_rx.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_rx.exit

while.body.i36:                                   ; preds = %while.cond.i
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %69, i32 852
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %glb_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %72, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #7, !srcloc !147
  %inc.i34 = add nuw i32 %rx_pkts_num.0.i, 1
  %73 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rxq1.i, align 4
  %arrayidx.i35 = getelementptr ptr, ptr %74, i32 %pos.0.i
  %75 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i35, align 4
  %tobool14.not.i = icmp eq ptr %76, null
  br i1 %tobool14.not.i, label %if.then.i37, label %if.end.i39, !prof !150

if.then.i37:                                      ; preds = %while.body.i36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %pos.0.i) #10
  br label %hisi_femac_rx.exit

if.end.i39:                                       ; preds = %while.body.i36
  %77 = and i32 %70, -15794176
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  %sub.i = add nsw i32 %78, -4
  %79 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx.i35, align 4
  %80 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_phys.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %81, i32 %pos.0.i
  %82 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx20.i, align 4
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %85, i32 noundef %83, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #7
  %call22.i = tail call ptr @skb_put(ptr noundef nonnull %76, i32 noundef %sub.i) #7
  %len23.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 6
  %86 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %87)
  %cmp.i38 = icmp ugt i32 %87, 1600
  br i1 %cmp.i38, label %if.then30.i, label %if.end35.i, !prof !150

if.then30.i:                                      ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %87) #10
  %88 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_errors.i, align 8
  %inc32.i = add i32 %89, 1
  store i32 %inc32.i, ptr %rx_errors.i, align 8
  %90 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_length_errors.i, align 8
  %inc34.i = add i32 %91, 1
  store i32 %inc34.i, ptr %rx_length_errors.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %76, i32 noundef 1) #7
  br label %next.i

if.end35.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %call36.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %76, ptr noundef %1) #7
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 15, i32 0, i32 18
  %92 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %call36.i, ptr %protocol.i, align 8
  %call37.i = tail call i32 @napi_gro_receive(ptr noundef %napi.i, ptr noundef nonnull %76) #7
  %93 = ptrtoint ptr %stats38.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stats38.i, align 8
  %inc39.i = add i32 %94, 1
  store i32 %inc39.i, ptr %stats38.i, align 8
  %95 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len23.i, align 4
  %97 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_bytes.i, align 8
  %add.i40 = add i32 %98, %96
  store i32 %add.i40, ptr %rx_bytes.i, align 8
  br label %next.i

next.i:                                           ; preds = %if.end35.i, %if.then30.i
  %add42.i = add i32 %pos.0.i, 1
  %99 = ptrtoint ptr %num.i31 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num.i31, align 4
  %rem.i41 = urem i32 %add42.i, %100
  %exitcond.not.i = icmp eq i32 %inc.i34, %umax.i
  br i1 %exitcond.not.i, label %next.i.hisi_femac_rx.exit_crit_edge, label %next.i.while.cond.i_crit_edge

next.i.while.cond.i_crit_edge:                    ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

next.i.hisi_femac_rx.exit_crit_edge:              ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_rx.exit

hisi_femac_rx.exit:                               ; preds = %next.i.hisi_femac_rx.exit_crit_edge, %if.then.i37, %while.cond.i.hisi_femac_rx.exit_crit_edge
  %rx_pkts_num.1.i = phi i32 [ %inc.i34, %if.then.i37 ], [ %umax.i, %next.i.hisi_femac_rx.exit_crit_edge ], [ %rx_pkts_num.0.i, %while.cond.i.hisi_femac_rx.exit_crit_edge ]
  %pos.1.i = phi i32 [ %pos.0.i, %if.then.i37 ], [ %rem.i41, %next.i.hisi_femac_rx.exit_crit_edge ], [ %pos.0.i, %while.cond.i.hisi_femac_rx.exit_crit_edge ]
  %101 = ptrtoint ptr %tail.i30 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %pos.1.i, ptr %tail.i30, align 4
  tail call fastcc void @hisi_femac_rx_refill(ptr noundef %add.ptr.i.i) #7
  %add = add i32 %rx_pkts_num.1.i, %work_done.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp.not = icmp slt i32 %add, %budget
  br i1 %cmp.not, label %if.end, label %hisi_femac_rx.exit.if.end14_crit_edge

hisi_femac_rx.exit.if.end14_crit_edge:            ; preds = %hisi_femac_rx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end:                                           ; preds = %hisi_femac_rx.exit
  %sub = sub i32 %task.0, %rx_pkts_num.1.i
  %102 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %glb_base, align 4
  %add.ptr1 = getelementptr i8, ptr %103, i32 56
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !148
  %105 = lshr i32 %104, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %and = and i32 %105, 194
  %106 = shl nuw i32 %and, 24
  %107 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %glb_base, align 4
  %add.ptr7 = getelementptr i8, ptr %108, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %106) #7, !srcloc !147
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then12, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #7
  %109 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %glb_base, align 4
  %add.ptr.i44 = getelementptr i8, ptr %110, i32 52
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %112 = or i32 %111, -1073741824
  %113 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %glb_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %114, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %112) #7, !srcloc !147
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %hisi_femac_rx.exit.if.end14_crit_edge
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_femac_port_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %interface = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  %spec.select = select i1 %cmp, i32 50331648, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %glb_base = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %glb_base, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -16777216) #7, !srcloc !147
  %10 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %glb_base, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %13 = and i32 %12, 16776191
  %14 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %glb_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %13) #7, !srcloc !147
  %16 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %glb_base, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %19 = and i32 %18, 1593835519
  %20 = or i32 %19, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %glb_base, align 4
  %add.ptr13 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %20) #7, !srcloc !147
  %23 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %glb_base, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %26 = or i32 %25, -1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %glb_base, align 4
  %add.ptr26 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %26) #7, !srcloc !147
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %add.ptr30 = getelementptr i8, ptr %30, i32 528
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %32 = and i32 %31, 16318463
  %33 = or i32 %32, 1074135040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %add.ptr40 = getelementptr i8, ptr %35, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %33) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %add.ptr45 = getelementptr i8, ptr %37, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 1946157064) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %add.ptr50 = getelementptr i8, ptr %39, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 204734464) #7, !srcloc !147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %glb_base = getelementptr i8, ptr %dev_id, i32 2308
  %0 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glb_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %and = and i32 %3, 194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body, !prof !150

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %4 = shl nuw i32 %and, 24
  %5 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %glb_base, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #7, !srcloc !147
  %7 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %glb_base, align 4
  %add.ptr.i12 = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %10 = and i32 %9, 1040187391
  %11 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %glb_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #7, !srcloc !147
  %napi = getelementptr i8, ptr %dev_id, i32 2392
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_net_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %glb_base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glb_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #7, !srcloc !147
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 800, i32 noundef 2) #7
  %6 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %glb_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %6) #7, !srcloc !147
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %10, align 1
  %conv2.i = zext i8 %14 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %15) #7, !srcloc !147
  %arrayidx3.i = getelementptr i8, ptr %10, i32 5
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %19 to i32
  %arrayidx5.i = getelementptr i8, ptr %10, i32 4
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %21 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %shl7.i, %conv4.i
  %arrayidx9.i = getelementptr i8, ptr %10, i32 3
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %23 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or12.i = or i32 %or8.i, %shl11.i
  %arrayidx13.i = getelementptr i8, ptr %10, i32 2
  %24 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %25 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or12.i, %shl15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #7
  %27 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %glb_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !147
  tail call fastcc void @hisi_femac_rx_refill(ptr noundef %add.ptr.i)
  tail call void @netif_carrier_off(ptr noundef %dev) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #7
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #7
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i20 = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i20) #7
  %napi = getelementptr i8, ptr %dev, i32 2392
  tail call void @napi_enable(ptr noundef %napi) #7
  %link_status = getelementptr i8, ptr %dev, i32 2336
  %33 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %link_status, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %34 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_start(ptr noundef nonnull %35) #7
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %glb_base.i, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #7, !srcloc !147
  %38 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %39, i32 52
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %41 = or i32 %40, -1040184320
  %42 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %glb_base.i, align 4
  %add.ptr3.i24 = getelementptr i8, ptr %43, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i24, i32 %41) #7, !srcloc !147
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_net_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %glb_base.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, -1025
  %4 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glb_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #7, !srcloc !147
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_stop(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %napi = getelementptr i8, ptr %dev, i32 2392
  tail call void @napi_disable(ptr noundef %napi) #7
  %txq1.i = getelementptr i8, ptr %dev, i32 2348
  %rxq2.i = getelementptr i8, ptr %dev, i32 2368
  %tail.i = getelementptr i8, ptr %dev, i32 2384
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr i8, ptr %dev, i32 2380
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not7779.i = icmp eq i32 %11, %13
  br i1 %cmp.not7779.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.lr.ph.i:                         ; preds = %if.end
  %ndev.i = getelementptr i8, ptr %dev, i32 2344
  %dma_phys.i = getelementptr i8, ptr %dev, i32 2372
  %dev.i = getelementptr i8, ptr %dev, i32 2340
  %num.i = getelementptr i8, ptr %dev, i32 2376
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %14 = phi i32 [ %13, %while.body.lr.ph.lr.ph.i ], [ %36, %if.end.i.while.body.lr.ph.i_crit_edge ]
  %pos.0.ph80.i = phi i32 [ %11, %while.body.lr.ph.lr.ph.i ], [ %rem.i, %if.end.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %14, %while.body.lr.ph.i ], [ %23, %if.then.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %rxq2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxq2.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %pos.0.ph80.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !prof !150

if.then.i:                                        ; preds = %while.body.i
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.60, i32 noundef %pos.0.ph80.i, i32 noundef %15) #10
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head.i, align 4
  %cmp.not.i = icmp eq i32 %pos.0.ph80.i, %23
  br i1 %cmp.not.i, label %if.then.i.while.end.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %24 = ptrtoint ptr %dma_phys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_phys.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %25, i32 %pos.0.ph80.i
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.i, align 4
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %27, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %19, i32 noundef 1) #7
  %30 = ptrtoint ptr %rxq2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxq2.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %31, i32 %pos.0.ph80.i
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx10.i, align 4
  %add.i = add i32 %pos.0.ph80.i, 1
  %33 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num.i, align 4
  %rem.i = urem i32 %add.i, %34
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %head.i, align 4
  %cmp.not77.i = icmp eq i32 %rem.i, %36
  br i1 %cmp.not77.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.lr.ph.i_crit_edge

if.end.i.while.body.lr.ph.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %pos.0.ph.lcssa.i = phi i32 [ %11, %if.end.while.end.i_crit_edge ], [ %pos.0.ph80.i, %if.then.i.while.end.i_crit_edge ], [ %rem.i, %if.end.i.while.end.i_crit_edge ]
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %pos.0.ph.lcssa.i, ptr %tail.i, align 4
  %tail12.i = getelementptr i8, ptr %dev, i32 2364
  %38 = ptrtoint ptr %tail12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail12.i, align 4
  %head14.i = getelementptr i8, ptr %dev, i32 2360
  %40 = ptrtoint ptr %head14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp15.not8285.i = icmp eq i32 %39, %41
  br i1 %cmp15.not8285.i, label %while.end.i.hisi_femac_free_skb_rings.exit_crit_edge, label %while.body16.lr.ph.lr.ph.i

while.end.i.hisi_femac_free_skb_rings.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_free_skb_rings.exit

while.body16.lr.ph.lr.ph.i:                       ; preds = %while.end.i
  %ndev29.i = getelementptr i8, ptr %dev, i32 2344
  %dma_phys.i.i = getelementptr i8, ptr %dev, i32 2352
  %dev.i.i = getelementptr i8, ptr %dev, i32 2340
  %num35.i = getelementptr i8, ptr %dev, i32 2356
  br label %while.body16.lr.ph.i

while.body16.lr.ph.i:                             ; preds = %if.end31.i.while.body16.lr.ph.i_crit_edge, %while.body16.lr.ph.lr.ph.i
  %42 = phi i32 [ %41, %while.body16.lr.ph.lr.ph.i ], [ %66, %if.end31.i.while.body16.lr.ph.i_crit_edge ]
  %pos.1.ph86.i = phi i32 [ %39, %while.body16.lr.ph.lr.ph.i ], [ %rem36.i, %if.end31.i.while.body16.lr.ph.i_crit_edge ]
  br label %while.body16.i

while.body16.i:                                   ; preds = %if.then28.i.while.body16.i_crit_edge, %while.body16.lr.ph.i
  %43 = phi i32 [ %42, %while.body16.lr.ph.i ], [ %51, %if.then28.i.while.body16.i_crit_edge ]
  %44 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %txq1.i, align 4
  %arrayidx18.i = getelementptr ptr, ptr %45, i32 %pos.1.ph86.i
  %46 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %47, null
  br i1 %tobool19.not.i, label %if.then28.i, label %if.end31.i, !prof !150

if.then28.i:                                      ; preds = %while.body16.i
  %48 = ptrtoint ptr %ndev29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev29.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.61, i32 noundef %pos.1.ph86.i, i32 noundef %43) #10
  %50 = ptrtoint ptr %head14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head14.i, align 4
  %cmp15.not.i = icmp eq i32 %pos.1.ph86.i, %51
  br i1 %cmp15.not.i, label %if.then28.i.hisi_femac_free_skb_rings.exit_crit_edge, label %if.then28.i.while.body16.i_crit_edge

if.then28.i.while.body16.i_crit_edge:             ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16.i

if.then28.i.hisi_femac_free_skb_rings.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_free_skb_rings.exit

if.end31.i:                                       ; preds = %while.body16.i
  %52 = ptrtoint ptr %dma_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_phys.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %53, i32 %pos.1.ph86.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i, align 4
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %55, i32 noundef %59, i32 noundef 1, i32 noundef 0) #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %47, i32 noundef 1) #7
  %60 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %txq1.i, align 4
  %arrayidx33.i = getelementptr ptr, ptr %61, i32 %pos.1.ph86.i
  %62 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx33.i, align 4
  %add34.i = add i32 %pos.1.ph86.i, 1
  %63 = ptrtoint ptr %num35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num35.i, align 4
  %rem36.i = urem i32 %add34.i, %64
  %65 = ptrtoint ptr %head14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head14.i, align 4
  %cmp15.not82.i = icmp eq i32 %rem36.i, %66
  br i1 %cmp15.not82.i, label %if.end31.i.hisi_femac_free_skb_rings.exit_crit_edge, label %if.end31.i.while.body16.lr.ph.i_crit_edge

if.end31.i.while.body16.lr.ph.i_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body16.lr.ph.i

if.end31.i.hisi_femac_free_skb_rings.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_femac_free_skb_rings.exit

hisi_femac_free_skb_rings.exit:                   ; preds = %if.end31.i.hisi_femac_free_skb_rings.exit_crit_edge, %if.then28.i.hisi_femac_free_skb_rings.exit_crit_edge, %while.end.i.hisi_femac_free_skb_rings.exit_crit_edge
  %pos.1.ph.lcssa.i = phi i32 [ %39, %while.end.i.hisi_femac_free_skb_rings.exit_crit_edge ], [ %pos.1.ph86.i, %if.then28.i.hisi_femac_free_skb_rings.exit_crit_edge ], [ %rem36.i, %if.end31.i.hisi_femac_free_skb_rings.exit_crit_edge ]
  %67 = ptrtoint ptr %tail12.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %pos.1.ph.lcssa.i, ptr %tail12.i, align 4
  %tx_fifo_used_cnt.i = getelementptr i8, ptr %dev, i32 2388
  %68 = ptrtoint ptr %tx_fifo_used_cnt.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tx_fifo_used_cnt.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_net_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %txq1 = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 876
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %glb_base.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %7 = or i32 %6, 33554432
  %8 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %glb_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #7, !srcloc !147
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %12 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifo_errors, align 8
  %inc5 = add i32 %13, 1
  store i32 %inc5, ptr %tx_fifo_errors, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail = getelementptr i8, ptr %dev, i32 2364
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  %head = getelementptr i8, ptr %dev, i32 2360
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  %add.neg = xor i32 %19, -1
  %sub = add i32 %17, %add.neg
  %num = getelementptr i8, ptr %dev, i32 2356
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num, align 4
  %sub6 = add i32 %21, -1
  %and7 = and i32 %sub6, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then12, label %if.end19, !prof !150

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hisi_femac_irq_enable(ptr noundef %add.ptr.i, i32 noundef 2)
  %tx_dropped14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %22 = ptrtoint ptr %tx_dropped14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_dropped14, align 4
  %inc15 = add i32 %23, 1
  store i32 %inc15, ptr %tx_dropped14, align 4
  %tx_fifo_errors17 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %24 = ptrtoint ptr %tx_fifo_errors17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_fifo_errors17, align 8
  %inc18 = add i32 %25, 1
  store i32 %inc18, ptr %tx_fifo_errors17, align 8
  %_tx.i.i100 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i100, align 128
  %state.i.i101 = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i101) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %dev20 = getelementptr i8, ptr %dev, i32 2340
  %28 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev20, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end19
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !153

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %29) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %37, %if.end.i.i ], [ %35, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %38 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev20, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef -1) #7
  br label %if.then31

dma_map_single_attrs.exit:                        ; preds = %if.end19
  tail call void @debug_dma_map_single(ptr noundef %29, ptr noundef %31, i32 noundef %33) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %31 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i102 = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef %add.ptr.i102, i32 noundef %and.i, i32 noundef %33, i32 noundef 1, i32 noundef 0) #7
  %42 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev20, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %43, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then31_crit_edge, label %if.end35

dma_map_single_attrs.exit.if.then31_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %dma_map_single_attrs.exit.if.then31_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  %tx_dropped33 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %44 = ptrtoint ptr %tx_dropped33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_dropped33, align 4
  %inc34 = add i32 %45, 1
  store i32 %inc34, ptr %tx_dropped33, align 4
  br label %cleanup

if.end35:                                         ; preds = %dma_map_single_attrs.exit
  %dma_phys = getelementptr i8, ptr %dev, i32 2352
  %46 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_phys, align 4
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head, align 4
  %arrayidx = getelementptr i32, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call41.i, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %txq1, align 4
  %53 = load i32, ptr %head, align 4
  %arrayidx39 = getelementptr ptr, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb, ptr %arrayidx39, align 4
  %55 = load i32, ptr %head, align 4
  %add41 = add i32 %55, 1
  %56 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num, align 4
  %rem = urem i32 %add41, %57
  store i32 %rem, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr45 = getelementptr i8, ptr %60, i32 864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %58) #7, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %add50 = add i32 %62, 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %add50)
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr52 = getelementptr i8, ptr %65, i32 868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %63) #7, !srcloc !147
  %tx_fifo_used_cnt = getelementptr i8, ptr %dev, i32 2388
  %66 = ptrtoint ptr %tx_fifo_used_cnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_fifo_used_cnt, align 4
  %inc53 = add i32 %67, 1
  store i32 %inc53, ptr %tx_fifo_used_cnt, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %68 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_packets, align 4
  %inc55 = add i32 %69, 1
  store i32 %inc55, ptr %tx_packets, align 4
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %72 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_bytes, align 4
  %add58 = add i32 %73, %71
  store i32 %add58, ptr %tx_bytes, align 4
  %74 = load i32, ptr %len, align 4
  %_tx.i.i103 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i103, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %74)
  %cmp.i.i.i = icmp ugt i32 %74, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !150

do.body2.i.i.i:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #7, !srcloc !184
  unreachable

dql_queued.exit.i.i:                              ; preds = %if.end35
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 15, i32 2
  %77 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !185
  %78 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %79, %74
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 15, i32 1
  %80 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %82 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %81, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.cleanup_crit_edge, label %if.end.i.i105, !prof !153

dql_queued.exit.i.i.cleanup_crit_edge:            ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i105:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i104 = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i104) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  %83 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %85 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %84, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i105.cleanup_crit_edge, !prof !150

if.end.i.i105.cleanup_crit_edge:                  ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14.i.i:                                    ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i.i, %if.end.i.i105.cleanup_crit_edge, %dql_queued.exit.i.i.cleanup_crit_edge, %if.then31, %if.then12, %if.then
  %retval.0 = phi i32 [ 16, %if.then12 ], [ 0, %if.then31 ], [ 16, %if.then ], [ 0, %dql_queued.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i105.cleanup_crit_edge ], [ 0, %if.then14.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_femac_net_set_rx_mode(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %glb_base.i6 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #7, !srcloc !147
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = and i32 %4, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr3.i8 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i8, i32 %8) #7, !srcloc !147
  %ndev.i = getelementptr i8, ptr %dev, i32 2344
  %11 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev.i, align 8
  %13 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i10 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !148
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %mc.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 66, i32 1
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp.i = icmp sgt i32 %18, 6
  br i1 %cmp.i, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.preheader.i:                             ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 276
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %24 = and i32 %23, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %26, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %24) #7, !srcloc !147
  %27 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %28, i32 284
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %30 = and i32 %29, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.1.i = getelementptr i8, ptr %32, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.1.i, i32 %30) #7, !srcloc !147
  %33 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %34, i32 292
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %36 = and i32 %35, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.2.i = getelementptr i8, ptr %38, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.2.i, i32 %36) #7, !srcloc !147
  %39 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %40, i32 300
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %42 = and i32 %41, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.3.i = getelementptr i8, ptr %44, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.3.i, i32 %42) #7, !srcloc !147
  %45 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %46, i32 308
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %48 = and i32 %47, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.4.i = getelementptr i8, ptr %50, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.4.i, i32 %48) #7, !srcloc !147
  %51 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.5.i = getelementptr i8, ptr %52, i32 316
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %54 = and i32 %53, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.5.i = getelementptr i8, ptr %56, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.5.i, i32 %54) #7, !srcloc !147
  %57 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %ha.043.i = load ptr, ptr %mc.i, align 4
  %cmp10.not44.i = icmp eq ptr %ha.043.i, %mc.i
  br i1 %cmp10.not44.i, label %for.body.preheader.i.for.end19.i_crit_edge, label %for.body.preheader.i.for.body11.i_crit_edge

for.body.preheader.i.for.body11.i_crit_edge:      ; preds = %for.body.preheader.i
  br label %for.body11.i

for.body.preheader.i.for.end19.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %or.i = or i32 %16, 8
  br label %hisi_femac_set_mc_addr_filter.exit

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body.preheader.i.for.body11.i_crit_edge
  %ha.046.i = phi ptr [ %ha.0.i, %for.body11.i.for.body11.i_crit_edge ], [ %ha.043.i, %for.body.preheader.i.for.body11.i_crit_edge ]
  %reg.045.i = phi i32 [ %inc12.i, %for.body11.i.for.body11.i_crit_edge ], [ 2, %for.body.preheader.i.for.body11.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2
  %mul.i38.i = shl i32 %reg.045.i, 3
  %add.i39.i = add i32 %mul.i38.i, 260
  %add2.i.i = add i32 %mul.i38.i, 256
  %arrayidx.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2, i32 2
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %59 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx3.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %61 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or.i.i = or i32 %shl5.i.i, %shl.i.i
  %arrayidx6.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %63 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 8
  %or9.i.i = or i32 %or.i.i, %shl8.i.i
  %arrayidx10.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2, i32 5
  %64 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %65 to i32
  %or12.i.i = or i32 %or9.i.i, %conv11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #7
  %67 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %68, i32 %add2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %66) #7, !srcloc !147
  %69 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %70, i32 %add.i39.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %72 = and i32 %71, 56831
  %73 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %addr.i, align 1
  %conv17.i.i = zext i8 %74 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %arrayidx19.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.046.i, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx19.i.i, align 1
  %conv20.i.i = zext i8 %76 to i32
  %77 = or i32 %72, 8704
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  %or22.i.i = or i32 %78, %conv20.i.i
  %or23.i.i = or i32 %or22.i.i, %shl18.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %79 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i) #7
  %80 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %81, i32 %add.i39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %79) #7, !srcloc !147
  %inc12.i = add i32 %reg.045.i, 1
  %82 = ptrtoint ptr %ha.046.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %ha.0.i = load ptr, ptr %ha.046.i, align 4
  %cmp10.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp10.not.i, label %for.body11.i.for.end19.i_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

for.body11.i.for.end19.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19.i

for.end19.i:                                      ; preds = %for.body11.i.for.end19.i_crit_edge, %for.body.preheader.i.for.end19.i_crit_edge
  %and20.i = and i32 %16, -9
  br label %hisi_femac_set_mc_addr_filter.exit

hisi_femac_set_mc_addr_filter.exit:               ; preds = %for.end19.i, %if.then.i
  %val.0.i11 = phi i32 [ %or.i, %if.then.i ], [ %and20.i, %for.end19.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %val.0.i11) #7
  %84 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr22.i = getelementptr i8, ptr %85, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %83) #7, !srcloc !147
  %86 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev.i, align 8
  %88 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i14 = getelementptr i8, ptr %89, i32 20
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !148
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %uc.i = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 65
  %count.i15 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 65, i32 1
  %92 = ptrtoint ptr %count.i15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp.i16 = icmp sgt i32 %93, 2
  br i1 %cmp.i16, label %if.then.i23, label %for.body.preheader.i21

for.body.preheader.i21:                           ; preds = %hisi_femac_set_mc_addr_filter.exit
  %94 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %95, i32 260
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %97 = and i32 %96, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %98 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.i18 = getelementptr i8, ptr %99, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i18, i32 %97) #7, !srcloc !147
  %100 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i.1.i19 = getelementptr i8, ptr %101, i32 268
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i19) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %103 = and i32 %102, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr5.i.1.i20 = getelementptr i8, ptr %105, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.1.i20, i32 %103) #7, !srcloc !147
  %106 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %ha.041.i = load ptr, ptr %uc.i, align 4
  %cmp10.not42.i = icmp eq ptr %ha.041.i, %uc.i
  br i1 %cmp10.not42.i, label %for.body.preheader.i21.for.end19.i53_crit_edge, label %for.body.preheader.i21.for.body11.i51_crit_edge

for.body.preheader.i21.for.body11.i51_crit_edge:  ; preds = %for.body.preheader.i21
  br label %for.body11.i51

for.body.preheader.i21.for.end19.i53_crit_edge:   ; preds = %for.body.preheader.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19.i53

if.then.i23:                                      ; preds = %hisi_femac_set_mc_addr_filter.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or.i22 = or i32 %91, 2
  br label %hisi_femac_set_uc_addr_filter.exit

for.body11.i51:                                   ; preds = %for.body11.i51.for.body11.i51_crit_edge, %for.body.preheader.i21.for.body11.i51_crit_edge
  %ha.044.i = phi ptr [ %ha.0.i49, %for.body11.i51.for.body11.i51_crit_edge ], [ %ha.041.i, %for.body.preheader.i21.for.body11.i51_crit_edge ]
  %reg.043.i = phi i32 [ %inc12.i48, %for.body11.i51.for.body11.i51_crit_edge ], [ 0, %for.body.preheader.i21.for.body11.i51_crit_edge ]
  %addr.i24 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2
  %mul.i36.i = shl i32 %reg.043.i, 3
  %add.i37.i = add i32 %mul.i36.i, 260
  %add2.i.i25 = add i32 %mul.i36.i, 256
  %arrayidx.i.i26 = getelementptr %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i.i26, align 1
  %conv.i.i27 = zext i8 %108 to i32
  %shl.i.i28 = shl nuw i32 %conv.i.i27, 24
  %arrayidx3.i.i29 = getelementptr %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %arrayidx3.i.i29 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx3.i.i29, align 1
  %conv4.i.i30 = zext i8 %110 to i32
  %shl5.i.i31 = shl nuw nsw i32 %conv4.i.i30, 16
  %or.i.i32 = or i32 %shl5.i.i31, %shl.i.i28
  %arrayidx6.i.i33 = getelementptr %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2, i32 4
  %111 = ptrtoint ptr %arrayidx6.i.i33 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx6.i.i33, align 1
  %conv7.i.i34 = zext i8 %112 to i32
  %shl8.i.i35 = shl nuw nsw i32 %conv7.i.i34, 8
  %or9.i.i36 = or i32 %or.i.i32, %shl8.i.i35
  %arrayidx10.i.i37 = getelementptr %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2, i32 5
  %113 = ptrtoint ptr %arrayidx10.i.i37 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx10.i.i37, align 1
  %conv11.i.i38 = zext i8 %114 to i32
  %or12.i.i39 = or i32 %or9.i.i36, %conv11.i.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %115 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i39) #7
  %116 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %117, i32 %add2.i.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %115) #7, !srcloc !147
  %118 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr14.i.i40 = getelementptr i8, ptr %119, i32 %add.i37.i
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i40) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %121 = and i32 %120, 56831
  %122 = ptrtoint ptr %addr.i24 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %addr.i24, align 1
  %conv17.i.i41 = zext i8 %123 to i32
  %shl18.i.i42 = shl nuw nsw i32 %conv17.i.i41, 8
  %arrayidx19.i.i43 = getelementptr %struct.netdev_hw_addr, ptr %ha.044.i, i32 0, i32 2, i32 1
  %124 = ptrtoint ptr %arrayidx19.i.i43 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx19.i.i43, align 1
  %conv20.i.i44 = zext i8 %125 to i32
  %126 = or i32 %121, 8704
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  %or22.i.i45 = or i32 %127, %conv20.i.i44
  %or23.i.i46 = or i32 %or22.i.i45, %shl18.i.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  tail call void @arm_heavy_mb() #7
  %128 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i46) #7
  %129 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr28.i.i47 = getelementptr i8, ptr %130, i32 %add.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i47, i32 %128) #7, !srcloc !147
  %inc12.i48 = add i32 %reg.043.i, 1
  %131 = ptrtoint ptr %ha.044.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %ha.0.i49 = load ptr, ptr %ha.044.i, align 4
  %cmp10.not.i50 = icmp eq ptr %ha.0.i49, %uc.i
  br i1 %cmp10.not.i50, label %for.body11.i51.for.end19.i53_crit_edge, label %for.body11.i51.for.body11.i51_crit_edge

for.body11.i51.for.body11.i51_crit_edge:          ; preds = %for.body11.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i51

for.body11.i51.for.end19.i53_crit_edge:           ; preds = %for.body11.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19.i53

for.end19.i53:                                    ; preds = %for.body11.i51.for.end19.i53_crit_edge, %for.body.preheader.i21.for.end19.i53_crit_edge
  %and.i52 = and i32 %91, -3
  br label %hisi_femac_set_uc_addr_filter.exit

hisi_femac_set_uc_addr_filter.exit:               ; preds = %for.end19.i53, %if.then.i23
  %val.0.i54 = phi i32 [ %or.i22, %if.then.i23 ], [ %and.i52, %for.end19.i53 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %132 = tail call i32 @llvm.bswap.i32(i32 %val.0.i54) #7
  %133 = ptrtoint ptr %glb_base.i6 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %glb_base.i6, align 4
  %add.ptr21.i = getelementptr i8, ptr %134, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %132) #7, !srcloc !147
  br label %if.end

if.end:                                           ; preds = %hisi_femac_set_uc_addr_filter.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_femac_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #7
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_assign_type, align 4
  %7 = and i8 %6, -2
  store i8 %7, ptr %addr_assign_type, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  %conv2.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %glb_base.i = getelementptr i8, ptr %dev, i32 2308
  %15 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %14) #7, !srcloc !147
  %arrayidx3.i = getelementptr i8, ptr %9, i32 5
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %18 to i32
  %arrayidx5.i = getelementptr i8, ptr %9, i32 4
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %20 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %shl7.i, %conv4.i
  %arrayidx9.i = getelementptr i8, ptr %9, i32 3
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %22 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or12.i = or i32 %or8.i, %shl11.i
  %arrayidx13.i = getelementptr i8, ptr %9, i32 2
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %24 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or12.i, %shl15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #7
  %26 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %glb_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_femac_rx_refill(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq1 = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 10
  %head = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %add.ptr88 = getelementptr i8, ptr %3, i32 876
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not89 = icmp eq i32 %5, 0
  br i1 %tobool.not89, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tail = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 10, i32 4
  %num = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 10, i32 2
  %ndev14 = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 8
  %dev = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 7
  %dma_phys = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 10, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.body.lr.ph
  %pos.090 = phi i32 [ %1, %while.body.lr.ph ], [ %rem, %if.end32.while.body_crit_edge ]
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %add = add i32 %pos.090, 1
  %sub = sub i32 %7, %add
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %sub3 = add i32 %9, -1
  %and4 = and i32 %sub3, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxq1, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %pos.090
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %13, null
  %14 = ptrtoint ptr %ndev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev14, align 8
  br i1 %tobool7.not, label %if.end13, label %if.then10, !prof !153

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.57, i32 noundef %pos.090, ptr noundef nonnull %13) #10
  br label %while.end

if.end13:                                         ; preds = %if.end
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %15, i32 noundef 1602, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end13.while.end_crit_edge, label %if.end26

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end26:                                         ; preds = %if.end13
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end26
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !153

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %21) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i68 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i68, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef -1) #7
  br label %if.then31

dma_map_single_attrs.exit:                        ; preds = %if.end26
  tail call void @debug_dma_map_single(ptr noundef %21, ptr noundef %add.ptr.i.i.i, i32 noundef 1600) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %29, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %28, i32 %shr.i
  %and.i = and i32 %29, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1600, i32 noundef 2, i32 noundef 0) #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then31_crit_edge, label %if.end32

dma_map_single_attrs.exit.if.then31_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %dma_map_single_attrs.exit.if.then31_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  br label %while.end

if.end32:                                         ; preds = %dma_map_single_attrs.exit
  %32 = ptrtoint ptr %dma_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_phys, align 4
  %arrayidx33 = getelementptr i32, ptr %33, i32 %pos.090
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call41.i, ptr %arrayidx33, align 4
  %35 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rxq1, align 4
  %arrayidx35 = getelementptr ptr, ptr %36, i32 %pos.090
  %37 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %arrayidx35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %add.ptr37 = getelementptr i8, ptr %40, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %38) #7, !srcloc !147
  %41 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num, align 4
  %rem = urem i32 %add, %42
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %44, i32 876
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  %46 = and i32 %45, 2
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %if.then31, %if.end13.while.end_crit_edge, %if.then10, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %pos.079 = phi i32 [ %pos.090, %if.then31 ], [ %pos.090, %if.then10 ], [ %1, %entry.while.end_crit_edge ], [ %rem, %if.end32.while.end_crit_edge ], [ %pos.090, %while.body.while.end_crit_edge ], [ %pos.090, %if.end13.while.end_crit_edge ]
  %47 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %pos.079, ptr %head, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_femac_irq_enable(ptr nocapture noundef readonly %priv, i32 noundef %irqs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %glb_base = getelementptr inbounds %struct.hisi_femac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glb_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !148
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %or = or i32 %3, %irqs
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %glb_base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #7, !srcloc !147
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_hisi_femac__349_970_hisi_femac_driver_init6, !1, !"__initcall__kmod_hisi_femac__349_970_hisi_femac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 970, i32 1}
!2 = !{ptr @__exitcall_hisi_femac_driver_exit, !1, !"__exitcall_hisi_femac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description350, !4, !"__UNIQUE_ID_description350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 972, i32 1}
!5 = !{ptr @__UNIQUE_ID_author351, !6, !"__UNIQUE_ID_author351", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 973, i32 1}
!7 = !{ptr @__UNIQUE_ID_file352, !8, !"__UNIQUE_ID_file352", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 974, i32 1}
!9 = !{ptr @__UNIQUE_ID_license353, !8, !"__UNIQUE_ID_license353", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias354, !11, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 975, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 959, i32 11}
!14 = !{ptr @hisi_femac_driver, !15, !"hisi_femac_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 957, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 802, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hisi_femac_drv_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hisi_femac_drv_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 809, i32 3}
!26 = !{ptr @hisi_femac_drv_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hisi_femac_drv_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 813, i32 46}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 820, i32 46}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 825, i32 8}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 835, i32 3}
!36 = !{ptr @hisi_femac_drv_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hisi_femac_drv_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 840, i32 26}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 847, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hisi_femac_drv_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hisi_femac_drv_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 872, i32 3}
!47 = !{ptr @hisi_femac_drv_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hisi_femac_drv_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 878, i32 3}
!51 = !{ptr @hisi_femac_drv_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hisi_femac_drv_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/phy.h", i32 211, i32 10}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/phy.h", i32 213, i32 10}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/phy.h", i32 215, i32 10}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/phy.h", i32 217, i32 10}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/phy.h", i32 219, i32 10}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/phy.h", i32 221, i32 10}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/phy.h", i32 223, i32 10}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/phy.h", i32 225, i32 10}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/phy.h", i32 227, i32 10}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/phy.h", i32 229, i32 10}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 231, i32 10}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 233, i32 10}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 235, i32 10}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/phy.h", i32 237, i32 10}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/phy.h", i32 239, i32 10}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/phy.h", i32 241, i32 10}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/phy.h", i32 243, i32 10}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/phy.h", i32 245, i32 10}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/phy.h", i32 247, i32 10}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/phy.h", i32 249, i32 10}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/phy.h", i32 251, i32 10}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/phy.h", i32 253, i32 10}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/phy.h", i32 255, i32 10}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/phy.h", i32 257, i32 10}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/phy.h", i32 259, i32 10}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/phy.h", i32 261, i32 10}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/phy.h", i32 263, i32 10}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/phy.h", i32 265, i32 10}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/phy.h", i32 267, i32 10}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/phy.h", i32 269, i32 10}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/phy.h", i32 271, i32 10}
!115 = !{ptr @hisi_femac_netdev_ops, !116, !"hisi_femac_netdev_ops", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 684, i32 36}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 223, i32 27}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 397, i32 27}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 416, i32 27}
!127 = !{ptr @hisi_femac_ethtools_ops, !128, !"hisi_femac_ethtools_ops", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 678, i32 33}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 165, i32 20}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 266, i32 20}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 276, i32 20}
!135 = !{ptr @hisi_femac_match, !136, !"hisi_femac_match", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/hisilicon/hisi_femac.c", i32 948, i32 34}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2156627007}
!147 = !{i64 6097848}
!148 = !{i64 6098266}
!149 = !{i64 2156624474}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i64 2156625701}
!152 = !{i64 2155829904}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2156629018}
!155 = !{i64 2156629621}
!156 = !{i64 2156630639}
!157 = !{i64 2156632782}
!158 = !{i64 2156633434}
!159 = !{i64 2156622472}
!160 = !{i64 2156622706}
!161 = !{i64 2156659081}
!162 = !{i64 2156660445}
!163 = !{i64 2156623425}
!164 = !{i64 2156623662}
!165 = !{i64 2156662744}
!166 = !{i64 2156663217}
!167 = !{i64 2156663915}
!168 = !{i64 2156664306}
!169 = !{i64 2156665008}
!170 = !{i64 2156665924}
!171 = !{i64 2156666344}
!172 = !{i64 2156666804}
!173 = !{i64 2156635159}
!174 = !{i64 2156636267}
!175 = !{i64 2156638942}
!176 = !{i64 2156639251}
!177 = !{i64 2156639741}
!178 = !{i64 2156637836}
!179 = !{i64 2156638244}
!180 = !{i64 2156641104}
!181 = !{i64 2156643231}
!182 = !{i64 2156644089}
!183 = !{i64 2156644513}
!184 = !{i64 2154880025, i64 2154880525, i64 2154880062, i64 2154880118, i64 2154880152, i64 2154880176, i64 2154880217, i64 2154880238, i64 2154880266, i64 2154880300}
!185 = !{i64 2154881369}
!186 = !{i64 2155828833}
!187 = !{i64 2156649189}
!188 = !{i64 2156649887}
!189 = !{i64 2156645377}
!190 = !{i64 2156645836}
!191 = !{i64 2156646353}
!192 = !{i64 2156647033}
!193 = !{i64 2156648102}
!194 = !{i64 2156653845}
!195 = !{i64 2156654543}
!196 = !{i64 2156658432}
!197 = !{i64 2156627724}
!198 = !{i64 2156628316}
