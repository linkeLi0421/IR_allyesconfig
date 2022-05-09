; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/davinci_emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/davinci_emac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.emac_platform_data = type { [6 x i8], i32, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cpdma_params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.emac_priv = type { i32, ptr, ptr, %struct.napi_struct, [6 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [64 x i32], i32, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_debug_level = internal constant [28 x i8] c"ti_davinci_emac.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug_level } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype350 = internal constant [41 x i8] c"ti_davinci_emac.parmtype=debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level351 = internal constant [75 x i8] c"ti_davinci_emac.parm=debug_level:DaVinci EMAC debug level (NETIF_MSG bits)\00", section ".modinfo", align 1
@__UNIQUE_ID_version352 = internal constant [28 x i8] c"ti_davinci_emac.version=6.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_davinci_emac\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_ti_davinci_emac__353_2081_davinci_emac_init7 = internal global ptr @davinci_emac_init, section ".initcall7.init", align 4
@davinci_emac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_emac_probe, ptr @davinci_emac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_emac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_emac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_emac_exit = internal global ptr @davinci_emac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file354 = internal constant [61 x i8] c"ti_davinci_emac.file=drivers/net/ethernet/ti/ti_davinci_emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [28 x i8] c"ti_davinci_emac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [78 x i8] c"ti_davinci_emac.author=DaVinci EMAC Maintainer: Anant Gole <anantgole@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [83 x i8] c"ti_davinci_emac.author=DaVinci EMAC Maintainer: Chaithrika U S <chaithrika@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [57 x i8] c"ti_davinci_emac.description=DaVinci EMAC Ethernet driver\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"davinci_emac\00", [19 x i8] zeroinitializer }, align 32
@davinci_emac_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-dm6467-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3517-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3517_emac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dm816_emac_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@davinci_emac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @davinci_emac_suspend, ptr @davinci_emac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1814, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get EMAC clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"davinci_emac_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/ti/davinci_emac.c\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr = internal global ptr @davinci_emac_probe._entry, section ".printk_index", align 4
@davinci_emac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.12 = internal global ptr @davinci_emac_probe._entry.10, section ".printk_index", align 4
@davinci_emac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error initializing DMA\0A\00", [40 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.15 = internal global ptr @davinci_emac_probe._entry.13, section ".printk_index", align 4
@davinci_emac_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1907, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing tx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.18 = internal global ptr @davinci_emac_probe._entry.16, section ".printk_index", align 4
@davinci_emac_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 1915, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing rx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.21 = internal global ptr @davinci_emac_probe._entry.19, section ".printk_index", align 4
@davinci_emac_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 1934, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"using random MAC addr: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.25 = internal global ptr @davinci_emac_probe._entry.22, section ".printk_index", align 4
@emac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @emac_dev_open, ptr @emac_dev_stop, ptr @emac_dev_xmit, ptr null, ptr null, ptr null, ptr @emac_dev_mcast_set, ptr @emac_dev_setmac_addr, ptr null, ptr null, ptr @emac_devioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emac_dev_tx_timeout, ptr null, ptr null, ptr null, ptr @emac_dev_getnetstats, ptr null, ptr null, ptr @emac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @emac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @emac_get_coalesce, ptr @emac_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 1946, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get_sync(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.28 = internal global ptr @davinci_emac_probe._entry.26, section ".printk_index", align 4
@davinci_emac_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 1954, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error in register_netdev\0A\00", [38 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.31 = internal global ptr @davinci_emac_probe._entry.29, section ".printk_index", align 4
@davinci_emac_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.6, i32 1964, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"DaVinci EMAC Probe found device (regs: %pa, irq: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@davinci_emac_probe._entry_ptr.35 = internal global ptr @davinci_emac_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,davinci-ctrl-reg-offset\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti,davinci-ctrl-mod-reg-offset\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,davinci-ctrl-ram-offset\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,davinci-ctrl-ram-size\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,davinci-rmii-en\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,davinci-no-bd-ram\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@emac_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 915, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed rx buffer alloc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emac_rx_handler\00", [16 x i8] zeroinitializer }, align 32
@emac_rx_handler._entry_ptr = internal global ptr @emac_rx_handler._entry, section ".printk_index", align 4
@emac_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.45, ptr @.str.6, i32 1429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emac_dev_open\00", [18 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr = internal global ptr @emac_dev_open._entry, section ".printk_index", align 4
@emac_dev_open._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 1464, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DaVinci EMAC: request_irq() failed\0A\00", [60 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.48 = internal global ptr @emac_dev_open._entry.46, section ".printk_index", align 4
@emac_dev_open._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 1474, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.50 = internal global ptr @emac_dev_open._entry.49, section ".printk_index", align 4
@emac_dev_open._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.6, i32 1503, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not connect to phy %pOF\0A\00", [33 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.53 = internal global ptr @emac_dev_open._entry.51, section ".printk_index", align 4
@mdio_bus_type = external dso_local global %struct.bus_type, align 4
@emac_dev_open._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.6, i32 1533, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not connect to phy %s\0A\00", [35 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.56 = internal global ptr @emac_dev_open._entry.54, section ".printk_index", align 4
@emac_dev_open._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.6, i32 1547, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no phy, defaulting to 100/full\0A\00", [32 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.59 = internal global ptr @emac_dev_open._entry.57, section ".printk_index", align 4
@emac_dev_open._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.45, ptr @.str.6, i32 1555, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DaVinci EMAC: Opened %s\0A\00", [39 x i8] zeroinitializer }, align 32
@emac_dev_open._entry_ptr.62 = internal global ptr @emac_dev_open._entry.60, section ".printk_index", align 4
@emac_setmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 1123, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DaVinci EMAC: Wrong addressing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emac_setmac\00", [20 x i8] zeroinitializer }, align 32
@emac_setmac._entry_ptr = internal global ptr @emac_setmac._entry, section ".printk_index", align 4
@emac_set_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Set coalesce to %d usecs.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emac_set_coalesce\00", [46 x i8] zeroinitializer }, align 32
@emac_set_coalesce._entry_ptr = internal global ptr @emac_set_coalesce._entry, section ".printk_index", align 4
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,davinci_mdio\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"davinci_mdio\00", [19 x i8] zeroinitializer }, align 32
@emac_dev_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 1628, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DaVinci EMAC: %s stopped\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emac_dev_stop\00", [18 x i8] zeroinitializer }, align 32
@emac_dev_stop._entry_ptr = internal global ptr @emac_dev_stop._entry, section ".printk_index", align 4
@emac_dev_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.6, i32 962, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DaVinci EMAC: No link to transmit\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emac_dev_xmit\00", [18 x i8] zeroinitializer }, align 32
@emac_dev_xmit._entry_ptr = internal global ptr @emac_dev_xmit._entry, section ".printk_index", align 4
@emac_dev_xmit._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.6, i32 969, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DaVinci EMAC: packet pad failed\00", [32 x i8] zeroinitializer }, align 32
@emac_dev_xmit._entry_ptr.75 = internal global ptr @emac_dev_xmit._entry.73, section ".printk_index", align 4
@emac_dev_xmit._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.6, i32 979, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DaVinci EMAC: desc submit failed\00", [63 x i8] zeroinitializer }, align 32
@emac_dev_xmit._entry_ptr.78 = internal global ptr @emac_dev_xmit._entry.76, section ".printk_index", align 4
@emac_add_mcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 727, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DaVinci EMAC: add_mcast: bad operation %d\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emac_add_mcast\00", [17 x i8] zeroinitializer }, align 32
@emac_add_mcast._entry_ptr = internal global ptr @emac_add_mcast._entry, section ".printk_index", align 4
@emac_hash_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.6, i32 625, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"DaVinci EMAC: emac_hash_add(): Invalid Hash %08x, should not be greater than %08x\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emac_hash_add\00", [18 x i8] zeroinitializer }, align 32
@emac_hash_add._entry_ptr = internal global ptr @emac_hash_add._entry, section ".printk_index", align 4
@emac_dev_setmac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 1156, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DaVinci EMAC: emac_dev_setmac_addr %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emac_dev_setmac_addr\00", [43 x i8] zeroinitializer }, align 32
@emac_dev_setmac_addr._entry_ptr = internal global ptr @emac_dev_setmac_addr._entry, section ".printk_index", align 4
@emac_dev_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.6, i32 1014, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DaVinci EMAC: xmit timeout, restarting TX\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emac_dev_tx_timeout\00", [44 x i8] zeroinitializer }, align 32
@emac_dev_tx_timeout._entry_ptr = internal global ptr @emac_dev_tx_timeout._entry, section ".printk_index", align 4
@emac_dev_getnetstats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.87, ptr @.str.6, i32 1653, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emac_dev_getnetstats\00", [43 x i8] zeroinitializer }, align 32
@emac_dev_getnetstats._entry_ptr = internal global ptr @emac_dev_getnetstats._entry, section ".printk_index", align 4
@emac_version_string = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TI DaVinci EMAC Linux v6.1\00", [37 x i8] zeroinitializer }, align 32
@emac_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.6, i32 1280, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DaVinci EMAC: Fatal Hardware Error\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac_poll\00", [22 x i8] zeroinitializer }, align 32
@emac_poll._entry_ptr = internal global ptr @emac_poll._entry, section ".printk_index", align 4
@emac_poll._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.6, i32 1292, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX Host error %s on ch=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@emac_poll._entry_ptr.92 = internal global ptr @emac_poll._entry.90, section ".printk_index", align 4
@emac_txhost_errcodes = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103], [32 x i8] zeroinitializer }, align 32
@emac_poll._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.6, i32 1302, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RX Host error %s on ch=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@emac_poll._entry_ptr.95 = internal global ptr @emac_poll._entry.93, section ".printk_index", align 4
@emac_rxhost_errcodes = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.96, ptr @.str.103, ptr @.str.104, ptr @.str.103, ptr @.str.100, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103, ptr @.str.103], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No error\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOP error\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Ownership bit not set in SOP buffer\00", [60 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Zero Next Buffer Descriptor Pointer Without EOP\00", [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Zero Buffer Pointer\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Zero Buffer Length\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Packet Length Error\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Ownership bit not set in input buffer\00", [58 x i8] zeroinitializer }, align 32
@davinci_emac_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.6, i32 2000, ptr @.str.34, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DaVinci EMAC: davinci_emac_remove()\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"davinci_emac_remove\00", [44 x i8] zeroinitializer }, align 32
@davinci_emac_remove._entry_ptr = internal global ptr @davinci_emac_remove._entry, section ".printk_index", align 4
@am3517_emac_data = internal constant { %struct.emac_platform_data, [52 x i8] } { %struct.emac_platform_data { [6 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 31588352, i32 0, ptr null, i8 0, i8 1, i8 0, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dm816_emac_data = internal constant { %struct.emac_platform_data, [52 x i8] } { %struct.emac_platform_data { [6 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0, i8 1, i8 0, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 63, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 88, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"davinci_emac_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2061, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2063, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"davinci_emac_of_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2052, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"davinci_emac_pm_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2038, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1814, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1832, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1836, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1899, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1907, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1915, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1933, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"emac_netdev_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1703, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 503, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1945, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1954, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1962, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1740, i32 27 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1743, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1746, i32 27 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1749, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1752, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1754, i32 47 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1756, i32 40 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 915, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1428, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1464, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1474, i32 6 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1502, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1532, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1547, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1555, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1123, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 491, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1399, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1401, i32 33 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1628, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 962, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 969, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 979, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 726, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 623, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1155, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1014, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1652, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c"emac_version_string\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 89, i32 19 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1280, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1291, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant [21 x i8] c"emac_txhost_errcodes\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 344, i32 14 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1301, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"emac_rxhost_errcodes\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 353, i32 14 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 345, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 345, i32 14 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 345, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 346, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 347, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 347, i32 25 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 347, i32 47 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 348, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 354, i32 26 }
@___asan_gen_.438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2000, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"am3517_emac_data\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2043, i32 40 }
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"dm816_emac_data\00", align 1
@___asan_gen_.451 = private constant [42 x i8] c"../drivers/net/ethernet/ti/davinci_emac.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 2048, i32 40 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_debug_level351, ptr @__UNIQUE_ID_debug_leveltype350, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__UNIQUE_ID_version352, ptr @__exitcall_davinci_emac_exit, ptr @__initcall__kmod_ti_davinci_emac__353_2081_davinci_emac_init7, ptr @__modver_attr, ptr @__param_debug_level, ptr @davinci_emac_exit, ptr @davinci_emac_probe._entry, ptr @davinci_emac_probe._entry.10, ptr @davinci_emac_probe._entry.13, ptr @davinci_emac_probe._entry.16, ptr @davinci_emac_probe._entry.19, ptr @davinci_emac_probe._entry.22, ptr @davinci_emac_probe._entry.26, ptr @davinci_emac_probe._entry.29, ptr @davinci_emac_probe._entry.32, ptr @davinci_emac_probe._entry_ptr, ptr @davinci_emac_probe._entry_ptr.12, ptr @davinci_emac_probe._entry_ptr.15, ptr @davinci_emac_probe._entry_ptr.18, ptr @davinci_emac_probe._entry_ptr.21, ptr @davinci_emac_probe._entry_ptr.25, ptr @davinci_emac_probe._entry_ptr.28, ptr @davinci_emac_probe._entry_ptr.31, ptr @davinci_emac_probe._entry_ptr.35, ptr @davinci_emac_remove._entry, ptr @davinci_emac_remove._entry_ptr, ptr @emac_add_mcast._entry, ptr @emac_add_mcast._entry_ptr, ptr @emac_dev_getnetstats._entry, ptr @emac_dev_getnetstats._entry_ptr, ptr @emac_dev_open._entry, ptr @emac_dev_open._entry.46, ptr @emac_dev_open._entry.49, ptr @emac_dev_open._entry.51, ptr @emac_dev_open._entry.54, ptr @emac_dev_open._entry.57, ptr @emac_dev_open._entry.60, ptr @emac_dev_open._entry_ptr, ptr @emac_dev_open._entry_ptr.48, ptr @emac_dev_open._entry_ptr.50, ptr @emac_dev_open._entry_ptr.53, ptr @emac_dev_open._entry_ptr.56, ptr @emac_dev_open._entry_ptr.59, ptr @emac_dev_open._entry_ptr.62, ptr @emac_dev_setmac_addr._entry, ptr @emac_dev_setmac_addr._entry_ptr, ptr @emac_dev_stop._entry, ptr @emac_dev_stop._entry_ptr, ptr @emac_dev_tx_timeout._entry, ptr @emac_dev_tx_timeout._entry_ptr, ptr @emac_dev_xmit._entry, ptr @emac_dev_xmit._entry.73, ptr @emac_dev_xmit._entry.76, ptr @emac_dev_xmit._entry_ptr, ptr @emac_dev_xmit._entry_ptr.75, ptr @emac_dev_xmit._entry_ptr.78, ptr @emac_hash_add._entry, ptr @emac_hash_add._entry_ptr, ptr @emac_poll._entry, ptr @emac_poll._entry.90, ptr @emac_poll._entry.93, ptr @emac_poll._entry_ptr, ptr @emac_poll._entry_ptr.92, ptr @emac_poll._entry_ptr.95, ptr @emac_rx_handler._entry, ptr @emac_rx_handler._entry_ptr, ptr @emac_set_coalesce._entry, ptr @emac_set_coalesce._entry_ptr, ptr @emac_setmac._entry, ptr @emac_setmac._entry_ptr, ptr @debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @davinci_emac_driver, ptr @.str.3, ptr @davinci_emac_of_match, ptr @davinci_emac_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @davinci_emac_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @emac_netdev_ops, ptr @ethtool_ops, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @emac_version_string, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @emac_txhost_errcodes, ptr @.str.94, ptr @emac_rxhost_errcodes, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @am3517_emac_data, ptr @dm816_emac_data], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_open._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_setmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_set_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_xmit._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_xmit._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_add_mcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_hash_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_setmac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dev_getnetstats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_version_string to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_poll._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_txhost_errcodes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_poll._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rxhost_errcodes to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_emac_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3517_emac_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816_emac_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_emac_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_emac_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_emac_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_emac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_emac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res = alloca ptr, align 4
  %dma_params = alloca %struct.cpdma_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #12
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !241
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %dma_params) #12
  %3 = call ptr @memset(ptr %dma_params, i32 255, i32 72)
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @clk_get_rate(ptr noundef %call) #12
  tail call void @devm_clk_put(ptr noundef %dev, ptr noundef %call) #12
  %call6 = tail call ptr @alloc_etherdev_mqs(i32 noundef 640, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call6, i32 2304
  %pdev10 = getelementptr i8, ptr %call6, i32 2312
  %5 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev10, align 8
  %ndev11 = getelementptr i8, ptr %call6, i32 2308
  %6 = ptrtoint ptr %ndev11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %ndev11, align 4
  %7 = load i32, ptr @debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp1.i = icmp ugt i32 %7, 31
  br i1 %cmp1.i, label %if.end8.netif_msg_init.exit_crit_edge, label %if.end.i

if.end8.netif_msg_init.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %notmask.i = shl nsw i32 -1, %7
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end8.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 32767, %if.end8.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %call6, i32 2888
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @davinci_emac_probe.__key, i16 noundef signext 3) #12
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %davinci_emac_of_get_pdata.exit, label %if.end.i317

if.end.i317:                                      ; preds = %netif_msg_init.exit
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #12
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i317.do.end22_crit_edge, label %if.end6.i

if.end.i317.do.end22_crit_edge:                   ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

if.end6.i:                                        ; preds = %if.end.i317
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %version.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %version.i, align 1
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end6.i.if.then10.i_crit_edge

if.end6.i.if.then10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end6.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %or.i.i.i = or i32 %15, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then10.i_crit_edge, label %is_valid_ether_addr.exit.i.if.end14.i_crit_edge

is_valid_ether_addr.exit.i.if.end14.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

is_valid_ether_addr.exit.i.if.then10.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

if.then10.i:                                      ; preds = %is_valid_ether_addr.exit.i.if.then10.i_crit_edge, %if.end6.i.if.then10.i_crit_edge
  %call13.i = tail call i32 @of_get_mac_address(ptr noundef %12, ptr noundef nonnull %call.i.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %is_valid_ether_addr.exit.i.if.end14.i_crit_edge
  %ctrl_reg_offset.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.36, ptr noundef %ctrl_reg_offset.i, i32 noundef 1, i32 noundef 0) #12
  %ctrl_mod_reg_offset.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i92.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef %ctrl_mod_reg_offset.i, i32 noundef 1, i32 noundef 0) #12
  %ctrl_ram_offset.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i93.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.38, ptr noundef %ctrl_ram_offset.i, i32 noundef 1, i32 noundef 0) #12
  %ctrl_ram_size.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 5
  %call.i.i94.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.39, ptr noundef %ctrl_ram_size.i, i32 noundef 1, i32 noundef 0) #12
  %rmii_en.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 7
  %call.i.i95.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef %rmii_en.i, i32 noundef 1, i32 noundef 0) #12
  %call.i96.i = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef null) #12
  %tobool.i.i = icmp ne ptr %call.i96.i, null
  %no_bd_ram.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 9
  %frombool.i = zext i1 %tobool.i.i to i8
  %19 = ptrtoint ptr %no_bd_ram.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %no_bd_ram.i, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #12
  %20 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i97.i = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #12
  %phy_node99.i = getelementptr i8, ptr %call6, i32 2884
  %21 = ptrtoint ptr %phy_node99.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %phy_node99.i, align 4
  br label %if.then24.i

of_parse_phandle.exit.i:                          ; preds = %if.end14.i
  %22 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #12
  %phy_node.i = getelementptr i8, ptr %call6, i32 2884
  %24 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %phy_node.i, align 4
  %tobool23.not.i = icmp eq ptr %23, null
  br i1 %tobool23.not.i, label %of_parse_phandle.exit.i.if.then24.i_crit_edge, label %of_parse_phandle.exit.i.if.end33.i_crit_edge

of_parse_phandle.exit.i.if.end33.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

of_parse_phandle.exit.i.if.then24.i_crit_edge:    ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.then24.i:                                      ; preds = %of_parse_phandle.exit.i.if.then24.i_crit_edge, %of_parse_phandle.exit.thread.i
  %phy_node101.i = phi ptr [ %phy_node99.i, %of_parse_phandle.exit.thread.i ], [ %phy_node.i, %of_parse_phandle.exit.i.if.then24.i_crit_edge ]
  %call25.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %12) #12
  br i1 %call25.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  %phy_id.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %phy_id.i, align 4
  br label %if.end33.i

if.else.i:                                        ; preds = %if.then24.i
  %call27.i = call i32 @of_phy_register_fixed_link(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27.i)
  %cmp.i318 = icmp sgt i32 %call27.i, -1
  br i1 %cmp.i318, label %if.then28.i, label %if.else.i.if.end33.i_crit_edge

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i = call ptr @of_node_get(ptr noundef %12) #12
  %26 = ptrtoint ptr %phy_node101.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call29.i, ptr %phy_node101.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.else.i.if.end33.i_crit_edge, %if.then26.i, %of_parse_phandle.exit.i.if.end33.i_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data.i, align 8
  %tobool35.not.i = icmp eq ptr %28, null
  br i1 %tobool35.not.i, label %if.end33.i.if.end39.i_crit_edge, label %if.then36.i

if.end33.i.if.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %interrupt_enable.i = getelementptr inbounds %struct.emac_platform_data, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %interrupt_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_enable.i, align 4
  %interrupt_enable37.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %interrupt_enable37.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %interrupt_enable37.i, align 4
  %interrupt_disable.i = getelementptr inbounds %struct.emac_platform_data, ptr %28, i32 0, i32 11
  %32 = ptrtoint ptr %interrupt_disable.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interrupt_disable.i, align 4
  %interrupt_disable38.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %interrupt_disable38.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %interrupt_disable38.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end39.i_crit_edge
  %call41.i = call ptr @of_match_device(ptr noundef nonnull @davinci_emac_of_match, ptr noundef %dev) #12
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %if.end39.i.if.end24_crit_edge, label %land.lhs.true.i

if.end39.i.if.end24_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true.i:                                  ; preds = %if.end39.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call41.i, i32 0, i32 3
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %tobool43.not.i = icmp eq ptr %36, null
  br i1 %tobool43.not.i, label %land.lhs.true.i.if.end24_crit_edge, label %if.then44.i

land.lhs.true.i.if.end24_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then44.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %version46.i = getelementptr inbounds %struct.emac_platform_data, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %version46.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %version46.i, align 1
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %version.i, align 1
  %hw_ram_addr.i = getelementptr inbounds %struct.emac_platform_data, ptr %36, i32 0, i32 4
  %40 = ptrtoint ptr %hw_ram_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_ram_addr.i, align 4
  %hw_ram_addr48.i = getelementptr inbounds %struct.emac_platform_data, ptr %call.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %hw_ram_addr48.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %hw_ram_addr48.i, align 4
  br label %if.end24

davinci_emac_of_get_pdata.exit:                   ; preds = %netif_msg_init.exit
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %43 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_data.i.i, align 8
  %tobool18.not = icmp eq ptr %44, null
  br i1 %tobool18.not, label %davinci_emac_of_get_pdata.exit.do.end22_crit_edge, label %davinci_emac_of_get_pdata.exit.if.end24_crit_edge

davinci_emac_of_get_pdata.exit.if.end24_crit_edge: ; preds = %davinci_emac_of_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

davinci_emac_of_get_pdata.exit.do.end22_crit_edge: ; preds = %davinci_emac_of_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.end22:                                         ; preds = %davinci_emac_of_get_pdata.exit.do.end22_crit_edge, %if.end.i317.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #15
  br label %err_free_netdev

if.end24:                                         ; preds = %davinci_emac_of_get_pdata.exit.if.end24_crit_edge, %if.then44.i, %land.lhs.true.i.if.end24_crit_edge, %if.end39.i.if.end24_crit_edge
  %retval.0.i319334 = phi ptr [ %44, %davinci_emac_of_get_pdata.exit.if.end24_crit_edge ], [ %call.i.i, %if.then44.i ], [ %call.i.i, %land.lhs.true.i.if.end24_crit_edge ], [ %call.i.i, %if.end39.i.if.end24_crit_edge ]
  %mac_addr = getelementptr i8, ptr %call6, i32 2544
  %45 = call ptr @memcpy(ptr %mac_addr, ptr %retval.0.i319334, i32 6)
  %phy_id = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 6
  %46 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_id, align 4
  %phy_id27 = getelementptr i8, ptr %call6, i32 2880
  %48 = ptrtoint ptr %phy_id27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %phy_id27, align 8
  %rmii_en = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 7
  %49 = ptrtoint ptr %rmii_en to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %rmii_en, align 4
  %rmii_en28 = getelementptr i8, ptr %call6, i32 2608
  %51 = ptrtoint ptr %rmii_en28 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %rmii_en28, align 8
  %version = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 8
  %52 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %version, align 1
  %version29 = getelementptr i8, ptr %call6, i32 2609
  %54 = ptrtoint ptr %version29 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %version29, align 1
  %interrupt_enable = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 10
  %55 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %interrupt_enable, align 4
  %int_enable = getelementptr i8, ptr %call6, i32 2932
  %57 = ptrtoint ptr %int_enable to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %int_enable, align 4
  %interrupt_disable = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 11
  %58 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %interrupt_disable, align 4
  %int_disable = getelementptr i8, ptr %call6, i32 2936
  %60 = ptrtoint ptr %int_disable to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %int_disable, align 8
  %coal_intvl = getelementptr i8, ptr %call6, i32 2600
  %61 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %coal_intvl, align 8
  %div = udiv i32 %call4, 1000000
  %bus_freq_mhz = getelementptr i8, ptr %call6, i32 2604
  %62 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div, ptr %bus_freq_mhz, align 4
  %call30 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #12
  %remap_addr = getelementptr i8, ptr %call6, i32 2552
  %63 = ptrtoint ptr %remap_addr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call30, ptr %remap_addr, align 8
  %cmp.i320 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %call30 to i32
  br label %no_pdata

if.end36:                                         ; preds = %if.end24
  %65 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %res, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %ctrl_reg_offset = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 1
  %69 = ptrtoint ptr %ctrl_reg_offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctrl_reg_offset, align 4
  %add = add i32 %70, %68
  %emac_base_phys = getelementptr i8, ptr %call6, i32 2556
  %71 = ptrtoint ptr %emac_base_phys to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %emac_base_phys, align 4
  %call37 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call41 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call37) #12
  %ctrl_base = getelementptr i8, ptr %call6, i32 2564
  %72 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call41, ptr %ctrl_base, align 4
  %cmp.i321 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %if.then44, label %if.then39.if.end50_crit_edge

if.then39.if.end50_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %call41 to i32
  br label %no_pdata

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %remap_addr, align 8
  %ctrl_mod_reg_offset = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 2
  %76 = ptrtoint ptr %ctrl_mod_reg_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ctrl_mod_reg_offset, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 %77
  %ctrl_base49 = getelementptr i8, ptr %call6, i32 2564
  %78 = ptrtoint ptr %ctrl_base49 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr, ptr %ctrl_base49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then39.if.end50_crit_edge
  %79 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %remap_addr, align 8
  %81 = ptrtoint ptr %ctrl_reg_offset to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ctrl_reg_offset, align 4
  %add.ptr53 = getelementptr i8, ptr %80, i32 %82
  %emac_base = getelementptr i8, ptr %call6, i32 2560
  %83 = ptrtoint ptr %emac_base to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr53, ptr %emac_base, align 8
  %84 = ptrtoint ptr %80 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 5
  %85 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %base_addr, align 32
  %hw_ram_addr55 = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 4
  %86 = ptrtoint ptr %hw_ram_addr55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hw_ram_addr55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool56.not = icmp eq i32 %87, 0
  br i1 %tobool56.not, label %if.then57, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %res, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %ctrl_ram_offset = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 3
  %92 = ptrtoint ptr %ctrl_ram_offset to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctrl_ram_offset, align 4
  %add59 = add i32 %93, %91
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end50.if.end60_crit_edge
  %hw_ram_addr.0 = phi i32 [ %87, %if.end50.if.end60_crit_edge ], [ %add59, %if.then57 ]
  %94 = getelementptr inbounds i8, ptr %dma_params, i32 36
  %95 = call ptr @memset(ptr %94, i32 0, i32 36)
  %96 = ptrtoint ptr %dma_params to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %dev, ptr %dma_params, align 4
  %97 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %emac_base, align 8
  %dmaregs = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 1
  %99 = ptrtoint ptr %dmaregs to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %dmaregs, align 4
  %add.ptr65 = getelementptr i8, ptr %98, i32 288
  %rxthresh = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 6
  %100 = ptrtoint ptr %rxthresh to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr65, ptr %rxthresh, align 4
  %add.ptr67 = getelementptr i8, ptr %98, i32 320
  %rxfree = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 7
  %101 = ptrtoint ptr %rxfree to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %add.ptr67, ptr %rxfree, align 4
  %102 = load ptr, ptr %emac_base, align 8
  %add.ptr69 = getelementptr i8, ptr %102, i32 1536
  %txhdp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 2
  %103 = ptrtoint ptr %txhdp to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %add.ptr69, ptr %txhdp, align 4
  %add.ptr71 = getelementptr i8, ptr %102, i32 1568
  %rxhdp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 3
  %104 = ptrtoint ptr %rxhdp to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr71, ptr %rxhdp, align 4
  %105 = load ptr, ptr %emac_base, align 8
  %add.ptr73 = getelementptr i8, ptr %105, i32 1600
  %txcp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 4
  %106 = ptrtoint ptr %txcp to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %add.ptr73, ptr %txcp, align 4
  %add.ptr75 = getelementptr i8, ptr %105, i32 1632
  %rxcp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 5
  %107 = ptrtoint ptr %rxcp to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr75, ptr %rxcp, align 4
  %num_chan = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 8
  %108 = ptrtoint ptr %num_chan to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 8, ptr %num_chan, align 4
  %min_packet_size = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 10
  %109 = ptrtoint ptr %min_packet_size to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 60, ptr %min_packet_size, align 4
  %desc_hw_addr = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 12
  %110 = ptrtoint ptr %desc_hw_addr to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %hw_ram_addr.0, ptr %desc_hw_addr, align 4
  %ctrl_ram_size = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 5
  %111 = ptrtoint ptr %ctrl_ram_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ctrl_ram_size, align 4
  %desc_mem_size = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 13
  %113 = ptrtoint ptr %desc_mem_size to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %desc_mem_size, align 4
  %desc_align = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 14
  %114 = ptrtoint ptr %desc_align to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 16, ptr %desc_align, align 4
  %no_bd_ram = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 9
  %115 = ptrtoint ptr %no_bd_ram to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %no_bd_ram, align 2, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool76.not = icmp eq i8 %116, 0
  br i1 %tobool76.not, label %cond.false, label %if.end60.cond.end_crit_edge

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %res, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %ctrl_ram_offset78 = getelementptr inbounds %struct.emac_platform_data, ptr %retval.0.i319334, i32 0, i32 3
  %121 = ptrtoint ptr %ctrl_ram_offset78 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ctrl_ram_offset78, align 4
  %add79 = add i32 %122, %120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %cond = phi i32 [ %add79, %cond.false ], [ 0, %if.end60.cond.end_crit_edge ]
  %desc_mem_phys = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 11
  %123 = ptrtoint ptr %desc_mem_phys to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %cond, ptr %desc_mem_phys, align 4
  %call80 = call ptr @cpdma_ctlr_create(ptr noundef nonnull %dma_params) #12
  %dma = getelementptr i8, ptr %call6, i32 2568
  %124 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call80, ptr %dma, align 8
  %tobool82.not = icmp eq ptr %call80, null
  br i1 %tobool82.not, label %do.end86, label %if.end88

do.end86:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #15
  br label %no_pdata

if.end88:                                         ; preds = %cond.end
  %call90 = call ptr @cpdma_chan_create(ptr noundef nonnull %call80, i32 noundef 0, ptr noundef nonnull @emac_tx_handler, i32 noundef 0) #12
  %txchan = getelementptr i8, ptr %call6, i32 2572
  %125 = ptrtoint ptr %txchan to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call90, ptr %txchan, align 4
  %cmp.i322 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %do.end96, label %if.end100

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  %126 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %txchan, align 4
  %128 = ptrtoint ptr %127 to i32
  br label %err_free_dma

if.end100:                                        ; preds = %if.end88
  %129 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dma, align 8
  %call102 = call ptr @cpdma_chan_create(ptr noundef %130, i32 noundef 0, ptr noundef nonnull @emac_rx_handler, i32 noundef 1) #12
  %rxchan = getelementptr i8, ptr %call6, i32 2576
  %131 = ptrtoint ptr %rxchan to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call102, ptr %rxchan, align 8
  %cmp.i323 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %do.end108, label %if.end112

do.end108:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #15
  %132 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rxchan, align 8
  %134 = ptrtoint ptr %133 to i32
  br label %err_free_txchan

if.end112:                                        ; preds = %if.end100
  %call113 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp = icmp slt i32 %call113, 0
  br i1 %cmp, label %if.end112.err_free_rxchan_crit_edge, label %if.end115

if.end112.err_free_rxchan_crit_edge:              ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_rxchan

if.end115:                                        ; preds = %if.end112
  %irq = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 64
  %135 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call113, ptr %irq, align 4
  %136 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %of_node, align 8
  %tobool.not.i325 = icmp eq ptr %137, null
  br i1 %tobool.not.i325, label %if.end115.if.end125_crit_edge, label %davinci_emac_try_get_mac.exit

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

davinci_emac_try_get_mac.exit:                    ; preds = %if.end115
  %cond117 = zext i1 %tobool38.not to i32
  %call.i = call i32 @ti_cm_get_macid(ptr noundef %dev, i32 noundef %cond117, ptr noundef %mac_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool121.not = icmp eq i32 %call.i, 0
  br i1 %tobool121.not, label %if.then122, label %davinci_emac_try_get_mac.exit.if.end125_crit_edge

davinci_emac_try_get_mac.exit.if.end125_crit_edge: ; preds = %davinci_emac_try_get_mac.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then122:                                       ; preds = %davinci_emac_try_get_mac.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dev_addr_mod(ptr noundef nonnull %call6, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #12
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %davinci_emac_try_get_mac.exit.if.end125_crit_edge, %if.end115.if.end125_crit_edge
  %138 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mac_addr, align 4
  %140 = and i32 %139, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.not.i = icmp eq i32 %140, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end125.if.then129_crit_edge

if.end125.if.then129_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

is_valid_ether_addr.exit:                         ; preds = %if.end125
  %add.ptr.i.i = getelementptr i8, ptr %call6, i32 2548
  %141 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %142 to i32
  %or.i.i = or i32 %139, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then129_crit_edge, label %is_valid_ether_addr.exit.if.end138_crit_edge

is_valid_ether_addr.exit.if.end138_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

is_valid_ether_addr.exit.if.then129_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then129

if.then129:                                       ; preds = %is_valid_ether_addr.exit.if.then129_crit_edge, %if.end125.if.then129_crit_edge
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call6)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 86
  %143 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 56
  %145 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %146 to i32
  %147 = call ptr @memcpy(ptr %mac_addr, ptr %144, i32 %conv)
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %mac_addr) #15
  br label %if.end138

if.end138:                                        ; preds = %if.then129, %is_valid_ether_addr.exit.if.end138_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 16
  %148 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @emac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 44
  %149 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call6, i32 2320
  call void @netif_napi_add(ptr noundef nonnull %call6, ptr noundef %napi, ptr noundef nonnull @emac_poll, i32 noundef 64) #12
  call void @pm_runtime_enable(ptr noundef %dev) #12
  %call.i329 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %cmp142 = icmp slt i32 %call.i329, 0
  br i1 %cmp142, label %if.then144, label %if.end150

if.then144:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5, i32 noundef %call.i329) #15
  br label %err_napi_del

if.end150:                                        ; preds = %if.end138
  %parent = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 133, i32 1
  %150 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %dev, ptr %parent, align 8
  %call153 = call i32 @register_netdev(ptr noundef nonnull %call6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end162, label %do.end158

do.end158:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  %call.i330 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  br label %err_napi_del

if.end162:                                        ; preds = %if.end150
  %151 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool164.not = icmp eq i32 %and, 0
  br i1 %tobool164.not, label %if.end162.if.end172_crit_edge, label %do.end168

if.end162.if.end172_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

do.end168:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %emac_base_phys, i32 noundef %154) #15
  br label %if.end172

if.end172:                                        ; preds = %do.end168, %if.end162.if.end172_crit_edge
  %call.i331 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  br label %cleanup

err_napi_del:                                     ; preds = %do.end158, %if.then144
  %rc.0 = phi i32 [ %call.i329, %if.then144 ], [ -19, %do.end158 ]
  call void @__netif_napi_del(ptr noundef %napi) #12
  call void @synchronize_net() #12
  br label %err_free_rxchan

err_free_rxchan:                                  ; preds = %err_napi_del, %if.end112.err_free_rxchan_crit_edge
  %rc.1 = phi i32 [ %call113, %if.end112.err_free_rxchan_crit_edge ], [ %rc.0, %err_napi_del ]
  %155 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rxchan, align 8
  %call177 = call i32 @cpdma_chan_destroy(ptr noundef %156) #12
  br label %err_free_txchan

err_free_txchan:                                  ; preds = %err_free_rxchan, %do.end108
  %rc.2 = phi i32 [ %134, %do.end108 ], [ %rc.1, %err_free_rxchan ]
  %157 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %txchan, align 4
  %call179 = call i32 @cpdma_chan_destroy(ptr noundef %158) #12
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_txchan, %do.end96
  %rc.3 = phi i32 [ %128, %do.end96 ], [ %rc.2, %err_free_txchan ]
  %159 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dma, align 8
  %call181 = call i32 @cpdma_ctlr_destroy(ptr noundef %160) #12
  br label %no_pdata

no_pdata:                                         ; preds = %err_free_dma, %do.end86, %if.then44, %if.then33
  %rc.4 = phi i32 [ %64, %if.then33 ], [ %73, %if.then44 ], [ %rc.3, %err_free_dma ], [ -12, %do.end86 ]
  %call182 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %1) #12
  br i1 %call182, label %if.then183, label %no_pdata.if.end184_crit_edge

no_pdata.if.end184_crit_edge:                     ; preds = %no_pdata
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then183:                                       ; preds = %no_pdata
  call void @__sanitizer_cov_trace_pc() #14
  call void @of_phy_deregister_fixed_link(ptr noundef %1) #12
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %no_pdata.if.end184_crit_edge
  %phy_node = getelementptr i8, ptr %call6, i32 2884
  %161 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %162) #12
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %if.end184, %do.end22
  %rc.5 = phi i32 [ %rc.4, %if.end184 ], [ -19, %do.end22 ]
  call void @free_netdev(ptr noundef nonnull %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free_netdev, %if.end172, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %rc.5, %err_free_netdev ], [ 0, %if.end172 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %dma_params) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_emac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %dev2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev2, ptr noundef nonnull @.str.105) #15
  %txchan = getelementptr i8, ptr %1, i32 2572
  %4 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txchan, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @cpdma_chan_destroy(ptr noundef nonnull %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxchan = getelementptr i8, ptr %1, i32 2576
  %6 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxchan, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @cpdma_chan_destroy(ptr noundef nonnull %7) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %dma = getelementptr i8, ptr %1, i32 2568
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 8
  %call10 = tail call i32 @cpdma_ctlr_destroy(ptr noundef %9) #12
  tail call void @unregister_netdev(ptr noundef %1) #12
  %phy_node = getelementptr i8, ptr %1, i32 2884
  %10 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %11) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %call12 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %3) #12
  br i1 %call12, label %if.then13, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @of_phy_deregister_fixed_link(ptr noundef %3) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  tail call void @free_netdev(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_ctlr_create(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_tx_handler(ptr noundef %token, i32 noundef %len, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %token, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !243

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %10, %len
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %token, i32 noundef 1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_rx_handler(ptr noundef %token, i32 noundef %len, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %token, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 2304
  %dev = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end, !prof !244

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef %token, i32 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp slt i32 %status, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %5 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %recycle

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @skb_put(ptr noundef %token, i32 noundef %len) #12
  %call7 = tail call zeroext i16 @eth_type_trans(ptr noundef %token, ptr noundef %2) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %token, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call7, ptr %protocol, align 8
  %call8 = tail call i32 @netif_receive_skb(ptr noundef %token) #12
  %stats9 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 2
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %9, %len
  store i32 %add, ptr %rx_bytes, align 8
  %10 = ptrtoint ptr %stats9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats9, align 8
  %inc11 = add i32 %11, 1
  store i32 %inc11, ptr %stats9, align 8
  %ndev.i = getelementptr i8, ptr %2, i32 2308
  %12 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev.i, align 4
  %rx_buf_size.i = getelementptr i8, ptr %2, i32 2592
  %14 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buf_size.i, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %13, i32 noundef %15, i32 noundef 2592) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then14, label %emac_rx_alloc.exit, !prof !244

emac_rx_alloc.exit:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %recycle

if.then14:                                        ; preds = %if.end5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 878, i32 noundef 9, ptr noundef null) #12
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %land.lhs.true

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then14
  %call16 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #15
  br label %cleanup

recycle:                                          ; preds = %emac_rx_alloc.exit, %if.then4
  %skb.0 = phi ptr [ %token, %if.then4 ], [ %call.i.i, %emac_rx_alloc.exit ]
  %rxchan = getelementptr i8, ptr %2, i32 2576
  %22 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxchan, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %recycle.skb_tailroom.exit_crit_edge

recycle.skb_tailroom.exit_crit_edge:              ; preds = %recycle
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %recycle
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %recycle.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %recycle.skb_tailroom.exit_crit_edge ]
  %call22 = tail call i32 @cpdma_chan_submit(ptr noundef %23, ptr noundef %skb.0, ptr noundef %25, i32 noundef %cond.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -12
  br i1 %cmp23, label %if.end45.thread, label %if.end45, !prof !244

if.end45.thread:                                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 923, i32 noundef 9, ptr noundef null) #12
  br label %if.then59

if.end45:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp52 = icmp slt i32 %call22, 0
  br i1 %cmp52, label %if.end45.if.then59_crit_edge, label %if.end45.cleanup_crit_edge, !prof !244

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45.if.then59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59

if.then59:                                        ; preds = %if.end45.if.then59_crit_edge, %if.end45.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end45.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #12
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %ndev1 = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %emac_base = getelementptr i8, ptr %napi, i32 240
  %2 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emac_base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 144
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !245
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %version = getelementptr i8, ptr %napi, i32 289
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  %spec.store.select = select i1 %cmp, i32 65536, i32 1
  %and = and i32 %spec.store.select, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then4

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %txchan = getelementptr i8, ptr %napi, i32 252
  %8 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txchan, align 4
  %call5 = tail call i32 @cpdma_chan_process(ptr noundef %9, i32 noundef 32) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp9 = icmp eq i8 %11, 1
  %spec.store.select71 = select i1 %cmp9, i32 1, i32 256
  %and13 = and i32 %spec.store.select71, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end6.if.end17_crit_edge, label %if.then15

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %rxchan = getelementptr i8, ptr %napi, i32 256
  %12 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxchan, align 8
  %call16 = tail call i32 @cpdma_chan_process(ptr noundef %13, i32 noundef %budget) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end6.if.end17_crit_edge
  %num_rx_pkts.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.end6.if.end17_crit_edge ]
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp20 = icmp eq i8 %15, 1
  %spec.store.select72 = select i1 %cmp20, i32 67108864, i32 131072
  %and24 = and i32 %spec.store.select72, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then28, !prof !243

if.then28:                                        ; preds = %if.end17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @napi_disable(ptr noundef %napi) #12
  %18 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emac_base, align 8
  %add.ptr31 = getelementptr i8, ptr %19, i32 356
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #12, !srcloc !245
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %and33 = lshr i32 %21, 20
  %shr = and i32 %and33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool34.not = icmp eq i32 %shr, 0
  br i1 %tobool34.not, label %if.then28.if.end46_crit_edge, label %if.then35

if.then28.if.end46_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then35:                                        ; preds = %if.then28
  %call38 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then35.if.end46_crit_edge, label %do.end43

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %and36 = lshr i32 %21, 16
  %shr37 = and i32 %and36, 7
  %arrayidx = getelementptr [16 x ptr], ptr @emac_txhost_errcodes, i32 0, i32 %shr
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef %23, i32 noundef %shr37) #15
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.then35.if.end46_crit_edge, %if.then28.if.end46_crit_edge
  %and47 = lshr i32 %21, 12
  %shr48 = and i32 %and47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr48)
  %tobool49.not = icmp eq i32 %shr48, 0
  br i1 %tobool49.not, label %if.end46.if.end70_crit_edge, label %if.then50

if.end46.if.end70_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then50:                                        ; preds = %if.end46
  %and51 = lshr i32 %21, 8
  %shr52 = and i32 %and51, 7
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 8
  %and53 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then50.if.end70_crit_edge, label %land.lhs.true

if.then50.if.end70_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true:                                    ; preds = %if.then50
  %call55 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.if.end70_crit_edge, label %do.end60

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.end60:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx61 = getelementptr [16 x ptr], ptr @emac_rxhost_errcodes, i32 0, i32 %shr48
  %26 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, ptr noundef %27, i32 noundef %shr52) #15
  br label %if.end70

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %num_rx_pkts.0, i32 %budget)
  %cmp65 = icmp ult i32 %num_rx_pkts.0, %budget
  br i1 %cmp65, label %if.then67, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then67:                                        ; preds = %if.else
  %call68 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %num_rx_pkts.0) #12
  %28 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i = icmp eq i8 %29, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then67
  %int_enable.i = getelementptr i8, ptr %napi, i32 612
  %30 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %int_enable.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %31() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %ctrl_base.i = getelementptr i8, ptr %napi, i32 244
  %32 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #12, !srcloc !248
  %34 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -16777216) #12, !srcloc !248
  br label %if.end70

if.else.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_base6.i = getelementptr i8, ptr %napi, i32 244
  %36 = ptrtoint ptr %ctrl_base6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl_base6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 16777216) #12, !srcloc !248
  br label %if.end70

if.end70:                                         ; preds = %if.else.i, %if.end.i, %if.else.if.end70_crit_edge, %do.end60, %land.lhs.true.if.end70_crit_edge, %if.then50.if.end70_crit_edge, %if.end46.if.end70_crit_edge
  ret i32 %num_rx_pkts.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #12, !srcloc !250
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !251
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_cm_get_macid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_dev_open(ptr noundef %ndev) #2 align 64 {
entry:
  %coal = alloca %struct.ethtool_coalesce, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %pdev = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !250
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !251
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.45, i32 noundef %call.i) #15
  br label %cleanup210

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %ndev) #12
  %mac_addr = getelementptr i8, ptr %ndev, i32 2544
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #12
  %rx_buf_size = getelementptr i8, ptr %ndev, i32 2592
  %7 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1524, ptr %rx_buf_size, align 8
  %mac_hash1 = getelementptr i8, ptr %ndev, i32 2612
  %8 = ptrtoint ptr %mac_hash1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mac_hash1, align 4
  %mac_hash2 = getelementptr i8, ptr %ndev, i32 2616
  %9 = ptrtoint ptr %mac_hash2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %mac_hash2, align 8
  %emac_base = getelementptr i8, ptr %ndev, i32 2560
  %10 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !248
  %12 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %emac_base, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #12, !srcloc !248
  %ndev.i = getelementptr i8, ptr %ndev, i32 2308
  %rxchan = getelementptr i8, ptr %ndev, i32 2576
  br label %for.body

for.cond:                                         ; preds = %skb_tailroom.exit
  %inc = add nuw nsw i32 %i.0380, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.0380 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %14 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i, align 4
  %16 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_size, align 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %15, i32 noundef %17, i32 noundef 2592) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.for.end.sink.split_crit_edge, label %if.end12, !prof !244

for.body.for.end.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

if.end12:                                         ; preds = %for.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %22 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxchan, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end12.skb_tailroom.exit_crit_edge

if.end12.skb_tailroom.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end12.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end12.skb_tailroom.exit_crit_edge ]
  %call14 = tail call i32 @cpdma_chan_idle_submit(ptr noundef %23, ptr noundef nonnull %call.i.i, ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %skb_tailroom.exit.for.end.sink.split_crit_edge, label %for.cond, !prof !244

skb_tailroom.exit.for.end.sink.split_crit_edge:   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %skb_tailroom.exit.for.end.sink.split_crit_edge, %for.body.for.end.sink.split_crit_edge
  %.sink = phi i32 [ 878, %for.body.for.end.sink.split_crit_edge ], [ 1452, %skb_tailroom.exit.for.end.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #12
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.cond.for.end_crit_edge
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %tobool.not.i331 = icmp eq ptr %dev44, null
  br i1 %tobool.not.i331, label %for.end.while.cond63.preheader_crit_edge, label %dev_of_node.exit

for.end.while.cond63.preheader_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond63.preheader

dev_of_node.exit:                                 ; preds = %for.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %dev_of_node.exit.while.cond63.preheader_crit_edge, label %while.cond.preheader

dev_of_node.exit.while.cond63.preheader_crit_edge: ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond63.preheader

while.cond.preheader:                             ; preds = %dev_of_node.exit
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 8
  %call49381 = tail call i32 @platform_get_irq_optional(ptr noundef %35, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call49381)
  %cmp50.not382 = icmp eq i32 %call49381, -6
  br i1 %cmp50.not382, label %while.cond.preheader.if.end86_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end86_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

while.cond63.preheader:                           ; preds = %dev_of_node.exit.while.cond63.preheader_crit_edge, %for.end.while.cond63.preheader_crit_edge
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call65388 = tail call ptr @platform_get_resource(ptr noundef %37, i32 noundef 1024, i32 noundef 0) #12
  %tobool66.not389 = icmp eq ptr %call65388, null
  br i1 %tobool66.not389, label %while.cond63.preheader.while.end84_crit_edge, label %while.cond63.preheader.while.body67_crit_edge

while.cond63.preheader.while.body67_crit_edge:    ; preds = %while.cond63.preheader
  br label %while.body67

while.cond63.preheader.while.end84_crit_edge:     ; preds = %while.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end84

while.body:                                       ; preds = %if.end61.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call49384 = phi i32 [ %call49, %if.end61.while.body_crit_edge ], [ %call49381, %while.cond.preheader.while.body_crit_edge ]
  %res_num.0383 = phi i32 [ %inc62, %if.end61.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49384)
  %cmp51 = icmp slt i32 %call49384, 0
  br i1 %cmp51, label %while.body.rollback_crit_edge, label %if.end53

while.body.rollback_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rollback

if.end53:                                         ; preds = %while.body
  %call.i332 = tail call i32 @request_threaded_irq(i32 noundef %call49384, ptr noundef nonnull @emac_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %tobool56.not = icmp eq i32 %call.i332, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #15
  br label %rollback

if.end61:                                         ; preds = %if.end53
  %inc62 = add i32 %res_num.0383, 1
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call49 = tail call i32 @platform_get_irq_optional(ptr noundef %39, i32 noundef %inc62) #12
  %cmp50.not = icmp eq i32 %call49, -6
  br i1 %cmp50.not, label %if.end61.if.end86_crit_edge, label %if.end61.while.body_crit_edge

if.end61.while.body_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end61.if.end86_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

while.body67:                                     ; preds = %for.end82.while.body67_crit_edge, %while.cond63.preheader.while.body67_crit_edge
  %call65392 = phi ptr [ %call65, %for.end82.while.body67_crit_edge ], [ %call65388, %while.cond63.preheader.while.body67_crit_edge ]
  %res_num.1390 = phi i32 [ %inc83, %for.end82.while.body67_crit_edge ], [ 0, %while.cond63.preheader.while.body67_crit_edge ]
  %40 = ptrtoint ptr %call65392 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call65392, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call65392, i32 0, i32 1
  %42 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp69.not385 = icmp ugt i32 %41, %43
  br i1 %cmp69.not385, label %while.body67.for.end82_crit_edge, label %while.body67.for.body70_crit_edge

while.body67.for.body70_crit_edge:                ; preds = %while.body67
  br label %for.body70

while.body67.for.end82_crit_edge:                 ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.body70:                                       ; preds = %for.inc80.for.body70_crit_edge, %while.body67.for.body70_crit_edge
  %irq_num.1386 = phi i32 [ %inc81, %for.inc80.for.body70_crit_edge ], [ %41, %while.body67.for.body70_crit_edge ]
  %call.i333 = tail call i32 @request_threaded_irq(i32 noundef %irq_num.1386, ptr noundef nonnull @emac_irq, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool74.not = icmp eq i32 %call.i333, 0
  br i1 %tobool74.not, label %for.inc80, label %do.end78

do.end78:                                         ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #15
  br label %rollback

for.inc80:                                        ; preds = %for.body70
  %inc81 = add i32 %irq_num.1386, 1
  %44 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end, align 4
  %cmp69.not = icmp ugt i32 %inc81, %45
  br i1 %cmp69.not, label %for.inc80.for.end82_crit_edge, label %for.inc80.for.body70_crit_edge

for.inc80.for.body70_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body70

for.inc80.for.end82_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82

for.end82:                                        ; preds = %for.inc80.for.end82_crit_edge, %while.body67.for.end82_crit_edge
  %irq_num.1.lcssa = phi i32 [ %41, %while.body67.for.end82_crit_edge ], [ %inc81, %for.inc80.for.end82_crit_edge ]
  %inc83 = add i32 %res_num.1390, 1
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %call65 = tail call ptr @platform_get_resource(ptr noundef %47, i32 noundef 1024, i32 noundef %inc83) #12
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %for.end82.while.end84_crit_edge, label %for.end82.while.body67_crit_edge

for.end82.while.body67_crit_edge:                 ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body67

for.end82.while.end84_crit_edge:                  ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end84

while.end84:                                      ; preds = %for.end82.while.end84_crit_edge, %while.cond63.preheader.while.end84_crit_edge
  %res_num.1.lcssa = phi i32 [ 0, %while.cond63.preheader.while.end84_crit_edge ], [ %inc83, %for.end82.while.end84_crit_edge ]
  %irq_num.0.lcssa = phi i32 [ 0, %while.cond63.preheader.while.end84_crit_edge ], [ %irq_num.1.lcssa, %for.end82.while.end84_crit_edge ]
  %dec = add i32 %res_num.1.lcssa, -1
  %dec85 = add i32 %irq_num.0.lcssa, -1
  br label %if.end86

if.end86:                                         ; preds = %while.end84, %if.end61.if.end86_crit_edge, %while.cond.preheader.if.end86_crit_edge
  %res_num.2 = phi i32 [ %dec, %while.end84 ], [ 0, %while.cond.preheader.if.end86_crit_edge ], [ %inc62, %if.end61.if.end86_crit_edge ]
  %irq_num.2 = phi i32 [ %dec85, %while.end84 ], [ 0, %while.cond.preheader.if.end86_crit_edge ], [ 0, %if.end61.if.end86_crit_edge ]
  %48 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %emac_base, align 8
  %add.ptr.i334 = getelementptr i8, ptr %49, i32 372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 16777216) #12, !srcloc !248
  %50 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %emac_base, align 8
  %add.ptr21.i = getelementptr i8, ptr %51, i32 372
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not2.i = icmp eq i32 %52, 0
  br i1 %tobool.not2.i, label %if.end86.while.end.i_crit_edge, label %if.end86.do.end.i336_crit_edge

if.end86.do.end.i336_crit_edge:                   ; preds = %if.end86
  br label %do.end.i336

if.end86.while.end.i_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.end.i336:                                      ; preds = %do.end.i336.do.end.i336_crit_edge, %if.end86.do.end.i336_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !253
  %53 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %emac_base, align 8
  %add.ptr2.i = getelementptr i8, ptr %54, i32 372
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %tobool.not.i335 = icmp eq i32 %55, 0
  br i1 %tobool.not.i335, label %do.end.i336.while.end.i_crit_edge, label %do.end.i336.do.end.i336_crit_edge

do.end.i336.do.end.i336_crit_edge:                ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i336

do.end.i336.while.end.i_crit_edge:                ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i336.while.end.i_crit_edge, %if.end86.while.end.i_crit_edge
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i) #12
  %speed.i = getelementptr i8, ptr %ndev, i32 2584
  %56 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %57)
  %cmp.i = icmp eq i32 %57, 1000
  %or.i = select i1 %cmp.i, i32 640, i32 512
  %duplex.i = getelementptr i8, ptr %ndev, i32 2588
  %58 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp10.i = icmp eq i32 %59, 1
  %cond11.i = zext i1 %cmp10.i to i32
  %or12.i = or i32 %or.i, %cond11.i
  %60 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %emac_base, align 8
  %add.ptr14.i = getelementptr i8, ptr %61, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %62 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %62) #12, !srcloc !248
  %63 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %emac_base, align 8
  %add.ptr16.i = getelementptr i8, ptr %64, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 538968064) #12, !srcloc !248
  %65 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %emac_base, align 8
  %add.ptr18.i = getelementptr i8, ptr %66, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 -234553344) #12, !srcloc !248
  %67 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %emac_base, align 8
  %add.ptr20.i = getelementptr i8, ptr %68, i32 272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #12, !srcloc !248
  %69 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %emac_base, align 8
  %add.ptr22.i = getelementptr i8, ptr %70, i32 276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #12, !srcloc !248
  %71 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %emac_base, align 8
  %add.ptr24.i = getelementptr i8, ptr %72, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -16777216) #12, !srcloc !248
  %73 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %emac_base, align 8
  %add.ptr26.i = getelementptr i8, ptr %74, i32 368
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #12, !srcloc !245
  %76 = lshr i32 %75, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %and.i = and i32 %76, 255
  %rx_addr_type.i = getelementptr i8, ptr %ndev, i32 2876
  %77 = ptrtoint ptr %rx_addr_type.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and.i, ptr %rx_addr_type.i, align 4
  %78 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %emac_base, align 8
  %add.ptr29.i = getelementptr i8, ptr %79, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 33554432) #12, !srcloc !248
  tail call fastcc void @emac_setmac(ptr noundef %add.ptr.i, ptr noundef %mac_addr) #12
  %80 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %emac_base, align 8
  %add.ptr31.i = getelementptr i8, ptr %81, i32 352
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %83 = or i32 %82, 536870912
  %84 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %emac_base, align 8
  %add.ptr35.i = getelementptr i8, ptr %85, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %83) #12, !srcloc !248
  %napi.i = getelementptr i8, ptr %ndev, i32 2320
  tail call void @napi_enable(ptr noundef %napi.i) #12
  %version.i.i = getelementptr i8, ptr %ndev, i32 2609
  %86 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp.i.i = icmp eq i8 %87, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.end.i
  %int_enable.i.i = getelementptr i8, ptr %ndev, i32 2932
  %88 = ptrtoint ptr %int_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %int_enable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %89() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %ctrl_base.i.i = getelementptr i8, ptr %ndev, i32 2564
  %90 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr.i.i337 = getelementptr i8, ptr %91, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i337, i32 -16777216) #12, !srcloc !248
  %92 = ptrtoint ptr %ctrl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctrl_base.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %93, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 -16777216) #12, !srcloc !248
  br label %emac_hw_enable.exit

if.else.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_base6.i.i = getelementptr i8, ptr %ndev, i32 2564
  %94 = ptrtoint ptr %ctrl_base6.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrl_base6.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 16777216) #12, !srcloc !248
  br label %emac_hw_enable.exit

emac_hw_enable.exit:                              ; preds = %if.else.i.i, %if.end.i.i
  %coal_intvl = getelementptr i8, ptr %ndev, i32 2600
  %96 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %coal_intvl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp88.not = icmp eq i32 %97, 0
  br i1 %cmp88.not, label %emac_hw_enable.exit.if.end92_crit_edge, label %if.then89

emac_hw_enable.exit.if.end92_crit_edge:           ; preds = %emac_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then89:                                        ; preds = %emac_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %coal) #12
  %98 = call ptr @memset(ptr %coal, i32 255, i32 92)
  %shl = shl i32 %97, 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %99 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl, ptr %rx_coalesce_usecs, align 4
  %call91 = call i32 @emac_set_coalesce(ptr noundef %ndev, ptr noundef nonnull %coal, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %coal) #12
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %emac_hw_enable.exit.if.end92_crit_edge
  %dma = getelementptr i8, ptr %ndev, i32 2568
  %100 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma, align 8
  %call93 = tail call i32 @cpdma_ctlr_start(ptr noundef %101) #12
  %phy_node = getelementptr i8, ptr %ndev, i32 2884
  %102 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy_node, align 4
  %tobool94.not = icmp eq ptr %103, null
  br i1 %tobool94.not, label %land.lhs.true, label %if.then95

if.then95:                                        ; preds = %if.end92
  %call97 = tail call ptr @of_phy_connect(ptr noundef %ndev, ptr noundef nonnull %103, ptr noundef nonnull @emac_adjust_link, i32 noundef 0, i32 noundef 0) #12
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %do.end102, label %if.then95.if.end149_crit_edge

if.then95.if.end149_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

do.end102:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %phy_node, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef %105) #15
  br label %err

land.lhs.true:                                    ; preds = %if.end92
  %phy_id = getelementptr i8, ptr %ndev, i32 2880
  %106 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_id, align 8
  %tobool107.not = icmp eq ptr %107, null
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true.land.lhs.true126_crit_edge

land.lhs.true.land.lhs.true126_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true126

if.then108:                                       ; preds = %land.lhs.true
  %call109 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @match_first_device) #12
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %if.then108.land.lhs.true123_crit_edge, label %if.then111

if.then108.land.lhs.true123_crit_edge:            ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true123

if.then111:                                       ; preds = %if.then108
  %init_name.i = getelementptr inbounds %struct.device, ptr %call109, i32 0, i32 3
  %108 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i338 = icmp eq ptr %109, null
  br i1 %tobool.not.i338, label %dev_name.exit, label %dev_name.exit.thread

dev_name.exit.thread:                             ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %phy_id, align 8
  br label %lor.lhs.false

dev_name.exit:                                    ; preds = %if.then111
  %111 = ptrtoint ptr %call109 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call109, align 4
  %113 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %phy_id, align 8
  %tobool115.not = icmp eq ptr %112, null
  br i1 %tobool115.not, label %dev_name.exit.if.then118_crit_edge, label %dev_name.exit.lor.lhs.false_crit_edge

dev_name.exit.lor.lhs.false_crit_edge:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

dev_name.exit.if.then118_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

lor.lhs.false:                                    ; preds = %dev_name.exit.lor.lhs.false_crit_edge, %dev_name.exit.thread
  %retval.0.i340358 = phi ptr [ %109, %dev_name.exit.thread ], [ %112, %dev_name.exit.lor.lhs.false_crit_edge ]
  %114 = ptrtoint ptr %retval.0.i340358 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %retval.0.i340358, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool117.not = icmp eq i8 %115, 0
  br i1 %tobool117.not, label %lor.lhs.false.if.then118_crit_edge, label %lor.lhs.false.land.lhs.true123_crit_edge

lor.lhs.false.land.lhs.true123_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true123

lor.lhs.false.if.then118_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false.if.then118_crit_edge, %dev_name.exit.if.then118_crit_edge
  tail call void @put_device(ptr noundef nonnull %call109) #12
  br label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.then118, %lor.lhs.false.land.lhs.true123_crit_edge, %if.then108.land.lhs.true123_crit_edge
  %116 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr = load ptr, ptr %phy_id, align 8
  %tobool125.not = icmp eq ptr %.pr, null
  br i1 %tobool125.not, label %land.lhs.true123.do.end145_crit_edge, label %land.lhs.true123.land.lhs.true126_crit_edge

land.lhs.true123.land.lhs.true126_crit_edge:      ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true126

land.lhs.true123.do.end145_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

land.lhs.true126:                                 ; preds = %land.lhs.true123.land.lhs.true126_crit_edge, %land.lhs.true.land.lhs.true126_crit_edge
  %phy.0.ph416 = phi ptr [ %call109, %land.lhs.true123.land.lhs.true126_crit_edge ], [ null, %land.lhs.true.land.lhs.true126_crit_edge ]
  %117 = phi ptr [ %.pr, %land.lhs.true123.land.lhs.true126_crit_edge ], [ %107, %land.lhs.true.land.lhs.true126_crit_edge ]
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool128.not = icmp eq i8 %119, 0
  br i1 %tobool128.not, label %land.lhs.true126.do.end145_crit_edge, label %if.then129

land.lhs.true126.do.end145_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.then129:                                       ; preds = %land.lhs.true126
  %call131 = tail call ptr @phy_connect(ptr noundef %ndev, ptr noundef nonnull %117, ptr noundef nonnull @emac_adjust_link, i32 noundef 2) #12
  tail call void @put_device(ptr noundef %phy.0.ph416) #12
  %cmp.i341 = icmp ugt ptr %call131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i341, label %do.end136, label %if.end140

do.end136:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %121) #15
  %122 = ptrtoint ptr %call131 to i32
  br label %err

if.end140:                                        ; preds = %if.then129
  %link = getelementptr i8, ptr %ndev, i32 2580
  %123 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %link, align 4
  %124 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %speed.i, align 8
  %125 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %duplex.i, align 4
  tail call void @phy_attached_info(ptr noundef %call131) #12
  %tobool141.not = icmp eq ptr %call131, null
  br i1 %tobool141.not, label %if.end140.do.end145_crit_edge, label %if.end140.if.end149_crit_edge

if.end140.if.end149_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.end140.do.end145_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

do.end145:                                        ; preds = %if.end140.do.end145_crit_edge, %land.lhs.true126.do.end145_crit_edge, %land.lhs.true123.do.end145_crit_edge
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.58) #15
  %link146 = getelementptr i8, ptr %ndev, i32 2580
  %126 = ptrtoint ptr %link146 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %link146, align 4
  %127 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 100, ptr %speed.i, align 8
  %128 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %duplex.i, align 4
  tail call fastcc void @emac_update_phystatus(ptr noundef %add.ptr.i)
  br label %if.end149

if.end149:                                        ; preds = %do.end145, %if.end140.if.end149_crit_edge, %if.then95.if.end149_crit_edge
  %tobool141.not367 = phi i1 [ true, %do.end145 ], [ false, %if.end140.if.end149_crit_edge ], [ false, %if.then95.if.end149_crit_edge ]
  %phydev.1365 = phi ptr [ null, %do.end145 ], [ %call131, %if.end140.if.end149_crit_edge ], [ %call97, %if.then95.if.end149_crit_edge ]
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool150.not = icmp eq i32 %and, 0
  br i1 %tobool150.not, label %if.end149.if.end157_crit_edge, label %do.end154

if.end149.if.end157_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

do.end154:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef %ndev) #15
  br label %if.end157

if.end157:                                        ; preds = %do.end154, %if.end149.if.end157_crit_edge
  br i1 %tobool141.not367, label %if.end157.cleanup210_crit_edge, label %if.then159

if.end157.cleanup210_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup210

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_start(ptr noundef nonnull %phydev.1365) #12
  br label %cleanup210

err:                                              ; preds = %do.end136, %do.end102
  %ret.0 = phi i32 [ %122, %do.end136 ], [ -19, %do.end102 ]
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i)
  tail call void @napi_disable(ptr noundef %napi.i) #12
  br label %rollback

rollback:                                         ; preds = %err, %do.end78, %do.end60, %while.body.rollback_crit_edge
  %ret.1 = phi i32 [ %call.i332, %do.end60 ], [ %ret.0, %err ], [ %call.i333, %do.end78 ], [ %call49384, %while.body.rollback_crit_edge ]
  %res_num.3 = phi i32 [ %res_num.0383, %do.end60 ], [ %res_num.2, %err ], [ %res_num.1390, %do.end78 ], [ %res_num.0383, %while.body.rollback_crit_edge ]
  %irq_num.3 = phi i32 [ 0, %do.end60 ], [ %irq_num.2, %err ], [ %irq_num.1386, %do.end78 ], [ 0, %while.body.rollback_crit_edge ]
  %131 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev, align 8
  %dev162 = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  %tobool.not.i342 = icmp eq ptr %dev162, null
  br i1 %tobool.not.i342, label %rollback.for.cond181.preheader_crit_edge, label %if.end.i344

rollback.for.cond181.preheader_crit_edge:         ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond181.preheader

for.cond181.preheader:                            ; preds = %if.end.i344.for.cond181.preheader_crit_edge, %rollback.for.cond181.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %res_num.3)
  %cmp182400 = icmp sgt i32 %res_num.3, -1
  br i1 %cmp182400, label %for.cond181.preheader.for.body184_crit_edge, label %for.cond181.preheader.if.end204_crit_edge

for.cond181.preheader.if.end204_crit_edge:        ; preds = %for.cond181.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

for.cond181.preheader.for.body184_crit_edge:      ; preds = %for.cond181.preheader
  br label %for.body184

if.end.i344:                                      ; preds = %rollback
  %of_node.i343 = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3, i32 27
  %133 = ptrtoint ptr %of_node.i343 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %of_node.i343, align 8
  %phi.cmp = icmp eq ptr %134, null
  br i1 %phi.cmp, label %if.end.i344.for.cond181.preheader_crit_edge, label %for.cond166.preheader

if.end.i344.for.cond181.preheader_crit_edge:      ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond181.preheader

for.cond166.preheader:                            ; preds = %if.end.i344
  %q.0395 = add i32 %res_num.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %q.0395)
  %cmp167396 = icmp sgt i32 %q.0395, -1
  br i1 %cmp167396, label %for.cond166.preheader.for.body169_crit_edge, label %for.cond166.preheader.if.end204_crit_edge

for.cond166.preheader.if.end204_crit_edge:        ; preds = %for.cond166.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

for.cond166.preheader.for.body169_crit_edge:      ; preds = %for.cond166.preheader
  br label %for.body169

for.body169:                                      ; preds = %for.inc177.for.body169_crit_edge, %for.cond166.preheader.for.body169_crit_edge
  %q.0397 = phi i32 [ %q.0, %for.inc177.for.body169_crit_edge ], [ %q.0395, %for.cond166.preheader.for.body169_crit_edge ]
  %135 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev, align 8
  %call171 = tail call i32 @platform_get_irq(ptr noundef %136, i32 noundef %q.0397) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp sgt i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %for.body169.for.inc177_crit_edge

for.body169.for.inc177_crit_edge:                 ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc177

if.then174:                                       ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #14
  %call175 = tail call ptr @free_irq(i32 noundef %call171, ptr noundef %ndev) #12
  br label %for.inc177

for.inc177:                                       ; preds = %if.then174, %for.body169.for.inc177_crit_edge
  %q.0 = add i32 %q.0397, -1
  %cmp167 = icmp sgt i32 %q.0, -1
  br i1 %cmp167, label %for.inc177.for.body169_crit_edge, label %for.inc177.if.end204_crit_edge

for.inc177.if.end204_crit_edge:                   ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

for.inc177.for.body169_crit_edge:                 ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body169

for.body184:                                      ; preds = %for.inc201.for.body184_crit_edge, %for.cond181.preheader.for.body184_crit_edge
  %irq_num.4402 = phi i32 [ %irq_num.5, %for.inc201.for.body184_crit_edge ], [ %irq_num.3, %for.cond181.preheader.for.body184_crit_edge ]
  %q.1401 = phi i32 [ %dec202, %for.inc201.for.body184_crit_edge ], [ %res_num.3, %for.cond181.preheader.for.body184_crit_edge ]
  %137 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pdev, align 8
  %call186 = tail call ptr @platform_get_resource(ptr noundef %138, i32 noundef 1024, i32 noundef %q.1401) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %q.1401, i32 %res_num.3)
  %cmp187.not = icmp eq i32 %q.1401, %res_num.3
  br i1 %cmp187.not, label %for.body184.if.end191_crit_edge, label %if.then189

for.body184.if.end191_crit_edge:                  ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then189:                                       ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #14
  %end190 = getelementptr inbounds %struct.resource, ptr %call186, i32 0, i32 1
  %139 = ptrtoint ptr %end190 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %end190, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %for.body184.if.end191_crit_edge
  %irq_num.5 = phi i32 [ %140, %if.then189 ], [ %irq_num.4402, %for.body184.if.end191_crit_edge ]
  %141 = ptrtoint ptr %call186 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %call186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq_num.5, i32 %142)
  %cmp194.not398 = icmp ult i32 %irq_num.5, %142
  br i1 %cmp194.not398, label %if.end191.for.inc201_crit_edge, label %if.end191.for.body196_crit_edge

if.end191.for.body196_crit_edge:                  ; preds = %if.end191
  br label %for.body196

if.end191.for.inc201_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc201

for.body196:                                      ; preds = %for.body196.for.body196_crit_edge, %if.end191.for.body196_crit_edge
  %m.0399 = phi i32 [ %dec199, %for.body196.for.body196_crit_edge ], [ %irq_num.5, %if.end191.for.body196_crit_edge ]
  %call197 = tail call ptr @free_irq(i32 noundef %m.0399, ptr noundef %ndev) #12
  %dec199 = add i32 %m.0399, -1
  %143 = ptrtoint ptr %call186 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %call186, align 4
  %cmp194.not = icmp ult i32 %dec199, %144
  br i1 %cmp194.not, label %for.body196.for.inc201_crit_edge, label %for.body196.for.body196_crit_edge

for.body196.for.body196_crit_edge:                ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body196

for.body196.for.inc201_crit_edge:                 ; preds = %for.body196
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc201

for.inc201:                                       ; preds = %for.body196.for.inc201_crit_edge, %if.end191.for.inc201_crit_edge
  %dec202 = add nsw i32 %q.1401, -1
  %cmp182 = icmp sgt i32 %q.1401, 0
  br i1 %cmp182, label %for.inc201.for.body184_crit_edge, label %for.inc201.if.end204_crit_edge

for.inc201.if.end204_crit_edge:                   ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

for.inc201.for.body184_crit_edge:                 ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body184

if.end204:                                        ; preds = %for.inc201.if.end204_crit_edge, %for.inc177.if.end204_crit_edge, %for.cond166.preheader.if.end204_crit_edge, %for.cond181.preheader.if.end204_crit_edge
  %dma205 = getelementptr i8, ptr %ndev, i32 2568
  %145 = ptrtoint ptr %dma205 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dma205, align 8
  %call206 = tail call i32 @cpdma_ctlr_stop(ptr noundef %146) #12
  %147 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev, align 8
  %dev208 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3
  %call.i347 = tail call i32 @__pm_runtime_idle(ptr noundef %dev208, i32 noundef 5) #12
  br label %cleanup210

cleanup210:                                       ; preds = %if.end204, %if.then159, %if.end157.cleanup210_crit_edge, %pm_runtime_put_noidle.exit
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ %ret.1, %if.end204 ], [ 0, %if.then159 ], [ 0, %if.end157.cleanup210_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_dev_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %napi = getelementptr i8, ptr %ndev, i32 2320
  tail call void @napi_disable(ptr noundef %napi) #12
  tail call void @netif_carrier_off(ptr noundef %ndev) #12
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i)
  %dma = getelementptr i8, ptr %ndev, i32 2568
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 8
  %call1 = tail call i32 @cpdma_ctlr_stop(ptr noundef %3) #12
  %emac_base = getelementptr i8, ptr %ndev, i32 2560
  %4 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !248
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_disconnect(ptr noundef nonnull %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call333 = tail call ptr @platform_get_resource(ptr noundef %9, i32 noundef 1024, i32 noundef 0) #12
  %tobool4.not34 = icmp eq ptr %call333, null
  br i1 %tobool4.not34, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %ndev5 = getelementptr i8, ptr %ndev, i32 2308
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %call336 = phi ptr [ %call333, %while.body.lr.ph ], [ %call3, %for.end.while.body_crit_edge ]
  %i.035 = phi i32 [ 0, %while.body.lr.ph ], [ %inc7, %for.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %call336 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call336, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call336, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not31 = icmp ugt i32 %11, %13
  br i1 %cmp.not31, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %irq_num.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %11, %while.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev5, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %irq_num.032, ptr noundef %15) #12
  %inc = add i32 %irq_num.032, 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  %cmp.not = icmp ugt i32 %inc, %17
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.body.for.end_crit_edge
  %inc7 = add i32 %i.035, 1
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %call3 = tail call ptr @platform_get_resource(ptr noundef %19, i32 noundef 1024, i32 noundef %inc7) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end.while.end_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %while.end.if.end10_crit_edge, label %do.end

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef %ndev) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end, %while.end.if.end10_crit_edge
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev12, i32 noundef 5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_dev_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %link = getelementptr i8, ptr %ndev, i32 2580
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end8, !prof !244

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.fail_tx_crit_edge, label %land.lhs.true

if.then.fail_tx_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

land.lhs.true:                                    ; preds = %if.then
  %call5 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.fail_tx_crit_edge, label %land.lhs.true.fail_tx.sink.split_crit_edge

land.lhs.true.fail_tx.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx.sink.split

land.lhs.true.fail_tx_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

if.end8:                                          ; preds = %entry
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 60
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end8.if.end28_crit_edge, !prof !244

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.i.i:                                      ; preds = %if.end8
  %sub.i.i = sub nuw nsw i32 60, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then16

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !243

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %11, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end28

if.then16:                                        ; preds = %if.then.i.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %and18 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then16.fail_tx_crit_edge, label %land.lhs.true20

if.then16.fail_tx_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

land.lhs.true20:                                  ; preds = %if.then16
  %call21 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.fail_tx_crit_edge, label %land.lhs.true20.fail_tx.sink.split_crit_edge

land.lhs.true20.fail_tx.sink.split_crit_edge:     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx.sink.split

land.lhs.true20.fail_tx_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

if.end28:                                         ; preds = %__skb_put.exit.i.i, %if.end8.if.end28_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_flags.i, align 1
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end28.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end28.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end28.skb_tx_timestamp.exit_crit_edge
  %txchan = getelementptr i8, ptr %ndev, i32 2572
  %19 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txchan, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i.i, align 4
  %call29 = tail call i32 @cpdma_chan_submit(ptr noundef %20, ptr noundef %skb, ptr noundef %22, i32 noundef %24, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end49, label %if.then37, !prof !243

if.then37:                                        ; preds = %skb_tx_timestamp.exit
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 8
  %and39 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then37.fail_tx_crit_edge, label %land.lhs.true41

if.then37.fail_tx_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

land.lhs.true41:                                  ; preds = %if.then37
  %call42 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.fail_tx_crit_edge, label %land.lhs.true41.fail_tx.sink.split_crit_edge

land.lhs.true41.fail_tx.sink.split_crit_edge:     ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx.sink.split

land.lhs.true41.fail_tx_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

if.end49:                                         ; preds = %skb_tx_timestamp.exit
  %27 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txchan, align 4
  %call51 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %28) #12
  br i1 %call51, label %if.end49.cleanup_crit_edge, label %if.end49.cleanup.sink.split_crit_edge, !prof !243

if.end49.cleanup.sink.split_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail_tx.sink.split:                               ; preds = %land.lhs.true41.fail_tx.sink.split_crit_edge, %land.lhs.true20.fail_tx.sink.split_crit_edge, %land.lhs.true.fail_tx.sink.split_crit_edge
  %.str.77.sink = phi ptr [ @.str.71, %land.lhs.true.fail_tx.sink.split_crit_edge ], [ @.str.74, %land.lhs.true20.fail_tx.sink.split_crit_edge ], [ @.str.77, %land.lhs.true41.fail_tx.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.77.sink) #15
  br label %fail_tx

fail_tx:                                          ; preds = %fail_tx.sink.split, %land.lhs.true41.fail_tx_crit_edge, %if.then37.fail_tx_crit_edge, %land.lhs.true20.fail_tx_crit_edge, %if.then16.fail_tx_crit_edge, %land.lhs.true.fail_tx_crit_edge, %if.then.fail_tx_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %29 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail_tx, %if.end49.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 16, %fail_tx ], [ 0, %if.end49.cleanup.sink.split_crit_edge ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_dev_mcast_set(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %emac_base = getelementptr i8, ptr %ndev, i32 2560
  %0 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !245
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 2097152
  br label %if.end29

if.else:                                          ; preds = %entry
  %and3 = and i32 %3, -2097153
  %and5 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.else.if.then7_crit_edge

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp = icmp sgt i32 %7, 64
  br i1 %cmp, label %lor.lhs.false.if.then7_crit_edge, label %if.else9

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %or8 = or i32 %and3, 32
  %mac_hash1.i = getelementptr i8, ptr %ndev, i32 2612
  %8 = ptrtoint ptr %mac_hash1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mac_hash1.i, align 4
  %mac_hash2.i = getelementptr i8, ptr %ndev, i32 2616
  %9 = ptrtoint ptr %mac_hash2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mac_hash2.i, align 8
  %10 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emac_base, align 8
  %add.ptr.i51 = getelementptr i8, ptr %11, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 -1) #12, !srcloc !248
  %12 = ptrtoint ptr %mac_hash2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_hash2.i, align 8
  %14 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %emac_base, align 8
  %add.ptr11.i = getelementptr i8, ptr %15, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %16) #12, !srcloc !248
  br label %if.end29

if.else9:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.else26, label %if.then13

if.then13:                                        ; preds = %if.else9
  %or14 = or i32 %and3, 32
  %mac_hash15.i = getelementptr i8, ptr %ndev, i32 2612
  %17 = call ptr @memset(ptr %mac_hash15.i, i32 0, i32 264)
  %18 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emac_base, align 8
  %add.ptr.i56 = getelementptr i8, ptr %19, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #12, !srcloc !248
  %mac_hash29.i57 = getelementptr i8, ptr %ndev, i32 2616
  %20 = ptrtoint ptr %mac_hash29.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_hash29.i57, align 8
  %22 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %emac_base, align 8
  %add.ptr11.i58 = getelementptr i8, ptr %23, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i58, i32 %24) #12, !srcloc !248
  %25 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %25)
  %ha.067 = load ptr, ptr %mc, align 4
  %cmp20.not68 = icmp eq ptr %ha.067, %mc
  br i1 %cmp20.not68, label %if.then13.if.end29_crit_edge, label %if.then13.for.body_crit_edge

if.then13.for.body_crit_edge:                     ; preds = %if.then13
  br label %for.body

if.then13.if.end29_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then13.for.body_crit_edge
  %ha.069 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.067, %if.then13.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.069, i32 0, i32 2
  tail call fastcc void @emac_add_mcast(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef %addr)
  %26 = ptrtoint ptr %ha.069 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0 = load ptr, ptr %ha.069, align 4
  %cmp20.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp20.not, label %for.body.if.end29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.else26:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %and27 = and i32 %3, -2097185
  %mac_hash15.i61 = getelementptr i8, ptr %ndev, i32 2612
  %27 = call ptr @memset(ptr %mac_hash15.i61, i32 0, i32 264)
  %28 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %emac_base, align 8
  %add.ptr.i64 = getelementptr i8, ptr %29, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #12, !srcloc !248
  %mac_hash29.i65 = getelementptr i8, ptr %ndev, i32 2616
  %30 = ptrtoint ptr %mac_hash29.i65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_hash29.i65, align 8
  %32 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %emac_base, align 8
  %add.ptr11.i66 = getelementptr i8, ptr %33, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i66, i32 %34) #12, !srcloc !248
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %for.body.if.end29_crit_edge, %if.then13.if.end29_crit_edge, %if.then7, %if.then
  %mbp_enable.0 = phi i32 [ %or, %if.then ], [ %or8, %if.then7 ], [ %and27, %if.else26 ], [ %or14, %if.then13.if.end29_crit_edge ], [ %or14, %for.body.if.end29_crit_edge ]
  %35 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %emac_base, align 8
  %add.ptr31 = getelementptr i8, ptr %36, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %mbp_enable.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %37) #12, !srcloc !248
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_dev_setmac_addr(ptr noundef %ndev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %ndev1 = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %mac_addr = getelementptr i8, ptr %ndev, i32 2544
  %addr_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @emac_setmac(ptr noundef %add.ptr.i, ptr noundef %mac_addr)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %do.end

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.83, ptr noundef %mac_addr) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end12.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end12.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_devioctl(ptr noundef %ndev, ptr noundef %ifrq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then1

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %3, ptr noundef %ifrq, i32 noundef %cmd) #12
  br label %return

return:                                           ; preds = %if.then1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then1 ], [ -22, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_dev_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i)
  %txchan = getelementptr i8, ptr %ndev, i32 2572
  %4 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txchan, align 4
  %call1 = tail call i32 @cpdma_chan_stop(ptr noundef %5) #12
  %6 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txchan, align 4
  %call3 = tail call i32 @cpdma_chan_start(ptr noundef %7) #12
  %version.i = getelementptr i8, ptr %ndev, i32 2609
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %int_enable.i = getelementptr i8, ptr %ndev, i32 2932
  %10 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_enable.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %ctrl_base.i = getelementptr i8, ptr %ndev, i32 2564
  %12 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 -16777216) #12, !srcloc !248
  %14 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -16777216) #12, !srcloc !248
  br label %emac_int_enable.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_base6.i = getelementptr i8, ptr %ndev, i32 2564
  %16 = ptrtoint ptr %ctrl_base6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_base6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 16777216) #12, !srcloc !248
  br label %emac_int_enable.exit

emac_int_enable.exit:                             ; preds = %if.else.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @emac_dev_getnetstats(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !250
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !251
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.87, i32 noundef %call.i) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %emac_base = getelementptr i8, ptr %ndev, i32 2560
  %7 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 352
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %10 = shl i32 %9, 2
  %sext = ashr i32 %10, 31
  %11 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %emac_base, align 8
  %add.ptr10 = getelementptr i8, ptr %12, i32 520
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !245
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %multicast = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 8
  %15 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %multicast, align 8
  %add = add i32 %16, %14
  store i32 %add, ptr %multicast, align 8
  %17 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emac_base, align 8
  %add.ptr14 = getelementptr i8, ptr %18, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %sext) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %19) #12, !srcloc !248
  %20 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %emac_base, align 8
  %add.ptr16 = getelementptr i8, ptr %21, i32 584
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12, !srcloc !245
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %24 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %emac_base, align 8
  %add.ptr19 = getelementptr i8, ptr %25, i32 588
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !245
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %add21 = add i32 %27, %23
  %28 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %emac_base, align 8
  %add.ptr23 = getelementptr i8, ptr %29, i32 592
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #12, !srcloc !245
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %add25 = add i32 %add21, %31
  %collisions = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 9
  %32 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %collisions, align 4
  %add27 = add i32 %add25, %33
  store i32 %add27, ptr %collisions, align 4
  %34 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %emac_base, align 8
  %add.ptr29 = getelementptr i8, ptr %35, i32 584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %19) #12, !srcloc !248
  %36 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %emac_base, align 8
  %add.ptr31 = getelementptr i8, ptr %37, i32 588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %19) #12, !srcloc !248
  %38 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %emac_base, align 8
  %add.ptr33 = getelementptr i8, ptr %39, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %19) #12, !srcloc !248
  %40 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %emac_base, align 8
  %add.ptr35 = getelementptr i8, ptr %41, i32 536
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #12, !srcloc !245
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %44 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %emac_base, align 8
  %add.ptr38 = getelementptr i8, ptr %45, i32 540
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #12, !srcloc !245
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %add40 = add i32 %47, %43
  %48 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %emac_base, align 8
  %add.ptr42 = getelementptr i8, ptr %49, i32 544
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #12, !srcloc !245
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %add44 = add i32 %add40, %51
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 10
  %52 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_length_errors, align 8
  %add46 = add i32 %add44, %53
  store i32 %add46, ptr %rx_length_errors, align 8
  %54 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %emac_base, align 8
  %add.ptr48 = getelementptr i8, ptr %55, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %19) #12, !srcloc !248
  %56 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %emac_base, align 8
  %add.ptr50 = getelementptr i8, ptr %57, i32 540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %19) #12, !srcloc !248
  %58 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %emac_base, align 8
  %add.ptr52 = getelementptr i8, ptr %59, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %19) #12, !srcloc !248
  %60 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %emac_base, align 8
  %add.ptr54 = getelementptr i8, ptr %61, i32 644
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #12, !srcloc !245
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %64 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %emac_base, align 8
  %add.ptr57 = getelementptr i8, ptr %65, i32 648
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #12, !srcloc !245
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %add59 = add i32 %67, %63
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 11
  %68 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_over_errors, align 4
  %add61 = add i32 %add59, %69
  store i32 %add61, ptr %rx_over_errors, align 4
  %70 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %emac_base, align 8
  %add.ptr63 = getelementptr i8, ptr %71, i32 644
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %19) #12, !srcloc !248
  %72 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %emac_base, align 8
  %add.ptr65 = getelementptr i8, ptr %73, i32 648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %19) #12, !srcloc !248
  %74 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %emac_base, align 8
  %add.ptr67 = getelementptr i8, ptr %75, i32 652
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #12, !srcloc !245
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 14
  %78 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_fifo_errors, align 8
  %add70 = add i32 %79, %77
  store i32 %add70, ptr %rx_fifo_errors, align 8
  %80 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %emac_base, align 8
  %add.ptr72 = getelementptr i8, ptr %81, i32 652
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %19) #12, !srcloc !248
  %82 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %emac_base, align 8
  %add.ptr74 = getelementptr i8, ptr %83, i32 608
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #12, !srcloc !245
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 17
  %86 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_carrier_errors, align 4
  %add77 = add i32 %87, %85
  store i32 %add77, ptr %tx_carrier_errors, align 4
  %88 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %emac_base, align 8
  %add.ptr79 = getelementptr i8, ptr %89, i32 608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %19) #12, !srcloc !248
  %90 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %emac_base, align 8
  %add.ptr81 = getelementptr i8, ptr %91, i32 604
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #12, !srcloc !245
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 18
  %94 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_fifo_errors, align 8
  %add84 = add i32 %95, %93
  store i32 %add84, ptr %tx_fifo_errors, align 8
  %96 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %emac_base, align 8
  %add.ptr86 = getelementptr i8, ptr %97, i32 604
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %19) #12, !srcloc !248
  %98 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev, align 8
  %dev88 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3
  %call.i143 = tail call i32 @__pm_runtime_idle(ptr noundef %dev88, i32 noundef 5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pm_runtime_put_noidle.exit
  %retval.0 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_poll_controller(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i)
  %isr_count.i = getelementptr i8, ptr %ndev, i32 2596
  %0 = ptrtoint ptr %isr_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_count.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %isr_count.i, align 4
  %ndev1.i = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.emac_irq.exit_crit_edge, label %if.then.i, !prof !244

entry.emac_irq.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %emac_irq.exit

if.then.i:                                        ; preds = %entry
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i) #12
  %napi.i = getelementptr i8, ptr %ndev, i32 2320
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #12
  br i1 %call.i.i, label %if.then.i.i, label %if.then.i.emac_irq.exit_crit_edge

if.then.i.emac_irq.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %emac_irq.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi.i) #12
  br label %emac_irq.exit

emac_irq.exit:                                    ; preds = %if.then.i.i, %if.then.i.emac_irq.exit_crit_edge, %entry.emac_irq.exit_crit_edge
  %version.i = getelementptr i8, ptr %ndev, i32 2609
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %if.then.i5, label %if.else.i

if.then.i5:                                       ; preds = %emac_irq.exit
  %int_enable.i = getelementptr i8, ptr %ndev, i32 2932
  %8 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_enable.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i5.if.end.i_crit_edge, label %if.then2.i

if.then.i5.if.end.i_crit_edge:                    ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %9() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i5.if.end.i_crit_edge
  %ctrl_base.i = getelementptr i8, ptr %ndev, i32 2564
  %10 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 -16777216) #12, !srcloc !248
  %12 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -16777216) #12, !srcloc !248
  br label %emac_int_enable.exit

if.else.i:                                        ; preds = %emac_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_base6.i = getelementptr i8, ptr %ndev, i32 2564
  %14 = ptrtoint ptr %ctrl_base6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_base6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 16777216) #12, !srcloc !248
  br label %emac_int_enable.exit

emac_int_enable.exit:                             ; preds = %if.else.i, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_idle_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_count = getelementptr i8, ptr %dev_id, i32 2596
  %0 = ptrtoint ptr %isr_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isr_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %isr_count, align 4
  %ndev1 = getelementptr i8, ptr %dev_id, i32 2308
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  tail call fastcc void @emac_int_disable(ptr noundef %add.ptr.i)
  %napi = getelementptr i8, ptr %dev_id, i32 2320
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_set_coalesce(ptr nocapture noundef %ndev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %coal_intvl1 = getelementptr i8, ptr %ndev, i32 2600
  %2 = ptrtoint ptr %coal_intvl1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %coal_intvl1, align 8
  %version = getelementptr i8, ptr %ndev, i32 2609
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cond = icmp eq i8 %4, 1
  %ctrl_base = getelementptr i8, ptr %ndev, i32 2564
  %5 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_base, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !248
  br label %cleanup

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr3 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #12, !srcloc !248
  br label %cleanup

if.end:                                           ; preds = %entry
  %version5 = getelementptr i8, ptr %ndev, i32 2609
  %7 = ptrtoint ptr %version5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cond63 = icmp eq i8 %8, 1
  %ctrl_base8 = getelementptr i8, ptr %ndev, i32 2564
  %9 = ptrtoint ptr %ctrl_base8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base8, align 4
  br i1 %cond63, label %sw.bb7, label %sw.default39

sw.bb7:                                           ; preds = %if.end
  %add.ptr9 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %bus_freq_mhz = getelementptr i8, ptr %ndev, i32 2604
  %12 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_freq_mhz, align 4
  %mul = shl i32 %13, 2
  %14 = tail call i32 @llvm.umax.i32(i32 %1, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %14)
  %cmp14 = icmp ugt i32 %14, 500
  br i1 %cmp14, label %if.then16, label %sw.bb7.if.end28_crit_edge

sw.bb7.if.end28_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then16:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %cmp17 = icmp ult i32 %mul, 1024
  br i1 %cmp17, label %if.then19, label %if.then16.if.end28_crit_edge

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %div.rhs.trunc = trunc i32 %mul to i16
  %div100 = udiv i16 2047, %div.rhs.trunc
  %div.zext = zext i16 %div100 to i32
  %mul20 = mul nuw nsw i32 %mul, %div.zext
  %mul21 = mul nuw nsw i32 %div.zext, 500
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %mul21)
  %phi.bo = mul nuw nsw i32 %div.zext, 1000
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.then16.if.end28_crit_edge, %sw.bb7.if.end28_crit_edge
  %prescale.0 = phi i32 [ %mul, %sw.bb7.if.end28_crit_edge ], [ %mul20, %if.then19 ], [ %mul, %if.then16.if.end28_crit_edge ]
  %addnl_dvdr.0 = phi i32 [ 1000, %sw.bb7.if.end28_crit_edge ], [ %phi.bo, %if.then19 ], [ 1000, %if.then16.if.end28_crit_edge ]
  %coal_intvl.0 = phi i32 [ %14, %sw.bb7.if.end28_crit_edge ], [ %15, %if.then19 ], [ 500, %if.then16.if.end28_crit_edge ]
  %div30 = udiv i32 %addnl_dvdr.0, %coal_intvl.0
  %16 = and i32 %11, 16317695
  %and31 = and i32 %prescale.0, 2047
  %17 = or i32 %16, 768
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %or32 = or i32 %18, %and31
  %19 = ptrtoint ptr %ctrl_base8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_base8, align 4
  %add.ptr34 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %or32) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %21) #12, !srcloc !248
  %22 = ptrtoint ptr %ctrl_base8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_base8, align 4
  %add.ptr36 = getelementptr i8, ptr %23, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %div30) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %24) #12, !srcloc !248
  %25 = ptrtoint ptr %ctrl_base8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_base8, align 4
  %add.ptr38 = getelementptr i8, ptr %26, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %24) #12, !srcloc !248
  br label %do.end

sw.default39:                                     ; preds = %if.end
  %add.ptr41 = getelementptr i8, ptr %10, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %28 = and i32 %27, 65279
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %bus_freq_mhz44 = getelementptr i8, ptr %ndev, i32 2604
  %30 = ptrtoint ptr %bus_freq_mhz44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_freq_mhz44, align 4
  %mul45 = mul i32 %31, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %mul45)
  %cmp46 = icmp ugt i32 %mul45, 131071
  br i1 %cmp46, label %if.then48, label %sw.default39.if.end51_crit_edge

sw.default39.if.end51_crit_edge:                  ; preds = %sw.default39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then48:                                        ; preds = %sw.default39
  call void @__sanitizer_cov_trace_pc() #14
  %div50 = udiv i32 131071, %31
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %sw.default39.if.end51_crit_edge
  %prescale.1 = phi i32 [ 131071, %if.then48 ], [ %mul45, %sw.default39.if.end51_crit_edge ]
  %coal_intvl.1 = phi i32 [ %div50, %if.then48 ], [ %1, %sw.default39.if.end51_crit_edge ]
  %or52 = or i32 %prescale.1, %29
  %32 = ptrtoint ptr %ctrl_base8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_base8, align 4
  %add.ptr54 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %or52) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %34) #12, !srcloc !248
  br label %do.end

do.end:                                           ; preds = %if.end51, %if.end28
  %coal_intvl.2 = phi i32 [ %coal_intvl.0, %if.end28 ], [ %coal_intvl.1, %if.end51 ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %coal_intvl.2) #15
  %coal_intvl57 = getelementptr i8, ptr %ndev, i32 2600
  %35 = ptrtoint ptr %coal_intvl57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %coal_intvl.2, ptr %coal_intvl57, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_adjust_link(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %lock = getelementptr i8, ptr %ndev, i32 2888
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  %duplex7 = getelementptr i8, ptr %ndev, i32 2588
  %6 = ptrtoint ptr %duplex7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8.not = icmp eq i32 %5, %7
  br i1 %cmp8.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %duplex7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %duplex7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  %speed13 = getelementptr i8, ptr %ndev, i32 2584
  %11 = ptrtoint ptr %speed13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp14.not = icmp eq i32 %10, %12
  br i1 %cmp14.not, label %if.end19, label %if.end19.thread

if.end19:                                         ; preds = %if.end
  %link20 = getelementptr i8, ptr %ndev, i32 2580
  %13 = ptrtoint ptr %link20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not = icmp eq i32 %14, 0
  br i1 %tobool21.not, label %if.end19.if.then22_crit_edge, label %if.end32

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end19.thread:                                  ; preds = %if.end
  %15 = ptrtoint ptr %speed13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %speed13, align 8
  %link2063 = getelementptr i8, ptr %ndev, i32 2580
  %16 = ptrtoint ptr %link2063 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link2063, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not64 = icmp eq i32 %17, 0
  br i1 %tobool21.not64, label %if.end19.thread.if.then22_crit_edge, label %if.end19.thread.if.then34_crit_edge

if.end19.thread.if.then34_crit_edge:              ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.end19.thread.if.then22_crit_edge:              ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %if.end19.thread.if.then22_crit_edge, %if.end19.if.then22_crit_edge
  %link2066 = phi ptr [ %link2063, %if.end19.thread.if.then22_crit_edge ], [ %link20, %if.end19.if.then22_crit_edge ]
  %18 = ptrtoint ptr %link2066 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %link2066, align 4
  br label %if.then34

if.else:                                          ; preds = %entry
  %link25 = getelementptr i8, ptr %ndev, i32 2580
  %19 = ptrtoint ptr %link25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not = icmp eq i32 %20, 0
  br i1 %tobool26.not, label %if.else.if.end36_crit_edge, label %if.then27

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %link25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %link25, align 4
  %speed29 = getelementptr i8, ptr %ndev, i32 2584
  %22 = ptrtoint ptr %speed29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %speed29, align 8
  %duplex30 = getelementptr i8, ptr %ndev, i32 2588
  %23 = ptrtoint ptr %duplex30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %duplex30, align 4
  br label %if.then34

if.end32:                                         ; preds = %if.end19
  br i1 %cmp8.not, label %if.end32.if.end36_crit_edge, label %if.end32.if.then34_crit_edge

if.end32.if.then34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %if.end32.if.then34_crit_edge, %if.then27, %if.then22, %if.end19.thread.if.then34_crit_edge
  tail call fastcc void @emac_update_phystatus(ptr noundef %add.ptr.i)
  %24 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phydev1, align 16
  tail call void @phy_print_status(ptr noundef %25) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge, %if.else.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @match_first_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @of_device_is_compatible(ptr noundef nonnull %3, ptr noundef nonnull @.str.67) #12
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call6 = tail call i32 @strncmp(ptr noundef %retval.0.i, ptr noundef nonnull dereferenceable(13) @.str.68, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %lnot.ext = zext i1 %tobool7.not to i32
  br label %return

return:                                           ; preds = %dev_name.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %lnot.ext, %dev_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_update_phystatus(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %emac_base = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 352
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !245
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %and = and i32 %5, 1
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %duplex = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %link = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 12
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp.not = icmp eq i32 %9, %and
  %or.cond = select i1 %tobool4.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.thread:                                    ; preds = %entry
  %link100 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 12
  %12 = ptrtoint ptr %link100 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not101 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not102 = icmp ne i32 %and, 0
  %or.cond103 = select i1 %tobool4.not101, i1 true, i1 %cmp.not102
  br i1 %or.cond103, label %if.end.thread.if.end13_crit_edge, label %if.then5.thread

if.end.thread.if.end13_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then5.thread:                                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  %duplex6109 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 14
  %14 = ptrtoint ptr %duplex6109 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %duplex6109, align 4
  br label %if.then9

if.then5:                                         ; preds = %if.end
  %duplex6 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 14
  %15 = ptrtoint ptr %duplex6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %duplex6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %if.then5.if.then9_crit_edge, label %if.else10

if.then5.if.then9_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %if.then5.if.then9_crit_edge, %if.then5.thread
  %link105111 = phi ptr [ %link100, %if.then5.thread ], [ %link, %if.then5.if.then9_crit_edge ]
  %or = or i32 %5, 1
  br label %if.end13

if.else10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %and11 = and i32 %5, -2
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then9, %if.end.thread.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %link106 = phi ptr [ %link105111, %if.then9 ], [ %link, %if.else10 ], [ %link, %if.end.if.end13_crit_edge ], [ %link100, %if.end.thread.if.end13_crit_edge ]
  %mac_control.0 = phi i32 [ %or, %if.then9 ], [ %and11, %if.else10 ], [ %5, %if.end.if.end13_crit_edge ], [ %5, %if.end.thread.if.end13_crit_edge ]
  %speed = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 13
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %17)
  %cmp14 = icmp eq i32 %17, 1000
  br i1 %cmp14, label %land.lhs.true15, label %if.else23

land.lhs.true15:                                  ; preds = %if.end13
  %version = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 20
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp16 = icmp eq i8 %19, 1
  br i1 %cmp16, label %if.then18, label %if.else23.thread

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %emac_base, align 8
  %add.ptr20 = getelementptr i8, ptr %21, i32 352
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %23 = or i32 %22, -2147483136
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  br label %if.end36

if.else23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %and24 = and i32 %mac_control.0, -163969
  %rmii_en = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 19
  %25 = ptrtoint ptr %rmii_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rmii_en, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool26.not = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %cmp29 = icmp eq i32 %17, 100
  %or.cond119 = select i1 %tobool26.not, i1 %cmp29, i1 false
  %or32 = or i32 %and24, 32768
  %spec.select = select i1 %or.cond119, i32 %or32, i32 %and24
  br label %if.end36

if.else23.thread:                                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  %and24112 = and i32 %mac_control.0, -163969
  br label %if.end36

if.end36:                                         ; preds = %if.else23.thread, %if.else23, %if.then18
  %mac_control.1 = phi i32 [ %24, %if.then18 ], [ %and24112, %if.else23.thread ], [ %spec.select, %if.else23 ]
  %27 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %emac_base, align 8
  %add.ptr38 = getelementptr i8, ptr %28, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %mac_control.1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %29) #12, !srcloc !248
  %30 = ptrtoint ptr %link106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not = icmp eq i32 %31, 0
  %state.i91 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %state.i91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i91, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i92 = icmp eq i32 %34, 0
  br i1 %tobool40.not, label %if.else52, label %if.then41

if.then41:                                        ; preds = %if.end36
  br i1 %tobool.not.i92, label %if.then41.if.end44_crit_edge, label %if.then43

if.then41.if.end44_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_on(ptr noundef %1) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then41.if.end44_crit_edge
  %35 = ptrtoint ptr %state.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i91, align 4
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end44.if.end59_crit_edge, label %land.lhs.true47

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true47:                                  ; preds = %if.end44
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true47.if.end59_crit_edge, label %if.then50

land.lhs.true47.if.end59_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %38) #12
  br label %if.end59

if.else52:                                        ; preds = %if.end36
  br i1 %tobool.not.i92, label %if.then54, label %if.else52.if.end55_crit_edge

if.else52.if.end55_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then54:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %1) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else52.if.end55_crit_edge
  %_tx.i.i93 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i93, align 128
  %state.i.i94 = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 13
  %43 = ptrtoint ptr %state.i.i94 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i.i94, align 4
  %and1.i.i.i95 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i95)
  %tobool.i.i96.not = icmp eq i32 %and1.i.i.i95, 0
  br i1 %tobool.i.i96.not, label %if.then57, label %if.end55.if.end59_crit_edge

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i94) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55.if.end59_crit_edge, %if.then50, %land.lhs.true47.if.end59_crit_edge, %if.end44.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_int_disable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !255
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then12, label %if.then.do.end14_crit_edge

if.then.do.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end14

do.end14:                                         ; preds = %if.then12, %if.then.do.end14_crit_edge
  %ctrl_base = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !248
  %5 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_base, align 4
  %add.ptr16 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #12, !srcloc !248
  %int_disable = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 29
  %7 = ptrtoint ptr %int_disable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %int_disable, align 8
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %do.end14.if.end20_crit_edge, label %if.then18

do.end14.if.end20_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %8() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.end14.if.end20_crit_edge
  %emac_base = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %emac_base, align 8
  %add.ptr21 = getelementptr i8, ptr %10, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 16777216) #12, !srcloc !248
  %11 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %emac_base, align 8
  %add.ptr23 = getelementptr i8, ptr %12, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 33554432) #12, !srcloc !248
  br i1 %tobool.not, label %if.then33, label %if.end20.do.body35_crit_edge

if.end20.do.body35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body35

do.body35:                                        ; preds = %if.then33, %if.end20.do.body35_crit_edge
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !256
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool43.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool43.not, label %if.then47, label %do.body35.do.end50_crit_edge, !prof !244

do.body35.do.end50_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35.do.end50_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !257
  br label %if.end57

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_base55 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 8
  %14 = ptrtoint ptr %ctrl_base55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_base55, align 4
  %add.ptr56 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #12, !srcloc !248
  br label %if.end57

if.end57:                                         ; preds = %if.else, %do.end50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_setmac(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %mac_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %rx_addr_type = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 24
  %2 = ptrtoint ptr %rx_addr_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_addr_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else9 [
    i32 0, label %if.then
    i32 1, label %for.cond.preheader
    i32 2, label %if.then8
  ]

for.cond.preheader:                               ; preds = %entry
  %emac_base.i = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %arrayidx.i = getelementptr i8, ptr %mac_addr, i32 5
  %arrayidx1.i = getelementptr i8, ptr %mac_addr, i32 4
  %arrayidx5.i = getelementptr i8, ptr %mac_addr, i32 3
  %arrayidx8.i = getelementptr i8, ptr %mac_addr, i32 2
  %arrayidx12.i = getelementptr i8, ptr %mac_addr, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @emac_set_type0addr(ptr noundef %priv, ptr noundef %mac_addr)
  br label %if.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %cnt.012 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %emac_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %emac_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !248
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %11 = ptrtoint ptr %emac_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %emac_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %12, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %13) #12, !srcloc !248
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %15 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %17 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %shl10.i, %shl7.i
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %19 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or15.i = or i32 %or11.i, %shl14.i
  %20 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mac_addr, align 1
  %conv17.i = zext i8 %21 to i32
  %or18.i = or i32 %or15.i, %conv17.i
  %22 = ptrtoint ptr %emac_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %emac_base.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %23, i32 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %24) #12, !srcloc !248
  tail call fastcc void @emac_set_type0addr(ptr noundef %priv, ptr noundef %mac_addr) #12
  %inc = add nuw nsw i32 %cnt.012, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.if.end13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %emac_base.i1 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %25 = ptrtoint ptr %emac_base.i1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %emac_base.i1, align 8
  %add.ptr.i2 = getelementptr i8, ptr %26, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 0) #12, !srcloc !248
  %arrayidx.i3 = getelementptr i8, ptr %mac_addr, i32 3
  %27 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i3, align 1
  %conv.i4 = zext i8 %28 to i32
  %shl.i5 = shl nuw i32 %conv.i4, 24
  %arrayidx1.i6 = getelementptr i8, ptr %mac_addr, i32 2
  %29 = ptrtoint ptr %arrayidx1.i6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i6, align 1
  %conv2.i7 = zext i8 %30 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i7, 16
  %or.i8 = or i32 %shl3.i, %shl.i5
  %arrayidx4.i = getelementptr i8, ptr %mac_addr, i32 1
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %32 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i8, %shl6.i
  %33 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mac_addr, align 1
  %conv9.i9 = zext i8 %34 to i32
  %or10.i = or i32 %or7.i, %conv9.i9
  %35 = ptrtoint ptr %emac_base.i1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %emac_base.i1, align 8
  %add.ptr12.i = getelementptr i8, ptr %36, i32 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %37) #12, !srcloc !248
  %arrayidx13.i = getelementptr i8, ptr %mac_addr, i32 5
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %39 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 8
  %arrayidx16.i = getelementptr i8, ptr %mac_addr, i32 4
  %40 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i10 = zext i8 %41 to i32
  %or18.i11 = or i32 %shl15.i, %conv17.i10
  %or23.i = or i32 %or18.i11, 1572864
  %42 = ptrtoint ptr %emac_base.i1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %emac_base.i1, align 8
  %add.ptr25.i = getelementptr i8, ptr %43, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %44 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %44) #12, !srcloc !248
  tail call fastcc void @emac_set_type0addr(ptr noundef %priv, ptr noundef %mac_addr) #12
  tail call fastcc void @emac_set_type0addr(ptr noundef %priv, ptr noundef %mac_addr)
  br label %if.end13

if.else9:                                         ; preds = %entry
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %priv, align 8
  %and = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9.if.end13_crit_edge, label %do.end

if.else9.if.end13_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.else9.if.end13_crit_edge, %if.then8, %for.body.if.end13_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_set_type0addr(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %mac_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %mac_addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %emac_base = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #12, !srcloc !248
  %arrayidx3 = getelementptr i8, ptr %mac_addr, i32 3
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %shl5 = shl nuw i32 %conv4, 24
  %arrayidx6 = getelementptr i8, ptr %mac_addr, i32 2
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %shl5
  %arrayidx10 = getelementptr i8, ptr %mac_addr, i32 1
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %or13 = or i32 %or9, %shl12
  %13 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_addr, align 1
  %conv15 = zext i8 %14 to i32
  %or16 = or i32 %or13, %conv15
  %15 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %emac_base, align 8
  %add.ptr18 = getelementptr i8, ptr %16, i32 468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %17) #12, !srcloc !248
  %18 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emac_base, align 8
  %add.ptr20 = getelementptr i8, ptr %19, i32 260
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %emac_base, align 8
  %add.ptr24 = getelementptr i8, ptr %23, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %21) #12, !srcloc !248
  %24 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %emac_base, align 8
  %add.ptr26 = getelementptr i8, ptr %25, i32 264
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %27 = and i32 %26, -16777217
  %28 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %emac_base, align 8
  %add.ptr30 = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %27) #12, !srcloc !248
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_add_mcast(ptr nocapture noundef %priv, i32 noundef %action, ptr nocapture noundef readonly %mac_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %action, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %incdec.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 1
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac_addr, align 1
  %conv.i.i = zext i8 %4 to i32
  %5 = lshr i32 %conv.i.i, 2
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 4
  %incdec.ptr3.i.i = getelementptr i8, ptr %mac_addr, i32 2
  %6 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv4.i.i = zext i8 %7 to i32
  %8 = lshr i32 %conv4.i.i, 4
  %shl7.i.i = shl nuw nsw i32 %conv4.i.i, 2
  %incdec.ptr10.i.i = getelementptr i8, ptr %mac_addr, i32 3
  %9 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr3.i.i, align 1
  %conv11.i.i = zext i8 %10 to i32
  %11 = lshr i32 %conv11.i.i, 6
  %xor8.i.i = xor i32 %shl.i.i, %5
  %xor.i.i = xor i32 %xor8.i.i, %shl7.i.i
  %xor2.i.i = xor i32 %xor.i.i, %8
  %xor9.i.i = xor i32 %xor2.i.i, %conv11.i.i
  %xor15.i.i = xor i32 %xor9.i.i, %11
  %incdec.ptr.1.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %12 = ptrtoint ptr %incdec.ptr10.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr10.i.i, align 1
  %conv.1.i.i = zext i8 %13 to i32
  %14 = lshr i32 %conv.1.i.i, 2
  %shl.1.i.i = shl nuw nsw i32 %conv.1.i.i, 4
  %incdec.ptr3.1.i.i = getelementptr i8, ptr %mac_addr, i32 5
  %15 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.1.i.i, align 1
  %conv4.1.i.i = zext i8 %16 to i32
  %17 = lshr i32 %conv4.1.i.i, 4
  %shl7.1.i.i = shl nuw nsw i32 %conv4.1.i.i, 2
  %18 = ptrtoint ptr %incdec.ptr3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr3.1.i.i, align 1
  %conv11.1.i.i = zext i8 %19 to i32
  %20 = lshr i32 %conv11.1.i.i, 6
  %xor14.1.i.i = xor i32 %xor15.i.i, %shl.1.i.i
  %xor8.1.i.i = xor i32 %xor14.1.i.i, %14
  %xor.1.i.i = xor i32 %xor8.1.i.i, %shl7.1.i.i
  %xor2.1.i.i = xor i32 %xor.1.i.i, %17
  %xor9.1.i.i = xor i32 %xor2.1.i.i, %conv11.1.i.i
  %xor9.1.masked.i.i = and i32 %xor9.1.i.i, 63
  %and.i.i = xor i32 %xor9.1.masked.i.i, %20
  %arrayidx.i = getelementptr %struct.emac_priv, ptr %priv, i32 0, i32 23, i32 %and.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3.i = icmp eq i32 %22, 0
  br i1 %cmp3.i, label %if.then4.i, label %sw.epilog

if.then4.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i)
  %cmp5.i = icmp ult i32 %and.i.i, 32
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl nuw i32 1, %and.i.i
  %mac_hash1.i = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 21
  %23 = ptrtoint ptr %mac_hash1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_hash1.i, align 4
  %or.i = or i32 %24, %shl.i
  store i32 %or.i, ptr %mac_hash1.i, align 4
  br label %sw.epilog.thread67

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nsw i32 %and.i.i, -32
  %shl7.i = shl nuw i32 1, %sub.i
  %mac_hash2.i = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 22
  %25 = ptrtoint ptr %mac_hash2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_hash2.i, align 8
  %or8.i = or i32 %26, %shl7.i
  store i32 %or8.i, ptr %mac_hash2.i, align 8
  br label %sw.epilog.thread67

sw.bb1:                                           ; preds = %entry
  %incdec.ptr.i.i27 = getelementptr i8, ptr %mac_addr, i32 1
  %27 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mac_addr, align 1
  %conv.i.i28 = zext i8 %28 to i32
  %29 = lshr i32 %conv.i.i28, 2
  %shl.i.i29 = shl nuw nsw i32 %conv.i.i28, 4
  %incdec.ptr3.i.i30 = getelementptr i8, ptr %mac_addr, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i.i27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i.i27, align 1
  %conv4.i.i31 = zext i8 %31 to i32
  %32 = lshr i32 %conv4.i.i31, 4
  %shl7.i.i32 = shl nuw nsw i32 %conv4.i.i31, 2
  %incdec.ptr10.i.i33 = getelementptr i8, ptr %mac_addr, i32 3
  %33 = ptrtoint ptr %incdec.ptr3.i.i30 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr3.i.i30, align 1
  %conv11.i.i34 = zext i8 %34 to i32
  %35 = lshr i32 %conv11.i.i34, 6
  %xor8.i.i35 = xor i32 %shl.i.i29, %29
  %xor.i.i36 = xor i32 %xor8.i.i35, %shl7.i.i32
  %xor2.i.i37 = xor i32 %xor.i.i36, %32
  %xor9.i.i38 = xor i32 %xor2.i.i37, %conv11.i.i34
  %xor15.i.i39 = xor i32 %xor9.i.i38, %35
  %incdec.ptr.1.i.i40 = getelementptr i8, ptr %mac_addr, i32 4
  %36 = ptrtoint ptr %incdec.ptr10.i.i33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr10.i.i33, align 1
  %conv.1.i.i41 = zext i8 %37 to i32
  %38 = lshr i32 %conv.1.i.i41, 2
  %shl.1.i.i42 = shl nuw nsw i32 %conv.1.i.i41, 4
  %incdec.ptr3.1.i.i43 = getelementptr i8, ptr %mac_addr, i32 5
  %39 = ptrtoint ptr %incdec.ptr.1.i.i40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.1.i.i40, align 1
  %conv4.1.i.i44 = zext i8 %40 to i32
  %41 = lshr i32 %conv4.1.i.i44, 4
  %shl7.1.i.i45 = shl nuw nsw i32 %conv4.1.i.i44, 2
  %42 = ptrtoint ptr %incdec.ptr3.1.i.i43 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr3.1.i.i43, align 1
  %conv11.1.i.i46 = zext i8 %43 to i32
  %44 = lshr i32 %conv11.1.i.i46, 6
  %xor14.1.i.i47 = xor i32 %xor15.i.i39, %shl.1.i.i42
  %xor8.1.i.i48 = xor i32 %xor14.1.i.i47, %38
  %xor.1.i.i49 = xor i32 %xor8.1.i.i48, %shl7.1.i.i45
  %xor2.1.i.i50 = xor i32 %xor.1.i.i49, %41
  %xor9.1.i.i51 = xor i32 %xor2.1.i.i50, %conv11.1.i.i46
  %xor9.1.masked.i.i52 = and i32 %xor9.1.i.i51, 63
  %and.i.i53 = xor i32 %xor9.1.masked.i.i52, %44
  %arrayidx.i54 = getelementptr %struct.emac_priv, ptr %priv, i32 0, i32 23, i32 %and.i.i53
  %45 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i = icmp eq i32 %46, 0
  br i1 %cmp.not.i, label %sw.bb1.if.end7.i_crit_edge, label %if.end.i

sw.bb1.if.end7.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end.i:                                         ; preds = %sw.bb1
  %dec.i = add i32 %46, -1
  %47 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dec.i, ptr %arrayidx.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp5.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.if.end12_crit_edge

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %sw.bb1.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i53)
  %cmp8.i = icmp ult i32 %and.i.i53, 32
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i59

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i55 = shl nuw i32 1, %and.i.i53
  %neg.i = xor i32 %shl.i55, -1
  %mac_hash1.i56 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 21
  %48 = ptrtoint ptr %mac_hash1.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mac_hash1.i56, align 4
  %and.i = and i32 %49, %neg.i
  store i32 %and.i, ptr %mac_hash1.i56, align 4
  br label %if.then7

if.else.i59:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i57 = add nsw i32 %and.i.i53, -32
  %shl10.i = shl nuw i32 1, %sub.i57
  %neg11.i = xor i32 %shl10.i, -1
  %mac_hash2.i58 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 22
  %50 = ptrtoint ptr %mac_hash2.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mac_hash2.i58, align 8
  %and12.i = and i32 %51, %neg11.i
  store i32 %and12.i, ptr %mac_hash2.i58, align 8
  br label %if.then7

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mac_hash1 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 21
  %52 = ptrtoint ptr %mac_hash1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %mac_hash1, align 4
  %mac_hash2 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 22
  %53 = ptrtoint ptr %mac_hash2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %mac_hash2, align 8
  br label %if.then7

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mac_hash15 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 21
  %54 = call ptr @memset(ptr %mac_hash15, i32 0, i32 264)
  br label %if.then7

sw.default:                                       ; preds = %entry
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %priv, align 8
  %and = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.default.if.end12_crit_edge, label %do.end

sw.default.if.end12_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %action) #15
  br label %if.end12

sw.epilog.thread67:                               ; preds = %if.else.i, %if.then6.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %arrayidx.i, align 4
  br label %if.then7

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %22, 1
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %inc.i, ptr %arrayidx.i, align 4
  br label %if.end12

if.then7:                                         ; preds = %sw.epilog.thread67, %sw.bb4, %sw.bb3, %if.else.i59, %if.then9.i
  %mac_hash18 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 21
  %59 = ptrtoint ptr %mac_hash18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mac_hash18, align 4
  %emac_base = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 7
  %61 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %emac_base, align 8
  %add.ptr = getelementptr i8, ptr %62, i32 472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %63) #12, !srcloc !248
  %mac_hash29 = getelementptr inbounds %struct.emac_priv, ptr %priv, i32 0, i32 22
  %64 = ptrtoint ptr %mac_hash29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mac_hash29, align 8
  %66 = ptrtoint ptr %emac_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %emac_base, align 8
  %add.ptr11 = getelementptr i8, ptr %67, i32 476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %68) #12, !srcloc !248
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.epilog, %do.end, %sw.default.if.end12_crit_edge, %if.end.i.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @emac_version_string, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @emac_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coal_intvl = getelementptr i8, ptr %ndev, i32 2600
  %0 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coal_intvl, align 8
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_process(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_emac_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @emac_dev_stop(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_emac_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @emac_dev_open(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224, !226, !228, !230}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @__param_debug_level, !1, !"__param_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_leveltype350, !1, !"__UNIQUE_ID_debug_leveltype350", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_level351, !4, !"__UNIQUE_ID_debug_level351", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 65, i32 1}
!5 = !{ptr @__UNIQUE_ID_version352, !6, !"__UNIQUE_ID_version352", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 88, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_ti_davinci_emac__353_2081_davinci_emac_init7, !12, !"__initcall__kmod_ti_davinci_emac__353_2081_davinci_emac_init7", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2081, i32 1}
!13 = !{ptr @__exitcall_davinci_emac_exit, !14, !"__exitcall_davinci_emac_exit", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2093, i32 1}
!15 = !{ptr @__UNIQUE_ID_file354, !16, !"__UNIQUE_ID_file354", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2095, i32 1}
!17 = !{ptr @__UNIQUE_ID_license355, !16, !"__UNIQUE_ID_license355", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author356, !19, !"__UNIQUE_ID_author356", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2096, i32 1}
!20 = !{ptr @__UNIQUE_ID_author357, !21, !"__UNIQUE_ID_author357", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2097, i32 1}
!22 = !{ptr @__UNIQUE_ID_description358, !23, !"__UNIQUE_ID_description358", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2098, i32 1}
!24 = !{ptr @debug_level, !25, !"debug_level", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 63, i32 12}
!26 = !{ptr @__param_str_debug_level, !1, !"__param_str_debug_level", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2063, i32 12}
!29 = !{ptr @davinci_emac_driver, !30, !"davinci_emac_driver", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2061, i32 31}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1814, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @davinci_emac_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @davinci_emac_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @davinci_emac_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1832, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1836, i32 3}
!44 = !{ptr @davinci_emac_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @davinci_emac_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1899, i32 3}
!48 = !{ptr @davinci_emac_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @davinci_emac_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1907, i32 3}
!52 = !{ptr @davinci_emac_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @davinci_emac_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1915, i32 3}
!56 = !{ptr @davinci_emac_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @davinci_emac_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1933, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @davinci_emac_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @davinci_emac_probe._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1945, i32 3}
!65 = !{ptr @davinci_emac_probe._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @davinci_emac_probe._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1954, i32 3}
!69 = !{ptr @davinci_emac_probe._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @davinci_emac_probe._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1962, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @davinci_emac_probe._entry.32, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @davinci_emac_probe._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1740, i32 27}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1743, i32 27}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1746, i32 27}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1749, i32 27}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1752, i32 26}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1754, i32 47}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1756, i32 40}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 915, i32 4}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @emac_rx_handler._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @emac_rx_handler._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @emac_netdev_ops, !96, !"emac_netdev_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1703, i32 36}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1428, i32 3}
!99 = !{ptr @emac_dev_open._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @emac_dev_open._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1464, i32 5}
!103 = !{ptr @emac_dev_open._entry.46, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @emac_dev_open._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @emac_dev_open._entry.49, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1474, i32 6}
!107 = !{ptr @emac_dev_open._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1502, i32 4}
!110 = !{ptr @emac_dev_open._entry.51, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @emac_dev_open._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1532, i32 4}
!114 = !{ptr @emac_dev_open._entry.54, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @emac_dev_open._entry_ptr.56, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1547, i32 3}
!118 = !{ptr @emac_dev_open._entry.57, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @emac_dev_open._entry_ptr.59, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1555, i32 3}
!122 = !{ptr @emac_dev_open._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @emac_dev_open._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1123, i32 4}
!126 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @emac_setmac._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @emac_setmac._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 491, i32 2}
!131 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @emac_set_coalesce._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @emac_set_coalesce._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1399, i32 13}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1401, i32 33}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1628, i32 3}
!140 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @emac_dev_stop._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @emac_dev_stop._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 962, i32 4}
!145 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @emac_dev_xmit._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @emac_dev_xmit._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 969, i32 4}
!150 = !{ptr @emac_dev_xmit._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @emac_dev_xmit._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 979, i32 4}
!154 = !{ptr @emac_dev_xmit._entry.76, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @emac_dev_xmit._entry_ptr.78, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 726, i32 4}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @emac_add_mcast._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @emac_add_mcast._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 623, i32 4}
!163 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @emac_hash_add._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @emac_hash_add._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1155, i32 3}
!168 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @emac_dev_setmac_addr._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @emac_dev_setmac_addr._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1014, i32 3}
!173 = !{ptr @.str.86, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @emac_dev_tx_timeout._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @emac_dev_tx_timeout._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1652, i32 3}
!178 = !{ptr @emac_dev_getnetstats._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @emac_dev_getnetstats._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @ethtool_ops, !181, !"ethtool_ops", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 503, i32 33}
!182 = !{ptr @emac_version_string, !183, !"emac_version_string", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 89, i32 19}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1280, i32 3}
!186 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @emac_poll._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @emac_poll._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1291, i32 5}
!191 = !{ptr @emac_poll._entry.90, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @emac_poll._entry_ptr.92, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 1301, i32 5}
!195 = !{ptr @emac_poll._entry.93, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @emac_poll._entry_ptr.95, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 345, i32 2}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 345, i32 14}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 345, i32 27}
!203 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 346, i32 2}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 347, i32 2}
!207 = !{ptr @.str.101, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 347, i32 25}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 347, i32 47}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 348, i32 2}
!213 = !{ptr @emac_txhost_errcodes, !214, !"emac_txhost_errcodes", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 344, i32 14}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 354, i32 26}
!217 = !{ptr @emac_rxhost_errcodes, !218, !"emac_rxhost_errcodes", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 353, i32 14}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2000, i32 2}
!221 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @davinci_emac_remove._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @davinci_emac_remove._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @davinci_emac_of_match, !225, !"davinci_emac_of_match", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2052, i32 34}
!226 = !{ptr @am3517_emac_data, !227, !"am3517_emac_data", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2043, i32 40}
!228 = !{ptr @dm816_emac_data, !229, !"dm816_emac_data", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2048, i32 40}
!230 = !{ptr @davinci_emac_pm_ops, !231, !"davinci_emac_pm_ops", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/ti/davinci_emac.c", i32 2038, i32 32}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{!"auto-init"}
!242 = !{i8 0, i8 2}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{i64 6235598}
!246 = !{i64 2153775947}
!247 = !{i64 2153777302}
!248 = !{i64 6235180}
!249 = !{i64 2148397919}
!250 = !{i64 883539, i64 883564, i64 883586, i64 883602, i64 883614, i64 883634, i64 883658, i64 883674, i64 883686}
!251 = !{i64 2148398107}
!252 = !{i64 2156855673}
!253 = !{i64 2156855515}
!254 = !{i64 2155113143, i64 2155113631, i64 2155113180, i64 2155113236, i64 2155113270, i64 2155113294, i64 2155113335, i64 2155113356, i64 2155113384, i64 2155113418}
!255 = !{i64 802200, i64 802261}
!256 = !{i64 804932}
!257 = !{i64 805217}
