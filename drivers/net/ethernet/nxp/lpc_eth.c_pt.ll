; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/nxp/lpc_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/nxp/lpc_eth.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.netdata_local = type { ptr, ptr, ptr, %struct.spinlock, ptr, i32, [16 x i32], i32, i32, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rx_status_t = type { i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.txrx_desc_t = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@__initcall__kmod_lpc_eth__359_1519_lpc_eth_driver_init6 = internal global ptr @lpc_eth_driver_init, section ".initcall6.init", align 4
@lpc_eth_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc_eth_drv_probe, ptr @lpc_eth_drv_remove, ptr null, ptr @lpc_eth_drv_suspend, ptr @lpc_eth_drv_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc_eth_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc_eth_driver_exit = internal global ptr @lpc_eth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author360 = internal constant [49 x i8] c"lpc_eth.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author361 = internal constant [48 x i8] c"lpc_eth.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [40 x i8] c"lpc_eth.description=LPC Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file363 = internal constant [46 x i8] c"lpc_eth.file=drivers/net/ethernet/nxp/lpc_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [20 x i8] c"lpc_eth.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpc-eth\00", [24 x i8] zeroinitializer }, align 32
@lpc_eth_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc-eth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error getting resources.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc_eth_drv_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ethernet/nxp/lpc_eth.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr = internal global ptr @lpc_eth_drv_probe._entry, section ".printk_index", align 4
@lpc_eth_drv_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not allocate device.\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.8 = internal global ptr @lpc_eth_drv_probe._entry.6, section ".printk_index", align 4
@lpc_eth_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pldat->lock\00", [19 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error getting clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.12 = internal global ptr @lpc_eth_drv_probe._entry.10, section ".printk_index", align 4
@lpc_eth_drv_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.15 = internal global ptr @lpc_eth_drv_probe._entry.13, section ".printk_index", align 4
@lpc_eth_drv_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error requesting interrupt.\0A\00", [35 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.18 = internal global ptr @lpc_eth_drv_probe._entry.16, section ".printk_index", align 4
@lpc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lpc_eth_open, ptr @lpc_eth_close, ptr @lpc_eth_hard_start_xmit, ptr null, ptr null, ptr null, ptr @lpc_eth_set_multicast_list, ptr @lpc_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@lpc_eth_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @lpc_eth_ethtool_getdrvinfo, ptr null, ptr null, ptr null, ptr null, ptr @lpc_eth_ethtool_getmsglevel, ptr @lpc_eth_ethtool_setmsglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"IRAM not big enough for net buffers, using SDRAM instead.\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpc_eth\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IO address space     :%pR\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IO address size      :%zd\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IO address (mapped)  :0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.24, i8 1, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IRQ number           :%d\0A\00", [38 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA buffer size      :%zd\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 1, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA buffer P address :%pad\0A\00", [36 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA buffer V address :0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot register net device, aborting.\0A\00", [57 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.31 = internal global ptr @lpc_eth_drv_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LPC mac at 0x%08lx irq %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013lpc_eth: %s: not found (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc_eth_drv_probe._entry_ptr.35 = internal global ptr @lpc_eth_drv_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-mode\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@lpc_eth_open.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc_eth_open\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enabling %s\0A\00", [19 x i8] zeroinitializer }, align 32
@lpc_eth_close.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc_eth_close\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shutting down %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BUG! TX request when no free TX buffers!\0A\00", [54 x i8] zeroinitializer }, align 32
@__lpc_set_mac.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__lpc_set_mac\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ethernet MAC address %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"use-iram\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc_mii_bus\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using MII interface\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using RMII interface\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"lpc_eth_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1506, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1514, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"lpc_eth_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1500, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1244, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1252, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1263, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1271, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1284, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1291, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"lpc_netdev_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1216, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"lpc_eth_ethtool_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1207, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1310, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1335, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1336, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1338, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1340, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1341, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1342, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1344, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1347, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1380, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1389, i32 20 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1416, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 319, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 320, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1160, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1013, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1050, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 434, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1188, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 329, i32 46 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 811, i32 25 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 815, i32 48 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 820, i32 56 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 758, i32 21 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 760, i32 21 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 767, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [38 x i8] c"../drivers/net/ethernet/nxp/lpc_eth.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 775, i32 20 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__exitcall_lpc_eth_driver_exit, ptr @__initcall__kmod_lpc_eth__359_1519_lpc_eth_driver_init6, ptr @lpc_eth_driver_exit, ptr @lpc_eth_drv_probe._entry, ptr @lpc_eth_drv_probe._entry.10, ptr @lpc_eth_drv_probe._entry.13, ptr @lpc_eth_drv_probe._entry.16, ptr @lpc_eth_drv_probe._entry.29, ptr @lpc_eth_drv_probe._entry.33, ptr @lpc_eth_drv_probe._entry.6, ptr @lpc_eth_drv_probe._entry_ptr, ptr @lpc_eth_drv_probe._entry_ptr.12, ptr @lpc_eth_drv_probe._entry_ptr.15, ptr @lpc_eth_drv_probe._entry_ptr.18, ptr @lpc_eth_drv_probe._entry_ptr.31, ptr @lpc_eth_drv_probe._entry_ptr.35, ptr @lpc_eth_drv_probe._entry_ptr.8, ptr @lpc_eth_driver, ptr @.str, ptr @lpc_eth_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lpc_eth_drv_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @lpc_netdev_ops, ptr @lpc_eth_ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc_eth_drv_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc_eth_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc_eth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc_eth_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #15
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %tobool.not.i = icmp eq ptr %dev1, null
  %3 = call ptr @memset(ptr %addr, i32 255, i32 6)
  br i1 %tobool.not.i, label %entry.lpc_phy_interface_mode.exit_crit_edge, label %land.lhs.true.i

entry.lpc_phy_interface_mode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %lpc_phy_interface_mode.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.lpc_phy_interface_mode.exit_crit_edge, label %if.then.i

land.lhs.true.i.lpc_phy_interface_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lpc_phy_interface_mode.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.36, ptr noundef null) #15
  br label %lpc_phy_interface_mode.exit

lpc_phy_interface_mode.exit:                      ; preds = %if.then.i, %land.lhs.true.i.lpc_phy_interface_mode.exit_crit_edge, %entry.lpc_phy_interface_mode.exit_crit_edge
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #15
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %lpc_phy_interface_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #18
  br label %do.end256

if.end:                                           ; preds = %lpc_phy_interface_mode.exit
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 416, i32 noundef 1, i32 noundef 1) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #18
  br label %do.end256

if.end10:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %add.ptr.i, align 8
  %ndev14 = getelementptr i8, ptr %call4, i32 2308
  %8 = ptrtoint ptr %ndev14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %ndev14, align 4
  %lock = getelementptr i8, ptr %call4, i32 2316
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @lpc_eth_drv_probe.__key, i16 noundef signext 3) #15
  %irq19 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 64
  %9 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %irq19, align 4
  %call20 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #15
  %clk = getelementptr i8, ptr %call4, i32 2444
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #18
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %err_out_free_dev

if.end29:                                         ; preds = %if.end10
  %call.i393 = tail call i32 @clk_prepare(ptr noundef %call20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i393)
  %tobool.not.i394 = icmp eq i32 %call.i393, 0
  br i1 %tobool.not.i394, label %if.end.i, label %if.end29.err_out_clk_put_crit_edge

if.end29.err_out_clk_put_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_clk_put

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %call20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %call20) #15
  br label %err_out_clk_put

if.end34:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  %call36 = tail call ptr @ioremap(i32 noundef %15, i32 noundef %add.i) #15
  %net_base = getelementptr i8, ptr %call4, i32 2360
  %18 = ptrtoint ptr %net_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call36, ptr %net_base, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #18
  br label %err_out_disable_clocks

if.end43:                                         ; preds = %if.end34
  %19 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq19, align 4
  %call.i396 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @__lpc_eth_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call4, ptr noundef nonnull %call4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i396)
  %tobool46.not = icmp eq i32 %call.i396, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #18
  br label %err_out_iounmap

if.end51:                                         ; preds = %if.end43
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lpc_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %22 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @lpc_eth_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %23 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 250, ptr %watchdog_timeo, align 4
  %dma_buff_size = getelementptr i8, ptr %call4, i32 2456
  %24 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 99328, ptr %dma_buff_size, align 8
  br i1 %tobool.not.i, label %if.end51.if.end62_crit_edge, label %land.lhs.true.i400

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

land.lhs.true.i400:                               ; preds = %if.end51
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %tobool1.not.i399 = icmp eq ptr %26, null
  br i1 %tobool1.not.i399, label %land.lhs.true.i400.if.end62_crit_edge, label %use_iram_for_net.exit

land.lhs.true.i400.if.end62_crit_edge:            ; preds = %land.lhs.true.i400
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

use_iram_for_net.exit:                            ; preds = %land.lhs.true.i400
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %26, ptr noundef nonnull @.str.46, ptr noundef null) #15
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %use_iram_for_net.exit.if.end62_crit_edge, label %if.then54

use_iram_for_net.exit.if.end62_crit_edge:         ; preds = %use_iram_for_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then54:                                        ; preds = %use_iram_for_net.exit
  %27 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_buff_size, align 8
  %dma_buff_base_v = getelementptr i8, ptr %call4, i32 2452
  %29 = ptrtoint ptr %dma_buff_base_v to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma_buff_base_v, align 4
  %30 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dma_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp57.not = icmp eq i32 %28, 0
  br i1 %cmp57.not, label %if.then54.if.end62_crit_edge, label %if.then58

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %dma_buff_base_v to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dma_buff_base_v, align 4
  %32 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dma_buff_size, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call4, ptr noundef nonnull @.str.19) #18
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then54.if.end62_crit_edge, %use_iram_for_net.exit.if.end62_crit_edge, %land.lhs.true.i400.if.end62_crit_edge, %if.end51.if.end62_crit_edge
  %dma_buff_base_v63 = getelementptr i8, ptr %call4, i32 2452
  %33 = ptrtoint ptr %dma_buff_base_v63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_buff_base_v63, align 4
  %cmp64 = icmp eq ptr %34, null
  br i1 %cmp64, label %if.then65, label %if.end62.if.end79_crit_edge

if.end62.if.end79_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then65:                                        ; preds = %if.end62
  %call66 = tail call fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then65.err_out_free_irq_crit_edge

if.then65.err_out_free_irq_crit_edge:             ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_irq

if.end69:                                         ; preds = %if.then65
  %35 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_buff_size, align 8
  %add = add i32 %36, 4095
  %and = and i32 %add, -4096
  store i32 %and, ptr %dma_buff_size, align 8
  %call.i403 = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %and, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #15
  %37 = ptrtoint ptr %dma_buff_base_v63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i403, ptr %dma_buff_base_v63, align 4
  %cmp76 = icmp eq ptr %call.i403, null
  br i1 %cmp76, label %if.end69.err_out_free_irq_crit_edge, label %if.end69.if.end79_crit_edge

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.end69.err_out_free_irq_crit_edge:              ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_irq

if.end79:                                         ; preds = %if.end69.if.end79_crit_edge, %if.end62.if.end79_crit_edge
  %38 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_handle, align 4
  %dma_buff_base_p = getelementptr i8, ptr %call4, i32 2448
  %40 = ptrtoint ptr %dma_buff_base_p to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dma_buff_base_p, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then86)) #15
          to label %do.body93 [label %if.then86], !srcloc !132

if.then86:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug352, ptr noundef nonnull %call4, ptr noundef nonnull @.str.21, ptr noundef nonnull %call2) #15
  br label %do.body93

do.body93:                                        ; preds = %if.then86, %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then105)) #15
          to label %do.body113 [label %if.then105], !srcloc !132

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i, align 4
  %43 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call2, align 4
  %sub.i405 = add i32 %42, 1
  %add.i406 = sub i32 %sub.i405, %44
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug353, ptr noundef nonnull %call4, ptr noundef nonnull @.str.22, i32 noundef %add.i406) #15
  br label %do.body113

do.body113:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then125)) #15
          to label %do.body133 [label %if.then125], !srcloc !132

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net_base, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug354, ptr noundef nonnull %call4, ptr noundef nonnull @.str.23, ptr noundef %46) #15
  br label %do.body133

do.body133:                                       ; preds = %if.then125, %do.body113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then145)) #15
          to label %do.body153 [label %if.then145], !srcloc !132

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug355, ptr noundef nonnull %call4, ptr noundef nonnull @.str.24, i32 noundef %48) #15
  br label %do.body153

do.body153:                                       ; preds = %if.then145, %do.body133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then165)) #15
          to label %do.body173 [label %if.then165], !srcloc !132

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_buff_size, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug356, ptr noundef nonnull %call4, ptr noundef nonnull @.str.25, i32 noundef %50) #15
  br label %do.body173

do.body173:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then185)) #15
          to label %do.body193 [label %if.then185], !srcloc !132

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug357, ptr noundef nonnull %call4, ptr noundef nonnull @.str.26, ptr noundef %dma_buff_base_p) #15
  br label %do.body193

do.body193:                                       ; preds = %if.then185, %do.body173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_drv_probe, %if.then205)) #15
          to label %do.end211 [label %if.then205], !srcloc !132

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %dma_buff_base_v63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_buff_base_v63, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lpc_eth_drv_probe.__UNIQUE_ID_ddebug358, ptr noundef nonnull %call4, ptr noundef nonnull @.str.27, ptr noundef %52) #15
  br label %do.end211

do.end211:                                        ; preds = %if.then205, %do.body193
  %call212 = call fastcc ptr @of_parse_phandle(ptr noundef %1)
  %phy_node = getelementptr i8, ptr %call4, i32 2312
  %53 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call212, ptr %phy_node, align 8
  call fastcc void @__lpc_get_mac(ptr noundef %add.ptr.i, ptr noundef nonnull %addr)
  call void @dev_addr_mod(ptr noundef nonnull %call4, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %54 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_addr, align 64
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end211.if.then216_crit_edge

do.end211.if.then216_crit_edge:                   ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then216

is_valid_ether_addr.exit:                         ; preds = %do.end211
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %60 to i32
  %or.i.i = or i32 %57, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then216_crit_edge, label %is_valid_ether_addr.exit.if.end218_crit_edge

is_valid_ether_addr.exit.if.end218_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end218

is_valid_ether_addr.exit.if.then216_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then216

if.then216:                                       ; preds = %is_valid_ether_addr.exit.if.then216_crit_edge, %do.end211.if.then216_crit_edge
  %call217 = call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef nonnull %call4) #15
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %is_valid_ether_addr.exit.if.end218_crit_edge
  %61 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_addr, align 64
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i407 = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i407, label %is_valid_ether_addr.exit413, label %if.end218.if.then221_crit_edge

if.end218.if.then221_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then221

is_valid_ether_addr.exit413:                      ; preds = %if.end218
  %add.ptr.i.i408 = getelementptr i8, ptr %62, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i408 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i408, align 2
  %conv.i.i409 = zext i16 %67 to i32
  %or.i.i410 = or i32 %64, %conv.i.i409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i410)
  %cmp.i.i411.not = icmp eq i32 %or.i.i410, 0
  br i1 %cmp.i.i411.not, label %is_valid_ether_addr.exit413.if.then221_crit_edge, label %is_valid_ether_addr.exit413.if.end222_crit_edge

is_valid_ether_addr.exit413.if.end222_crit_edge:  ; preds = %is_valid_ether_addr.exit413
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end222

is_valid_ether_addr.exit413.if.then221_crit_edge: ; preds = %is_valid_ether_addr.exit413
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then221

if.then221:                                       ; preds = %is_valid_ether_addr.exit413.if.then221_crit_edge, %if.end218.if.then221_crit_edge
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call4)
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %is_valid_ether_addr.exit413.if.end222_crit_edge
  call fastcc void @__lpc_eth_shutdown(ptr noundef %add.ptr.i)
  %msg_enable = getelementptr i8, ptr %call4, i32 2364
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %msg_enable, align 4
  call fastcc void @__lpc_mii_mngt_reset(ptr noundef %add.ptr.i)
  %link = getelementptr i8, ptr %call4, i32 2484
  %69 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %link, align 4
  %speed = getelementptr i8, ptr %call4, i32 2488
  %70 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 100, ptr %speed, align 8
  %duplex = getelementptr i8, ptr %call4, i32 2492
  %71 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %duplex, align 4
  call fastcc void @__lpc_params_setup(ptr noundef %add.ptr.i)
  %napi = getelementptr i8, ptr %call4, i32 2496
  call void @netif_napi_add(ptr noundef nonnull %call4, ptr noundef %napi, ptr noundef nonnull @lpc_eth_poll, i32 noundef 16) #15
  %call224 = call i32 @register_netdev(ptr noundef nonnull %call4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end230, label %do.end229

do.end229:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #18
  br label %err_out_dma_unmap

if.end230:                                        ; preds = %if.end222
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %call231 = call fastcc i32 @lpc_mii_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end234, label %err_out_unregister_netdev

if.end234:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call2, align 4
  %75 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq19, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call4, ptr noundef nonnull @.str.32, i32 noundef %74, i32 noundef %76) #18
  %call237 = call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext true) #15
  %call238 = call i32 @device_set_wakeup_enable(ptr noundef %dev1, i1 noundef zeroext false) #15
  br label %cleanup

err_out_unregister_netdev:                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  call void @unregister_netdev(ptr noundef nonnull %call4) #15
  br label %err_out_dma_unmap

err_out_dma_unmap:                                ; preds = %err_out_unregister_netdev, %do.end229
  %ret.0 = phi i32 [ %call224, %do.end229 ], [ %call231, %err_out_unregister_netdev ]
  br i1 %tobool.not.i, label %err_out_dma_unmap.if.then244_crit_edge, label %land.lhs.true.i417

err_out_dma_unmap.if.then244_crit_edge:           ; preds = %err_out_dma_unmap
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then244

land.lhs.true.i417:                               ; preds = %err_out_dma_unmap
  %77 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %of_node, align 8
  %tobool1.not.i416 = icmp eq ptr %78, null
  br i1 %tobool1.not.i416, label %land.lhs.true.i417.if.then244_crit_edge, label %use_iram_for_net.exit422

land.lhs.true.i417.if.then244_crit_edge:          ; preds = %land.lhs.true.i417
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then244

use_iram_for_net.exit422:                         ; preds = %land.lhs.true.i417
  %call.i.i418 = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.46, ptr noundef null) #15
  %tobool.i.i419.not = icmp eq ptr %call.i.i418, null
  br i1 %tobool.i.i419.not, label %use_iram_for_net.exit422.if.then244_crit_edge, label %lor.lhs.false240

use_iram_for_net.exit422.if.then244_crit_edge:    ; preds = %use_iram_for_net.exit422
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then244

lor.lhs.false240:                                 ; preds = %use_iram_for_net.exit422
  %79 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_buff_size, align 8
  call void @__asan_store4_noabort(i32 0)
  store i32 0, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp243.not = icmp eq i32 %80, 0
  br i1 %cmp243.not, label %lor.lhs.false240.err_out_free_irq_crit_edge, label %lor.lhs.false240.if.then244_crit_edge

lor.lhs.false240.if.then244_crit_edge:            ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then244

lor.lhs.false240.err_out_free_irq_crit_edge:      ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_irq

if.then244:                                       ; preds = %lor.lhs.false240.if.then244_crit_edge, %use_iram_for_net.exit422.if.then244_crit_edge, %land.lhs.true.i417.if.then244_crit_edge, %err_out_dma_unmap.if.then244_crit_edge
  %81 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_buff_size, align 8
  %83 = ptrtoint ptr %dma_buff_base_v63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_buff_base_v63, align 4
  %85 = ptrtoint ptr %dma_buff_base_p to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_buff_base_p, align 8
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %82, ptr noundef %84, i32 noundef %86, i32 noundef 0) #15
  br label %err_out_free_irq

err_out_free_irq:                                 ; preds = %if.then244, %lor.lhs.false240.err_out_free_irq_crit_edge, %if.end69.err_out_free_irq_crit_edge, %if.then65.err_out_free_irq_crit_edge
  %ret.1 = phi i32 [ %call66, %if.then65.err_out_free_irq_crit_edge ], [ %ret.0, %if.then244 ], [ %ret.0, %lor.lhs.false240.err_out_free_irq_crit_edge ], [ -12, %if.end69.err_out_free_irq_crit_edge ]
  %87 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq19, align 4
  %call250 = call ptr @free_irq(i32 noundef %88, ptr noundef nonnull %call4) #15
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_free_irq, %do.end50
  %ret.2 = phi i32 [ %call.i396, %do.end50 ], [ %ret.1, %err_out_free_irq ]
  %89 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_base, align 8
  call void @iounmap(ptr noundef %90) #15
  br label %err_out_disable_clocks

err_out_disable_clocks:                           ; preds = %err_out_iounmap, %do.end42
  %ret.3 = phi i32 [ %ret.2, %err_out_iounmap ], [ -12, %do.end42 ]
  %91 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %92) #15
  call void @clk_unprepare(ptr noundef %92) #15
  br label %err_out_clk_put

err_out_clk_put:                                  ; preds = %err_out_disable_clocks, %if.then3.i, %if.end29.err_out_clk_put_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_out_disable_clocks ], [ %call1.i, %if.then3.i ], [ %call.i393, %if.end29.err_out_clk_put_crit_edge ]
  %93 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %94) #15
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_clk_put, %do.end26
  %ret.5 = phi i32 [ %13, %do.end26 ], [ %ret.4, %err_out_clk_put ]
  call void @free_netdev(ptr noundef nonnull %call4) #15
  br label %do.end256

do.end256:                                        ; preds = %err_out_free_dev, %do.end9, %do.end
  %ret.6 = phi i32 [ -6, %do.end ], [ %ret.5, %err_out_free_dev ], [ -12, %do.end9 ]
  %call258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str, i32 noundef %ret.6) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end256, %if.end234
  %retval.0 = phi i32 [ %ret.6, %do.end256 ], [ 0, %if.end234 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_drv_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #15
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %use_iram_for_net.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

use_iram_for_net.exit:                            ; preds = %land.lhs.true.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.46, ptr noundef null) #15
  %tobool.i.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.i.not, label %use_iram_for_net.exit.if.then_crit_edge, label %lor.lhs.false

use_iram_for_net.exit.if.then_crit_edge:          ; preds = %use_iram_for_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %use_iram_for_net.exit
  %dma_buff_size = getelementptr i8, ptr %1, i32 2456
  %6 = ptrtoint ptr %dma_buff_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_buff_size, align 8
  call void @__asan_store4_noabort(i32 0)
  store i32 0, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %use_iram_for_net.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %dma_buff_size7 = getelementptr i8, ptr %1, i32 2456
  %10 = ptrtoint ptr %dma_buff_size7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_buff_size7, align 8
  %dma_buff_base_v = getelementptr i8, ptr %1, i32 2452
  %12 = ptrtoint ptr %dma_buff_base_v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_buff_base_v, align 4
  %dma_buff_base_p = getelementptr i8, ptr %1, i32 2448
  %14 = ptrtoint ptr %dma_buff_base_p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_buff_base_p, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %1) #15
  %net_base = getelementptr i8, ptr %1, i32 2360
  %18 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_base, align 8
  tail call void @iounmap(ptr noundef %19) #15
  %mii_bus = getelementptr i8, ptr %1, i32 2440
  %20 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %21) #15
  %22 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %23) #15
  %clk = getelementptr i8, ptr %1, i32 2444
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %25) #15
  tail call void @clk_unprepare(ptr noundef %25) #15
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %27) #15
  tail call void @free_netdev(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_drv_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then4.if.end8_crit_edge, label %if.then6

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_device_detach(ptr noundef nonnull %1) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %net_base.i.i = getelementptr i8, ptr %1, i32 2360
  %9 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %11 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_base.i.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 939524096) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !137
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_base.i.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #15, !srcloc !134
  %clk = getelementptr i8, ptr %1, i32 2444
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #15
  tail call void @clk_unprepare(ptr noundef %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %19 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %net_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_base.i.i, align 8
  %add.ptr4.i16 = getelementptr i8, ptr %22, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i16, i32 939524096) #15, !srcloc !134
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_drv_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #17
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  %clk = getelementptr i8, ptr %1, i32 2444
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_enable(ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %net_base.i = getelementptr i8, ptr %1, i32 2360
  %11 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 939524096) #15, !srcloc !134
  tail call fastcc void @__lpc_eth_init(ptr noundef %add.ptr.i)
  tail call void @netif_device_attach(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__lpc_eth_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %net_base = getelementptr i8, ptr %dev_id, i32 2360
  %0 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4064
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !140
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_base, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 4072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #15, !srcloc !134
  %5 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !141
  tail call void @arm_heavy_mb() #15
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 4068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #15, !srcloc !134
  %napi = getelementptr i8, ptr %dev_id, i32 2496
  %call7 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call7, label %if.then, label %entry.if.end_crit_edge, !prof !142

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.dma_set_mask_and_coherent.exit_crit_edge

entry.dma_set_mask_and_coherent.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #15
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %entry.dma_set_mask_and_coherent.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #15
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_get_mac(ptr nocapture noundef readonly %pldat, ptr nocapture noundef writeonly %mac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %0 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !143
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %mac, align 1
  %shr = lshr i32 %3, 8
  %conv3 = trunc i32 %shr to i8
  %arrayidx4 = getelementptr i8, ptr %mac, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %arrayidx4, align 1
  %6 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #15, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !144
  %conv13 = trunc i32 %9 to i8
  %arrayidx14 = getelementptr i8, ptr %mac, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %9, 8
  %conv16 = trunc i32 %shr15 to i8
  %arrayidx17 = getelementptr i8, ptr %mac, i32 3
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv16, ptr %arrayidx17, align 1
  %12 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_base, align 8
  %add.ptr21 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #15, !srcloc !138
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !145
  %conv26 = trunc i32 %15 to i8
  %arrayidx27 = getelementptr i8, ptr %mac, i32 4
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26, ptr %arrayidx27, align 1
  %shr28 = lshr i32 %15, 8
  %conv29 = trunc i32 %shr28 to i8
  %arrayidx30 = getelementptr i8, ptr %mac, i32 5
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx30, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #15
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_eth_shutdown(ptr nocapture noundef readonly %pldat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %net_base.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %0 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 939524096) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !136
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !137
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base.i, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #15, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_mii_mngt_reset(ptr nocapture noundef readonly %pldat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !146
  tail call void @arm_heavy_mb() #15
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %0 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8388608) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !147
  tail call void @arm_heavy_mb() #15
  %2 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_base, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 469762048) #15, !srcloc !134
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_params_setup(ptr nocapture noundef readonly %pldat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %duplex = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 22
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %2 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !148
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #15, !srcloc !134
  %8 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_base, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !149
  %11 = or i32 %10, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !150
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_base, align 8
  %add.ptr17 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !151
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_base, align 8
  %add.ptr22 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 352321536) #15, !srcloc !134
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %16 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !152
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_base, align 8
  %add.ptr34 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %16) #15, !srcloc !134
  %19 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_base, align 8
  %add.ptr38 = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !153
  %22 = and i32 %21, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !154
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_base, align 8
  %add.ptr47 = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %22) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !155
  tail call void @arm_heavy_mb() #15
  %25 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_base, align 8
  %add.ptr52 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 301989888) #15, !srcloc !134
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %speed = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 21
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %28)
  %cmp53 = icmp eq i32 %28, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %net_base58 = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %29 = ptrtoint ptr %net_base58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_base58, align 8
  %add.ptr59 = getelementptr i8, ptr %30, i32 24
  br i1 %cmp53, label %do.body55, label %do.body61

do.body55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 65536) #15, !srcloc !134
  br label %if.end66

do.body61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #15, !srcloc !134
  br label %if.end66

if.end66:                                         ; preds = %do.body61, %do.body55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %napi, i32 -188
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %4 = tail call i32 @llvm.read_register.i32(metadata !121) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #15
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %xmit_lock_owner.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %net_base.i = getelementptr i8, ptr %1, i32 2360
  %9 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 300
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !138
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !156
  %last_tx_idx.i = getelementptr i8, ptr %1, i32 2432
  %13 = ptrtoint ptr %last_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_tx_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.not87.i = icmp eq i32 %14, %12
  br i1 %cmp.not87.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %tx_stat_v.i = getelementptr i8, ptr %1, i32 2464
  %num_used_tx_buffs.i = getelementptr i8, ptr %1, i32 2436
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end45.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %14, %while.body.lr.ph.i ], [ %44, %if.end45.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdata_local, ptr %add.ptr.i.i, i32 0, i32 6, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %tx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_stat_v.i, align 8
  %arrayidx6.i = getelementptr i32, ptr %19, i32 %15
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i, align 4
  %22 = ptrtoint ptr %num_used_tx_buffs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_used_tx_buffs.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %num_used_tx_buffs.i, align 4
  %inc.i = add i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i)
  %cmp9.i = icmp ugt i32 %inc.i, 15
  %spec.select.i = select i1 %cmp9.i, i32 0, i32 %inc.i
  %24 = ptrtoint ptr %last_tx_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select.i, ptr %last_tx_idx.i, align 8
  %shr.i = lshr i32 %21, 21
  %and.i13 = and i32 %shr.i, 15
  %25 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %collisions.i, align 4
  %add.i = add i32 %26, %and.i13
  store i32 %add.i, ptr %collisions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool.not.i = icmp sgt i32 %21, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %while.body.i
  %and13.i = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end18.i_crit_edge, label %if.then15.i

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc17.i = add i32 %28, 1
  store i32 %inc17.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then12.i.if.end18.i_crit_edge
  %and19.i = and i32 %21, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end24.i_crit_edge, label %if.then21.i

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc23.i = add i32 %30, 1
  store i32 %inc23.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %and25.i = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then27.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc30.i = add i32 %32, 1
  store i32 %inc30.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end31.i_crit_edge
  %and32.i = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end45.i_crit_edge, label %if.then34.i

if.end31.i.if.end45.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc37.i = add i32 %34, 1
  store i32 %inc37.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end45.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_packets.i, align 4
  %inc42.i = add i32 %36, 1
  store i32 %inc42.i, ptr %tx_packets.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then34.i, %if.end31.i.if.end45.i_crit_edge
  %tx_bytes.sink89.i = phi ptr [ %tx_bytes.i, %if.else.i ], [ %tx_errors.i, %if.then34.i ], [ %tx_errors.i, %if.end31.i.if.end45.i_crit_edge ]
  %.sink88.i = phi i32 [ %17, %if.else.i ], [ 1, %if.then34.i ], [ 1, %if.end31.i.if.end45.i_crit_edge ]
  %37 = ptrtoint ptr %tx_bytes.sink89.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes.sink89.i, align 4
  %add44.i = add i32 %38, %.sink88.i
  store i32 %add44.i, ptr %tx_bytes.sink89.i, align 4
  %39 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_base.i, align 8
  %add.ptr49.i = getelementptr i8, ptr %40, i32 300
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #15, !srcloc !138
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !157
  %43 = ptrtoint ptr %last_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_tx_idx.i, align 8
  %cmp.not.i = icmp eq i32 %44, %42
  br i1 %cmp.not.i, label %if.end45.i.while.end.i_crit_edge, label %if.end45.i.while.body.i_crit_edge

if.end45.i.while.body.i_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end45.i.while.end.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end45.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %num_used_tx_buffs53.i = getelementptr i8, ptr %1, i32 2436
  %45 = ptrtoint ptr %num_used_tx_buffs53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_used_tx_buffs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %46)
  %cmp54.i = icmp ult i32 %46, 9
  br i1 %cmp54.i, label %if.then55.i, label %while.end.i.__lpc_handle_xmit.exit_crit_edge

while.end.i.__lpc_handle_xmit.exit_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__lpc_handle_xmit.exit

if.then55.i:                                      ; preds = %while.end.i
  %47 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then55.i.__lpc_handle_xmit.exit_crit_edge, label %if.then57.i

if.then55.i.__lpc_handle_xmit.exit_crit_edge:     ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__lpc_handle_xmit.exit

if.then57.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_tx_wake_queue(ptr noundef %48) #15
  br label %__lpc_handle_xmit.exit

__lpc_handle_xmit.exit:                           ; preds = %if.then57.i, %if.then55.i.__lpc_handle_xmit.exit_crit_edge, %while.end.i.__lpc_handle_xmit.exit_crit_edge
  %51 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #15
  %52 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net_base.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %53, i32 280
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp103.i = icmp sgt i32 %budget, 0
  br i1 %cmp103.i, label %land.rhs.lr.ph.i, label %__lpc_handle_xmit.exit.__lpc_handle_recv.exit_crit_edge

__lpc_handle_xmit.exit.__lpc_handle_recv.exit_crit_edge: ; preds = %__lpc_handle_xmit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %__lpc_handle_recv.exit

land.rhs.lr.ph.i:                                 ; preds = %__lpc_handle_xmit.exit
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  %rx_stat_v.i = getelementptr i8, ptr %1, i32 2476
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_buff_v.i = getelementptr i8, ptr %1, i32 2480
  %stats56.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end61.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %rxconsidx.0105.i = phi i32 [ %55, %land.rhs.lr.ph.i ], [ %spec.store.select.i, %if.end61.i.land.rhs.i_crit_edge ]
  %rx_done.0104.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc68.i, %if.end61.i.land.rhs.i_crit_edge ]
  %56 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_base.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %57, i32 276
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #15, !srcloc !138
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !159
  call void @__sanitizer_cov_trace_cmp4(i32 %rxconsidx.0105.i, i32 %59)
  %cmp10.not.i = icmp eq i32 %rxconsidx.0105.i, %59
  br i1 %cmp10.not.i, label %land.rhs.i.__lpc_handle_recv.exit_crit_edge, label %while.body.i22

land.rhs.i.__lpc_handle_recv.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__lpc_handle_recv.exit

while.body.i22:                                   ; preds = %land.rhs.i
  %60 = ptrtoint ptr %rx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_stat_v.i, align 4
  %arrayidx.i18 = getelementptr %struct.rx_status_t, ptr %61, i32 %rxconsidx.0105.i
  %62 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i18, align 4
  %and.i19 = and i32 %63, 2047
  %add.i20 = add nuw nsw i32 %and.i19, 1
  %and12.i = and i32 %63, -1082130432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2080374784, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, -2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %tobool.not102.i = icmp sgt i32 %63, -1
  %tobool.not.i21 = or i1 %tobool.not102.i, %cmp13.i
  br i1 %tobool.not.i21, label %if.else45.i, label %if.then16.i

if.then16.i:                                      ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #17
  %and18.i = and i32 %63, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %and21.i = and i32 %63, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %rx_length_errors.rx_crc_errors.i = select i1 %tobool22.not.i, ptr %rx_length_errors.i, ptr %rx_crc_errors.i
  %rx_length_errors.sink107.i = select i1 %tobool19.not.i, ptr %rx_length_errors.rx_crc_errors.i, ptr %rx_fifo_errors.i
  br label %if.end61.sink.split.i

if.else45.i:                                      ; preds = %while.body.i22
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i20, i32 noundef 2592) #15
  %tobool47.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool47.not.i, label %if.else45.i.if.end61.i_crit_edge, label %if.else51.i

if.else45.i.if.end61.i_crit_edge:                 ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61.i

if.else51.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %rx_buff_v.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_buff_v.i, align 8
  %mul.i = mul i32 %rxconsidx.0105.i, 1536
  %add.ptr52.i = getelementptr i8, ptr %65, i32 %mul.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add.i20) #15
  %66 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr52.i, i32 %add.i20)
  %call54.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %1) #15
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %67 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %call54.i, ptr %protocol.i, align 8
  %call55.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #15
  br label %if.end61.sink.split.i

if.end61.sink.split.i:                            ; preds = %if.else51.i, %if.then16.i
  %stats56.sink110.i = phi ptr [ %stats56.i, %if.else51.i ], [ %rx_length_errors.sink107.i, %if.then16.i ]
  %rx_dropped.sink109.ph.i = phi ptr [ %rx_bytes.i, %if.else51.i ], [ %rx_errors.i, %if.then16.i ]
  %.sink108.ph.i = phi i32 [ %add.i20, %if.else51.i ], [ 1, %if.then16.i ]
  %68 = ptrtoint ptr %stats56.sink110.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %stats56.sink110.i, align 8
  %inc57.i = add i32 %69, 1
  store i32 %inc57.i, ptr %stats56.sink110.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end61.sink.split.i, %if.else45.i.if.end61.i_crit_edge
  %rx_dropped.sink109.i = phi ptr [ %rx_dropped.i, %if.else45.i.if.end61.i_crit_edge ], [ %rx_dropped.sink109.ph.i, %if.end61.sink.split.i ]
  %.sink108.i = phi i32 [ 1, %if.else45.i.if.end61.i_crit_edge ], [ %.sink108.ph.i, %if.end61.sink.split.i ]
  %70 = ptrtoint ptr %rx_dropped.sink109.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_dropped.sink109.i, align 8
  %inc50.i = add i32 %71, %.sink108.i
  store i32 %inc50.i, ptr %rx_dropped.sink109.i, align 8
  %add62.i = add i32 %rxconsidx.0105.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %add62.i)
  %cmp63.i = icmp ugt i32 %add62.i, 47
  %spec.store.select.i = select i1 %cmp63.i, i32 0, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !160
  tail call void @arm_heavy_mb() #15
  %72 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select.i) #15
  %73 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net_base.i, align 8
  %add.ptr67.i = getelementptr i8, ptr %74, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %72) #15, !srcloc !134
  %inc68.i = add nuw nsw i32 %rx_done.0104.i, 1
  %exitcond.not.i = icmp eq i32 %inc68.i, %budget
  br i1 %exitcond.not.i, label %if.end61.i.if.end_crit_edge, label %if.end61.i.land.rhs.i_crit_edge

if.end61.i.land.rhs.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i

if.end61.i.if.end_crit_edge:                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

__lpc_handle_recv.exit:                           ; preds = %land.rhs.i.__lpc_handle_recv.exit_crit_edge, %__lpc_handle_xmit.exit.__lpc_handle_recv.exit_crit_edge
  %rx_done.0.lcssa.i = phi i32 [ 0, %__lpc_handle_xmit.exit.__lpc_handle_recv.exit_crit_edge ], [ %rx_done.0104.i, %land.rhs.i.__lpc_handle_recv.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_done.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %rx_done.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %__lpc_handle_recv.exit.if.end_crit_edge

__lpc_handle_recv.exit.if.end_crit_edge:          ; preds = %__lpc_handle_recv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %__lpc_handle_recv.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx_done.0.lcssa.i) #15
  %net_base = getelementptr i8, ptr %napi, i32 -136
  %75 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !161
  tail call void @arm_heavy_mb() #15
  %add.ptr.i24 = getelementptr i8, ptr %76, i32 4068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 -2013265920) #15, !srcloc !134
  br label %if.end

if.end:                                           ; preds = %if.then, %__lpc_handle_recv.exit.if.end_crit_edge, %if.end61.i.if.end_crit_edge
  %rx_done.0.lcssa.i27 = phi i32 [ %rx_done.0.lcssa.i, %if.then ], [ %rx_done.0.lcssa.i, %__lpc_handle_recv.exit.if.end_crit_edge ], [ %budget, %if.end61.i.if.end_crit_edge ]
  ret i32 %rx_done.0.lcssa.i27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc_mii_init(ptr noundef %pldat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #15
  %mii_bus = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 9
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %mii_bus, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pldat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pldat, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.do.body4_crit_edge, label %land.lhs.true.i

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

land.lhs.true.i:                                  ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.body4_crit_edge, label %if.then.i

land.lhs.true.i.do.body4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i68 = tail call ptr @of_get_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.36, ptr noundef null) #15
  %tobool3.not.i = icmp eq ptr %call.i68, null
  br i1 %tobool3.not.i, label %if.then.i.do.body4_crit_edge, label %land.lhs.true4.i

if.then.i.do.body4_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

land.lhs.true4.i:                                 ; preds = %if.then.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %call.i68, ptr noundef nonnull dereferenceable(4) @.str.37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body, label %land.lhs.true4.i.do.body4_crit_edge

land.lhs.true4.i.do.body4_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

do.body:                                          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !162
  tail call void @arm_heavy_mb() #15
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %5 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073741824) #15, !srcloc !134
  br label %if.end14

do.body4:                                         ; preds = %land.lhs.true4.i.do.body4_crit_edge, %if.then.i.do.body4_crit_edge, %land.lhs.true.i.do.body4_crit_edge, %if.end.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !163
  tail call void @arm_heavy_mb() #15
  %net_base7 = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %7 = ptrtoint ptr %net_base7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_base7, align 8
  %add.ptr8 = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1073872896) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !164
  tail call void @arm_heavy_mb() #15
  %9 = ptrtoint ptr %net_base7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_base7, align 8
  %add.ptr13 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 524288) #15, !srcloc !134
  br label %if.end14

if.end14:                                         ; preds = %do.body4, %do.body
  %11 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii_bus, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.47, ptr %name, align 4
  %14 = load ptr, ptr %mii_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @lpc_mdio_read, ptr %read, align 4
  %16 = load ptr, ptr %mii_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lpc_mdio_write, ptr %write, align 8
  %18 = load ptr, ptr %mii_bus, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lpc_mdio_reset, ptr %reset, align 4
  %20 = load ptr, ptr %mii_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pldat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pldat, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %id23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id23, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.48, ptr noundef %24, i32 noundef %26)
  %27 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mii_bus, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pldat, ptr %priv, align 8
  %30 = ptrtoint ptr %pldat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pldat, align 8
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %mii_bus, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev27, ptr %parent, align 4
  %34 = load ptr, ptr %pldat, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 27
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call31 = tail call ptr @of_get_child_by_name(ptr noundef %36, ptr noundef nonnull @.str.49) #15
  %37 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mii_bus, align 8
  %call33 = tail call i32 @of_mdiobus_register(ptr noundef %38, ptr noundef %call31) #15
  tail call void @of_node_put(ptr noundef %call31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end14.err_out_unregister_bus_crit_edge

if.end14.err_out_unregister_bus_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_unregister_bus

if.end36:                                         ; preds = %if.end14
  %ndev = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 1
  %39 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2304
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3, i32 27
  %43 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i.i, label %if.end36.if.else.i_crit_edge, label %if.then.i.i

if.end36.if.else.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i.i:                                      ; preds = %if.end36
  %call.i.i = tail call ptr @of_get_property(ptr noundef nonnull %44, ptr noundef nonnull @.str.36, ptr noundef null) #15
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.else.i_crit_edge, label %land.lhs.true4.i.i

if.then.i.i.if.else.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true4.i.i:                               ; preds = %if.then.i.i
  %call5.i.i = tail call i32 @strcmp(ptr noundef nonnull %call.i.i, ptr noundef nonnull dereferenceable(4) @.str.37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true4.i.i.if.end.i_crit_edge, label %land.lhs.true4.i.i.if.else.i_crit_edge

land.lhs.true4.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true4.i.i.if.end.i_crit_edge:            ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true4.i.i.if.else.i_crit_edge, %if.then.i.i.if.else.i_crit_edge, %if.end36.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true4.i.i.if.end.i_crit_edge
  %.str.51.sink.i = phi ptr [ @.str.51, %if.else.i ], [ @.str.50, %land.lhs.true4.i.i.if.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %40, ptr noundef nonnull %.str.51.sink.i) #18
  %phy_node.i = getelementptr i8, ptr %40, i32 2312
  %45 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy_node.i, align 8
  %tobool.not.i69 = icmp eq ptr %46, null
  br i1 %tobool.not.i69, label %if.else5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call ptr @of_phy_find_device(ptr noundef nonnull %46) #15
  br label %if.end7.i

if.else5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %mii_bus.i = getelementptr i8, ptr %40, i32 2440
  %47 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mii_bus.i, align 8
  %call6.i = tail call ptr @phy_find_first(ptr noundef %48) #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else5.i, %if.then2.i
  %phydev.0.i = phi ptr [ %call4.i, %if.then2.i ], [ %call6.i, %if.else5.i ]
  %tobool8.not.i = icmp eq ptr %phydev.0.i, null
  br i1 %tobool8.not.i, label %lpc_mii_probe.exit.thread74, label %if.end10.i

lpc_mii_probe.exit.thread74:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.52) #18
  br label %err_out_unregister_bus

if.end10.i:                                       ; preds = %if.end7.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %phydev.0.i, i32 0, i32 3
  %49 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end10.i.phydev_name.exit.i_crit_edge

if.end10.i.phydev_name.exit.i_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %phydev_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %phydev.0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phydev.0.i, align 4
  br label %phydev_name.exit.i

phydev_name.exit.i:                               ; preds = %if.end.i.i.i, %if.end10.i.phydev_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %52, %if.end.i.i.i ], [ %50, %if.end10.i.phydev_name.exit.i_crit_edge ]
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i.i, align 8
  %of_node.i40.i = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 27
  %55 = ptrtoint ptr %of_node.i40.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i40.i, align 8
  %tobool1.not.i41.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i41.i, label %phydev_name.exit.i.lpc_phy_interface_mode.exit51.i_crit_edge, label %if.then.i45.i

phydev_name.exit.i.lpc_phy_interface_mode.exit51.i_crit_edge: ; preds = %phydev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lpc_phy_interface_mode.exit51.i

if.then.i45.i:                                    ; preds = %phydev_name.exit.i
  %call.i43.i = tail call ptr @of_get_property(ptr noundef nonnull %56, ptr noundef nonnull @.str.36, ptr noundef null) #15
  %tobool3.not.i44.i = icmp eq ptr %call.i43.i, null
  br i1 %tobool3.not.i44.i, label %if.then.i45.i.cleanup.thread.i49.i_crit_edge, label %land.lhs.true4.i48.i

if.then.i45.i.cleanup.thread.i49.i_crit_edge:     ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i49.i

land.lhs.true4.i48.i:                             ; preds = %if.then.i45.i
  %call5.i46.i = tail call i32 @strcmp(ptr noundef nonnull %call.i43.i, ptr noundef nonnull dereferenceable(4) @.str.37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i46.i)
  %tobool6.not.i47.i = icmp eq i32 %call5.i46.i, 0
  br i1 %tobool6.not.i47.i, label %land.lhs.true4.i48.i.lpc_phy_interface_mode.exit51.i_crit_edge, label %land.lhs.true4.i48.i.cleanup.thread.i49.i_crit_edge

land.lhs.true4.i48.i.cleanup.thread.i49.i_crit_edge: ; preds = %land.lhs.true4.i48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i49.i

land.lhs.true4.i48.i.lpc_phy_interface_mode.exit51.i_crit_edge: ; preds = %land.lhs.true4.i48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lpc_phy_interface_mode.exit51.i

cleanup.thread.i49.i:                             ; preds = %land.lhs.true4.i48.i.cleanup.thread.i49.i_crit_edge, %if.then.i45.i.cleanup.thread.i49.i_crit_edge
  br label %lpc_phy_interface_mode.exit51.i

lpc_phy_interface_mode.exit51.i:                  ; preds = %cleanup.thread.i49.i, %land.lhs.true4.i48.i.lpc_phy_interface_mode.exit51.i_crit_edge, %phydev_name.exit.i.lpc_phy_interface_mode.exit51.i_crit_edge
  %retval.1.i50.i = phi i32 [ 2, %land.lhs.true4.i48.i.lpc_phy_interface_mode.exit51.i_crit_edge ], [ 7, %cleanup.thread.i49.i ], [ 7, %phydev_name.exit.i.lpc_phy_interface_mode.exit51.i_crit_edge ]
  %call15.i = tail call ptr @phy_connect(ptr noundef %40, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @lpc_handle_link_change, i32 noundef %retval.1.i50.i) #15
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lpc_mii_probe.exit, label %lpc_mii_probe.exit.thread

lpc_mii_probe.exit.thread:                        ; preds = %lpc_phy_interface_mode.exit51.i
  call void @__sanitizer_cov_trace_pc() #17
  %call20.i = tail call i32 @phy_set_max_speed(ptr noundef %call15.i, i32 noundef 100) #15
  %link.i = getelementptr i8, ptr %40, i32 2484
  %57 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %link.i, align 4
  %speed.i = getelementptr i8, ptr %40, i32 2488
  %58 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %speed.i, align 8
  %duplex.i = getelementptr i8, ptr %40, i32 2492
  %59 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %duplex.i, align 4
  tail call void @phy_attached_info(ptr noundef %call15.i) #15
  br label %cleanup

lpc_mii_probe.exit:                               ; preds = %lpc_phy_interface_mode.exit51.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.53) #18
  %60 = ptrtoint ptr %call15.i to i32
  br label %err_out_unregister_bus

err_out_unregister_bus:                           ; preds = %lpc_mii_probe.exit, %lpc_mii_probe.exit.thread74, %if.end14.err_out_unregister_bus_crit_edge
  %err.0 = phi i32 [ %call33, %if.end14.err_out_unregister_bus_crit_edge ], [ %60, %lpc_mii_probe.exit ], [ -19, %lpc_mii_probe.exit.thread74 ]
  %61 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %62) #15
  %63 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %64) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out_unregister_bus, %lpc_mii_probe.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out_unregister_bus ], [ -12, %entry.cleanup_crit_edge ], [ 0, %lpc_mii_probe.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_open.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_open, %if.then5)) #15
          to label %if.end6 [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc_eth_open.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %ndev) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %clk = getelementptr i8, ptr %ndev, i32 2444
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @clk_unprepare(ptr noundef %5) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %call11 = tail call i32 @phy_resume(ptr noundef %7) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %net_base.i = getelementptr i8, ptr %ndev, i32 2360
  %8 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 939524096) #15, !srcloc !134
  tail call fastcc void @__lpc_eth_init(ptr noundef %add.ptr.i)
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %13) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %napi = getelementptr i8, ptr %ndev, i32 2496
  tail call void @napi_enable(ptr noundef %napi) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3.i, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %msg_enable = getelementptr i8, ptr %ndev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpc_eth_close.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpc_eth_close, %if.then5)) #15
          to label %if.end6 [label %if.then5], !srcloc !132

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpc_eth_close.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %ndev) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %napi = getelementptr i8, ptr %ndev, i32 2496
  tail call void @napi_disable(ptr noundef %napi) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %lock = getelementptr i8, ptr %ndev, i32 2316
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !133
  tail call void @arm_heavy_mb() #15
  %net_base.i = getelementptr i8, ptr %ndev, i32 2360
  %6 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 13565952) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !135
  tail call void @arm_heavy_mb() #15
  %8 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 939524096) #15, !srcloc !134
  tail call void @netif_carrier_off(ptr noundef %ndev) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !165
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !166
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_base.i, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #15, !srcloc !134
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #15
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %14 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev, align 16
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.end6.if.end28_crit_edge, label %if.then26

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @phy_stop(ptr noundef nonnull %15) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end6.if.end28_crit_edge
  %clk = getelementptr i8, ptr %ndev, i32 2444
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #15
  tail call void @clk_unprepare(ptr noundef %17) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_eth_hard_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %lock = getelementptr i8, ptr %ndev, i32 2316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %num_used_tx_buffs = getelementptr i8, ptr %ndev, i32 2436
  %2 = ptrtoint ptr %num_used_tx_buffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_used_tx_buffs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %3)
  %cmp = icmp ugt i32 %3, 14
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1050, i32 noundef 9, ptr noundef nonnull @.str.42) #15
  br label %cleanup

if.end18:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %net_base = getelementptr i8, ptr %ndev, i32 2360
  %6 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !167
  %tx_stat_v = getelementptr i8, ptr %ndev, i32 2464
  %10 = ptrtoint ptr %tx_stat_v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_stat_v, align 8
  %arrayidx = getelementptr i32, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx, align 4
  %tx_desc_v = getelementptr i8, ptr %ndev, i32 2460
  %13 = ptrtoint ptr %tx_desc_v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_desc_v, align 4
  %sub = add i32 %1, 1073741823
  %or23 = or i32 %sub, -1073741824
  %control = getelementptr %struct.txrx_desc_t, ptr %14, i32 %9, i32 1
  %15 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or23, ptr %control, align 4
  %tx_buff_v = getelementptr i8, ptr %ndev, i32 2468
  %16 = ptrtoint ptr %tx_buff_v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buff_v, align 4
  %mul = mul i32 %9, 1536
  %add.ptr24 = getelementptr i8, ptr %17, i32 %mul
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = call ptr @memcpy(ptr %add.ptr24, ptr %19, i32 %1)
  %arrayidx25 = getelementptr %struct.netdata_local, ptr %add.ptr.i, i32 0, i32 6, i32 %9
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %arrayidx25, align 4
  %22 = ptrtoint ptr %num_used_tx_buffs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_used_tx_buffs, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %num_used_tx_buffs, align 4
  %inc27 = add i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc27)
  %cmp28 = icmp ugt i32 %inc27, 15
  %spec.store.select = select i1 %cmp28, i32 0, i32 %inc27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !168
  tail call void @arm_heavy_mb() #15
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select)
  %25 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net_base, align 8
  %add.ptr35 = getelementptr i8, ptr %26, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %24) #15, !srcloc !134
  %27 = ptrtoint ptr %num_used_tx_buffs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_used_tx_buffs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %28)
  %cmp37 = icmp ugt i32 %28, 14
  br i1 %cmp37, label %if.then38, label %if.end18.if.end39_crit_edge

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then38:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i69 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i69, align 128
  %state.i.i70 = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i70) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end18.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @consume_skb(ptr noundef %skb) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc_eth_set_multicast_list(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %lock = getelementptr i8, ptr %ndev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @__lpc_set_mac(ptr noundef %add.ptr.i, ptr noundef %1)
  %flags6 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags6, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 34, i32 39
  %and8 = lshr i32 %3, 7
  %4 = and i32 %and8, 4
  %5 = or i32 %spec.select, %4
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !169
  tail call void @arm_heavy_mb() #15
  %8 = shl nuw nsw i32 %5, 24
  %9 = or i32 %8, 268435456
  %10 = select i1 %tobool13.not, i32 %8, i32 %9
  %net_base = getelementptr i8, ptr %ndev, i32 2360
  %11 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #15, !srcloc !134
  %13 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0109 = load ptr, ptr %mc, align 4
  %cmp24.not110 = icmp eq ptr %ha.0109, %mc
  br i1 %cmp24.not110, label %entry.do.body66_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.do.body66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body66

cond.end:                                         ; preds = %for.inc.cond.end_crit_edge, %entry.cond.end_crit_edge
  %ha.0113 = phi ptr [ %ha.0, %for.inc.cond.end_crit_edge ], [ %ha.0109, %entry.cond.end_crit_edge ]
  %hashlo.0112 = phi i32 [ %hashlo.1, %for.inc.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %hashhi.0111 = phi i32 [ %hashhi.1, %for.inc.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0113, i32 0, i32 2
  %call26 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #20
  %14 = lshr i32 %call26, 8
  %conv4.i.i = and i32 %14, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %15 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %16 to i32
  %17 = shl nuw nsw i32 %conv6.i.i, 16
  %18 = and i32 %call26, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %20 to i32
  %21 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %17, %21
  %shr51 = lshr i32 %or.i13.i, 23
  %and52 = and i32 %shr51, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and52)
  %cmp53 = icmp ugt i32 %and52, 31
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %and52, -32
  %shl56 = shl nuw i32 1, %sub
  %or57 = or i32 %shl56, %hashhi.0111
  br label %for.inc

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %shl58 = shl nuw i32 1, %and52
  %or59 = or i32 %shl58, %hashlo.0112
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then55
  %hashhi.1 = phi i32 [ %or57, %if.then55 ], [ %hashhi.0111, %if.else ]
  %hashlo.1 = phi i32 [ %hashlo.0112, %if.then55 ], [ %or59, %if.else ]
  %22 = ptrtoint ptr %ha.0113 to i32
  call void @__asan_load4_noabort(i32 %22)
  %ha.0 = load ptr, ptr %ha.0113, align 4
  %cmp24.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp24.not, label %for.inc.do.body66_crit_edge, label %for.inc.cond.end_crit_edge

for.inc.cond.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

for.inc.do.body66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body66

do.body66:                                        ; preds = %for.inc.do.body66_crit_edge, %entry.do.body66_crit_edge
  %hashhi.0.lcssa = phi i32 [ 0, %entry.do.body66_crit_edge ], [ %hashhi.1, %for.inc.do.body66_crit_edge ]
  %hashlo.0.lcssa = phi i32 [ 0, %entry.do.body66_crit_edge ], [ %hashlo.1, %for.inc.do.body66_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !170
  tail call void @arm_heavy_mb() #15
  %23 = tail call i32 @llvm.bswap.i32(i32 %hashlo.0.lcssa)
  %24 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net_base, align 8
  %add.ptr70 = getelementptr i8, ptr %25, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %23) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !171
  tail call void @arm_heavy_mb() #15
  %26 = tail call i32 @llvm.bswap.i32(i32 %hashhi.0.lcssa)
  %27 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_base, align 8
  %add.ptr75 = getelementptr i8, ptr %28, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %26) #15, !srcloc !134
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #15
  %lock = getelementptr i8, ptr %ndev, i32 2316
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @__lpc_set_mac(ptr noundef %add.ptr.i, ptr noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_eth_init(ptr nocapture noundef %pldat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %0 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !172
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !173
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #15, !srcloc !134
  %6 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !174
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !175
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !176
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 33554432) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !177
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_base, align 8
  %add.ptr27 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 805306368) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !178
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net_base, align 8
  %add.ptr32 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 393216) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !179
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net_base, align 8
  %add.ptr37 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 255262720) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !180
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_base, align 8
  %add.ptr42 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 301989888) #15, !srcloc !134
  %22 = ptrtoint ptr %pldat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pldat, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.do.body49_crit_edge, label %land.lhs.true.i

entry.do.body49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

land.lhs.true.i:                                  ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.body49_crit_edge, label %if.then.i

land.lhs.true.i.do.body49_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call ptr @of_get_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.36, ptr noundef null) #15
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.then.i.do.body49_crit_edge, label %land.lhs.true4.i

if.then.i.do.body49_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

land.lhs.true4.i:                                 ; preds = %if.then.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %call.i, ptr noundef nonnull dereferenceable(4) @.str.37) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.body44, label %land.lhs.true4.i.do.body49_crit_edge

land.lhs.true4.i.do.body49_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

do.body44:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !181
  tail call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_base, align 8
  %add.ptr48 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 1073741824) #15, !srcloc !134
  br label %if.end

do.body49:                                        ; preds = %land.lhs.true4.i.do.body49_crit_edge, %if.then.i.do.body49_crit_edge, %land.lhs.true.i.do.body49_crit_edge, %entry.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !182
  tail call void @arm_heavy_mb() #15
  %28 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net_base, align 8
  %add.ptr53 = getelementptr i8, ptr %29, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 1073872896) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !183
  tail call void @arm_heavy_mb() #15
  %30 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net_base, align 8
  %add.ptr58 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 524288) #15, !srcloc !134
  br label %if.end

if.end:                                           ; preds = %do.body49, %do.body44
  tail call fastcc void @__lpc_params_setup(ptr noundef %pldat)
  %dma_buff_base_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 12
  %32 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_buff_base_v.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %add.i = add i32 %34, 15
  %and.i = and i32 %add.i, -16
  %35 = inttoptr i32 %and.i to ptr
  %tx_desc_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 14
  %36 = ptrtoint ptr %tx_desc_v.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %tx_desc_v.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 128
  %tx_stat_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 15
  %37 = ptrtoint ptr %tx_stat_v.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i, ptr %tx_stat_v.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %35, i32 192
  %tx_buff_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 16
  %38 = ptrtoint ptr %tx_buff_v.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr1.i, ptr %tx_buff_v.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 24768
  %rx_desc_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 17
  %39 = ptrtoint ptr %rx_desc_v.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr4.i, ptr %rx_desc_v.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %35, i32 25152
  %rx_stat_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 18
  %40 = ptrtoint ptr %rx_stat_v.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr5.i, ptr %rx_stat_v.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %35, i32 25536
  %rx_buff_v.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 19
  %41 = ptrtoint ptr %rx_buff_v.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr8.i, ptr %rx_buff_v.i, align 8
  %dma_buff_base_p.i.i = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.0152.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %tx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_stat_v.i, align 8
  %arrayidx.i = getelementptr i32, ptr %43, i32 %i.0152.i
  %44 = ptrtoint ptr %tx_desc_v.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_desc_v.i, align 4
  %arrayidx14.i = getelementptr %struct.txrx_desc_t, ptr %45, i32 %i.0152.i
  %46 = ptrtoint ptr %tx_buff_v.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_buff_v.i, align 4
  %mul.i = mul nuw nsw i32 %i.0152.i, 1536
  %add.ptr16.i = getelementptr i8, ptr %47, i32 %mul.i
  %48 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr16.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i.i = add i32 %sub.ptr.sub.i.i, %51
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i.i, ptr %arrayidx14.i, align 4
  %control.i = getelementptr %struct.txrx_desc_t, ptr %45, i32 %i.0152.i, i32 1
  %53 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %control.i, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0152.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.body.i.for.body19.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.body19.i_crit_edge:                ; preds = %for.body.i
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body.i.for.body19.i_crit_edge
  %i.1153.i = phi i32 [ %inc31.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.body.i.for.body19.i_crit_edge ]
  %55 = ptrtoint ptr %rx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_stat_v.i, align 4
  %arrayidx21.i = getelementptr %struct.rx_status_t, ptr %56, i32 %i.1153.i
  %57 = ptrtoint ptr %rx_desc_v.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_desc_v.i, align 8
  %arrayidx23.i = getelementptr %struct.txrx_desc_t, ptr %58, i32 %i.1153.i
  %59 = ptrtoint ptr %rx_buff_v.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buff_v.i, align 8
  %mul25.i = mul nuw nsw i32 %i.1153.i, 1536
  %add.ptr26.i = getelementptr i8, ptr %60, i32 %mul25.i
  %61 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i123.i = ptrtoint ptr %add.ptr26.i to i32
  %sub.ptr.rhs.cast.i124.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i125.i = sub i32 %sub.ptr.lhs.cast.i123.i, %sub.ptr.rhs.cast.i124.i
  %63 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i127.i = add i32 %sub.ptr.sub.i125.i, %64
  %65 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i127.i, ptr %arrayidx23.i, align 4
  %control29.i = getelementptr %struct.txrx_desc_t, ptr %58, i32 %i.1153.i, i32 1
  %66 = ptrtoint ptr %control29.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -2147482113, ptr %control29.i, align 4
  %67 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %arrayidx21.i, align 4
  %statushashcrc.i = getelementptr %struct.rx_status_t, ptr %56, i32 %i.1153.i, i32 1
  %68 = ptrtoint ptr %statushashcrc.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %statushashcrc.i, align 4
  %inc31.i = add nuw nsw i32 %i.1153.i, 1
  %exitcond154.not.i = icmp eq i32 %inc31.i, 48
  br i1 %exitcond154.not.i, label %__lpc_txrx_desc_setup.exit, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body19.i

__lpc_txrx_desc_setup.exit:                       ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !184
  tail call void @arm_heavy_mb() #15
  %69 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net_base, align 8
  %add.ptr33.i = getelementptr i8, ptr %70, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 251658240) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @arm_heavy_mb() #15
  %71 = ptrtoint ptr %tx_desc_v.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_desc_v.i, align 4
  %73 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i129.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i130.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i131.i = sub i32 %sub.ptr.lhs.cast.i129.i, %sub.ptr.rhs.cast.i130.i
  %75 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i133.i = add i32 %sub.ptr.sub.i131.i, %76
  %77 = tail call i32 @llvm.bswap.i32(i32 %add.i133.i) #15
  %78 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net_base, align 8
  %add.ptr40.i = getelementptr i8, ptr %79, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %77) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !186
  tail call void @arm_heavy_mb() #15
  %80 = ptrtoint ptr %tx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tx_stat_v.i, align 8
  %82 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i135.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i136.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i137.i = sub i32 %sub.ptr.lhs.cast.i135.i, %sub.ptr.rhs.cast.i136.i
  %84 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i139.i = add i32 %sub.ptr.sub.i137.i, %85
  %86 = tail call i32 @llvm.bswap.i32(i32 %add.i139.i) #15
  %87 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net_base, align 8
  %add.ptr47.i = getelementptr i8, ptr %88, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %86) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @arm_heavy_mb() #15
  %89 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net_base, align 8
  %add.ptr52.i = getelementptr i8, ptr %90, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 788529152) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !188
  tail call void @arm_heavy_mb() #15
  %91 = ptrtoint ptr %rx_desc_v.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_desc_v.i, align 8
  %93 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i141.i = ptrtoint ptr %92 to i32
  %sub.ptr.rhs.cast.i142.i = ptrtoint ptr %94 to i32
  %sub.ptr.sub.i143.i = sub i32 %sub.ptr.lhs.cast.i141.i, %sub.ptr.rhs.cast.i142.i
  %95 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i145.i = add i32 %sub.ptr.sub.i143.i, %96
  %97 = tail call i32 @llvm.bswap.i32(i32 %add.i145.i) #15
  %98 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %net_base, align 8
  %add.ptr59.i = getelementptr i8, ptr %99, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %97) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !189
  tail call void @arm_heavy_mb() #15
  %100 = ptrtoint ptr %rx_stat_v.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_stat_v.i, align 4
  %102 = ptrtoint ptr %dma_buff_base_v.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_buff_base_v.i, align 4
  %sub.ptr.lhs.cast.i147.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i148.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i149.i = sub i32 %sub.ptr.lhs.cast.i147.i, %sub.ptr.rhs.cast.i148.i
  %104 = ptrtoint ptr %dma_buff_base_p.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_buff_base_p.i.i, align 8
  %add.i151.i = add i32 %sub.ptr.sub.i149.i, %105
  %106 = tail call i32 @llvm.bswap.i32(i32 %add.i151.i) #15
  %107 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %net_base, align 8
  %add.ptr66.i = getelementptr i8, ptr %108, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %106) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %109 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net_base, align 8
  %add.ptr63 = getelementptr i8, ptr %110, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 570425344) #15, !srcloc !134
  %num_used_tx_buffs = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 8
  %111 = ptrtoint ptr %num_used_tx_buffs to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %num_used_tx_buffs, align 4
  %112 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %net_base, align 8
  %add.ptr67 = getelementptr i8, ptr %113, i32 300
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #15, !srcloc !138
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !191
  %last_tx_idx = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 7
  %116 = ptrtoint ptr %last_tx_idx to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %last_tx_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !192
  tail call void @arm_heavy_mb() #15
  %117 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %net_base, align 8
  %add.ptr75 = getelementptr i8, ptr %118, i32 4072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 -65536) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !193
  %119 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !161
  tail call void @arm_heavy_mb() #15
  %add.ptr.i139 = getelementptr i8, ptr %120, i32 4068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 -2013265920) #15, !srcloc !134
  %121 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net_base, align 8
  %add.ptr86 = getelementptr i8, ptr %122, i32 256
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !194
  %124 = or i32 %123, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !195
  tail call void @arm_heavy_mb() #15
  %125 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %net_base, align 8
  %add.ptr94 = getelementptr i8, ptr %126, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %124) #15, !srcloc !134
  %127 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net_base, align 8
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !196
  %130 = or i32 %129, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !197
  tail call void @arm_heavy_mb() #15
  %131 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %net_base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #15, !srcloc !134
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpc_set_mac(ptr nocapture noundef readonly %pldat, ptr noundef %mac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !198
  tail call void @arm_heavy_mb() #15
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 4
  %5 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #15, !srcloc !134
  %arrayidx3 = getelementptr i8, ptr %mac, i32 2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %8 to i32
  %arrayidx5 = getelementptr i8, ptr %mac, i32 3
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or8 = or i32 %shl7, %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !199
  tail call void @arm_heavy_mb() #15
  %11 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %12 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_base, align 8
  %add.ptr13 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #15, !srcloc !134
  %arrayidx14 = getelementptr i8, ptr %mac, i32 4
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %arrayidx16 = getelementptr i8, ptr %mac, i32 5
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %or19 = or i32 %shl18, %conv15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !200
  tail call void @arm_heavy_mb() #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %19 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_base, align 8
  %add.ptr24 = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %18) #15, !srcloc !134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__lpc_set_mac.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__lpc_set_mac, %if.then)) #15
          to label %do.end33 [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ndev = getelementptr inbounds %struct.netdata_local, ptr %pldat, i32 0, i32 1
  %21 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__lpc_set_mac.__UNIQUE_ID_ddebug349, ptr noundef %22, ptr noundef nonnull @.str.44, ptr noundef %mac) #15
  br label %do.end33

do.end33:                                         ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc_eth_ethtool_getdrvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.45, i32 noundef 32) #15
  %parent = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 133, i32 1
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc_eth_ethtool_getmsglevel(ptr nocapture noundef readonly %ndev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @lpc_eth_ethtool_setmsglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %level) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %phyreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !201
  tail call void @arm_heavy_mb() #15
  %shl = shl i32 %phy_id, 8
  %or = or i32 %shl, %phyreg
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #15, !srcloc !134
  %8 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_base, align 8
  %add.ptr737 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr737) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not38 = icmp eq i32 %11, 0
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %do.end14.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %do.end14

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end14:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !204
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !205
  %13 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_base, align 8
  %add.ptr7 = getelementptr i8, ptr %14, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %16 = and i32 %15, 16777216
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.end14.while.end_crit_edge, label %do.end14.while.body_crit_edge

do.end14.while.body_crit_edge:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.end14.while.end_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end14.while.end_crit_edge, %entry.while.end_crit_edge
  %17 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_base, align 8
  %add.ptr22 = getelementptr i8, ptr %18, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #15, !srcloc !138
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !207
  tail call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_base, align 8
  %add.ptr30 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #15, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %while.end ], [ -5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %phyreg, i16 noundef zeroext %phydata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @arm_heavy_mb() #15
  %shl = shl i32 %phy_id, 8
  %or = or i32 %shl, %phyreg
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %net_base = getelementptr inbounds %struct.netdata_local, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !209
  tail call void @arm_heavy_mb() #15
  %conv = zext i16 %phydata to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %7 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net_base, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #15, !srcloc !134
  %9 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_base, align 8
  %add.ptr723 = getelementptr i8, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr723) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !210
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not24 = icmp eq i32 %12, 0
  br i1 %tobool.not24, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body:                                       ; preds = %do.end15.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %do.end15

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end15:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !212
  %14 = ptrtoint ptr %net_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net_base, align 8
  %add.ptr7 = getelementptr i8, ptr %15, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #15, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !210
  %17 = and i32 %16, 16777216
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.end15.cleanup_crit_edge, label %do.end15.while.body_crit_edge

do.end15.while.body_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %do.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end15.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc_mdio_reset(ptr nocapture noundef readonly %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !146
  tail call void @arm_heavy_mb() #15
  %net_base.i = getelementptr inbounds %struct.netdata_local, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8388608) #15, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !147
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %net_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 469762048) #15, !srcloc !134
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc_handle_link_change(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %lock = getelementptr i8, ptr %ndev, i32 2316
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then:                                          ; preds = %entry
  %speed = getelementptr i8, ptr %ndev, i32 2488
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 8
  %speed7 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8.not = icmp eq i32 %5, %7
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then.if.then13_crit_edge

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then
  %duplex = getelementptr i8, ptr %ndev, i32 2492
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %duplex10 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11.not = icmp eq i32 %9, %11
  br i1 %cmp11.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.then.if.then13_crit_edge
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %speed, align 8
  %duplex16 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %duplex16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duplex16, align 4
  %duplex17 = getelementptr i8, ptr %ndev, i32 2492
  %15 = ptrtoint ptr %duplex17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %duplex17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %lor.lhs.false.if.end18_crit_edge, %entry.if.end18_crit_edge
  %status_change.0.off0 = phi i1 [ true, %if.then13 ], [ false, %lor.lhs.false.if.end18_crit_edge ], [ false, %entry.if.end18_crit_edge ]
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load20 = load i16, ptr %link, align 8
  %bf.lshr21 = lshr i16 %bf.load20, 2
  %bf.clear22 = and i16 %bf.lshr21, 1
  %bf.cast23 = zext i16 %bf.clear22 to i32
  %link24 = getelementptr i8, ptr %ndev, i32 2484
  %17 = ptrtoint ptr %link24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %bf.cast23)
  %cmp25.not = icmp eq i32 %18, %bf.cast23
  br i1 %cmp25.not, label %if.end44, label %if.then27

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear22)
  %tobool33.not = icmp eq i16 %bf.clear22, 0
  br i1 %tobool33.not, label %if.then34, label %if.then27.if.end37_crit_edge

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %speed35 = getelementptr i8, ptr %ndev, i32 2488
  %19 = ptrtoint ptr %speed35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %speed35, align 8
  %duplex36 = getelementptr i8, ptr %ndev, i32 2492
  %20 = ptrtoint ptr %duplex36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %duplex36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then27.if.end37_crit_edge
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load39 = load i16, ptr %link, align 8
  %bf.lshr40 = lshr i16 %bf.load39, 2
  %bf.clear41 = and i16 %bf.lshr40, 1
  %bf.cast42 = zext i16 %bf.clear41 to i32
  %22 = ptrtoint ptr %link24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.cast42, ptr %link24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  br label %if.then47

if.end44:                                         ; preds = %if.end18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  br i1 %status_change.0.off0, label %if.end44.if.then47_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

if.then47:                                        ; preds = %if.end44.if.then47_crit_edge, %if.end37
  tail call fastcc void @__lpc_params_setup(ptr noundef %add.ptr.i)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_lpc_eth__359_1519_lpc_eth_driver_init6, !1, !"__initcall__kmod_lpc_eth__359_1519_lpc_eth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1519, i32 1}
!2 = !{ptr @__exitcall_lpc_eth_driver_exit, !1, !"__exitcall_lpc_eth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author360, !4, !"__UNIQUE_ID_author360", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1521, i32 1}
!5 = !{ptr @__UNIQUE_ID_author361, !6, !"__UNIQUE_ID_author361", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1522, i32 1}
!7 = !{ptr @__UNIQUE_ID_description362, !8, !"__UNIQUE_ID_description362", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1523, i32 1}
!9 = !{ptr @__UNIQUE_ID_file363, !10, !"__UNIQUE_ID_file363", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1524, i32 1}
!11 = !{ptr @__UNIQUE_ID_license364, !10, !"__UNIQUE_ID_license364", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1514, i32 11}
!14 = !{ptr @lpc_eth_driver, !15, !"lpc_eth_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1506, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1244, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lpc_eth_drv_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lpc_eth_drv_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1252, i32 3}
!26 = !{ptr @lpc_eth_drv_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc_eth_drv_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @lpc_eth_drv_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1263, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1271, i32 3}
!33 = !{ptr @lpc_eth_drv_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lpc_eth_drv_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1284, i32 3}
!37 = !{ptr @lpc_eth_drv_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lpc_eth_drv_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1291, i32 3}
!41 = !{ptr @lpc_eth_drv_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @lpc_eth_drv_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1310, i32 5}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1335, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug352, !46, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1336, i32 2}
!51 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug353, !50, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1338, i32 2}
!54 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug354, !53, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1340, i32 2}
!57 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug355, !56, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1341, i32 2}
!60 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug356, !59, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1342, i32 2}
!63 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug357, !62, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1344, i32 2}
!66 = !{ptr @lpc_eth_drv_probe.__UNIQUE_ID_ddebug358, !65, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1347, i32 41}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1380, i32 3}
!71 = !{ptr @lpc_eth_drv_probe._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lpc_eth_drv_probe._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1389, i32 20}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1416, i32 2}
!77 = !{ptr @lpc_eth_drv_probe._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @lpc_eth_drv_probe._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 319, i32 10}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 320, i32 29}
!83 = !{ptr @lpc_netdev_ops, !84, !"lpc_netdev_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1216, i32 36}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1160, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @lpc_eth_open.__UNIQUE_ID_ddebug351, !86, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1013, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @lpc_eth_close.__UNIQUE_ID_ddebug350, !90, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1050, i32 3}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 434, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @__lpc_set_mac.__UNIQUE_ID_ddebug349, !96, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!99 = !{ptr @lpc_eth_ethtool_ops, !100, !"lpc_eth_ethtool_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1207, i32 33}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1188, i32 25}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 329, i32 46}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 811, i32 25}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 815, i32 48}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 820, i32 56}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 758, i32 21}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 760, i32 21}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 767, i32 20}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 775, i32 20}
!119 = !{ptr @lpc_eth_match, !120, !"lpc_eth_match", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/nxp/lpc_eth.c", i32 1500, i32 34}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i64 2148760861, i64 2148760866, i64 2148760879, i64 2148760923, i64 2148760957, i64 2148760978}
!133 = !{i64 2156610651}
!134 = !{i64 6120102}
!135 = !{i64 2156611348}
!136 = !{i64 2156628673}
!137 = !{i64 2156629100}
!138 = !{i64 6120520}
!139 = !{i64 2156641264}
!140 = !{i64 2156641515}
!141 = !{i64 2156613531}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{i64 2156603278}
!144 = !{i64 2156603828}
!145 = !{i64 2156604378}
!146 = !{i64 2156611892}
!147 = !{i64 2156612385}
!148 = !{i64 2156605193}
!149 = !{i64 2156605927}
!150 = !{i64 2156606188}
!151 = !{i64 2156606655}
!152 = !{i64 2156607691}
!153 = !{i64 2156608425}
!154 = !{i64 2156608686}
!155 = !{i64 2156609153}
!156 = !{i64 2156636959}
!157 = !{i64 2156637589}
!158 = !{i64 2156638142}
!159 = !{i64 2156638692}
!160 = !{i64 2156639254}
!161 = !{i64 2156613062}
!162 = !{i64 2156635205}
!163 = !{i64 2156635693}
!164 = !{i64 2156636204}
!165 = !{i64 2156644822}
!166 = !{i64 2156645249}
!167 = !{i64 2156646535}
!168 = !{i64 2156646816}
!169 = !{i64 2156648094}
!170 = !{i64 2156652403}
!171 = !{i64 2156652850}
!172 = !{i64 2156619230}
!173 = !{i64 2156619499}
!174 = !{i64 2156620233}
!175 = !{i64 2156620493}
!176 = !{i64 2156620942}
!177 = !{i64 2156621430}
!178 = !{i64 2156621931}
!179 = !{i64 2156622453}
!180 = !{i64 2156623049}
!181 = !{i64 2156623540}
!182 = !{i64 2156624028}
!183 = !{i64 2156624539}
!184 = !{i64 2156615764}
!185 = !{i64 2156616249}
!186 = !{i64 2156616812}
!187 = !{i64 2156617352}
!188 = !{i64 2156617837}
!189 = !{i64 2156618400}
!190 = !{i64 2156625030}
!191 = !{i64 2156625824}
!192 = !{i64 2156626078}
!193 = !{i64 2156626427}
!194 = !{i64 2156626977}
!195 = !{i64 2156627246}
!196 = !{i64 2156627980}
!197 = !{i64 2156628240}
!198 = !{i64 2156599370}
!199 = !{i64 2156599805}
!200 = !{i64 2156600240}
!201 = !{i64 2156629550}
!202 = !{i64 2156630062}
!203 = !{i64 2156630811}
!204 = !{i64 2156631443}
!205 = !{i64 2156631285}
!206 = !{i64 2156631993}
!207 = !{i64 2156632242}
!208 = !{i64 2156632692}
!209 = !{i64 2156633194}
!210 = !{i64 2156633940}
!211 = !{i64 2156634572}
!212 = !{i64 2156634414}
