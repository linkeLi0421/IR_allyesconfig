; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/smsc911x.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smsc911x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.smsc911x_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.smsc911x_platform_config = type { i32, i32, i32, i32, i32, [6 x i8] }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.smsc911x_data = type { ptr, i32, i32, %struct.smsc911x_platform_config, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.napi_struct, i32, [64 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_file380 = internal constant [49 x i8] c"smsc911x.file=drivers/net/ethernet/smsc/smsc911x\00", section ".modinfo", align 1
@__UNIQUE_ID_license381 = internal constant [21 x i8] c"smsc911x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version382 = internal constant [28 x i8] c"smsc911x.version=2008-10-21\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc911x\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2008-10-21\00", [21 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias383 = internal constant [33 x i8] c"smsc911x.alias=platform:smsc911x\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"smsc911x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype384 = internal constant [28 x i8] c"smsc911x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug385 = internal constant [52 x i8] c"smsc911x.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@smsc911x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smsc911x_drv_probe, ptr @smsc911x_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smsc911x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc911x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_smsc911x__389_2686_smsc911x_init_module6 = internal global ptr @smsc911x_init_module, section ".initcall6.init", align 4
@__exitcall_smsc911x_cleanup_module = internal global ptr @smsc911x_cleanup_module, section ".exitcall.exit", align 4
@smsc911x_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,lan9115\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@smsc911x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @smsc911x_suspend, ptr @smsc911x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smsc911x-memory\00", [16 x i8] zeroinitializer }, align 32
@smsc911x_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014smsc911x: Could not allocate resource\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsc911x_drv_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/smsc/smsc911x.c\00", [59 x i8] zeroinitializer }, align 32
@smsc911x_drv_probe._entry_ptr = internal global ptr @smsc911x_drv_probe._entry, section ".printk_index", align 4
@smsc911x_drv_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 2435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014smsc911x: Could not allocate irq resource\0A\00", [51 x i8] zeroinitializer }, align 32
@smsc911x_drv_probe._entry_ptr.9 = internal global ptr @smsc911x_drv_probe._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@standard_smsc911x_ops = internal constant { %struct.smsc911x_ops, [16 x i8] } { %struct.smsc911x_ops { ptr @__smsc911x_reg_read, ptr @__smsc911x_reg_write, ptr @smsc911x_rx_readfifo, ptr @smsc911x_tx_writefifo }, [16 x i8] zeroinitializer }, align 32
@shifted_smsc911x_ops = internal constant { %struct.smsc911x_ops, [16 x i8] } { %struct.smsc911x_ops { ptr @__smsc911x_reg_read_shift, ptr @__smsc911x_reg_write_shift, ptr @smsc911x_rx_readfifo_shift, ptr @smsc911x_tx_writefifo_shift }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC Address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd33a\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vddvario\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get regulators %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@smsc911x_request_resources.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smsc911x_request_resources\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't get clock %li\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulators %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable clock %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smsc,irq-active-high\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsc,irq-push-pull\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smsc,force-internal-phy\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smsc,force-external-phy\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smsc,save-mac-address\00", [42 x i8] zeroinitializer }, align 32
@smsc911x_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->dev_lock\00", [47 x i8] zeroinitializer }, align 32
@smsc911x_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->mac_lock\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device not READY in 100ms aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@smsc911x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @smsc911x_open, ptr @smsc911x_stop, ptr @smsc911x_hard_start_xmit, ptr null, ptr null, ptr null, ptr @smsc911x_set_multicast_list, ptr @smsc911x_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc911x_get_stats, ptr null, ptr null, ptr @smsc911x_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smsc911x_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smsc911x_ethtool_getdrvinfo, ptr @smsc911x_ethtool_getregslen, ptr @smsc911x_ethtool_getregs, ptr null, ptr null, ptr @smsc911x_ethtool_getmsglevel, ptr @smsc911x_ethtool_setmsglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @smsc911x_ethtool_get_eeprom_len, ptr @smsc911x_ethtool_get_eeprom, ptr @smsc911x_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ISR failed signaling test (IRQ %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SMSC911x/921x identified at %#08lx, IRQ: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc911x-mdio\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.37 = internal global [16 x i64] [i64 14, i64 32, i64 18153472, i64 18219008, i64 18284544, i64 18350080, i64 291110912, i64 292159488, i64 293208064, i64 294256640, i64 562692096, i64 2450522112, i64 2450587648, i64 2451570688, i64 2451636224, i64 2454716416]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 18153472, i64 18284544, i64 291110912, i64 293208064]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 61, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 67, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"smsc911x_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2662, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"smsc911x_dt_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2647, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"smsc911x_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2635, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2420, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2424, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2435, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [22 x i8] c"standard_smsc911x_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2353, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"shifted_smsc911x_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2361, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2554, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 423, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 424, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 435, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 441, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 447, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 379, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 385, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2382, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2390, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2392, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2395, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2398, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2401, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2404, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2189, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2190, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2217, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"smsc911x_netdev_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2145, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"smsc911x_ethtool_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2129, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1688, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1696, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1025, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1036, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1075, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [40 x i8] c"../drivers/net/ethernet/smsc/smsc911x.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1076, i32 48 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias383, ptr @__UNIQUE_ID_debug385, ptr @__UNIQUE_ID_debugtype384, ptr @__UNIQUE_ID_file380, ptr @__UNIQUE_ID_license381, ptr @__UNIQUE_ID_version382, ptr @__exitcall_smsc911x_cleanup_module, ptr @__initcall__kmod_smsc911x__389_2686_smsc911x_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @smsc911x_cleanup_module, ptr @smsc911x_drv_probe._entry, ptr @smsc911x_drv_probe._entry.7, ptr @smsc911x_drv_probe._entry_ptr, ptr @smsc911x_drv_probe._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @smsc911x_driver, ptr @smsc911x_dt_ids, ptr @smsc911x_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @standard_smsc911x_ops, ptr @shifted_smsc911x_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @smsc911x_init.__key, ptr @.str.26, ptr @smsc911x_init.__key.27, ptr @.str.28, ptr @.str.29, ptr @smsc911x_netdev_ops, ptr @smsc911x_ethtool_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_drv_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_smsc911x_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shifted_smsc911x_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc911x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_cleanup_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @smsc911x_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smsc911x_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #14
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %res.0225 = phi ptr [ %call4, %if.end.if.end8_crit_edge ], [ %call3, %entry.if.end8_crit_edge ]
  %end.i = getelementptr inbounds %struct.resource, ptr %res.0225, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %res.0225 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res.0225, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call10)
  %cmp = icmp eq i32 %call10, -517
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.else

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 1
  br i1 %cmp12, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #17
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %6 = ptrtoint ptr %res.0225 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res.0225, align 4
  %call21 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef nonnull @.str.1, i32 noundef 0) #14
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @alloc_etherdev_mqs(i32 noundef 576, i32 noundef 1, i32 noundef 1) #14
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_release_io_1_crit_edge, label %if.end28

if.end24.out_release_io_1_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_release_io_1

if.end28:                                         ; preds = %if.end24
  %parent = getelementptr inbounds %struct.net_device, ptr %call25, i32 0, i32 133, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call25, i32 2304
  %irq32 = getelementptr inbounds %struct.net_device, ptr %call25, i32 0, i32 64
  %9 = ptrtoint ptr %irq32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call10, ptr %irq32, align 4
  %10 = ptrtoint ptr %res.0225 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res.0225, align 4
  %call34 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %add.i) #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call34, ptr %add.ptr.i, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end28.out_ioremap_fail_crit_edge, label %if.end38

if.end28.out_ioremap_fail_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ioremap_fail

if.end38:                                         ; preds = %if.end28
  %dev39 = getelementptr i8, ptr %call25, i32 2460
  %13 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %dev39, align 4
  %14 = load i32, ptr @debug, align 4
  %notmask = shl nsw i32 -1, %14
  %sub = xor i32 %notmask, -1
  %msg_enable = getelementptr i8, ptr %call25, i32 2448
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %msg_enable, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %driver_data.i.i, align 4
  %call40 = tail call fastcc i32 @smsc911x_request_resources(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.out_request_resources_fail_crit_edge

if.end38.out_request_resources_fail_crit_edge:    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_request_resources_fail

if.end43:                                         ; preds = %if.end38
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i = getelementptr i8, ptr %18, i32 2848
  %call2.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.end43
  %clk.i = getelementptr i8, ptr %18, i32 2876
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end47_crit_edge, label %if.end.i.if.then4.i_crit_edge

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end.i.if.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end.i.thread:                                  ; preds = %if.end43
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #17
  %clk.i234 = getelementptr i8, ptr %18, i32 2876
  %21 = ptrtoint ptr %clk.i234 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i234, align 4
  %cmp.i.i235 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i235, label %if.end.i.thread.out_enable_resources_fail_crit_edge, label %if.end.i.thread.if.then4.i_crit_edge

if.end.i.thread.if.then4.i_crit_edge:             ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end.i.thread.out_enable_resources_fail_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_enable_resources_fail

if.then4.i:                                       ; preds = %if.end.i.thread.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %23 = phi ptr [ %22, %if.end.i.thread.if.then4.i_crit_edge ], [ %20, %if.end.i.if.then4.i_crit_edge ]
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then4.i.clk_prepare_enable.exit.i_crit_edge

if.then4.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end47_crit_edge, label %if.then3.i.i

if.end.i.i.if.end47_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %23) #14
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then4.i.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then4.i.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %if.then7.i, label %clk_prepare_enable.exit.i.out_enable_resources_fail_crit_edge

clk_prepare_enable.exit.i.out_enable_resources_fail_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_enable_resources_fail

if.then7.i:                                       ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.i) #17
  br label %out_enable_resources_fail

if.end47:                                         ; preds = %if.end.i.i.if.end47_crit_edge, %if.end.i.if.end47_crit_edge
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %cmp49 = icmp eq ptr %25, null
  br i1 %cmp49, label %if.end47.out_disable_resources_crit_edge, label %if.end52

if.end47.out_disable_resources_crit_edge:         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_disable_resources

if.end52:                                         ; preds = %if.end47
  %config53 = getelementptr i8, ptr %call25, i32 2316
  %call55 = tail call fastcc i32 @smsc911x_probe_config(ptr noundef %config53, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end52.if.end64_crit_edge, label %land.lhs.true

if.end52.if.end64_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end52
  %tobool57.not = icmp eq ptr %1, null
  br i1 %tobool57.not, label %land.lhs.true.out_disable_resources_crit_edge, label %if.then58

land.lhs.true.out_disable_resources_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_disable_resources

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %26 = call ptr @memcpy(ptr %config53, ptr %1, i32 28)
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %if.end52.if.end64_crit_edge
  %ops = getelementptr i8, ptr %call25, i32 2844
  %shift = getelementptr i8, ptr %call25, i32 2328
  %27 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool66.not = icmp eq i32 %28, 0
  %spec.store.select = select i1 %tobool66.not, ptr @standard_smsc911x_ops, ptr @shifted_smsc911x_ops
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.store.select, ptr %ops, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #14
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #14
  %call73 = tail call fastcc i32 @smsc911x_init(ptr noundef nonnull %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end64.out_init_fail_crit_edge, label %if.end76

if.end64.out_init_fail_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_init_fail

if.end76:                                         ; preds = %if.end64
  tail call void @netif_carrier_off(ptr noundef nonnull %call25) #14
  %call77 = tail call fastcc i32 @smsc911x_mii_init(ptr noundef %pdev, ptr noundef nonnull %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end81, label %if.end76.out_init_fail_crit_edge

if.end76.out_init_fail_crit_edge:                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_init_fail

if.end81:                                         ; preds = %if.end76
  %call82 = tail call i32 @register_netdev(ptr noundef nonnull %call25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.else86, label %if.end81.out_init_fail_crit_edge

if.end81.out_init_fail_crit_edge:                 ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_init_fail

if.else86:                                        ; preds = %if.end81
  %mac_lock = getelementptr i8, ptr %call25, i32 2344
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call25, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.else86.if.else93_crit_edge

if.else86.if.else93_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else93

is_valid_ether_addr.exit:                         ; preds = %if.else86
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %or.i.i = or i32 %33, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i197.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i197.not, label %is_valid_ether_addr.exit.if.else93_crit_edge, label %if.then90

is_valid_ether_addr.exit.if.else93_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else93

if.then90:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %add.ptr.i, ptr noundef %31)
  br label %if.end111

if.else93:                                        ; preds = %is_valid_ether_addr.exit.if.else93_crit_edge, %if.else86.if.else93_crit_edge
  %mac = getelementptr i8, ptr %call25, i32 2336
  %37 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mac, align 4
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i198 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i198, label %is_valid_ether_addr.exit204, label %if.else93.if.else101_crit_edge

if.else93.if.else101_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else101

is_valid_ether_addr.exit204:                      ; preds = %if.else93
  %add.ptr.i.i199 = getelementptr i8, ptr %call25, i32 2340
  %40 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i199, align 2
  %conv.i.i200 = zext i16 %41 to i32
  %or.i.i201 = or i32 %38, %conv.i.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i201)
  %cmp.i.i202.not = icmp eq i32 %or.i.i201, 0
  br i1 %cmp.i.i202.not, label %is_valid_ether_addr.exit204.if.else101_crit_edge, label %if.then96

is_valid_ether_addr.exit204.if.else101_crit_edge: ; preds = %is_valid_ether_addr.exit204
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else101

if.then96:                                        ; preds = %is_valid_ether_addr.exit204
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef nonnull %call25, i32 noundef 0, ptr noundef %mac, i32 noundef 6) #14
  br label %if.end111

if.else101:                                       ; preds = %is_valid_ether_addr.exit204.if.else101_crit_edge, %if.else93.if.else101_crit_edge
  tail call fastcc void @smsc911x_read_mac_address(ptr noundef nonnull %call25)
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr, align 64
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i205 = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i205, label %is_valid_ether_addr.exit211, label %if.else101.if.else106_crit_edge

if.else101.if.else106_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else106

is_valid_ether_addr.exit211:                      ; preds = %if.else101
  %add.ptr.i.i206 = getelementptr i8, ptr %43, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i206 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i.i206, align 2
  %conv.i.i207 = zext i16 %48 to i32
  %or.i.i208 = or i32 %45, %conv.i.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i208)
  %cmp.i.i209.not = icmp eq i32 %or.i.i208, 0
  br i1 %cmp.i.i209.not, label %is_valid_ether_addr.exit211.if.else106_crit_edge, label %is_valid_ether_addr.exit211.if.end111_crit_edge

is_valid_ether_addr.exit211.if.end111_crit_edge:  ; preds = %is_valid_ether_addr.exit211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

is_valid_ether_addr.exit211.if.else106_crit_edge: ; preds = %is_valid_ether_addr.exit211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else106

if.else106:                                       ; preds = %is_valid_ether_addr.exit211.if.else106_crit_edge, %if.else101.if.else106_crit_edge
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call25)
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %add.ptr.i, ptr noundef %50)
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %is_valid_ether_addr.exit211.if.end111_crit_edge, %if.then96, %if.then90
  tail call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  %call.i212 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #14
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call25, ptr noundef nonnull @.str.10, ptr noundef %52) #17
  br label %cleanup

out_init_fail:                                    ; preds = %if.end81.out_init_fail_crit_edge, %if.end76.out_init_fail_crit_edge, %if.end64.out_init_fail_crit_edge
  %retval2.1 = phi i32 [ %call73, %if.end64.out_init_fail_crit_edge ], [ %call77, %if.end76.out_init_fail_crit_edge ], [ %call82, %if.end81.out_init_fail_crit_edge ]
  %call.i213 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  br label %out_disable_resources

out_disable_resources:                            ; preds = %out_init_fail, %land.lhs.true.out_disable_resources_crit_edge, %if.end47.out_disable_resources_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %out_init_fail ], [ -12, %if.end47.out_disable_resources_crit_edge ], [ %call55, %land.lhs.true.out_disable_resources_crit_edge ]
  tail call fastcc void @smsc911x_disable_resources(ptr noundef %pdev)
  br label %out_enable_resources_fail

out_enable_resources_fail:                        ; preds = %out_disable_resources, %if.then7.i, %clk_prepare_enable.exit.i.out_enable_resources_fail_crit_edge, %if.end.i.thread.out_enable_resources_fail_crit_edge
  %retval2.3 = phi i32 [ %retval2.2, %out_disable_resources ], [ %retval.0.i.i, %if.then7.i ], [ %retval.0.i.i, %clk_prepare_enable.exit.i.out_enable_resources_fail_crit_edge ], [ %call2.i, %if.end.i.thread.out_enable_resources_fail_crit_edge ]
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i215 = getelementptr i8, ptr %54, i32 2848
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %supplies.i215) #14
  %clk.i216 = getelementptr i8, ptr %54, i32 2876
  %55 = ptrtoint ptr %clk.i216 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk.i216, align 4
  %cmp.i.i217 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i217, label %out_enable_resources_fail.out_request_resources_fail_crit_edge, label %if.then.i218

out_enable_resources_fail.out_request_resources_fail_crit_edge: ; preds = %out_enable_resources_fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_request_resources_fail

if.then.i218:                                     ; preds = %out_enable_resources_fail
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_put(ptr noundef %56) #14
  %57 = ptrtoint ptr %clk.i216 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %clk.i216, align 4
  br label %out_request_resources_fail

out_request_resources_fail:                       ; preds = %if.then.i218, %out_enable_resources_fail.out_request_resources_fail_crit_edge, %if.end38.out_request_resources_fail_crit_edge
  %retval2.4 = phi i32 [ %call40, %if.end38.out_request_resources_fail_crit_edge ], [ %retval2.3, %out_enable_resources_fail.out_request_resources_fail_crit_edge ], [ %retval2.3, %if.then.i218 ]
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 8
  tail call void @iounmap(ptr noundef %59) #14
  br label %out_ioremap_fail

out_ioremap_fail:                                 ; preds = %out_request_resources_fail, %if.end28.out_ioremap_fail_crit_edge
  %retval2.5 = phi i32 [ %retval2.4, %out_request_resources_fail ], [ -12, %if.end28.out_ioremap_fail_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call25) #14
  br label %out_release_io_1

out_release_io_1:                                 ; preds = %out_ioremap_fail, %if.end24.out_release_io_1_crit_edge
  %retval2.6 = phi i32 [ %retval2.5, %out_ioremap_fail ], [ -12, %if.end24.out_release_io_1_crit_edge ]
  %60 = ptrtoint ptr %res.0225 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %res.0225, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end.i, align 4
  %sub.i221 = sub i32 1, %61
  %add.i222 = add i32 %sub.i221, %63
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %61, i32 noundef %add.i222) #14
  br label %cleanup

cleanup:                                          ; preds = %out_release_io_1, %if.end111, %if.end20.cleanup_crit_edge, %do.end16, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end111 ], [ -19, %do.end16 ], [ %retval2.6, %out_release_io_1 ], [ -19, %do.end ], [ -517, %if.end8.cleanup_crit_edge ], [ -16, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !110

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2321, 0\0A.popsection", ""() #14, !srcloc !111
  unreachable

do.end9:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %tobool12.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool12.not, label %do.body22, label %do.body31, !prof !110

do.body22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2323, 0\0A.popsection", ""() #14, !srcloc !112
  unreachable

do.body31:                                        ; preds = %do.end9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %tobool32.not = icmp eq ptr %3, null
  br i1 %tobool32.not, label %do.body42, label %do.end50, !prof !110

do.body42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2324, 0\0A.popsection", ""() #14, !srcloc !113
  unreachable

do.end50:                                         ; preds = %do.body31
  tail call void @unregister_netdev(ptr noundef nonnull %1) #14
  %mii_bus = getelementptr i8, ptr %1, i32 2432
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %5) #14
  %6 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %7) #14
  %call52 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #14
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.then54, label %do.end50.if.end56_crit_edge

do.end50.if.end56_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then54:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %do.end50.if.end56_crit_edge
  %res.0 = phi ptr [ %call52, %do.end50.if.end56_crit_edge ], [ %call55, %if.then54 ]
  %8 = ptrtoint ptr %res.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res.0, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %res.0, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %add.i) #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void @iounmap(ptr noundef %13) #14
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i = getelementptr i8, ptr %15, i32 2848
  %call2.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #14
  %clk.i = getelementptr i8, ptr %15, i32 2876
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end56.smsc911x_disable_resources.exit_crit_edge, label %if.then.i

if.end56.smsc911x_disable_resources.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_disable_resources.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_disable(ptr noundef %17) #14
  tail call void @clk_unprepare(ptr noundef %17) #14
  br label %smsc911x_disable_resources.exit

smsc911x_disable_resources.exit:                  ; preds = %if.then.i, %if.end56.smsc911x_disable_resources.exit_crit_edge
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %supplies.i76 = getelementptr i8, ptr %19, i32 2848
  tail call void @regulator_bulk_free(i32 noundef 2, ptr noundef %supplies.i76) #14
  %clk.i77 = getelementptr i8, ptr %19, i32 2876
  %20 = ptrtoint ptr %clk.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk.i77, align 4
  %cmp.i.i78 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i78, label %smsc911x_disable_resources.exit.smsc911x_free_resources.exit_crit_edge, label %if.then.i79

smsc911x_disable_resources.exit.smsc911x_free_resources.exit_crit_edge: ; preds = %smsc911x_disable_resources.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_free_resources.exit

if.then.i79:                                      ; preds = %smsc911x_disable_resources.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_put(ptr noundef %21) #14
  %22 = ptrtoint ptr %clk.i77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %clk.i77, align 4
  br label %smsc911x_free_resources.exit

smsc911x_free_resources.exit:                     ; preds = %if.then.i79, %smsc911x_disable_resources.exit.smsc911x_free_resources.exit_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %1) #14
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev60, i1 noundef zeroext true) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_request_resources(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr i8, ptr %1, i32 2848
  %2 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.11, ptr %supplies, align 8
  %arrayidx3 = getelementptr i8, ptr %1, i32 2860
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.12, ptr %arrayidx3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call6 = tail call i32 @regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %supplies) #14
  %4 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end [
    i32 0, label %entry.if.end8_crit_edge
    i32 -517, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %call6) #17
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 3) #14
  %reset_gpiod = getelementptr i8, ptr %1, i32 2872
  %5 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %reset_gpiod, align 8
  %call12 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #14
  %clk = getelementptr i8, ptr %1, i32 2876
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc911x_request_resources.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc911x_request_resources, %if.then20)) #14
          to label %cleanup [label %if.then20], !srcloc !114

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc911x_request_resources.__UNIQUE_ID_ddebug386, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_probe_config(ptr noundef %config, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #14
  %0 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %width, align 4
  %call = tail call i32 @device_get_phy_mode(ptr noundef %dev) #14
  %1 = tail call i32 @llvm.smax.i32(i32 %call, i32 0)
  %phy_interface1 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 4
  %2 = ptrtoint ptr %phy_interface1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %phy_interface1, align 4
  %mac = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 5
  %call2 = tail call i32 @device_get_mac_address(ptr noundef %dev, ptr noundef %mac) #14
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %width, i32 noundef 1) #14
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call.i, label %entry.if.else_crit_edge [
    i32 -6, label %entry.cleanup_crit_edge
    i32 0, label %land.lhs.true
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp7 = icmp eq i32 %5, 4
  br i1 %cmp7, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end11

if.end11:                                         ; preds = %if.else, %land.lhs.true.if.end11_crit_edge
  %.sink57 = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true.if.end11_crit_edge ]
  %flags9 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags9, align 4
  %or10 = or i32 %7, %.sink57
  store i32 %or10, ptr %flags9, align 4
  %shift = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 3
  %call.i56 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %shift, i32 noundef 1) #14
  %call13 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  br i1 %call13, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %config, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %call16 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.22) #14
  br i1 %call16, label %if.then17, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %irq_type = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 1
  %9 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %irq_type, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %call19 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  br i1 %call19, label %if.then20, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %flags21 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags21, align 4
  %or22 = or i32 %11, 4
  store i32 %or22, ptr %flags21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %call24 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.24) #14
  br i1 %call24, label %if.then25, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %flags26 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 2
  %12 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags26, align 4
  %or27 = or i32 %13, 8
  store i32 %or27, ptr %flags26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %call29 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  br i1 %call29, label %if.then30, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %flags31 = getelementptr inbounds %struct.smsc911x_platform_config, ptr %config, i32 0, i32 2
  %14 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags31, align 4
  %or32 = or i32 %15, 16
  store i32 %or32, ptr %flags31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_lock = getelementptr i8, ptr %dev, i32 2388
  tail call void @__raw_spin_lock_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @smsc911x_init.__key, i16 noundef signext 3) #14
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  tail call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @smsc911x_init.__key.27, i16 noundef signext 3) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call2.i121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call5.i122 = tail call i32 %5(ptr noundef %add.ptr.i, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i121) #14
  %and123 = and i32 %call5.i122, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool.not124 = icmp eq i32 %and123, 0
  br i1 %tobool.not124, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.if.end14_crit_edge

while.cond.preheader.if.end14_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %to.0125 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 100, %while.cond.preheader.land.rhs_crit_edge ]
  %dec = add nsw i32 %to.0125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %if.then13.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call5.i = tail call i32 %10(ptr noundef %add.ptr.i, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i) #14
  %and = and i32 %call5.i, 65537
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.then13.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #17
  br label %cleanup

if.end14:                                         ; preds = %while.body.if.end14_crit_edge, %while.cond.preheader.if.end14_crit_edge
  %call2.i100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call5.i102 = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1126270821, i32 %call5.i102)
  %cmp17 = icmp eq i32 %call5.i102, 1126270821
  br i1 %cmp17, label %if.then18, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_write.i, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 152, i32 noundef -1) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i104) #14
  %call2.i107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call5.i109 = tail call i32 %22(ptr noundef %add.ptr.i, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i107) #14
  %call2.i111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call5.i113 = tail call i32 %26(ptr noundef %add.ptr.i, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i111) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14.if.end22_crit_edge
  %byte_test.0 = phi i32 [ %call5.i113, %if.then18 ], [ %call5.i102, %if.end14.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2023406815, i32 %byte_test.0)
  %cmp23.not = icmp eq i32 %byte_test.0, -2023406815
  br i1 %cmp23.not, label %if.end33, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %generation = getelementptr i8, ptr %dev, i32 2312
  %27 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %generation, align 8
  %call2.i115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call5.i117 = tail call i32 %31(ptr noundef %add.ptr.i, i32 noundef 80) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2.i115) #14
  %idrev = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %idrev to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call5.i117, ptr %idrev, align 4
  %and36 = and i32 %call5.i117, -65536
  %33 = zext i32 %and36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and36, label %if.end33.cleanup_crit_edge [
    i32 18350080, label %if.end33.sw.bb_crit_edge
    i32 18284544, label %if.end33.sw.bb_crit_edge126
    i32 18219008, label %if.end33.sw.bb_crit_edge127
    i32 18153472, label %if.end33.sw.bb_crit_edge128
    i32 562692096, label %if.end33.sw.bb_crit_edge129
    i32 294256640, label %if.end33.sw.epilog_crit_edge
    i32 293208064, label %if.end33.sw.epilog_crit_edge130
    i32 292159488, label %if.end33.sw.epilog_crit_edge131
    i32 291110912, label %if.end33.sw.epilog_crit_edge132
    i32 -1844445184, label %if.end33.sw.bb42_crit_edge
    i32 -1844379648, label %if.end33.sw.bb42_crit_edge133
    i32 -1843396608, label %if.end33.sw.bb42_crit_edge134
    i32 -1843331072, label %if.end33.sw.bb42_crit_edge135
    i32 -1840250880, label %if.end33.sw.bb42_crit_edge136
  ]

if.end33.sw.bb42_crit_edge136:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.end33.sw.bb42_crit_edge135:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.end33.sw.bb42_crit_edge134:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.end33.sw.bb42_crit_edge133:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.end33.sw.bb42_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

if.end33.sw.epilog_crit_edge132:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end33.sw.epilog_crit_edge131:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end33.sw.epilog_crit_edge130:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end33.sw.bb_crit_edge129:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end33.sw.bb_crit_edge128:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end33.sw.bb_crit_edge127:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end33.sw.bb_crit_edge126:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end33.sw.bb_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end33.sw.bb_crit_edge, %if.end33.sw.bb_crit_edge126, %if.end33.sw.bb_crit_edge127, %if.end33.sw.bb_crit_edge128, %if.end33.sw.bb_crit_edge129
  %and38 = and i32 %call5.i117, 65535
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end33.sw.bb42_crit_edge, %if.end33.sw.bb42_crit_edge133, %if.end33.sw.bb42_crit_edge134, %if.end33.sw.bb42_crit_edge135, %if.end33.sw.bb42_crit_edge136
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb, %if.end33.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge130, %if.end33.sw.epilog_crit_edge131, %if.end33.sw.epilog_crit_edge132
  %.sink = phi i32 [ 4, %sw.bb42 ], [ %and38, %sw.bb ], [ 3, %if.end33.sw.epilog_crit_edge ], [ 3, %if.end33.sw.epilog_crit_edge130 ], [ 3, %if.end33.sw.epilog_crit_edge131 ], [ 3, %if.end33.sw.epilog_crit_edge132 ]
  %34 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %generation, align 8
  %flags = getelementptr i8, ptr %dev, i32 2324
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and51 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %sw.epilog.if.end56_crit_edge, label %if.then53

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then53:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  %call1.i = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 2) #14
  %call2.i118 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 3) #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %37 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %38 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %39 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %40 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %41 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %conv.i = trunc i32 %call2.i118 to i8
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %addr.i, align 1
  %shr.i = lshr i32 %call2.i118, 8
  %conv3.i = trunc i32 %shr.i to i8
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv3.i, ptr %37, align 1
  %shr5.i = lshr i32 %call2.i118, 16
  %conv6.i = trunc i32 %shr5.i to i8
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.i, ptr %38, align 1
  %shr8.i = lshr i32 %call2.i118, 24
  %conv9.i = trunc i32 %shr8.i to i8
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv9.i, ptr %39, align 1
  %conv11.i = trunc i32 %call1.i to i8
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv11.i, ptr %40, align 1
  %shr13.i = lshr i32 %call1.i, 8
  %conv14.i = trunc i32 %shr13.i to i8
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv14.i, ptr %41, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %sw.epilog.if.end56_crit_edge
  %call57 = call fastcc i32 @smsc911x_phy_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end56
  %call59 = call fastcc i32 @smsc911x_soft_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %flags63 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %48 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags63, align 8
  %or = or i32 %49, 4096
  store i32 %or, ptr %flags63, align 8
  %napi = getelementptr i8, ptr %dev, i32 2464
  call void @netif_napi_add(ptr noundef %dev, ptr noundef %napi, ptr noundef nonnull @smsc911x_poll, i32 noundef 16) #14
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %50 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @smsc911x_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %51 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @smsc911x_ethtool_ops, ptr %ethtool_ops, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %lor.lhs.false.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then13.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then13.critedge ], [ 0, %if.end62 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end33.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end56.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_mii_init(ptr noundef %pdev, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #14
  %mii_bus = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %mii_bus, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.34, ptr %name, align 4
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %id6 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %6 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id6, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.35, ptr noundef %5, i32 noundef %7)
  %8 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mii_bus, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %priv, align 8
  %11 = load ptr, ptr %mii_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smsc911x_mii_read, ptr %read, align 4
  %13 = load ptr, ptr %mii_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smsc911x_mii_write, ptr %write, align 8
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %15 = load ptr, ptr %mii_bus, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev11, ptr %parent, align 4
  %idrev = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %idrev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idrev, align 4
  %and = and i32 %18, -65536
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and, label %if.end.if.then15_crit_edge [
    i32 18284544, label %if.end.sw.bb_crit_edge
    i32 18153472, label %if.end.sw.bb_crit_edge49
    i32 293208064, label %if.end.sw.bb_crit_edge50
    i32 291110912, label %if.end.sw.bb_crit_edge51
  ]

if.end.sw.bb_crit_edge51:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge50:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge49:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge49, %if.end.sw.bb_crit_edge50, %if.end.sw.bb_crit_edge51
  %dev_lock.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2844
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call5.i.i = tail call i32 %23(ptr noundef %add.ptr.i, i32 noundef 116) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %flags.i = getelementptr i8, ptr %dev, i32 2324
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb.if.then15_crit_edge

sw.bb.if.then15_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.else.i:                                        ; preds = %sw.bb
  %and3.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %and9.i = and i32 %call5.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i.if.then15_crit_edge, label %if.end18.sink.split.i

if.else.i.if.then15_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.end18.sink.split.i:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call5.i.i46 = tail call i32 %29(ptr noundef %add.ptr.i, i32 noundef 116) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i44) #14
  %and.i47 = and i32 %call5.i.i46, -97
  %or.i = or i32 %and.i47, 64
  %call2.i19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write.i.i, align 4
  tail call void %33(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i19.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #14
  %or1.i = or i32 %and.i47, 68
  %call2.i22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i24.i = getelementptr inbounds %struct.smsc911x_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %reg_write.i24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_write.i24.i, align 4
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or1.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i22.i) #14
  %or3.i = or i32 %and.i47, 36
  %call2.i26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i28.i = getelementptr inbounds %struct.smsc911x_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %reg_write.i28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_write.i28.i, align 4
  tail call void %42(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or3.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i26.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #14
  %or4.i = or i32 %and.i47, 52
  %call2.i30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %44 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i32.i = getelementptr inbounds %struct.smsc911x_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %reg_write.i32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_write.i32.i, align 4
  tail call void %47(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or4.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i30.i) #14
  %using_extphy.c48 = getelementptr i8, ptr %dev, i32 2436
  %48 = ptrtoint ptr %using_extphy.c48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %using_extphy.c48, align 4
  br label %if.end17

if.then15:                                        ; preds = %if.else.i.if.then15_crit_edge, %sw.bb.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %using_extphy = getelementptr i8, ptr %dev, i32 2436
  %49 = ptrtoint ptr %using_extphy to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %using_extphy, align 4
  %50 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mii_bus, align 8
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -3, ptr %phy_mask, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end18.sink.split.i
  %53 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mii_bus, align 8
  %call19 = tail call i32 @__mdiobus_register(ptr noundef %54, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %56) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ -6, %if.then21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_set_hw_mac_address(ptr noundef %pdata, ptr nocapture noundef readonly %dev_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev_addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %dev_addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %arrayidx3 = getelementptr i8, ptr %dev_addr, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr i8, ptr %dev_addr, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %arrayidx10 = getelementptr i8, ptr %dev_addr, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_addr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1512, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw i32 %conv4, 24
  %conv7 = zext i8 %7 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %shl5
  %conv11 = zext i8 %9 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %or13 = or i32 %or9, %shl12
  %conv15 = zext i8 %11 to i32
  %or16 = or i32 %or13, %conv15
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 2, i32 noundef %or)
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 3, i32 noundef %or16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_read_mac_address(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 2)
  %call2 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %conv = trunc i32 %call2 to i8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %addr, align 1
  %shr = lshr i32 %call2, 8
  %conv3 = trunc i32 %shr to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %0, align 1
  %shr5 = lshr i32 %call2, 16
  %conv6 = trunc i32 %shr5 to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %1, align 1
  %shr8 = lshr i32 %call2, 24
  %conv9 = trunc i32 %shr8 to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %2, align 1
  %conv11 = trunc i32 %call1 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %3, align 1
  %shr13 = lshr i32 %call1, 8
  %conv14 = trunc i32 %shr13 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #14
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_disable_resources(ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr i8, ptr %1, i32 2848
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #14
  %clk = getelementptr i8, ptr %1, i32 2876
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_disable(ptr noundef %3) #14
  tail call void @clk_unprepare(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__smsc911x_reg_read(ptr nocapture noundef readonly %pdata, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !115
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !116
  br label %return

if.end:                                           ; preds = %entry
  %and4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %add.ptr10 = getelementptr i8, ptr %7, i32 %reg
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !118
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 8
  %add.ptr18 = getelementptr i8, ptr %10, i32 %reg
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 2
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !119
  %12 = zext i16 %11 to i32
  %13 = zext i16 %8 to i32
  %14 = shl nuw i32 %13, 16
  %15 = or i32 %14, %12
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #14, !srcloc !120
  unreachable

return:                                           ; preds = %if.then6, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %16, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__smsc911x_reg_write(ptr nocapture noundef readonly %pdata, i32 noundef %reg, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !121
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #14, !srcloc !122
  br label %do.end22

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body19, label %do.body6

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  tail call void @arm_heavy_mb() #14
  %conv = trunc i32 %val to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %add.ptr10 = getelementptr i8, ptr %7, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %5) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !125
  tail call void @arm_heavy_mb() #14
  %shr = lshr i32 %val, 16
  %conv14 = trunc i32 %shr to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 8
  %add.ptr16 = getelementptr i8, ptr %10, i32 %reg
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 %8) #14, !srcloc !124
  br label %do.end22

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #14, !srcloc !126
  unreachable

do.end22:                                         ; preds = %do.body6, %do.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_rx_readfifo(ptr noundef %pdata, ptr noundef %buf, i32 noundef %wordcount) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %flags5 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool6.not58 = icmp eq i32 %wordcount, 0
  br i1 %tobool6.not58, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body:                                       ; preds = %__smsc911x_reg_read.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.060 = phi ptr [ %incdec.ptr, %__smsc911x_reg_read.exit.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %wordcount.addr.059 = phi i32 [ %dec, %__smsc911x_reg_read.exit.while.body_crit_edge ], [ %wordcount, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %wordcount.addr.059, -1
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags5, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !116
  br label %__smsc911x_reg_read.exit

if.end.i:                                         ; preds = %while.body
  %and4.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !118
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %add.ptr19.i = getelementptr i8, ptr %12, i32 2
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19.i) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !119
  %14 = zext i16 %13 to i32
  %15 = zext i16 %10 to i32
  %16 = shl nuw i32 %15, 16
  %17 = or i32 %16, %14
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  br label %__smsc911x_reg_read.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #14, !srcloc !120
  unreachable

__smsc911x_reg_read.exit:                         ; preds = %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %18, %if.then6.i ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %incdec.ptr = getelementptr i32, ptr %buf.addr.060, i32 1
  %20 = ptrtoint ptr %buf.addr.060 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buf.addr.060, align 4
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %__smsc911x_reg_read.exit.out_crit_edge, label %__smsc911x_reg_read.exit.while.body_crit_edge

__smsc911x_reg_read.exit.while.body_crit_edge:    ; preds = %__smsc911x_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

__smsc911x_reg_read.exit.out_crit_edge:           ; preds = %__smsc911x_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %and10 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 8
  tail call void @__raw_readsl(ptr noundef %22, ptr noundef %buf, i32 noundef %wordcount) #14
  br label %out

if.end13:                                         ; preds = %if.end
  %and16 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body27, label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool21.not61 = icmp eq i32 %wordcount, 0
  br i1 %tobool21.not61, label %while.cond19.preheader.out_crit_edge, label %while.cond19.preheader.while.body22_crit_edge

while.cond19.preheader.while.body22_crit_edge:    ; preds = %while.cond19.preheader
  br label %while.body22

while.cond19.preheader.out_crit_edge:             ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body22:                                     ; preds = %__smsc911x_reg_read.exit56.while.body22_crit_edge, %while.cond19.preheader.while.body22_crit_edge
  %buf.addr.163 = phi ptr [ %incdec.ptr24, %__smsc911x_reg_read.exit56.while.body22_crit_edge ], [ %buf, %while.cond19.preheader.while.body22_crit_edge ]
  %wordcount.addr.162 = phi i32 [ %dec20, %__smsc911x_reg_read.exit56.while.body22_crit_edge ], [ %wordcount, %while.cond19.preheader.while.body22_crit_edge ]
  %dec20 = add i32 %wordcount.addr.162, -1
  %23 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags5, align 4
  %and.i46 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %if.end.i51, label %if.then.i48

if.then.i48:                                      ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #14, !srcloc !115
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !116
  br label %__smsc911x_reg_read.exit56

if.end.i51:                                       ; preds = %while.body22
  %and4.i49 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i49)
  %tobool5.not.i50 = icmp eq i32 %and4.i49, 0
  br i1 %tobool5.not.i50, label %do.body.i54, label %if.then6.i53

if.then6.i53:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 8
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !118
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 8
  %add.ptr19.i52 = getelementptr i8, ptr %33, i32 2
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19.i52) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !119
  %35 = zext i16 %34 to i32
  %36 = zext i16 %31 to i32
  %37 = shl nuw i32 %36, 16
  %38 = or i32 %37, %35
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  br label %__smsc911x_reg_read.exit56

do.body.i54:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #14, !srcloc !120
  unreachable

__smsc911x_reg_read.exit56:                       ; preds = %if.then6.i53, %if.then.i48
  %retval.0.i55 = phi i32 [ %28, %if.then.i48 ], [ %39, %if.then6.i53 ]
  %incdec.ptr24 = getelementptr i32, ptr %buf.addr.163, i32 1
  %40 = ptrtoint ptr %buf.addr.163 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i55, ptr %buf.addr.163, align 4
  %tobool21.not = icmp eq i32 %dec20, 0
  br i1 %tobool21.not, label %__smsc911x_reg_read.exit56.out_crit_edge, label %__smsc911x_reg_read.exit56.while.body22_crit_edge

__smsc911x_reg_read.exit56.while.body22_crit_edge: ; preds = %__smsc911x_reg_read.exit56
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body22

__smsc911x_reg_read.exit56.out_crit_edge:         ; preds = %__smsc911x_reg_read.exit56
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 328, 0\0A.popsection", ""() #14, !srcloc !127
  unreachable

out:                                              ; preds = %__smsc911x_reg_read.exit56.out_crit_edge, %while.cond19.preheader.out_crit_edge, %if.then12, %__smsc911x_reg_read.exit.out_crit_edge, %while.cond.preheader.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_tx_writefifo(ptr noundef %pdata, ptr noundef %buf, i32 noundef %wordcount) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %flags5 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool6.not61 = icmp eq i32 %wordcount, 0
  br i1 %tobool6.not61, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body:                                       ; preds = %__smsc911x_reg_write.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.063 = phi ptr [ %incdec.ptr, %__smsc911x_reg_write.exit.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %wordcount.addr.062 = phi i32 [ %dec, %__smsc911x_reg_write.exit.while.body_crit_edge ], [ %wordcount, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %wordcount.addr.062, -1
  %incdec.ptr = getelementptr i32, ptr %buf.addr.063, i32 1
  %2 = ptrtoint ptr %buf.addr.063 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf.addr.063, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags5, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !121
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #14, !srcloc !122
  br label %__smsc911x_reg_write.exit

if.end.i:                                         ; preds = %while.body
  %and3.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body19.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  tail call void @arm_heavy_mb() #14
  %9 = lshr i32 %3, 16
  %10 = trunc i32 %9 to i16
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %add.ptr10.i = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %10) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !125
  tail call void @arm_heavy_mb() #14
  %shr.i = lshr i32 %4, 16
  %conv14.i = trunc i32 %shr.i to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #14
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %add.ptr17.i = getelementptr i8, ptr %15, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 %13) #14, !srcloc !124
  br label %__smsc911x_reg_write.exit

do.body19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #14, !srcloc !126
  unreachable

__smsc911x_reg_write.exit:                        ; preds = %do.body6.i, %do.body.i
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %__smsc911x_reg_write.exit.out_crit_edge, label %__smsc911x_reg_write.exit.while.body_crit_edge

__smsc911x_reg_write.exit.while.body_crit_edge:   ; preds = %__smsc911x_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

__smsc911x_reg_write.exit.out_crit_edge:          ; preds = %__smsc911x_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %and9 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 32
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %wordcount) #14
  br label %out

if.end12:                                         ; preds = %if.end
  %and15 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body25, label %while.cond18.preheader

while.cond18.preheader:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool20.not64 = icmp eq i32 %wordcount, 0
  br i1 %tobool20.not64, label %while.cond18.preheader.out_crit_edge, label %while.cond18.preheader.while.body21_crit_edge

while.cond18.preheader.while.body21_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body21

while.cond18.preheader.out_crit_edge:             ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body21:                                     ; preds = %__smsc911x_reg_write.exit59.while.body21_crit_edge, %while.cond18.preheader.while.body21_crit_edge
  %buf.addr.166 = phi ptr [ %incdec.ptr22, %__smsc911x_reg_write.exit59.while.body21_crit_edge ], [ %buf, %while.cond18.preheader.while.body21_crit_edge ]
  %wordcount.addr.165 = phi i32 [ %dec19, %__smsc911x_reg_write.exit59.while.body21_crit_edge ], [ %wordcount, %while.cond18.preheader.while.body21_crit_edge ]
  %dec19 = add i32 %wordcount.addr.165, -1
  %incdec.ptr22 = getelementptr i32, ptr %buf.addr.166, i32 1
  %18 = ptrtoint ptr %buf.addr.166 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf.addr.166, align 4
  %20 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags5, align 4
  %and.i44 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.end.i50, label %do.body.i47

do.body.i47:                                      ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !121
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 8
  %add.ptr.i46 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %22) #14, !srcloc !122
  br label %__smsc911x_reg_write.exit59

if.end.i50:                                       ; preds = %while.body21
  %and3.i48 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i48)
  %tobool4.not.i49 = icmp eq i32 %and3.i48, 0
  br i1 %tobool4.not.i49, label %do.body19.i58, label %do.body6.i57

do.body6.i57:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !123
  tail call void @arm_heavy_mb() #14
  %conv.i51 = trunc i32 %19 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i51) #14
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 8
  %add.ptr10.i52 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i52, i16 %25) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !125
  tail call void @arm_heavy_mb() #14
  %shr.i53 = lshr i32 %19, 16
  %conv14.i54 = trunc i32 %shr.i53 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv14.i54) #14
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdata, align 8
  %add.ptr17.i56 = getelementptr i8, ptr %30, i32 34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i56, i16 %28) #14, !srcloc !124
  br label %__smsc911x_reg_write.exit59

do.body19.i58:                                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #14, !srcloc !126
  unreachable

__smsc911x_reg_write.exit59:                      ; preds = %do.body6.i57, %do.body.i47
  %tobool20.not = icmp eq i32 %dec19, 0
  br i1 %tobool20.not, label %__smsc911x_reg_write.exit59.out_crit_edge, label %__smsc911x_reg_write.exit59.while.body21_crit_edge

__smsc911x_reg_write.exit59.while.body21_crit_edge: ; preds = %__smsc911x_reg_write.exit59
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body21

__smsc911x_reg_write.exit59.out_crit_edge:        ; preds = %__smsc911x_reg_write.exit59
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #14, !srcloc !128
  unreachable

out:                                              ; preds = %__smsc911x_reg_write.exit59.out_crit_edge, %while.cond18.preheader.out_crit_edge, %if.then11, %__smsc911x_reg_write.exit.out_crit_edge, %while.cond.preheader.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__smsc911x_reg_read_shift(ptr nocapture noundef readonly %pdata, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %shift = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shl = shl i32 %reg, %5
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  br label %return

if.end:                                           ; preds = %entry
  %and5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  %shift12 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %shift12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift12, align 4
  %shl13 = shl i32 %reg, %11
  %add.ptr14 = getelementptr i8, ptr %9, i32 %shl13
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %add = add i32 %reg, 2
  %15 = ptrtoint ptr %shift12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift12, align 4
  %shl24 = shl i32 %add, %16
  %add.ptr25 = getelementptr i8, ptr %14, i32 %shl24
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %18 = zext i16 %17 to i32
  %19 = zext i16 %12 to i32
  %20 = shl nuw i32 %19, 16
  %21 = or i32 %20, %18
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable

return:                                           ; preds = %if.then7, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %22, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__smsc911x_reg_write_shift(ptr nocapture noundef readonly %pdata, i32 noundef %reg, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 8
  %shift = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %shl = shl i32 %reg, %6
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #14, !srcloc !122
  br label %do.end28

if.end:                                           ; preds = %entry
  %and4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body25, label %do.body7

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %conv = trunc i32 %val to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  %shift12 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %shift12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift12, align 4
  %shl13 = shl i32 %reg, %11
  %add.ptr14 = getelementptr i8, ptr %9, i32 %shl13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %7) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !135
  tail call void @arm_heavy_mb() #14
  %shr = lshr i32 %val, 16
  %conv18 = trunc i32 %shr to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %add = add i32 %reg, 2
  %15 = ptrtoint ptr %shift12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift12, align 4
  %shl22 = shl i32 %add, %16
  %add.ptr23 = getelementptr i8, ptr %14, i32 %shl22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 %12) #14, !srcloc !124
  br label %do.end28

do.body25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #14, !srcloc !136
  unreachable

do.end28:                                         ; preds = %do.body7, %do.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_rx_readfifo_shift(ptr noundef %pdata, ptr noundef %buf, i32 noundef %wordcount) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %flags5 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool6.not63 = icmp eq i32 %wordcount, 0
  br i1 %tobool6.not63, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %shift12.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  br label %while.body

while.body:                                       ; preds = %__smsc911x_reg_read_shift.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.065 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %__smsc911x_reg_read_shift.exit.while.body_crit_edge ]
  %wordcount.addr.064 = phi i32 [ %wordcount, %while.body.lr.ph ], [ %dec, %__smsc911x_reg_read_shift.exit.while.body_crit_edge ]
  %dec = add i32 %wordcount.addr.064, -1
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags5, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  br label %__smsc911x_reg_read_shift.exit

if.end.i:                                         ; preds = %while.body
  %and5.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %13 = ptrtoint ptr %shift12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift12.i, align 4
  %shl24.i = shl i32 2, %14
  %add.ptr25.i = getelementptr i8, ptr %12, i32 %shl24.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25.i) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %16 = zext i16 %15 to i32
  %17 = zext i16 %10 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or i32 %18, %16
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  br label %__smsc911x_reg_read_shift.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable

__smsc911x_reg_read_shift.exit:                   ; preds = %if.then7.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %20, %if.then7.i ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %incdec.ptr = getelementptr i32, ptr %buf.addr.065, i32 1
  %22 = ptrtoint ptr %buf.addr.065 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buf.addr.065, align 4
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %__smsc911x_reg_read_shift.exit.out_crit_edge, label %__smsc911x_reg_read_shift.exit.while.body_crit_edge

__smsc911x_reg_read_shift.exit.while.body_crit_edge: ; preds = %__smsc911x_reg_read_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

__smsc911x_reg_read_shift.exit.out_crit_edge:     ; preds = %__smsc911x_reg_read_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %and10 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 8
  tail call void @__raw_readsl(ptr noundef %24, ptr noundef %buf, i32 noundef %wordcount) #14
  br label %out

if.end14:                                         ; preds = %if.end
  %and17 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body28, label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool22.not66 = icmp eq i32 %wordcount, 0
  br i1 %tobool22.not66, label %while.cond20.preheader.out_crit_edge, label %while.body23.lr.ph

while.cond20.preheader.out_crit_edge:             ; preds = %while.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body23.lr.ph:                               ; preds = %while.cond20.preheader
  %shift12.i55 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  br label %while.body23

while.body23:                                     ; preds = %__smsc911x_reg_read_shift.exit61.while.body23_crit_edge, %while.body23.lr.ph
  %buf.addr.168 = phi ptr [ %buf, %while.body23.lr.ph ], [ %incdec.ptr25, %__smsc911x_reg_read_shift.exit61.while.body23_crit_edge ]
  %wordcount.addr.167 = phi i32 [ %wordcount, %while.body23.lr.ph ], [ %dec21, %__smsc911x_reg_read_shift.exit61.while.body23_crit_edge ]
  %dec21 = add i32 %wordcount.addr.167, -1
  %25 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags5, align 4
  %and.i48 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %if.end.i54, label %if.then.i51

if.then.i51:                                      ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !115
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !129
  br label %__smsc911x_reg_read_shift.exit61

if.end.i54:                                       ; preds = %while.body23
  %and5.i52 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i52)
  %tobool6.not.i53 = icmp eq i32 %and5.i52, 0
  br i1 %tobool6.not.i53, label %do.body.i59, label %if.then7.i58

if.then7.i58:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 8
  %36 = ptrtoint ptr %shift12.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %shift12.i55, align 4
  %shl24.i56 = shl i32 2, %37
  %add.ptr25.i57 = getelementptr i8, ptr %35, i32 %shl24.i56
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25.i57) #14, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %39 = zext i16 %38 to i32
  %40 = zext i16 %33 to i32
  %41 = shl nuw i32 %40, 16
  %42 = or i32 %41, %39
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  br label %__smsc911x_reg_read_shift.exit61

do.body.i59:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable

__smsc911x_reg_read_shift.exit61:                 ; preds = %if.then7.i58, %if.then.i51
  %retval.0.i60 = phi i32 [ %30, %if.then.i51 ], [ %43, %if.then7.i58 ]
  %incdec.ptr25 = getelementptr i32, ptr %buf.addr.168, i32 1
  %44 = ptrtoint ptr %buf.addr.168 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i60, ptr %buf.addr.168, align 4
  %tobool22.not = icmp eq i32 %dec21, 0
  br i1 %tobool22.not, label %__smsc911x_reg_read_shift.exit61.out_crit_edge, label %__smsc911x_reg_read_shift.exit61.while.body23_crit_edge

__smsc911x_reg_read_shift.exit61.while.body23_crit_edge: ; preds = %__smsc911x_reg_read_shift.exit61
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body23

__smsc911x_reg_read_shift.exit61.out_crit_edge:   ; preds = %__smsc911x_reg_read_shift.exit61
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 362, 0\0A.popsection", ""() #14, !srcloc !137
  unreachable

out:                                              ; preds = %__smsc911x_reg_read_shift.exit61.out_crit_edge, %while.cond20.preheader.out_crit_edge, %if.then12, %__smsc911x_reg_read_shift.exit.out_crit_edge, %while.cond.preheader.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_tx_writefifo_shift(ptr noundef %pdata, ptr noundef %buf, i32 noundef %wordcount) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %flags5 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool6.not67 = icmp eq i32 %wordcount, 0
  br i1 %tobool6.not67, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %shift.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  br label %while.body

while.body:                                       ; preds = %__smsc911x_reg_write_shift.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.069 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %__smsc911x_reg_write_shift.exit.while.body_crit_edge ]
  %wordcount.addr.068 = phi i32 [ %wordcount, %while.body.lr.ph ], [ %dec, %__smsc911x_reg_write_shift.exit.while.body_crit_edge ]
  %dec = add i32 %wordcount.addr.068, -1
  %incdec.ptr = getelementptr i32, ptr %buf.addr.069, i32 1
  %2 = ptrtoint ptr %buf.addr.069 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf.addr.069, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags5, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 32, %10
  %add.ptr.i = getelementptr i8, ptr %8, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #14, !srcloc !122
  br label %__smsc911x_reg_write_shift.exit

if.end.i:                                         ; preds = %while.body
  %and4.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body25.i, label %do.body7.i

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %11 = lshr i32 %3, 16
  %12 = trunc i32 %11 to i16
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 8
  %15 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i, align 4
  %shl13.i = shl i32 32, %16
  %add.ptr14.i = getelementptr i8, ptr %14, i32 %shl13.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 %12) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !135
  tail call void @arm_heavy_mb() #14
  %shr.i = lshr i32 %4, 16
  %conv18.i = trunc i32 %shr.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #14
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  %20 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift.i, align 4
  %shl22.i = shl i32 34, %21
  %add.ptr23.i = getelementptr i8, ptr %19, i32 %shl22.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i, i16 %17) #14, !srcloc !124
  br label %__smsc911x_reg_write_shift.exit

do.body25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #14, !srcloc !136
  unreachable

__smsc911x_reg_write_shift.exit:                  ; preds = %do.body7.i, %do.body.i
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %__smsc911x_reg_write_shift.exit.out_crit_edge, label %__smsc911x_reg_write_shift.exit.while.body_crit_edge

__smsc911x_reg_write_shift.exit.while.body_crit_edge: ; preds = %__smsc911x_reg_write_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

__smsc911x_reg_write_shift.exit.out_crit_edge:    ; preds = %__smsc911x_reg_write_shift.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %and9 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  %shift = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift, align 4
  %shl = shl i32 32, %25
  %add.ptr = getelementptr i8, ptr %23, i32 %shl
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %wordcount) #14
  br label %out

if.end13:                                         ; preds = %if.end
  %and16 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body26, label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wordcount)
  %tobool21.not70 = icmp eq i32 %wordcount, 0
  br i1 %tobool21.not70, label %while.cond19.preheader.out_crit_edge, label %while.body22.lr.ph

while.cond19.preheader.out_crit_edge:             ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body22.lr.ph:                               ; preds = %while.cond19.preheader
  %shift.i48 = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 3, i32 3
  br label %while.body22

while.body22:                                     ; preds = %__smsc911x_reg_write_shift.exit65.while.body22_crit_edge, %while.body22.lr.ph
  %buf.addr.172 = phi ptr [ %buf, %while.body22.lr.ph ], [ %incdec.ptr23, %__smsc911x_reg_write_shift.exit65.while.body22_crit_edge ]
  %wordcount.addr.171 = phi i32 [ %wordcount, %while.body22.lr.ph ], [ %dec20, %__smsc911x_reg_write_shift.exit65.while.body22_crit_edge ]
  %dec20 = add i32 %wordcount.addr.171, -1
  %incdec.ptr23 = getelementptr i32, ptr %buf.addr.172, i32 1
  %26 = ptrtoint ptr %buf.addr.172 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf.addr.172, align 4
  %28 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags5, align 4
  %and.i46 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %if.end.i54, label %do.body.i51

do.body.i51:                                      ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 8
  %33 = ptrtoint ptr %shift.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %shift.i48, align 4
  %shl.i49 = shl i32 32, %34
  %add.ptr.i50 = getelementptr i8, ptr %32, i32 %shl.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %30) #14, !srcloc !122
  br label %__smsc911x_reg_write_shift.exit65

if.end.i54:                                       ; preds = %while.body22
  %and4.i52 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i52)
  %tobool5.not.i53 = icmp eq i32 %and4.i52, 0
  br i1 %tobool5.not.i53, label %do.body25.i64, label %do.body7.i63

do.body7.i63:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @arm_heavy_mb() #14
  %conv.i55 = trunc i32 %27 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i55) #14
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 8
  %38 = ptrtoint ptr %shift.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shift.i48, align 4
  %shl13.i57 = shl i32 32, %39
  %add.ptr14.i58 = getelementptr i8, ptr %37, i32 %shl13.i57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i58, i16 %35) #14, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !135
  tail call void @arm_heavy_mb() #14
  %shr.i59 = lshr i32 %27, 16
  %conv18.i60 = trunc i32 %shr.i59 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv18.i60) #14
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 8
  %43 = ptrtoint ptr %shift.i48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %shift.i48, align 4
  %shl22.i61 = shl i32 34, %44
  %add.ptr23.i62 = getelementptr i8, ptr %42, i32 %shl22.i61
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i62, i16 %40) #14, !srcloc !124
  br label %__smsc911x_reg_write_shift.exit65

do.body25.i64:                                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #14, !srcloc !136
  unreachable

__smsc911x_reg_write_shift.exit65:                ; preds = %do.body7.i63, %do.body.i51
  %tobool21.not = icmp eq i32 %dec20, 0
  br i1 %tobool21.not, label %__smsc911x_reg_write_shift.exit65.out_crit_edge, label %__smsc911x_reg_write_shift.exit65.while.body22_crit_edge

__smsc911x_reg_write_shift.exit65.while.body22_crit_edge: ; preds = %__smsc911x_reg_write_shift.exit65
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body22

__smsc911x_reg_write_shift.exit65.out_crit_edge:  ; preds = %__smsc911x_reg_write_shift.exit65
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 296, 0\0A.popsection", ""() #14, !srcloc !138
  unreachable

out:                                              ; preds = %__smsc911x_reg_write_shift.exit65.out_crit_edge, %while.cond19.preheader.out_crit_edge, %if.then11, %__smsc911x_reg_write_shift.exit.out_crit_edge, %while.cond.preheader.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_reg_read(ptr noundef %pdata, i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %ops = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5 = tail call i32 %3(ptr noundef %pdata, i32 noundef %reg) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret i32 %call5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_reg_write(ptr noundef %pdata, i32 noundef %reg, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock) #14
  %ops = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %reg_write = getelementptr inbounds %struct.smsc911x_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_write, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef %reg, i32 noundef %val) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock, i32 noundef %call2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_phy_reset(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %pdata, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %or = or i32 %call5.i, 1024
  %call2.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 132, i32 noundef %or) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i13) #14
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 100000, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #14
  %call2.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5.i18 = tail call i32 %11(ptr noundef %pdata, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool.not = icmp eq i32 %i.0, 0
  br i1 %tobool.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %i.0, -1
  %and = and i32 %call5.i18, 1024
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.if.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %do.body
  %.pre = and i32 %call5.i18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool4.not = icmp eq i32 %.pre, 0
  br i1 %tobool4.not, label %do.end.if.end_crit_edge, label %do.end.cleanup_crit_edge, !prof !139

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %land.rhs.if.end_crit_edge
  tail call void @msleep(i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_soft_reset(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 13
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev.i, align 16
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end2.i.if.end_crit_edge, label %if.then4.i

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then4.i:                                       ; preds = %if.end2.i
  %8 = trunc i32 %call.i.i to i16
  %conv.i = and i16 %8, -2049
  %9 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i, align 8
  %11 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i.i, align 8
  %call.i25.i = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 0, i16 noundef zeroext %conv.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp7.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp7.i, label %if.then4.i.cleanup_crit_edge, label %if.end11.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #14
  br label %if.end

if.end:                                           ; preds = %if.end11.i, %if.end2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %generation = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 2
  %13 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %generation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %phydev.i52 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 145
  %17 = ptrtoint ptr %phydev.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phydev.i52, align 16
  %tobool.not.i53 = icmp eq ptr %18, null
  br i1 %tobool.not.i53, label %if.then1.if.end7_crit_edge, label %if.end.i58

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end.i58:                                       ; preds = %if.then1
  %bus.i.i54 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus.i.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i.i54, align 8
  %addr.i.i55 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %addr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i.i55, align 8
  %call.i.i56 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp.i57, label %if.end.i58.cleanup_crit_edge, label %if.end2.i61

if.end.i58.cleanup_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2.i61:                                      ; preds = %if.end.i58
  %and.i59 = and i32 %call.i.i56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool3.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool3.not.i60, label %if.end2.i61.if.end7_crit_edge, label %if.then4.i65

if.end2.i61.if.end7_crit_edge:                    ; preds = %if.end2.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4.i65:                                     ; preds = %if.end2.i61
  %23 = trunc i32 %call.i.i56 to i16
  %conv.i62 = and i16 %23, -8193
  %24 = ptrtoint ptr %bus.i.i54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i54, align 8
  %26 = ptrtoint ptr %addr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i55, align 8
  %call.i25.i63 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 17, i16 noundef zeroext %conv.i62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i63)
  %cmp7.i64 = icmp slt i32 %call.i25.i63, 0
  br i1 %cmp7.i64, label %if.then4.i65.cleanup_crit_edge, label %if.end11.i66

if.then4.i65.cleanup_crit_edge:                   ; preds = %if.then4.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i66:                                     ; preds = %if.then4.i65
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496000) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end11.i66, %if.end2.i61.if.end7_crit_edge, %if.then1.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %idrev = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 1
  %29 = ptrtoint ptr %idrev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idrev, align 4
  %and = and i32 %30, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1840250880, i32 %and)
  %cmp8 = icmp eq i32 %and, -1840250880
  %spec.select = select i1 %cmp8, i32 504, i32 116
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_write.i, align 4
  tail call void %34(ptr noundef %pdata, i32 noundef %spec.select, i32 noundef 1) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end7
  %timeout.0 = phi i32 [ 10, %if.end7 ], [ %dec, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #14
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call5.i = tail call i32 %39(ptr noundef %pdata, i32 noundef %spec.select) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i69) #14
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  %and13 = and i32 %call5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool14.not, label %if.end21, label %do.end.cleanup_crit_edge, !prof !139

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %40 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %generation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp23 = icmp eq i32 %41, 4
  br i1 %cmp23, label %if.then24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %if.end21
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %phydev.i72 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 145
  %44 = ptrtoint ptr %phydev.i72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phydev.i72, align 16
  %tobool.not.i73 = icmp eq ptr %45, null
  br i1 %tobool.not.i73, label %if.then24.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge, label %if.end.i78

if.then24.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_phy_enable_energy_detect.exit.thread

if.end.i78:                                       ; preds = %if.then24
  %bus.i.i74 = getelementptr inbounds %struct.mdio_device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %bus.i.i74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i.i74, align 8
  %addr.i.i75 = getelementptr inbounds %struct.mdio_device, ptr %45, i32 0, i32 6
  %48 = ptrtoint ptr %addr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i.i75, align 8
  %call.i.i76 = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp.i77, label %if.end.i78.cleanup_crit_edge, label %if.end2.i81

if.end.i78.cleanup_crit_edge:                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2.i81:                                      ; preds = %if.end.i78
  %and.i79 = and i32 %call.i.i76, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool3.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool3.not.i80, label %if.then4.i83, label %if.end2.i81.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge

if.end2.i81.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge: ; preds = %if.end2.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_phy_enable_energy_detect.exit.thread

if.then4.i83:                                     ; preds = %if.end2.i81
  %50 = trunc i32 %call.i.i76 to i16
  %conv.i82 = or i16 %50, 8192
  %51 = ptrtoint ptr %bus.i.i74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i.i74, align 8
  %53 = ptrtoint ptr %addr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr.i.i75, align 8
  %call.i24.i = tail call i32 @mdiobus_write(ptr noundef %52, i32 noundef %54, i32 noundef 17, i16 noundef zeroext %conv.i82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp6.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp6.i, label %if.then4.i83.cleanup_crit_edge, label %if.then4.i83.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge

if.then4.i83.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge: ; preds = %if.then4.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_phy_enable_energy_detect.exit.thread

if.then4.i83.cleanup_crit_edge:                   ; preds = %if.then4.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

smsc911x_phy_enable_energy_detect.exit.thread:    ; preds = %if.then4.i83.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge, %if.end2.i81.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge, %if.then24.smsc911x_phy_enable_energy_detect.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %smsc911x_phy_enable_energy_detect.exit.thread, %if.then4.i83.cleanup_crit_edge, %if.end.i78.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then4.i65.cleanup_crit_edge, %if.end.i58.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i25.i, %if.then4.i.cleanup_crit_edge ], [ %call.i.i56, %if.end.i58.cleanup_crit_edge ], [ %call.i25.i63, %if.then4.i65.cleanup_crit_edge ], [ %call.i.i76, %if.end.i78.cleanup_crit_edge ], [ %call.i24.i, %if.then4.i83.cleanup_crit_edge ], [ 0, %smsc911x_phy_enable_energy_detect.exit.thread ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -160
  %dev1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp98 = icmp sgt i32 %budget, 0
  br i1 %cmp98, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev_lock.i.i = getelementptr i8, ptr %napi, i32 -76
  %ops.i.i = getelementptr i8, ptr %napi, i32 380
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %stats33 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %npackets.099 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call5.i.i = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 124) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %and.i = and i32 %call5.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %while.body.if.then_crit_edge, label %smsc911x_rx_get_rxstatus.exit

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

smsc911x_rx_get_rxstatus.exit:                    ; preds = %while.body
  %call2.i5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5.i7.i = tail call i32 %9(ptr noundef %add.ptr, i32 noundef 64) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i5.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i7.i)
  %tobool.not = icmp eq i32 %call5.i7.i, 0
  br i1 %tobool.not, label %smsc911x_rx_get_rxstatus.exit.if.then_crit_edge, label %if.end

smsc911x_rx_get_rxstatus.exit.if.then_crit_edge:  ; preds = %smsc911x_rx_get_rxstatus.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %smsc911x_rx_get_rxstatus.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_write.i, align 4
  tail call void %13(ptr noundef %add.ptr, i32 noundef 88, i32 noundef 8) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i) #14
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #14
  %call2.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call5.i = tail call i32 %17(ptr noundef %add.ptr, i32 noundef 92) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i78) #14
  %or = or i32 %call5.i, 8
  %call2.i81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i83 = getelementptr inbounds %struct.smsc911x_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %reg_write.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_write.i83, align 4
  tail call void %21(ptr noundef %add.ptr, i32 noundef 92, i32 noundef %or) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i81) #14
  br label %while.end

if.end:                                           ; preds = %smsc911x_rx_get_rxstatus.exit
  %inc = add nuw nsw i32 %npackets.099, 1
  %and = lshr i32 %call5.i7.i, 16
  %shr = and i32 %and, 16383
  %add4 = add nuw nsw i32 %shr, 5
  %shr5 = lshr i32 %add4, 2
  %and.i84 = and i32 %call5.i7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i, label %if.end.if.then24.i_crit_edge, label %if.then.i85, !prof !139

if.end.if.then24.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24.i

if.then.i85:                                      ; preds = %if.end
  %22 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and3.i = and i32 %call5.i7.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.then.i85.if.then24.i_crit_edge, label %if.then.i85.if.end45.sink.split.i_crit_edge, !prof !139

if.then.i85.if.end45.sink.split.i_crit_edge:      ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.sink.split.i

if.then.i85.if.then24.i_crit_edge:                ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.then.i85.if.then24.i_crit_edge, %if.end.if.then24.i_crit_edge
  %24 = and i32 %call5.i7.i, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4128, i32 %24)
  %25 = icmp eq i32 %24, 4128
  br i1 %25, label %if.then35.i, label %if.then24.i.if.end38.i_crit_edge, !prof !110

if.then24.i.if.end38.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors.i, align 8
  %inc37.i = add i32 %27, 1
  store i32 %inc37.i, ptr %rx_length_errors.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.then24.i.if.end38.i_crit_edge
  %and39.i = and i32 %call5.i7.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.smsc911x_rx_counterrors.exit_crit_edge, label %if.end38.i.if.end45.sink.split.i_crit_edge

if.end38.i.if.end45.sink.split.i_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.sink.split.i

if.end38.i.smsc911x_rx_counterrors.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_rx_counterrors.exit

if.end45.sink.split.i:                            ; preds = %if.end38.i.if.end45.sink.split.i_crit_edge, %if.then.i85.if.end45.sink.split.i_crit_edge
  %rx_crc_errors.sink53.i = phi ptr [ %rx_crc_errors.i, %if.then.i85.if.end45.sink.split.i_crit_edge ], [ %multicast.i, %if.end38.i.if.end45.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %rx_crc_errors.sink53.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors.sink53.i, align 8
  %inc13.i = add i32 %29, 1
  store i32 %inc13.i, ptr %rx_crc_errors.sink53.i, align 8
  br label %smsc911x_rx_counterrors.exit

smsc911x_rx_counterrors.exit:                     ; preds = %if.end45.sink.split.i, %if.end38.i.smsc911x_rx_counterrors.exit_crit_edge
  br i1 %tobool.not.i, label %if.end13, label %if.then10, !prof !139

if.then10:                                        ; preds = %smsc911x_rx_counterrors.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_rx_fastforward(ptr noundef %add.ptr, i32 noundef %shr5)
  br label %cleanup

if.end13:                                         ; preds = %smsc911x_rx_counterrors.exit
  %shl = and i32 %add4, 32764
  %call.i86 = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %shl, i32 noundef 2592) #14
  %tobool15.not = icmp eq ptr %call.i86, null
  br i1 %tobool15.not, label %if.then24, label %if.end29, !prof !110

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_rx_fastforward(ptr noundef %add.ptr, i32 noundef %shr5)
  %30 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_dropped, align 8
  %inc28 = add i32 %31, 1
  store i32 %inc28, ptr %rx_dropped, align 8
  br label %while.end

if.end29:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i.i, align 4
  %rx_readfifo = getelementptr inbounds %struct.smsc911x_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rx_readfifo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_readfifo, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void %35(ptr noundef %add.ptr, ptr noundef %37, i32 noundef %shr5) #14
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 2
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %41, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub = add nsw i32 %shr, -4
  %call30 = tail call ptr @skb_put(ptr noundef nonnull %call.i86, i32 noundef %sub) #14
  %call31 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i86, ptr noundef %1) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i86, i32 0, i32 15, i32 0, i32 18
  %42 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %call31, ptr %protocol, align 8
  %call32 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i86) #14
  %43 = ptrtoint ptr %stats33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats33, align 8
  %inc34 = add i32 %44, 1
  store i32 %inc34, ptr %stats33, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then10
  %rx_bytes.sink108 = phi ptr [ %rx_bytes, %if.end29 ], [ %rx_dropped, %if.then10 ]
  %sub.sink = phi i32 [ %sub, %if.end29 ], [ 1, %if.then10 ]
  %45 = ptrtoint ptr %rx_bytes.sink108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_bytes.sink108, align 8
  %add37 = add i32 %46, %sub.sink
  store i32 %add37, ptr %rx_bytes.sink108, align 8
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then24, %if.then, %entry.while.end_crit_edge
  %npackets.2 = phi i32 [ %npackets.099, %if.then ], [ %inc, %if.then24 ], [ 0, %entry.while.end_crit_edge ], [ %budget, %cleanup.while.end_crit_edge ]
  ret i32 %npackets.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_rx_fastforward(ptr noundef %pdata, i32 noundef %pktwords) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pktwords)
  %cmp = icmp ugt i32 %pktwords, 3
  br i1 %cmp, label %if.then, label %while.cond.preheader, !prof !139

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pktwords)
  %tobool13.not24 = icmp eq i32 %pktwords, 0
  br i1 %tobool13.not24, label %while.cond.preheader.if.end15_crit_edge, label %while.body

while.cond.preheader.if.end15_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then:                                          ; preds = %entry
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_write.i, align 4
  tail call void %3(ptr noundef %pdata, i32 noundef 120, i32 noundef -2147483648) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %timeout.0 = phi i32 [ 500, %if.then ], [ %dec, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #14
  %call2.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call5.i = tail call i32 %8(ptr noundef %pdata, i32 noundef 120) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool2.not = icmp sgt i32 %call5.i, -1
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.body.if.end15_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

while.body:                                       ; preds = %while.cond.preheader
  %call14 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %pdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pktwords)
  %tobool13.not = icmp eq i32 %pktwords, 1
  br i1 %tobool13.not, label %while.body.if.end15_crit_edge, label %while.body.1

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

while.body.1:                                     ; preds = %while.body
  %call14.1 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %pdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pktwords)
  %tobool13.not.1 = icmp eq i32 %pktwords, 2
  br i1 %tobool13.not.1, label %while.body.1.if.end15_crit_edge, label %while.body.2

while.body.1.if.end15_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  %call14.2 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %pdata, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %while.body.2, %while.body.1.if.end15_crit_edge, %while.body.if.end15_crit_edge, %do.body.if.end15_crit_edge, %while.cond.preheader.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #14
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %mii_bus.i = getelementptr i8, ptr %dev, i32 2432
  %4 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus.i, align 8
  %call1.i = tail call ptr @phy_find_first(ptr noundef %5) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #17
  br label %out

if.end.i:                                         ; preds = %if.then
  %phy_interface.i = getelementptr i8, ptr %dev, i32 2332
  %6 = ptrtoint ptr %phy_interface.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_interface.i, align 4
  %call2.i = tail call i32 @phy_connect_direct(ptr noundef %dev, ptr noundef nonnull %call1.i, ptr noundef nonnull @smsc911x_phy_adjust_link, i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %smsc911x_mii_probe.exit

if.end5.i:                                        ; preds = %if.end.i
  tail call void @phy_attached_info(ptr noundef nonnull %call1.i) #14
  %call6.i = tail call i32 @phy_set_max_speed(ptr noundef nonnull %call1.i, i32 noundef 100) #14
  tail call void @phy_support_asym_pause(ptr noundef nonnull %call1.i) #14
  %last_duplex.i = getelementptr i8, ptr %dev, i32 2440
  %8 = ptrtoint ptr %last_duplex.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %last_duplex.i, align 8
  %last_carrier.i = getelementptr i8, ptr %dev, i32 2444
  %9 = ptrtoint ptr %last_carrier.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %last_carrier.i, align 4
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 16
  %loopback_tx_pkt.i.i = getelementptr i8, ptr %dev, i32 2692
  %12 = call ptr @memset(ptr %loopback_tx_pkt.i.i, i32 255, i32 6)
  %arrayidx.i.i = getelementptr i8, ptr %dev, i32 2698
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %arrayidx.i.i, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %dev, i32 2699
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %arrayidx.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %dev, i32 2700
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %arrayidx.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %dev, i32 2701
  %16 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %arrayidx.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr i8, ptr %dev, i32 2702
  %17 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %dev, i32 2703
  %18 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 11, ptr %arrayidx.5.i.i, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %dev, i32 2704
  %19 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %dev, i32 2705
  %20 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx5.i.i, align 1
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %if.end5.i
  %i.1139.i.i = phi i32 [ 14, %if.end5.i ], [ %inc14.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ]
  %conv10.i.i = trunc i32 %i.1139.i.i to i8
  %arrayidx12.i.i = getelementptr %struct.smsc911x_data, ptr %add.ptr.i, i32 0, i32 16, i32 %i.1139.i.i
  %21 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  %inc14.i.i = add nuw nsw i32 %i.1139.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, 64
  br i1 %exitcond.not.i.i, label %for.end15.i.i, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body9.i.i

for.end15.i.i:                                    ; preds = %for.body9.i.i
  %dev_lock.i.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %ops.i.i.i = getelementptr i8, ptr %dev, i32 2844
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call5.i.i.i = tail call i32 %25(ptr noundef %add.ptr.i, i32 noundef 116) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i.i.i) #14
  %and.i.i = and i32 %call5.i.i.i, 983040
  %or.i.i = or i32 %and.i.i, 1048576
  %call2.i117.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %26 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %reg_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_write.i.i.i, align 4
  tail call void %29(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i117.i.i) #14
  %call2.i120.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %30 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i122.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %reg_write.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_write.i122.i.i, align 4
  tail call void %33(ptr noundef %add.ptr.i, i32 noundef 112, i32 noundef 2) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i120.i.i) #14
  %loopback_rx_pkt.i.i = getelementptr i8, ptr %dev, i32 2756
  %34 = ptrtoint ptr %loopback_rx_pkt.i.i to i32
  %and18.i.i = shl i32 %34, 8
  %shl.i.i = and i32 %and18.i.i, 768
  %call2.i124.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %35 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i126.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %reg_write.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_write.i126.i.i, align 4
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef 108, i32 noundef %shl.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i124.i.i) #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 6
  %mac_lock.i.i = getelementptr i8, ptr %dev, i32 2344
  %39 = ptrtoint ptr %loopback_tx_pkt.i.i to i32
  %and.i.i.i = and i32 %39, 3
  %shl.i.i.i = shl nuw nsw i32 %and.i.i.i, 16
  %or2.i.i.i = or i32 %shl.i.i.i, 12352
  %and5.i.i.i = and i32 %39, -4
  %add.i.i.i = add nuw nsw i32 %and.i.i.i, 67
  %shr.i.i.i = lshr i32 %add.i.i.i, 2
  %40 = inttoptr i32 %and5.i.i.i to ptr
  %and42.i.i.i = and i32 %34, 3
  %add39.i.i.i = add nuw nsw i32 %and42.i.i.i, 3
  %resetcount.i.i = getelementptr i8, ptr %dev, i32 2820
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %if.end.i.i.for.body22.i.i_crit_edge, %for.end15.i.i
  %i.2140.i.i = phi i32 [ 0, %for.end15.i.i ], [ %inc54.i.i, %if.end.i.i.for.body22.i.i_crit_edge ]
  %41 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus.i.i, align 8
  %43 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr.i.i, align 8
  %call24.i.i = tail call i32 @smsc911x_mii_write(ptr noundef %42, i32 noundef %44, i32 noundef 0, i16 noundef zeroext 16640) #14
  %call29.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock.i.i) #14
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 1048588) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock.i.i, i32 noundef %call29.i.i) #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc75.i.i.i.for.body.i.i.i_crit_edge, %for.body22.i.i
  %tries.0137.i.i.i = phi i32 [ 0, %for.body22.i.i ], [ %inc76.i.i.i, %for.inc75.i.i.i.for.body.i.i.i_crit_edge ]
  %45 = call ptr @memset(ptr %loopback_rx_pkt.i.i, i32 0, i32 64)
  %call2.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %46 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i.i.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %reg_write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_write.i.i.i.i, align 4
  tail call void %49(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %or2.i.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i.i.i.i) #14
  %call2.i121.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %50 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i123.i.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %reg_write.i123.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_write.i123.i.i.i, align 4
  tail call void %53(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 4194368) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i121.i.i.i) #14
  %54 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i.i, align 4
  %tx_writefifo.i.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %tx_writefifo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_writefifo.i.i.i, align 4
  tail call void %57(ptr noundef %add.ptr.i, ptr noundef %40, i32 noundef %shr.i.i.i) #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %smsc911x_tx_get_txstatus.exit.i.i.i.do.body.i.i.i_crit_edge, %for.body.i.i.i
  %i.0.i.i.i = phi i32 [ 60, %for.body.i.i.i ], [ %dec.i.i.i, %smsc911x_tx_get_txstatus.exit.i.i.i.do.body.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 1073740) #14
  %call2.i.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %59 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call5.i.i.i.i.i = tail call i32 %62(ptr noundef %add.ptr.i, i32 noundef 128) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i.i.i.i.i) #14
  %and.i.i.i.i = and i32 %call5.i.i.i.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.body.i.i.i.smsc911x_tx_get_txstatus.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

do.body.i.i.i.smsc911x_tx_get_txstatus.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_tx_get_txstatus.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i5.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %63 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call5.i7.i.i.i.i = tail call i32 %66(ptr noundef %add.ptr.i, i32 noundef 72) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i5.i.i.i.i) #14
  br label %smsc911x_tx_get_txstatus.exit.i.i.i

smsc911x_tx_get_txstatus.exit.i.i.i:              ; preds = %if.then.i.i.i.i, %do.body.i.i.i.smsc911x_tx_get_txstatus.exit.i.i.i_crit_edge
  %result.0.i.i.i.i = phi i32 [ %call5.i7.i.i.i.i, %if.then.i.i.i.i ], [ 0, %do.body.i.i.i.smsc911x_tx_get_txstatus.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %i.0.i.i.i, 0
  %dec.i.i.i = add nsw i32 %i.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %result.0.i.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %tobool9.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %smsc911x_tx_get_txstatus.exit.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

smsc911x_tx_get_txstatus.exit.i.i.i.do.body.i.i.i_crit_edge: ; preds = %smsc911x_tx_get_txstatus.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %smsc911x_tx_get_txstatus.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i.i.i.i)
  %tobool10.not.i.i.i = icmp ne i32 %result.0.i.i.i.i, 0
  %and11.i.i.i = and i32 %result.0.i.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  %or.cond118.i.i.i = and i1 %tobool10.not.i.i.i, %tobool12.not.i.i.i
  br i1 %or.cond118.i.i.i, label %do.end.i.i.i.do.body16.i.i.i_crit_edge, label %do.end.i.i.i.for.inc75.i.i.i_crit_edge

do.end.i.i.i.for.inc75.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75.i.i.i

do.end.i.i.i.do.body16.i.i.i_crit_edge:           ; preds = %do.end.i.i.i
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %smsc911x_rx_get_rxstatus.exit.i.i.i.do.body16.i.i.i_crit_edge, %do.end.i.i.i.do.body16.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %dec19.i.i.i, %smsc911x_rx_get_rxstatus.exit.i.i.i.do.body16.i.i.i_crit_edge ], [ 60, %do.end.i.i.i.do.body16.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 1073740) #14
  %call2.i.i125.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %68 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call5.i.i127.i.i.i = tail call i32 %71(ptr noundef %add.ptr.i, i32 noundef 124) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i.i125.i.i.i) #14
  %and.i128.i.i.i = and i32 %call5.i.i127.i.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128.i.i.i)
  %cmp.not.i129.i.i.i = icmp eq i32 %and.i128.i.i.i, 0
  br i1 %cmp.not.i129.i.i.i, label %do.body16.i.i.i.smsc911x_rx_get_rxstatus.exit.i.i.i_crit_edge, label %if.then.i132.i.i.i

do.body16.i.i.i.smsc911x_rx_get_rxstatus.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_rx_get_rxstatus.exit.i.i.i

if.then.i132.i.i.i:                               ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i5.i130.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %72 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call5.i7.i131.i.i.i = tail call i32 %75(ptr noundef %add.ptr.i, i32 noundef 64) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i5.i130.i.i.i) #14
  br label %smsc911x_rx_get_rxstatus.exit.i.i.i

smsc911x_rx_get_rxstatus.exit.i.i.i:              ; preds = %if.then.i132.i.i.i, %do.body16.i.i.i.smsc911x_rx_get_rxstatus.exit.i.i.i_crit_edge
  %result.0.i133.i.i.i = phi i32 [ %call5.i7.i131.i.i.i, %if.then.i132.i.i.i ], [ 0, %do.body16.i.i.i.smsc911x_rx_get_rxstatus.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i.i.i)
  %tobool20.not.i.i.i = icmp ne i32 %i.1.i.i.i, 0
  %dec19.i.i.i = add nsw i32 %i.1.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i133.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %result.0.i133.i.i.i, 0
  %or.cond117.i.i.i = select i1 %tobool20.not.i.i.i, i1 %tobool22.not.i.i.i, i1 false
  br i1 %or.cond117.i.i.i, label %smsc911x_rx_get_rxstatus.exit.i.i.i.do.body16.i.i.i_crit_edge, label %do.end25.i.i.i

smsc911x_rx_get_rxstatus.exit.i.i.i.do.body16.i.i.i_crit_edge: ; preds = %smsc911x_rx_get_rxstatus.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body16.i.i.i

do.end25.i.i.i:                                   ; preds = %smsc911x_rx_get_rxstatus.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i133.i.i.i)
  %tobool26.not.i.i.i = icmp ne i32 %result.0.i133.i.i.i, 0
  %and30.i.i.i = and i32 %result.0.i133.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  %or.cond119.i.i.i = and i1 %tobool26.not.i.i.i, %tobool31.not.i.i.i
  br i1 %or.cond119.i.i.i, label %if.end34.i.i.i, label %do.end25.i.i.i.for.inc75.i.i.i_crit_edge

do.end25.i.i.i.for.inc75.i.i.i_crit_edge:         ; preds = %do.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75.i.i.i

if.end34.i.i.i:                                   ; preds = %do.end25.i.i.i
  %and35.i.i.i = lshr i32 %result.0.i133.i.i.i, 16
  %shr36.i.i.i = and i32 %and35.i.i.i, 16383
  %add43.i.i.i = add nuw nsw i32 %add39.i.i.i, %shr36.i.i.i
  %shr44.i.i.i = lshr i32 %add43.i.i.i, 2
  %76 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i.i, align 4
  %rx_readfifo.i.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rx_readfifo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_readfifo.i.i.i, align 4
  tail call void %79(ptr noundef %add.ptr.i, ptr noundef %loopback_rx_pkt.i.i, i32 noundef %shr44.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %shr36.i.i.i)
  %cmp46.not.i.i.i = icmp eq i32 %shr36.i.i.i, 68
  br i1 %cmp46.not.i.i.i, label %if.end34.i.i.i.for.body51.i.i.i_crit_edge, label %if.end34.i.i.i.for.inc75.i.i.i_crit_edge

if.end34.i.i.i.for.inc75.i.i.i_crit_edge:         ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75.i.i.i

if.end34.i.i.i.for.body51.i.i.i_crit_edge:        ; preds = %if.end34.i.i.i
  br label %for.body51.i.i.i

for.cond49.i.i.i:                                 ; preds = %for.body51.i.i.i
  %inc.i.i.i = add nuw nsw i32 %j.0136.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %for.cond49.i.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge, label %for.cond49.i.i.i.for.body51.i.i.i_crit_edge

for.cond49.i.i.i.for.body51.i.i.i_crit_edge:      ; preds = %for.cond49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body51.i.i.i

for.cond49.i.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge: ; preds = %for.cond49.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_phy_loopbacktest.exit.i

for.body51.i.i.i:                                 ; preds = %for.cond49.i.i.i.for.body51.i.i.i_crit_edge, %if.end34.i.i.i.for.body51.i.i.i_crit_edge
  %j.0136.i.i.i = phi i32 [ %inc.i.i.i, %for.cond49.i.i.i.for.body51.i.i.i_crit_edge ], [ 0, %if.end34.i.i.i.for.body51.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.smsc911x_data, ptr %add.ptr.i, i32 0, i32 16, i32 %j.0136.i.i.i
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i.i, align 1
  %arrayidx54.i.i.i = getelementptr %struct.smsc911x_data, ptr %add.ptr.i, i32 0, i32 17, i32 %j.0136.i.i.i
  %82 = ptrtoint ptr %arrayidx54.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx54.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp56.not.i.i.i = icmp eq i8 %81, %83
  br i1 %cmp56.not.i.i.i, label %for.cond49.i.i.i, label %for.body51.i.i.i.for.inc75.i.i.i_crit_edge

for.body51.i.i.i.for.inc75.i.i.i_crit_edge:       ; preds = %for.body51.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc75.i.i.i

for.inc75.i.i.i:                                  ; preds = %for.body51.i.i.i.for.inc75.i.i.i_crit_edge, %if.end34.i.i.i.for.inc75.i.i.i_crit_edge, %do.end25.i.i.i.for.inc75.i.i.i_crit_edge, %do.end.i.i.i.for.inc75.i.i.i_crit_edge
  %inc76.i.i.i = add nuw nsw i32 %tries.0137.i.i.i, 1
  %exitcond139.not.i.i.i = icmp eq i32 %inc76.i.i.i, 10
  br i1 %exitcond139.not.i.i.i, label %if.end.i.i, label %for.inc75.i.i.i.for.body.i.i.i_crit_edge

for.inc75.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc75.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

if.end.i.i:                                       ; preds = %for.inc75.i.i.i
  %84 = ptrtoint ptr %resetcount.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %resetcount.i.i, align 4
  %inc36.i.i = add i32 %85, 1
  store i32 %inc36.i.i, ptr %resetcount.i.i, align 4
  %call46.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock.i.i) #14
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock.i.i, i32 noundef %call46.i.i) #14
  %call52.i.i = tail call fastcc i32 @smsc911x_phy_reset(ptr noundef %add.ptr.i) #14
  %inc54.i.i = add nuw nsw i32 %i.2140.i.i, 1
  %exitcond142.not.i.i = icmp eq i32 %inc54.i.i, 10
  br i1 %exitcond142.not.i.i, label %if.end.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge, label %if.end.i.i.for.body22.i.i_crit_edge

if.end.i.i.for.body22.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body22.i.i

if.end.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_phy_loopbacktest.exit.i

smsc911x_phy_loopbacktest.exit.i:                 ; preds = %if.end.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge, %for.cond49.i.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge
  %cmp.i = phi i1 [ false, %for.cond49.i.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge ], [ true, %if.end.i.i.smsc911x_phy_loopbacktest.exit.i_crit_edge ]
  %call65.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock.i.i) #14
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock.i.i, i32 noundef %call65.i.i) #14
  %86 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i.i, align 8
  %88 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr.i.i, align 8
  %call75.i.i = tail call i32 @smsc911x_mii_write(ptr noundef %87, i32 noundef %89, i32 noundef 0, i16 noundef zeroext 0) #14
  %call2.i128.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %90 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i130.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %reg_write.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_write.i130.i.i, align 4
  tail call void %93(ptr noundef %add.ptr.i, i32 noundef 112, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i128.i.i) #14
  %call2.i132.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i.i) #14
  %94 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i.i.i, align 4
  %reg_write.i134.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %reg_write.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_write.i134.i.i, align 4
  tail call void %97(ptr noundef %add.ptr.i, i32 noundef 108, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i.i, i32 noundef %call2.i132.i.i) #14
  br i1 %cmp.i, label %if.then8.i, label %smsc911x_phy_loopbacktest.exit.i.if.end6_crit_edge

smsc911x_phy_loopbacktest.exit.i.if.end6_crit_edge: ; preds = %smsc911x_phy_loopbacktest.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then8.i:                                       ; preds = %smsc911x_phy_loopbacktest.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_disconnect(ptr noundef nonnull %call1.i) #14
  br label %out

smsc911x_mii_probe.exit:                          ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %smsc911x_mii_probe.exit.out_crit_edge, label %smsc911x_mii_probe.exit.if.end6_crit_edge

smsc911x_mii_probe.exit.if.end6_crit_edge:        ; preds = %smsc911x_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

smsc911x_mii_probe.exit.out_crit_edge:            ; preds = %smsc911x_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %smsc911x_mii_probe.exit.if.end6_crit_edge, %smsc911x_phy_loopbacktest.exit.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call fastcc i32 @smsc911x_soft_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.end6.mii_free_out_crit_edge

if.end6.mii_free_out_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_free_out

if.end11:                                         ; preds = %if.end6
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i164 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_write.i, align 4
  tail call void %101(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef 327680) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i164) #14
  %call2.i166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %102 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i, align 4
  %reg_write.i168 = getelementptr inbounds %struct.smsc911x_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %reg_write.i168 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_write.i168, align 4
  tail call void %105(ptr noundef %add.ptr.i, i32 noundef 172, i32 noundef 7223104) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i166) #14
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 9, i32 noundef 33024)
  tail call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  %call2.i170201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %106 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %call5.i202 = tail call i32 %109(ptr noundef %add.ptr.i, i32 noundef 176) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i170201) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i202)
  %tobool14.not203 = icmp sgt i32 %call5.i202, -1
  br i1 %tobool14.not203, label %if.end11.if.end21_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  br label %land.rhs

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end11.land.rhs_crit_edge
  %timeout.0204 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 50, %if.end11.land.rhs_crit_edge ]
  %dec = add nsw i32 %timeout.0204, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %land.rhs.if.end21_crit_edge, label %while.body

land.rhs.if.end21_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 2147480) #14
  %call2.i170 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %111 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %call5.i = tail call i32 %114(ptr noundef %add.ptr.i, i32 noundef 176) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i170) #14
  %tobool14.not = icmp sgt i32 %call5.i, -1
  br i1 %tobool14.not, label %while.body.if.end21_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end21:                                         ; preds = %while.body.if.end21_crit_edge, %land.rhs.if.end21_crit_edge, %if.end11.if.end21_crit_edge
  %call2.i173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %115 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i, align 4
  %reg_write.i175 = getelementptr inbounds %struct.smsc911x_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %reg_write.i175 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_write.i175, align 4
  tail call void %118(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef 1879506944) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i173) #14
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %119 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %add.ptr.i, ptr noundef %120)
  tail call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %121 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i, align 4
  %reg_write.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_write.i.i, align 4
  tail call void %124(ptr noundef %add.ptr.i, i32 noundef 92, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i.i) #14
  %call2.i3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %125 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i, align 4
  %reg_write.i5.i = getelementptr inbounds %struct.smsc911x_ops, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %reg_write.i5.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_write.i5.i, align 4
  tail call void %128(ptr noundef %add.ptr.i, i32 noundef 88, i32 noundef -1) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i3.i) #14
  %config = getelementptr i8, ptr %dev, i32 2316
  %129 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool24.not = icmp eq i32 %130, 0
  %. = select i1 %tobool24.not, i32 167772416, i32 167772432
  %irq_type = getelementptr i8, ptr %dev, i32 2320
  %131 = ptrtoint ptr %irq_type to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %irq_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool30.not = icmp ne i32 %132, 0
  %or33 = zext i1 %tobool30.not to i32
  %intcfg.1 = or i32 %., %or33
  %call2.i178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %133 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i, align 4
  %reg_write.i180 = getelementptr inbounds %struct.smsc911x_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %reg_write.i180 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_write.i180, align 4
  tail call void %136(ptr noundef %add.ptr.i, i32 noundef 84, i32 noundef %intcfg.1) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i178) #14
  %software_irq_signal = getelementptr i8, ptr %dev, i32 2688
  %137 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %software_irq_signal, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !140
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %138 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq, align 4
  %call.i181 = tail call ptr @irq_get_irq_data(i32 noundef %139) #14
  %tobool.not.i182 = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i182, label %if.end21.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end21.irq_get_trigger_type.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i181, i32 0, i32 3
  %140 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %common.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %and.i.i183 = and i32 %143, 15
  %phi.bo = or i32 %and.i.i183, 128
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end21.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 128, %if.end21.irq_get_trigger_type.exit_crit_edge ]
  %144 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %irq, align 4
  %call.i184 = tail call i32 @request_threaded_irq(i32 noundef %145, ptr noundef nonnull @smsc911x_irqhandler, ptr noundef null, i32 noundef %cond.i, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool45.not = icmp eq i32 %call.i184, 0
  br i1 %tobool45.not, label %if.end48, label %irq_get_trigger_type.exit.mii_free_out_crit_edge

irq_get_trigger_type.exit.mii_free_out_crit_edge: ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_free_out

if.end48:                                         ; preds = %irq_get_trigger_type.exit
  %call2.i186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %146 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call5.i188 = tail call i32 %149(ptr noundef %add.ptr.i, i32 noundef 92) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i186) #14
  %or50 = or i32 %call5.i188, -2147483648
  %call2.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %150 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i, align 4
  %reg_write.i192 = getelementptr inbounds %struct.smsc911x_ops, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %reg_write.i192 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_write.i192, align 4
  tail call void %153(ptr noundef %add.ptr.i, i32 noundef 92, i32 noundef %or50) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i190) #14
  br label %while.body54

while.body54:                                     ; preds = %if.end58.while.body54_crit_edge, %if.end48
  %dec52205 = phi i32 [ 999, %if.end48 ], [ %dec52, %if.end58.while.body54_crit_edge ]
  %154 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %software_irq_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool56.not = icmp eq i32 %155, 0
  br i1 %tobool56.not, label %if.end58, label %while.body54.if.end64_crit_edge

while.body54.if.end64_crit_edge:                  ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.end58:                                         ; preds = %while.body54
  tail call void @msleep(i32 noundef 1) #14
  %dec52 = add nsw i32 %dec52205, -1
  %tobool53.not = icmp eq i32 %dec52205, 0
  br i1 %tobool53.not, label %while.end59, label %if.end58.while.body54_crit_edge

if.end58.while.body54_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body54

while.end59:                                      ; preds = %if.end58
  %156 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr = load i32, ptr %software_irq_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool61.not = icmp eq i32 %.pr, 0
  br i1 %tobool61.not, label %if.then62, label %while.end59.if.end64_crit_edge

while.end59.if.end64_crit_edge:                   ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then62:                                        ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #16
  %157 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %158) #17
  %159 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %irq, align 4
  %call81 = tail call ptr @free_irq(i32 noundef %160, ptr noundef %dev) #14
  br label %mii_free_out

if.end64:                                         ; preds = %while.end59.if.end64_crit_edge, %while.body54.if.end64_crit_edge
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i, align 8
  %163 = ptrtoint ptr %162 to i32
  %164 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %163, i32 noundef %165) #17
  %last_duplex = getelementptr i8, ptr %dev, i32 2440
  %166 = ptrtoint ptr %last_duplex to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %last_duplex, align 8
  %last_carrier = getelementptr i8, ptr %dev, i32 2444
  %167 = ptrtoint ptr %last_carrier to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %last_carrier, align 4
  %168 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %169) #14
  %call68 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %add.ptr.i, i32 noundef 116)
  %and69 = and i32 %call68, 987135
  %or70 = or i32 %and69, 1048576
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 116, i32 noundef %or70)
  %call71 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %add.ptr.i, i32 noundef 104)
  %or72 = and i32 %call71, 16776960
  %and73 = or i32 %or72, -16777216
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 104, i32 noundef %and73)
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 108, i32 noundef 512)
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_enable(ptr noundef %napi) #14
  %call74 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %add.ptr.i, i32 noundef 92)
  %or75 = or i32 %call74, 16777736
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 92, i32 noundef %or75)
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  %call77 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 1)
  %or78 = or i32 %call77, 268435468
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %or78)
  tail call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 112, i32 noundef 2)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %170 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %171, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %cleanup

mii_free_out:                                     ; preds = %if.then62, %irq_get_trigger_type.exit.mii_free_out_crit_edge, %if.end6.mii_free_out_crit_edge
  %retval1.0 = phi i32 [ -19, %if.then62 ], [ %call7, %if.end6.mii_free_out_crit_edge ], [ %call.i184, %irq_get_trigger_type.exit.mii_free_out_crit_edge ]
  %172 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %173) #14
  %174 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %phydev, align 16
  br label %out

out:                                              ; preds = %mii_free_out, %smsc911x_mii_probe.exit.out_crit_edge, %if.then8.i, %if.then.i
  %retval1.1 = phi i32 [ %retval1.0, %mii_free_out ], [ %call2.i, %smsc911x_mii_probe.exit.out_crit_edge ], [ -19, %if.then8.i ], [ -19, %if.then.i ]
  %175 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %parent, align 8
  %call.i193 = tail call i32 @__pm_runtime_idle(ptr noundef %176, i32 noundef 5) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end64
  %retval.0 = phi i32 [ %retval1.1, %out ], [ 0, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 84) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %and = and i32 %call5.i, -257
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 84, i32 noundef %and) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i25) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_disable(ptr noundef %napi) #14
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5.i30 = tail call i32 %13(ptr noundef %add.ptr.i, i32 noundef 160) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i28) #14
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %14 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_dropped, align 8
  %add = add i32 %15, %call5.i30
  store i32 %add, ptr %rx_dropped, align 8
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %dev) #14
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %18 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_stop(ptr noundef nonnull %19) #14
  %20 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %21) #14
  %22 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %phydev, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 5) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 128) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %and = and i32 %call5.i, 65535
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  %and3 = shl i32 %6, 16
  %shl = and i32 %and3, 196608
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %or = or i32 %8, %shl
  %or4 = or i32 %or, 12288
  %shl6 = shl i32 %8, 16
  %or8 = or i32 %shl6, %8
  %call2.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_write.i, align 4
  tail call void %12(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %or4) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i61) #14
  %call2.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %reg_write.i66 = getelementptr inbounds %struct.smsc911x_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %reg_write.i66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_write.i66, align 4
  tail call void %16(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %or8) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i64) #14
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  %and10 = and i32 %19, -4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add = add i32 %21, 3
  %and13 = and i32 %19, 3
  %add14 = add i32 %add, %and13
  %shr = lshr i32 %add14, 2
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %tx_writefifo = getelementptr inbounds %struct.smsc911x_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %tx_writefifo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_writefifo, align 4
  %26 = inttoptr i32 %and10 to ptr
  tail call void %25(ptr noundef %add.ptr.i, ptr noundef %26, i32 noundef %shr) #14
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %add16.neg = add nsw i32 %and, -32
  %sub = sub i32 %add16.neg, %28
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_flags.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %entry.skb_tx_timestamp.exit_crit_edge, label %if.then.i

entry.skb_tx_timestamp.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %entry.skb_tx_timestamp.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #14
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call5.i.i = tail call i32 %37(ptr noundef %add.ptr.i, i32 noundef 128) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i.i) #14
  %38 = and i32 %call5.i.i, 16646144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900544, i32 %38)
  %cmp18 = icmp ugt i32 %38, 1900544
  br i1 %cmp18, label %if.then25, label %skb_tx_timestamp.exit.if.end26_crit_edge, !prof !110

skb_tx_timestamp.exit.if.end26_crit_edge:         ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %dev)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %skb_tx_timestamp.exit.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600, i32 %sub)
  %cmp27 = icmp ult i32 %sub, 1600
  br i1 %cmp27, label %if.then28, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %call2.i68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call5.i70 = tail call i32 %44(ptr noundef %add.ptr.i, i32 noundef 104) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i68) #14
  %and30 = and i32 %call5.i70, 16777215
  %or31 = or i32 %and30, 838860800
  %call2.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %reg_write.i74 = getelementptr inbounds %struct.smsc911x_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %reg_write.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_write.i74, align 4
  tail call void %48(ptr noundef %add.ptr.i, i32 noundef 104, i32 noundef %or31) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i72) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end26.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %set_bits_mask = getelementptr i8, ptr %dev, i32 2828
  %2 = ptrtoint ptr %set_bits_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 262144, ptr %set_bits_mask, align 4
  br label %do.body41.sink.split

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %set_bits_mask6 = getelementptr i8, ptr %dev, i32 2828
  %3 = ptrtoint ptr %set_bits_mask6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 524288, ptr %set_bits_mask6, align 4
  br label %do.body41.sink.split

if.else10:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %set_bits_mask34 = getelementptr i8, ptr %dev, i32 2828
  br i1 %cmp, label %if.else33, label %if.then11

if.then11:                                        ; preds = %if.else10
  %6 = ptrtoint ptr %set_bits_mask34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8192, ptr %set_bits_mask34, align 4
  %clear_bits_mask13 = getelementptr i8, ptr %dev, i32 2832
  %7 = ptrtoint ptr %clear_bits_mask13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 786432, ptr %clear_bits_mask13, align 8
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.097 = load ptr, ptr %mc, align 4
  %cmp18.not98 = icmp eq ptr %ha.097, %mc
  br i1 %cmp18.not98, label %if.then11.do.body41_crit_edge, label %if.then11.smsc911x_hash.exit_crit_edge

if.then11.smsc911x_hash.exit_crit_edge:           ; preds = %if.then11
  br label %smsc911x_hash.exit

if.then11.do.body41_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body41

smsc911x_hash.exit:                               ; preds = %smsc911x_hash.exit.smsc911x_hash.exit_crit_edge, %if.then11.smsc911x_hash.exit_crit_edge
  %ha.0101 = phi ptr [ %ha.0, %smsc911x_hash.exit.smsc911x_hash.exit_crit_edge ], [ %ha.097, %if.then11.smsc911x_hash.exit_crit_edge ]
  %hash_high.0100 = phi i32 [ %hash_high.1, %smsc911x_hash.exit.smsc911x_hash.exit_crit_edge ], [ 0, %if.then11.smsc911x_hash.exit_crit_edge ]
  %hash_low.099 = phi i32 [ %hash_low.1, %smsc911x_hash.exit.smsc911x_hash.exit_crit_edge ], [ 0, %if.then11.smsc911x_hash.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0101, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #18
  %9 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %11 to i32
  %shr22.i = lshr i32 %conv2.i.i.i, 2
  %and20 = and i32 %shr22.i, 31
  %shl = shl nuw i32 1, %and20
  %.mask = and i32 %conv2.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool22.not = icmp eq i32 %.mask, 0
  %or25 = select i1 %tobool22.not, i32 %shl, i32 0
  %hash_low.1 = or i32 %or25, %hash_low.099
  %or = select i1 %tobool22.not, i32 0, i32 %shl
  %hash_high.1 = or i32 %or, %hash_high.0100
  %12 = ptrtoint ptr %ha.0101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.0101, align 4
  %cmp18.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp18.not, label %smsc911x_hash.exit.do.body41_crit_edge, label %smsc911x_hash.exit.smsc911x_hash.exit_crit_edge

smsc911x_hash.exit.smsc911x_hash.exit_crit_edge:  ; preds = %smsc911x_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_hash.exit

smsc911x_hash.exit.do.body41_crit_edge:           ; preds = %smsc911x_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body41

if.else33:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %set_bits_mask34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %set_bits_mask34, align 4
  br label %do.body41.sink.split

do.body41.sink.split:                             ; preds = %if.else33, %if.then5, %if.then
  %.sink104 = phi i32 [ 270336, %if.then5 ], [ 794624, %if.else33 ], [ 532480, %if.then ]
  %clear_bits_mask7 = getelementptr i8, ptr %dev, i32 2832
  %14 = ptrtoint ptr %clear_bits_mask7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink104, ptr %clear_bits_mask7, align 8
  br label %do.body41

do.body41:                                        ; preds = %do.body41.sink.split, %smsc911x_hash.exit.do.body41_crit_edge, %if.then11.do.body41_crit_edge
  %.sink103 = phi i32 [ 0, %if.then11.do.body41_crit_edge ], [ 0, %do.body41.sink.split ], [ %hash_high.1, %smsc911x_hash.exit.do.body41_crit_edge ]
  %.sink = phi i32 [ 0, %if.then11.do.body41_crit_edge ], [ 0, %do.body41.sink.split ], [ %hash_low.1, %smsc911x_hash.exit.do.body41_crit_edge ]
  %hashhi8 = getelementptr i8, ptr %dev, i32 2836
  %15 = ptrtoint ptr %hashhi8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink103, ptr %hashhi8, align 4
  %hashlo9 = getelementptr i8, ptr %dev, i32 2840
  %16 = ptrtoint ptr %hashlo9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %hashlo9, align 8
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %generation = getelementptr i8, ptr %dev, i32 2312
  %17 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp48 = icmp ult i32 %18, 2
  br i1 %cmp48, label %if.then50, label %if.else59

if.then50:                                        ; preds = %do.body41
  %multicast_update_pending = getelementptr i8, ptr %dev, i32 2824
  %19 = ptrtoint ptr %multicast_update_pending to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %multicast_update_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool51.not = icmp eq i32 %20, 0
  br i1 %tobool51.not, label %if.then52, label %if.then50.if.end60_crit_edge

if.then50.if.end60_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %multicast_update_pending to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %multicast_update_pending, align 8
  %call55 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 1)
  %and56 = and i32 %call55, -5
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %and56)
  br label %if.end60

if.else59:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_rx_multicast_update(ptr noundef %add.ptr.i)
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then52, %if.then50.if.end60_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call45) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %generation = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  tail call void @_raw_spin_lock_irq(ptr noundef %mac_lock) #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @smsc911x_set_hw_mac_address(ptr noundef %add.ptr.i, ptr noundef %10)
  tail call void @_raw_spin_unlock_irq(ptr noundef %mac_lock) #14
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smsc911x_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @smsc911x_tx_update_txcounters(ptr noundef %dev)
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 160) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped, align 8
  %add = add i32 %5, %call5.i
  store i32 %add, ptr %rx_dropped, align 8
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #14
  %call = tail call i32 @smsc911x_irqhandler(i32 noundef 0, ptr noundef %dev)
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef %offset, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 526, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call5.i = tail call i32 %4(ptr noundef %pdata, i32 noundef 164) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool25.not = icmp sgt i32 %call5.i, -1
  br i1 %tobool25.not, label %if.end34, label %if.end.cleanup_crit_edge, !prof !139

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %call2.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_write.i, align 4
  tail call void %8(ptr noundef %pdata, i32 noundef 168, i32 noundef %val) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i55) #14
  %and35 = and i32 %offset, 255
  %or = or i32 %and35, -2147483648
  %call2.i58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %reg_write.i60 = getelementptr inbounds %struct.smsc911x_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %reg_write.i60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_write.i60, align 4
  tail call void %12(ptr noundef %pdata, i32 noundef 164, i32 noundef %or) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i58) #14
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call5.i64 = tail call i32 %16(ptr noundef %pdata, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i62) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end34.for.body.i.preheader_crit_edge, label %land.rhs.i

if.end34.for.body.i.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

land.rhs.i:                                       ; preds = %if.end34
  %dep_map.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.body.i.preheader_crit_edge, !prof !110

land.rhs.i.for.body.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 480, i32 noundef 9, ptr noundef null) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.body.i.preheader_crit_edge, %if.end34.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.034.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call5.i.i = tail call i32 %21(ptr noundef %pdata, i32 noundef 164) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %tobool26.not.i = icmp sgt i32 %call5.i.i, -1
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  %or.cond = select i1 %tobool26.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_irqhandler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %dev_lock.i = getelementptr i8, ptr %dev_id, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev_id, i32 2844
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 88) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %call2.i98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call5.i100 = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 92) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i98) #14
  %and = and i32 %call5.i100, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and)
  %tobool.not = icmp sgt i32 %and, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !139

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call fastcc i32 @smsc911x_reg_read(ptr noundef %add.ptr.i, i32 noundef 92)
  %and7 = and i32 %call6, 2147483647
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 92, i32 noundef %and7)
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 88, i32 noundef -2147483648)
  %software_irq_signal = getelementptr i8, ptr %dev_id, i32 2688
  %8 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %software_irq_signal, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %serviced.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and12 = and i32 %and, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end24_crit_edge, label %if.then20, !prof !139

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then20:                                        ; preds = %if.end
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 88, i32 noundef 16777216)
  %multicast_update_pending = getelementptr i8, ptr %dev_id, i32 2824
  %9 = ptrtoint ptr %multicast_update_pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multicast_update_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %if.then20.if.end24_crit_edge, label %if.then22

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_rx_multicast_update_workaround(ptr noundef %add.ptr.i)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %serviced.1 = phi i32 [ %serviced.0, %if.end.if.end24_crit_edge ], [ 1, %if.then22 ], [ 1, %if.then20.if.end24_crit_edge ]
  %and26 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end30_crit_edge, label %if.then28

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call5.i104 = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 104) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i102) #14
  %or = or i32 %call5.i104, -16777216
  %call2.i106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_write.i, align 4
  tail call void %18(ptr noundef %add.ptr.i, i32 noundef 104, i32 noundef %or) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i106) #14
  %call2.i109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %reg_write.i111 = getelementptr inbounds %struct.smsc911x_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_write.i111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_write.i111, align 4
  tail call void %22(ptr noundef %add.ptr.i, i32 noundef 88, i32 noundef 512) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i109) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %24) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end24.if.end30_crit_edge
  %serviced.2 = phi i32 [ 1, %if.then28 ], [ %serviced.1, %if.end24.if.end30_crit_edge ]
  %and32 = and i32 %and, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end42_crit_edge, label %if.then40, !prof !139

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @smsc911x_reg_write(ptr noundef %add.ptr.i, i32 noundef 88, i32 noundef 16384)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end30.if.end42_crit_edge
  %serviced.3 = phi i32 [ 1, %if.then40 ], [ %serviced.2, %if.end30.if.end42_crit_edge ]
  %and44 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end66_crit_edge, label %if.then52, !prof !110

if.end42.if.end66_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then52:                                        ; preds = %if.end42
  %napi = getelementptr i8, ptr %dev_id, i32 2464
  %call53 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call53, label %if.then60, label %if.then52.if.end66_crit_edge, !prof !139

if.then52.if.end66_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then60:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call5.i115 = tail call i32 %28(ptr noundef %add.ptr.i, i32 noundef 92) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i113) #14
  %and62 = and i32 %call5.i115, -9
  %call2.i117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %reg_write.i119 = getelementptr inbounds %struct.smsc911x_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %reg_write.i119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_write.i119, align 4
  tail call void %32(ptr noundef %add.ptr.i, i32 noundef 92, i32 noundef %and62) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i117) #14
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.then52.if.end66_crit_edge, %if.end42.if.end66_crit_edge
  %serviced.4 = phi i32 [ %serviced.3, %if.end42.if.end66_crit_edge ], [ 1, %if.then52.if.end66_crit_edge ], [ 1, %if.then60 ]
  ret i32 %serviced.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_mac_read(ptr noundef %pdata, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 497, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call5.i = tail call i32 %4(ptr noundef %pdata, i32 noundef 164) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool25.not = icmp sgt i32 %call5.i, -1
  br i1 %tobool25.not, label %if.end34, label %if.end.cleanup_crit_edge, !prof !139

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %and35 = and i32 %offset, 255
  %or36 = or i32 %and35, -1073741824
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_write.i, align 4
  tail call void %8(ptr noundef %pdata, i32 noundef 164, i32 noundef %or36) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i57) #14
  %call2.i60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call5.i62 = tail call i32 %12(ptr noundef %pdata, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i60) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end34.for.body.i.preheader_crit_edge, label %land.rhs.i

if.end34.for.body.i.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

land.rhs.i:                                       ; preds = %if.end34
  %dep_map.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.body.i.preheader_crit_edge, !prof !110

land.rhs.i.for.body.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 480, i32 noundef 9, ptr noundef null) #14
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.body.i.preheader_crit_edge, %if.end34.for.body.i.preheader_crit_edge
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.034.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call5.i.i = tail call i32 %17(ptr noundef %pdata, i32 noundef 164) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %tobool26.not.i = icmp sgt i32 %call5.i.i, -1
  br i1 %tobool26.not.i, label %if.then46, label %for.cond.i

if.then46:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call5.i66 = tail call i32 %21(ptr noundef %pdata, i32 noundef 168) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i64) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i66, %if.then46 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_phy_adjust_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duplex, align 4
  %last_duplex = getelementptr i8, ptr %dev, i32 2440
  %4 = ptrtoint ptr %last_duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_duplex, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then:                                          ; preds = %entry
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call8 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 1)
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %and = and i32 %call8, -1048577
  %masksel = select i1 %tobool.not, i32 0, i32 1048576
  %mac_cr.0 = or i32 %masksel, %and
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %mac_cr.0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call5) #14
  %dev.i = getelementptr i8, ptr %dev, i32 2460
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 145
  %10 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev.i, align 16
  %dev_lock.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2844
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call5.i.i = tail call i32 %15(ptr noundef %add.ptr.i, i32 noundef 172) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %if.then.i, label %if.else14.i

if.then.i:                                        ; preds = %if.then
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %21, i32 noundef 4) #14
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i40.i = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 5) #14
  %and25.i44.i = and i32 %call.i40.i, %call.i.i
  %and2.i.i = and i32 %and25.i44.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  %and6.i.i = and i32 %and25.i44.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, label %if.then8.i.i

if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_resolve_flowctrl_fdx.exit.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  %26 = and i32 %call.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = lshr i32 %call.i40.i, 10
  %28 = and i32 %27, 1
  br label %mii_resolve_flowctrl_fdx.exit.i

mii_resolve_flowctrl_fdx.exit.i:                  ; preds = %if.else13.i.i, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge
  %cap.0.i.i = phi i32 [ 0, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 3, %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 2, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ %28, %if.else13.i.i ]
  %and.i = and i32 %cap.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -65534
  %and8.i = and i32 %cap.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and12.i = and i32 %call5.i.i, -16
  %masksel.i = select i1 %tobool9.not.i, i32 0, i32 15
  %afc.0.i = or i32 %masksel.i, %and12.i
  br label %smsc911x_phy_update_flowcontrol.exit

if.else14.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %or16.i = or i32 %call5.i.i, 15
  br label %smsc911x_phy_update_flowcontrol.exit

smsc911x_phy_update_flowcontrol.exit:             ; preds = %if.else14.i, %mii_resolve_flowctrl_fdx.exit.i
  %flow.1.i = phi i32 [ %..i, %mii_resolve_flowctrl_fdx.exit.i ], [ 0, %if.else14.i ]
  %afc.1.i = phi i32 [ %afc.0.i, %mii_resolve_flowctrl_fdx.exit.i ], [ %or16.i, %if.else14.i ]
  %call23.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  tail call fastcc void @smsc911x_mac_write(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %flow.1.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call23.i) #14
  %call2.i42.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_write.i.i, align 4
  tail call void %32(ptr noundef %add.ptr.i, i32 noundef 172, i32 noundef %afc.1.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i42.i) #14
  %33 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %duplex, align 4
  %35 = ptrtoint ptr %last_duplex to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %last_duplex, align 8
  br label %if.end16

if.end16:                                         ; preds = %smsc911x_phy_update_flowcontrol.exit, %entry.if.end16_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %38 = and i32 %37, 4
  %.lobit = lshr exact i32 %38, 2
  %39 = xor i32 %.lobit, 1
  %last_carrier = getelementptr i8, ptr %dev, i32 2444
  %40 = ptrtoint ptr %last_carrier to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_carrier, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp19.not = icmp eq i32 %41, %39
  br i1 %cmp19.not, label %if.end16.if.end54_crit_edge, label %if.then21

if.end16.if.end54_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i87 = icmp eq i32 %38, 0
  br i1 %tobool.not.i87, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.then21
  %gpio_orig_setting = getelementptr i8, ptr %dev, i32 2456
  %42 = ptrtoint ptr %gpio_orig_setting to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpio_orig_setting, align 8
  %and26 = and i32 %43, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then24.if.end52_crit_edge, label %land.lhs.true

if.then24.if.end52_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

land.lhs.true:                                    ; preds = %if.then24
  %using_extphy = getelementptr i8, ptr %dev, i32 2436
  %44 = ptrtoint ptr %using_extphy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %using_extphy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28.not = icmp eq i32 %45, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %gpio_setting = getelementptr i8, ptr %dev, i32 2452
  %46 = ptrtoint ptr %gpio_setting to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %gpio_setting, align 4
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_write.i, align 4
  tail call void %50(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %43) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  br label %if.end52

if.else33:                                        ; preds = %if.then21
  %dev_lock.i88 = getelementptr i8, ptr %dev, i32 2388
  %call2.i89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i88) #14
  %ops.i90 = getelementptr i8, ptr %dev, i32 2844
  %51 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i90, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call5.i = tail call i32 %54(ptr noundef %add.ptr.i, i32 noundef 136) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i88, i32 noundef %call2.i89) #14
  %gpio_setting36 = getelementptr i8, ptr %dev, i32 2452
  %55 = ptrtoint ptr %gpio_setting36 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call5.i, ptr %gpio_setting36, align 4
  %and38 = and i32 %call5.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else33.if.end52_crit_edge, label %land.lhs.true40

if.else33.if.end52_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

land.lhs.true40:                                  ; preds = %if.else33
  %using_extphy41 = getelementptr i8, ptr %dev, i32 2436
  %56 = ptrtoint ptr %using_extphy41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %using_extphy41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool42.not = icmp eq i32 %57, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true40.if.end52_crit_edge

land.lhs.true40.if.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  %gpio_orig_setting45 = getelementptr i8, ptr %dev, i32 2456
  %58 = ptrtoint ptr %gpio_orig_setting45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call5.i, ptr %gpio_orig_setting45, align 8
  %and47 = and i32 %call5.i, -268501250
  %or49 = or i32 %and47, 65793
  %59 = ptrtoint ptr %gpio_setting36 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or49, ptr %gpio_setting36, align 4
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i88) #14
  %60 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i90, align 4
  %reg_write.i94 = getelementptr inbounds %struct.smsc911x_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %reg_write.i94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_write.i94, align 4
  tail call void %63(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %or49) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i88, i32 noundef %call2.i92) #14
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %land.lhs.true40.if.end52_crit_edge, %if.else33.if.end52_crit_edge, %if.then29, %land.lhs.true.if.end52_crit_edge, %if.then24.if.end52_crit_edge
  %64 = ptrtoint ptr %last_carrier to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %39, ptr %last_carrier, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.end16.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_mii_write(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %regidx, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #14
  %mac_lock = getelementptr inbounds %struct.smsc911x_data, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call6 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %1, i32 noundef 6)
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !139

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %conv10 = zext i16 %val to i32
  tail call fastcc void @smsc911x_mac_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv10)
  %and11 = shl i32 %phyaddr, 11
  %shl = and i32 %and11, 63488
  %and12 = shl i32 %regidx, 6
  %shl13 = and i32 %and12, 1984
  %or = or i32 %shl, %shl13
  %or14 = or i32 %or, 2
  tail call fastcc void @smsc911x_mac_write(ptr noundef %1, i32 noundef 6, i32 noundef %or14)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.035 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %call17 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %1, i32 noundef 6)
  %and18 = and i32 %call17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.out_crit_edge, label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge, %entry.out_crit_edge
  %reg.0 = phi i32 [ -5, %entry.out_crit_edge ], [ -5, %for.cond.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call3) #14
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call.i34 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #14
  ret i32 %reg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_rx_multicast_update_workaround(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_lock = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #14
  %call = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %pdata, i32 noundef 1)
  tail call fastcc void @smsc911x_rx_multicast_update(ptr noundef %pdata)
  %call1 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %pdata, i32 noundef 1)
  %or = or i32 %call1, 4
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 1, i32 noundef %or)
  %multicast_update_pending = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 19
  %0 = ptrtoint ptr %multicast_update_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %multicast_update_pending, align 8
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_rx_multicast_update(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !110

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1295, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %pdata, i32 noundef 1)
  %set_bits_mask = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 20
  %1 = ptrtoint ptr %set_bits_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %set_bits_mask, align 4
  %or = or i32 %2, %call24
  %clear_bits_mask = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 21
  %3 = ptrtoint ptr %clear_bits_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clear_bits_mask, align 8
  %neg = xor i32 %4, -1
  %and = and i32 %or, %neg
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 1, i32 noundef %and)
  %hashhi = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 22
  %5 = ptrtoint ptr %hashhi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hashhi, align 4
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 4, i32 noundef %6)
  %hashlo = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 23
  %7 = ptrtoint ptr %hashlo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hashlo, align 8
  tail call fastcc void @smsc911x_mac_write(ptr noundef %pdata, i32 noundef 5, i32 noundef %8)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc911x_tx_update_txcounters(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_lock.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i.i84 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 128) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i83) #14
  %and.i85 = and i32 %call5.i.i84, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %cmp.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %cmp.not.i86, label %entry.while.end_crit_edge, label %smsc911x_tx_get_txstatus.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

smsc911x_tx_get_txstatus.exit.lr.ph:              ; preds = %entry
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  br label %smsc911x_tx_get_txstatus.exit

smsc911x_tx_get_txstatus.exit:                    ; preds = %if.end65.smsc911x_tx_get_txstatus.exit_crit_edge, %smsc911x_tx_get_txstatus.exit.lr.ph
  %call2.i5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call5.i7.i = tail call i32 %7(ptr noundef %add.ptr.i, i32 noundef 72) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i5.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i7.i)
  %cmp.not = icmp eq i32 %call5.i7.i, 0
  br i1 %cmp.not, label %smsc911x_tx_get_txstatus.exit.while.end_crit_edge, label %while.body

smsc911x_tx_get_txstatus.exit.while.end_crit_edge: ; preds = %smsc911x_tx_get_txstatus.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %smsc911x_tx_get_txstatus.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i7.i)
  %tobool.not = icmp sgt i32 %call5.i7.i, -1
  br i1 %tobool.not, label %if.else, label %while.body.if.end65_crit_edge, !prof !139

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.else:                                          ; preds = %while.body
  %and4 = and i32 %call5.i7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else13, label %if.else.if.end_crit_edge, !prof !139

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %inc15 = add i32 %9, 1
  store i32 %inc15, ptr %tx_packets, align 4
  %shr = lshr i32 %call5.i7.i, 16
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.else.if.end_crit_edge
  %tx_bytes.sink87 = phi ptr [ %tx_bytes, %if.else13 ], [ %tx_errors, %if.else.if.end_crit_edge ]
  %shr.sink = phi i32 [ %shr, %if.else13 ], [ 1, %if.else.if.end_crit_edge ]
  %10 = ptrtoint ptr %tx_bytes.sink87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes.sink87, align 4
  %add = add i32 %11, %shr.sink
  store i32 %add, ptr %tx_bytes.sink87, align 4
  %and17 = and i32 %call5.i7.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else30, label %if.then25, !prof !139

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %collisions, align 4
  %add27 = add i32 %13, 16
  store i32 %add27, ptr %collisions, align 4
  %14 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_aborted_errors, align 8
  %add29 = add i32 %15, 1
  store i32 %add29, ptr %tx_aborted_errors, align 8
  br label %if.end36

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %shr31 = lshr i32 %call5.i7.i, 3
  %and32 = and i32 %shr31, 15
  %16 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %collisions, align 4
  %add35 = add i32 %17, %and32
  store i32 %add35, ptr %collisions, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then25
  %and37 = and i32 %call5.i7.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end48_crit_edge, label %if.then45, !prof !139

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_carrier_errors, align 4
  %add47 = add i32 %19, 1
  store i32 %add47, ptr %tx_carrier_errors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end36.if.end48_crit_edge
  %and49 = and i32 %call5.i7.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end65_crit_edge, label %if.then57, !prof !139

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %collisions, align 4
  %inc60 = add i32 %21, 1
  store i32 %inc60, ptr %collisions, align 4
  %22 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_aborted_errors, align 8
  %inc63 = add i32 %23, 1
  store i32 %inc63, ptr %tx_aborted_errors, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %if.end48.if.end65_crit_edge, %while.body.if.end65_crit_edge
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call5.i.i = tail call i32 %27(ptr noundef %add.ptr.i, i32 noundef 128) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %and.i = and i32 %call5.i.i, 16711680
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end65.while.end_crit_edge, label %if.end65.smsc911x_tx_get_txstatus.exit_crit_edge

if.end65.smsc911x_tx_get_txstatus.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_tx_get_txstatus.exit

if.end65.while.end_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end65.while.end_crit_edge, %smsc911x_tx_get_txstatus.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_ethtool_getdrvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #14
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_getregslen(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 280
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc911x_ethtool_getregs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %idrev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %idrev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idrev, align 4
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %version, align 4
  %dev_lock.i = getelementptr i8, ptr %dev, i32 2388
  %ops.i = getelementptr i8, ptr %dev, i32 2844
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %mac_lock = getelementptr i8, ptr %dev, i32 2344
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 1)
  %arrayidx13 = getelementptr i32, ptr %buf, i32 26
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %arrayidx13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8) #14
  %call8.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.1 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 2)
  %arrayidx13.1 = getelementptr i32, ptr %buf, i32 27
  %6 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11.1, ptr %arrayidx13.1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.1) #14
  %call8.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.2 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 3)
  %arrayidx13.2 = getelementptr i32, ptr %buf, i32 28
  %7 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11.2, ptr %arrayidx13.2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.2) #14
  %call8.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.3 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 4)
  %arrayidx13.3 = getelementptr i32, ptr %buf, i32 29
  %8 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call11.3, ptr %arrayidx13.3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.3) #14
  %call8.4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.4 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 5)
  %arrayidx13.4 = getelementptr i32, ptr %buf, i32 30
  %9 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call11.4, ptr %arrayidx13.4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.4) #14
  %call8.5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.5 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 6)
  %arrayidx13.5 = getelementptr i32, ptr %buf, i32 31
  %10 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call11.5, ptr %arrayidx13.5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.5) #14
  %call8.6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.6 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 7)
  %arrayidx13.6 = getelementptr i32, ptr %buf, i32 32
  %11 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11.6, ptr %arrayidx13.6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.6) #14
  %call8.7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.7 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 8)
  %arrayidx13.7 = getelementptr i32, ptr %buf, i32 33
  %12 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call11.7, ptr %arrayidx13.7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.7) #14
  %call8.8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.8 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 9)
  %arrayidx13.8 = getelementptr i32, ptr %buf, i32 34
  %13 = ptrtoint ptr %arrayidx13.8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call11.8, ptr %arrayidx13.8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.8) #14
  %call8.9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.9 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 10)
  %arrayidx13.9 = getelementptr i32, ptr %buf, i32 35
  %14 = ptrtoint ptr %arrayidx13.9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11.9, ptr %arrayidx13.9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.9) #14
  %call8.10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.10 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 11)
  %arrayidx13.10 = getelementptr i32, ptr %buf, i32 36
  %15 = ptrtoint ptr %arrayidx13.10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11.10, ptr %arrayidx13.10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.10) #14
  %call8.11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call11.11 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %add.ptr.i, i32 noundef 12)
  %arrayidx13.11 = getelementptr i32, ptr %buf, i32 37
  %16 = ptrtoint ptr %arrayidx13.11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call11.11, ptr %arrayidx13.11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call8.11) #14
  %bus = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %addr = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %for.body21

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %j.048 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %i.047 = phi i32 [ 80, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call5.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %i.047) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %inc = add nuw nsw i32 %j.048, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %j.048
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call5.i, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.047, 4
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.cond2.preheader
  %j.252 = phi i32 [ 38, %for.cond2.preheader ], [ %inc24, %for.body21.for.body21_crit_edge ]
  %i.251 = phi i32 [ 0, %for.cond2.preheader ], [ %inc27, %for.body21.for.body21_crit_edge ]
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 8
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 8
  %call23 = tail call i32 @smsc911x_mii_read(ptr noundef %23, i32 noundef %25, i32 noundef %i.251)
  %inc24 = add nuw nsw i32 %j.252, 1
  %arrayidx25 = getelementptr i32, ptr %buf, i32 %j.252
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call23, ptr %arrayidx25, align 4
  %inc27 = add nuw nsw i32 %i.251, 1
  %exitcond54.not = icmp eq i32 %inc27, 32
  br i1 %exitcond54.not, label %for.end28, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

for.end28:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_getmsglevel(ptr nocapture noundef readonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2448
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smsc911x_ethtool_setmsglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2448
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc911x_ethtool_get_eeprom_len(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_ethtool_get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %eeprom_data = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %eeprom_data) #14
  %0 = call ptr @memset(ptr %eeprom_data, i32 255, i32 128)
  %dev_lock.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2844
  %1 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call5.i.i = tail call i32 %4(ptr noundef %add.ptr.i, i32 noundef 136) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %and.i = and i32 %call5.i.i, -7340033
  %call2.i4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_write.i.i, align 4
  tail call void %8(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %and.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i4.i) #14
  tail call void @msleep(i32 noundef 1) #14
  %len1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %9 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp236.not = icmp eq i32 %11, 0
  br i1 %cmp236.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef %i.037) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup, label %smsc911x_eeprom_read_location.exit

smsc911x_eeprom_read_location.exit:               ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %smsc911x_eeprom_read_location.exit.cleanup8_crit_edge, label %smsc911x_eeprom_read_location.exit.for.inc_crit_edge

smsc911x_eeprom_read_location.exit.for.inc_crit_edge: ; preds = %smsc911x_eeprom_read_location.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

smsc911x_eeprom_read_location.exit.cleanup8_crit_edge: ; preds = %smsc911x_eeprom_read_location.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup8

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call5.i.i27 = tail call i32 %15(ptr noundef %add.ptr.i, i32 noundef 180) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i25) #14
  %conv2.i = trunc i32 %call5.i.i27 to i8
  %arrayidx.i = getelementptr i8, ptr %eeprom_data, i32 %i.037
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %smsc911x_eeprom_read_location.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr [128 x i8], ptr %eeprom_data, i32 0, i32 %18
  %19 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 %11)
  br label %cleanup8

cleanup8:                                         ; preds = %for.end, %smsc911x_eeprom_read_location.exit.cleanup8_crit_edge
  %storemerge = phi i32 [ %11, %for.end ], [ 0, %smsc911x_eeprom_read_location.exit.cleanup8_crit_edge ]
  %retval.2 = phi i32 [ 0, %for.end ], [ %call.i, %smsc911x_eeprom_read_location.exit.cleanup8_crit_edge ]
  %20 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %len1, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %eeprom_data) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_ethtool_set_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_lock.i.i = getelementptr i8, ptr %dev, i32 2388
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i.i = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef 136) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i) #14
  %and.i = and i32 %call5.i.i, -7340033
  %call2.i4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i.i = getelementptr inbounds %struct.smsc911x_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write.i.i, align 4
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %and.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i4.i) #14
  tail call void @msleep(i32 noundef 1) #14
  %call1 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef 536870912)
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv.i = and i32 %9, 255
  %or.i = or i32 %conv.i, 1342177280
  %call.i = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef %or.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.smsc911x_eeprom_write_location.exit_crit_edge

entry.smsc911x_eeprom_write_location.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smsc911x_eeprom_write_location.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %or2.i = or i32 %conv.i, 805306368
  %conv3.i = zext i8 %11 to i32
  %call2.i.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %reg_write.i.i11 = getelementptr inbounds %struct.smsc911x_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %reg_write.i.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_write.i.i11, align 4
  tail call void %15(ptr noundef %add.ptr.i, i32 noundef 180, i32 noundef %conv3.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i.i9) #14
  %call2.i13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i.i) #14
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call5.i.i12 = tail call i32 %19(ptr noundef %add.ptr.i, i32 noundef 100) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i.i, i32 noundef %call2.i13.i) #14
  %call5.i = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef %or2.i) #14
  br label %smsc911x_eeprom_write_location.exit

smsc911x_eeprom_write_location.exit:              ; preds = %if.then.i, %entry.smsc911x_eeprom_write_location.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.smsc911x_eeprom_write_location.exit_crit_edge ], [ %call5.i, %if.then.i ]
  %call3 = tail call fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef 268435456)
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %len, align 4
  ret i32 %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_mii_read(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %regidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #14
  %mac_lock = getelementptr inbounds %struct.smsc911x_data, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mac_lock) #14
  %call6 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %1, i32 noundef 6)
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !139

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %and10 = shl i32 %phyaddr, 11
  %shl = and i32 %and10, 63488
  %and11 = shl i32 %regidx, 6
  %shl12 = and i32 %and11, 1984
  %or = or i32 %shl12, %shl
  tail call fastcc void @smsc911x_mac_write(ptr noundef %1, i32 noundef 6, i32 noundef %or)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.034 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %call15 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %1, i32 noundef 6)
  %and16 = and i32 %call15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %for.cond

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call fastcc i32 @smsc911x_mac_read(ptr noundef %1, i32 noundef 7)
  br label %out

out:                                              ; preds = %if.then18, %for.cond.out_crit_edge, %entry.out_crit_edge
  %reg.0 = phi i32 [ %call19, %if.then18 ], [ -5, %entry.out_crit_edge ], [ -5, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mac_lock, i32 noundef %call3) #14
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #14
  ret i32 %reg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc911x_eeprom_send_cmd(ptr noundef %pdata, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr inbounds %struct.smsc911x_data, ptr %pdata, i32 0, i32 24
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 %3(ptr noundef %pdata, i32 noundef 176) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %tobool.not = icmp sgt i32 %call5.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %op, -2147483648
  %call2.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write.i, align 4
  tail call void %7(ptr noundef %pdata, i32 noundef 176, i32 noundef %or) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i22) #14
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %timeout.0 = phi i32 [ 100, %if.end ], [ %dec, %land.rhs.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #14
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5.i27 = tail call i32 %11(ptr noundef %pdata, i32 noundef 176) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i27)
  %tobool4.not = icmp sgt i32 %call5.i27, -1
  br i1 %tobool4.not, label %if.end9, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %and10 = and i32 %call5.i27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %., %if.end9 ], [ -11, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @netif_device_detach(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev_lock.i = getelementptr i8, ptr %1, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %1, i32 2844
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write.i, align 4
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef 132, i32 noundef 4866) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #14
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc911x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @pm_runtime_enable(ptr noundef %dev) #14
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #14
  %dev_lock.i = getelementptr i8, ptr %1, i32 2388
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %ops.i = getelementptr i8, ptr %1, i32 2844
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.smsc911x_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_write.i, align 4
  tail call void %5(ptr noundef %add.ptr.i, i32 noundef 100, i32 noundef 0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i) #14
  %call2.i1820 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5.i21 = tail call i32 %9(ptr noundef %add.ptr.i, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i1820) #14
  %and22 = and i32 %call5.i21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not23 = icmp eq i32 %and22, 0
  br i1 %tobool.not23, label %entry.land.rhs_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %to.024 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 100, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %to.024, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #14
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_lock.i) #14
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call5.i = tail call i32 %14(ptr noundef %add.ptr.i, i32 noundef 132) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_lock.i, i32 noundef %call2.i18) #14
  %and = and i32 %call5.i, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end:                                           ; preds = %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_device_attach(ptr noundef %1) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__UNIQUE_ID_file380, !1, !"__UNIQUE_ID_file380", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_license381, !1, !"__UNIQUE_ID_license381", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version382, !4, !"__UNIQUE_ID_version382", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 61, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias383, !10, !"__UNIQUE_ID_alias383", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 62, i32 1}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 70, i32 1}
!13 = !{ptr @__UNIQUE_ID_debugtype384, !12, !"__UNIQUE_ID_debugtype384", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_debug385, !15, !"__UNIQUE_ID_debug385", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 71, i32 1}
!16 = !{ptr @__initcall__kmod_smsc911x__389_2686_smsc911x_init_module6, !17, !"__initcall__kmod_smsc911x__389_2686_smsc911x_init_module6", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2686, i32 1}
!18 = !{ptr @__exitcall_smsc911x_cleanup_module, !19, !"__exitcall_smsc911x_cleanup_module", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2687, i32 1}
!20 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 67, i32 12}
!23 = !{ptr @smsc911x_driver, !24, !"smsc911x_driver", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2662, i32 31}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2420, i32 9}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2424, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @smsc911x_drv_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @smsc911x_drv_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2435, i32 3}
!35 = !{ptr @smsc911x_drv_probe._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smsc911x_drv_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2554, i32 19}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 423, i32 30}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 424, i32 30}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 435, i32 20}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 441, i32 12}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 447, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @smsc911x_request_resources.__UNIQUE_ID_ddebug386, !48, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 379, i32 20}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 385, i32 21}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2382, i32 38}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2390, i32 32}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2392, i32 35}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2395, i32 35}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2398, i32 35}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2401, i32 35}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2404, i32 35}
!69 = !{ptr @standard_smsc911x_ops, !70, !"standard_smsc911x_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2353, i32 34}
!71 = !{ptr @shifted_smsc911x_ops, !72, !"shifted_smsc911x_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2361, i32 34}
!73 = !{ptr @smsc911x_init.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2189, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @smsc911x_init.__key.27, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2190, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2217, i32 19}
!81 = !{ptr @smsc911x_netdev_ops, !82, !"smsc911x_netdev_ops", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2145, i32 36}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1688, i32 20}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1696, i32 19}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1025, i32 19}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1036, i32 19}
!91 = !{ptr @smsc911x_ethtool_ops, !92, !"smsc911x_ethtool_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2129, i32 33}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1075, i32 25}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 1076, i32 48}
!97 = !{ptr @smsc911x_dt_ids, !98, !"smsc911x_dt_ids", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2647, i32 34}
!99 = !{ptr @smsc911x_pm_ops, !100, !"smsc911x_pm_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/smsc/smsc911x.c", i32 2635, i32 32}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2157967415, i64 2157971978, i64 2157967452, i64 2157967508, i64 2157967542, i64 2157967566, i64 2157967607, i64 2157967628, i64 2157967656, i64 2157967690}
!112 = !{i64 2157973098, i64 2157973600, i64 2157973135, i64 2157973191, i64 2157973225, i64 2157973249, i64 2157973290, i64 2157973311, i64 2157973339, i64 2157973373}
!113 = !{i64 2157974736, i64 2157975238, i64 2157974773, i64 2157974829, i64 2157974863, i64 2157974887, i64 2157974928, i64 2157974949, i64 2157974977, i64 2157975011}
!114 = !{i64 2148797157, i64 2148797162, i64 2148797175, i64 2148797219, i64 2148797253, i64 2148797274}
!115 = !{i64 6158104}
!116 = !{i64 2157771915}
!117 = !{i64 6157266}
!118 = !{i64 2157772493}
!119 = !{i64 2157773003}
!120 = !{i64 2157773271, i64 2157773772, i64 2157773308, i64 2157773364, i64 2157773398, i64 2157773422, i64 2157773463, i64 2157773484, i64 2157773512, i64 2157773546}
!121 = !{i64 2157779457}
!122 = !{i64 6157686}
!123 = !{i64 2157779943}
!124 = !{i64 6157066}
!125 = !{i64 2157780384}
!126 = !{i64 2157780884, i64 2157781385, i64 2157780921, i64 2157780977, i64 2157781011, i64 2157781035, i64 2157781076, i64 2157781097, i64 2157781125, i64 2157781159}
!127 = !{i64 2157792183, i64 2157792684, i64 2157792220, i64 2157792276, i64 2157792310, i64 2157792334, i64 2157792375, i64 2157792396, i64 2157792424, i64 2157792458}
!128 = !{i64 2157787319, i64 2157787820, i64 2157787356, i64 2157787412, i64 2157787446, i64 2157787470, i64 2157787511, i64 2157787532, i64 2157787560, i64 2157787594}
!129 = !{i64 2157775464}
!130 = !{i64 2157776227}
!131 = !{i64 2157776926}
!132 = !{i64 2157777194, i64 2157777695, i64 2157777231, i64 2157777287, i64 2157777321, i64 2157777345, i64 2157777386, i64 2157777407, i64 2157777435, i64 2157777469}
!133 = !{i64 2157782694}
!134 = !{i64 2157783295}
!135 = !{i64 2157783855}
!136 = !{i64 2157784390, i64 2157784891, i64 2157784427, i64 2157784483, i64 2157784517, i64 2157784541, i64 2157784582, i64 2157784603, i64 2157784631, i64 2157784665}
!137 = !{i64 2157794657, i64 2157795158, i64 2157794694, i64 2157794750, i64 2157794784, i64 2157794808, i64 2157794849, i64 2157794870, i64 2157794898, i64 2157794932}
!138 = !{i64 2157789761, i64 2157790262, i64 2157789798, i64 2157789854, i64 2157789888, i64 2157789912, i64 2157789953, i64 2157789974, i64 2157790002, i64 2157790036}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2157920734}
!141 = !{i64 2157902736}
