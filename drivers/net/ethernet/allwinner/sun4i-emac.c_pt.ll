; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/allwinner/sun4i-emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/allwinner/sun4i-emac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.emac_board_info = type { ptr, ptr, ptr, %struct.spinlock, ptr, i32, ptr, i16, i32, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.emac_dma_req = type { ptr, ptr, ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [17 x i8] c"sun4i_emac.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype349 = internal constant [30 x i8] c"sun4i_emac.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug350 = internal constant [42 x i8] c"sun4i_emac.parm=debug:debug message flags\00", section ".modinfo", align 1
@__param_str_watchdog = internal constant [20 x i8] c"sun4i_emac.watchdog\00", align 1
@watchdog = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype351 = internal constant [33 x i8] c"sun4i_emac.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog352 = internal constant [58 x i8] c"sun4i_emac.parm=watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@__initcall__kmod_sun4i_emac__367_1151_emac_driver_init6 = internal global ptr @emac_driver_init, section ".initcall6.init", align 4
@emac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @emac_probe, ptr @emac_remove, ptr null, ptr @emac_suspend, ptr @emac_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @emac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_emac_driver_exit = internal global ptr @emac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author368 = internal constant [44 x i8] c"sun4i_emac.author=Stefan Roese <sr@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author369 = internal constant [67 x i8] c"sun4i_emac.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description370 = internal constant [57 x i8] c"sun4i_emac.description=Allwinner A10 emac network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file371 = internal constant [58 x i8] c"sun4i_emac.file=drivers/net/ethernet/allwinner/sun4i-emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [23 x i8] c"sun4i_emac.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sun4i-emac\00", [21 x i8] zeroinitializer }, align 32
@emac_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@emac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not allocate device.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emac_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/allwinner/sun4i-emac.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr = internal global ptr @emac_probe._entry, section ".printk_index", align 4
@emac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&db->lock\00", [22 x i8] zeroinitializer }, align 32
@emac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to remap registers\0A\00", [37 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.9 = internal global ptr @emac_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No irq resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"configure dma failed. disable dma.\0A\00", [60 x i8] zeroinitializer }, align 32
@emac_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1016, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error couldn't enable clock (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.14 = internal global ptr @emac_probe._entry.12, section ".printk_index", align 4
@emac_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error couldn't map SRAM to device\0A\00", [61 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.17 = internal global ptr @emac_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@emac_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no associated PHY\0A\00", [45 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.22 = internal global ptr @emac_probe._entry.20, section ".printk_index", align 4
@emac_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1041, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using random MAC address %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.26 = internal global ptr @emac_probe._entry.23, section ".printk_index", align 4
@emac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @emac_open, ptr @emac_stop, ptr @emac_start_xmit, ptr null, ptr null, ptr null, ptr @emac_set_rx_mode, ptr @emac_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emac_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@emac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @emac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @emac_get_msglevel, ptr @emac_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@emac_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1059, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Registering netdev failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.29 = internal global ptr @emac_probe._entry.27, section ".printk_index", align 4
@emac_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1065, ptr @.str.32, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: at %p, IRQ %d MAC: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.33 = internal global ptr @emac_probe._entry.30, section ".printk_index", align 4
@emac_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not found (%d).\0A\00", [47 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.36 = internal global ptr @emac_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"get io resource from device failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"get io resource from device: %pa, size = %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to request dma channel. dma is disabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"config dma slave failed\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@emac_reset.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sun4i_emac\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emac_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"resetting device\0A\00", [46 x i8] zeroinitializer }, align 32
@emac_open.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac_open\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enabling %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot probe MDIO bus\0A\00", [41 x i8] zeroinitializer }, align 32
@emac_interrupt.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emac_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emac interrupt %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" ab : %x\0A\00", [22 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emac_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RXCount: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.53, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"receive header: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.54, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rxhdr: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.55, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX: status %02x, length %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.56, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX: Bad Packet (runt)\0A\00", [41 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.57, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc error\0A\00", [21 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.58, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"length error\0A\00", [18 x i8] zeroinitializer }, align 32
@emac_rx.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.51, ptr @.str.3, ptr @.str.59, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxLen %x\0A\00", [22 x i8] zeroinitializer }, align 32
@emac_dma_inblk_32bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma mapping error.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emac_dma_inblk_32bit\00", [43 x i8] zeroinitializer }, align 32
@emac_dma_inblk_32bit._entry_ptr = internal global ptr @emac_dma_inblk_32bit._entry, section ".printk_index", align 4
@emac_dma_inblk_32bit._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"prepare slave single failed\0A\00", [35 x i8] zeroinitializer }, align 32
@emac_dma_inblk_32bit._entry_ptr.64 = internal global ptr @emac_dma_inblk_32bit._entry.62, section ".printk_index", align 4
@emac_dma_inblk_32bit._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"alloc emac dma req error.\0A\00", [37 x i8] zeroinitializer }, align 32
@emac_dma_inblk_32bit._entry_ptr.67 = internal global ptr @emac_dma_inblk_32bit._entry.65, section ".printk_index", align 4
@emac_dma_inblk_32bit._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma submit error.\0A\00", [45 x i8] zeroinitializer }, align 32
@emac_dma_inblk_32bit._entry_ptr.70 = internal global ptr @emac_dma_inblk_32bit._entry.68, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@emac_tx_done.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emac_tx_done\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx done, NSR %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not find the PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@emac_stop.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 -36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shutting down %s\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@emac_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 522, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx time out.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emac_timeout\00", [19 x i8] zeroinitializer }, align 32
@emac_timeout._entry_ptr = internal global ptr @emac_timeout._entry, section ".printk_index", align 4
@emac_remove.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emac_remove\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"released and freed device\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 41, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 46, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"emac_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1140, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1142, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"emac_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1130, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 974, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 987, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 991, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1000, i32 20 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1006, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1016, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1022, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1026, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1028, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1030, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1040, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"emac_netdev_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 897, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"emac_ethtool_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 352, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1059, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1064, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1079, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 921, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 926, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 930, i32 45 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 933, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 948, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 200, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 833, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 845, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 780, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 794, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 635, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 653, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 690, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 696, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 703, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 711, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 717, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 732, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 286, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 294, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 301, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 312, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 326, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 610, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 179, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 881, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 522, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private constant [47 x i8] c"../drivers/net/ethernet/allwinner/sun4i-emac.c\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 1103, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_author369, ptr @__UNIQUE_ID_debug350, ptr @__UNIQUE_ID_debugtype349, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__UNIQUE_ID_watchdog352, ptr @__UNIQUE_ID_watchdogtype351, ptr @__exitcall_emac_driver_exit, ptr @__initcall__kmod_sun4i_emac__367_1151_emac_driver_init6, ptr @__param_debug, ptr @__param_watchdog, ptr @emac_dma_inblk_32bit._entry, ptr @emac_dma_inblk_32bit._entry.62, ptr @emac_dma_inblk_32bit._entry.65, ptr @emac_dma_inblk_32bit._entry.68, ptr @emac_dma_inblk_32bit._entry_ptr, ptr @emac_dma_inblk_32bit._entry_ptr.64, ptr @emac_dma_inblk_32bit._entry_ptr.67, ptr @emac_dma_inblk_32bit._entry_ptr.70, ptr @emac_driver_exit, ptr @emac_probe._entry, ptr @emac_probe._entry.12, ptr @emac_probe._entry.15, ptr @emac_probe._entry.20, ptr @emac_probe._entry.23, ptr @emac_probe._entry.27, ptr @emac_probe._entry.30, ptr @emac_probe._entry.34, ptr @emac_probe._entry.7, ptr @emac_probe._entry_ptr, ptr @emac_probe._entry_ptr.14, ptr @emac_probe._entry_ptr.17, ptr @emac_probe._entry_ptr.22, ptr @emac_probe._entry_ptr.26, ptr @emac_probe._entry_ptr.29, ptr @emac_probe._entry_ptr.33, ptr @emac_probe._entry_ptr.36, ptr @emac_probe._entry_ptr.9, ptr @emac_timeout._entry, ptr @emac_timeout._entry_ptr, ptr @debug, ptr @watchdog, ptr @emac_driver, ptr @.str, ptr @emac_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @emac_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @emac_netdev_ops, ptr @emac_ethtool_ops, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dma_inblk_32bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dma_inblk_32bit._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dma_inblk_32bit._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dma_inblk_32bit._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @emac_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @emac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %conf.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 104, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev6 = getelementptr i8, ptr %call, i32 2308
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev6, align 4
  %ndev7 = getelementptr i8, ptr %call, i32 2368
  %4 = ptrtoint ptr %ndev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ndev7, align 4
  %pdev8 = getelementptr i8, ptr %call, i32 2312
  %5 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev8, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = add i32 %6, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %7)
  %8 = icmp ult i32 %7, -31
  %notmask.i = shl nsw i32 -1, %6
  %sub.i = xor i32 %notmask.i, -1
  %retval.0.i183 = select i1 %8, i32 0, i32 %sub.i
  %msg_enable = getelementptr i8, ptr %call, i32 2364
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i183, ptr %msg_enable, align 4
  %lock = getelementptr i8, ptr %call, i32 2316
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @emac_probe.__key, i16 noundef signext 3) #12
  %call14 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #12
  %membase = getelementptr i8, ptr %call, i32 2360
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %membase, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #15
  br label %do.end106

if.end22:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call14 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %base_addr, align 32
  %call24 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call24, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call24)
  %cmp = icmp eq i32 %call24, -6
  br i1 %cmp, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.10) #15
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  br label %out_iounmap

if.end28:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev8, align 4
  %18 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf.i) #12
  %20 = getelementptr inbounds i8, ptr %conf.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %call.i = tail call ptr @platform_get_resource(ptr noundef %17, i32 noundef 512, i32 noundef 0) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i184, label %if.end.i186

if.then.i184:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.37) #15
  br label %emac_configure_dma.exit.thread195

if.end.i186:                                      ; preds = %if.end28
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i.i, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i, align 4
  %sub.i.i185 = add i32 %23, 1
  %add.i.i = sub i32 %sub.i.i185, %25
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.38, ptr noundef nonnull %call.i, i32 noundef %add.i.i) #15
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i, align 4
  %add.i = add i32 %27, 76
  %emac_rx_fifo.i = getelementptr i8, ptr %call, i32 2404
  %28 = ptrtoint ptr %emac_rx_fifo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %emac_rx_fifo.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call5.i = tail call ptr @dma_request_chan(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #12
  %rx_chan.i = getelementptr i8, ptr %call, i32 2400
  %29 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i, ptr %rx_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %emac_configure_dma.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i186
  %30 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %conf.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 4
  %31 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %dst_addr_width.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 3
  %32 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %src_addr_width.i, align 4
  %33 = ptrtoint ptr %emac_rx_fifo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %emac_rx_fifo.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 1
  %35 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %src_addr.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 6
  %36 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %dst_maxburst.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 5
  %37 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %src_maxburst.i, align 4
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 9
  %38 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %device_fc.i, align 4
  %39 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call5.i, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end11.i.if.then16.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end11.i.if.then16.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end11.i
  %call.i.i = call i32 %42(ptr noundef %call5.i, ptr noundef nonnull %conf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %emac_configure_dma.exit.thread, label %dmaengine_slave_config.exit.i.if.then16.i_crit_edge

dmaengine_slave_config.exit.i.if.then16.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16.i

emac_configure_dma.exit.thread:                   ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf.i) #12
  br label %if.end32

if.then16.i:                                      ; preds = %dmaengine_slave_config.exit.i.if.then16.i_crit_edge, %if.end11.i.if.then16.i_crit_edge
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.41) #15
  %43 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_chan.i, align 4
  call void @dma_release_channel(ptr noundef %44) #12
  br label %emac_configure_dma.exit.thread195

emac_configure_dma.exit.thread195:                ; preds = %if.then16.i, %if.then.i184
  %rx_chan19.i197 = getelementptr i8, ptr %call, i32 2400
  %45 = ptrtoint ptr %rx_chan19.i197 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rx_chan19.i197, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf.i) #12
  br label %if.then31

emac_configure_dma.exit:                          ; preds = %if.end.i186
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.40) #15
  %46 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_chan.i, align 4
  store ptr null, ptr %rx_chan.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf.i) #12
  %tobool30.not = icmp eq ptr %47, null
  br i1 %tobool30.not, label %emac_configure_dma.exit.if.end32_crit_edge, label %emac_configure_dma.exit.if.then31_crit_edge

emac_configure_dma.exit.if.then31_crit_edge:      ; preds = %emac_configure_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

emac_configure_dma.exit.if.end32_crit_edge:       ; preds = %emac_configure_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %emac_configure_dma.exit.if.then31_crit_edge, %emac_configure_dma.exit.thread195
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.11) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %emac_configure_dma.exit.if.end32_crit_edge, %emac_configure_dma.exit.thread
  %call34 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #12
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call34, ptr %add.ptr.i, align 4
  %cmp.i188 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %call34 to i32
  br label %out_dispose_mapping

if.end40:                                         ; preds = %if.end32
  %call.i189 = call i32 @clk_prepare(ptr noundef %call34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %if.end.i191, label %if.end40.do.end47_crit_edge

if.end40.do.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.end.i191:                                      ; preds = %if.end40
  %call1.i = call i32 @clk_enable(ptr noundef %call34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end49, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_unprepare(ptr noundef %call34) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then3.i, %if.end40.do.end47_crit_edge
  %retval.0.i192.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i189, %if.end40.do.end47_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i192.ph) #15
  br label %out_dispose_mapping

if.end49:                                         ; preds = %if.end.i191
  %call51 = call i32 @sunxi_sram_claim(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %out_clk_disable_unprepare

if.end58:                                         ; preds = %if.end49
  %call59 = call fastcc ptr @of_parse_phandle(ptr noundef %1, ptr noundef nonnull @.str.18)
  %phy_node = getelementptr i8, ptr %call, i32 2380
  %50 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call59, ptr %phy_node, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %if.end65, label %if.end58.if.end73_crit_edge

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.end65:                                         ; preds = %if.end58
  %call63 = call fastcc ptr @of_parse_phandle(ptr noundef %1, ptr noundef nonnull @.str.19)
  %51 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call63, ptr %phy_node, align 4
  %tobool67.not = icmp eq ptr %call63, null
  br i1 %tobool67.not, label %if.end65.out_release_sram_crit_edge, label %if.end65.if.end73_crit_edge

if.end65.if.end73_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.end65.out_release_sram_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_sram

if.end73:                                         ; preds = %if.end65.if.end73_crit_edge, %if.end58.if.end73_crit_edge
  %call74 = call i32 @of_get_ethdev_address(ptr noundef %1, ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.if.end81_crit_edge, label %if.then76

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %53) #15
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %if.end73.if.end81_crit_edge
  %emacrx_completed_flag = getelementptr i8, ptr %call, i32 2376
  %54 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %emacrx_completed_flag, align 4
  call fastcc void @emac_powerup(ptr noundef nonnull %call)
  call fastcc void @emac_reset(ptr noundef %add.ptr.i)
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %55 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @emac_netdev_ops, ptr %netdev_ops, align 8
  %56 = load i32, ptr @watchdog, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %56) #12
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %57 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call2.i, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %58 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @emac_ethtool_ops, ptr %ethtool_ops, align 16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @netif_carrier_off(ptr noundef nonnull %call) #12
  %call84 = call i32 @register_netdev(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end94, label %if.end81.out_release_sram_crit_edge

if.end81.out_release_sram_crit_edge:              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_release_sram

do.end94:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %membase, align 4
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %dev_addr98 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %64 = ptrtoint ptr %dev_addr98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_addr98, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %call, ptr noundef %61, i32 noundef %63, ptr noundef %65) #15
  br label %cleanup

out_release_sram:                                 ; preds = %if.end81.out_release_sram_crit_edge, %if.end65.out_release_sram_crit_edge
  %.str.28.sink = phi ptr [ @.str.21, %if.end65.out_release_sram_crit_edge ], [ @.str.28, %if.end81.out_release_sram_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.28.sink) #15
  %call100 = call i32 @sunxi_sram_release(ptr noundef %dev) #12
  br label %out_clk_disable_unprepare

out_clk_disable_unprepare:                        ; preds = %out_release_sram, %do.end56
  %ret.1 = phi i32 [ %call51, %do.end56 ], [ -19, %out_release_sram ]
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 4
  call void @clk_disable(ptr noundef %67) #12
  call void @clk_unprepare(ptr noundef %67) #12
  br label %out_dispose_mapping

out_dispose_mapping:                              ; preds = %out_clk_disable_unprepare, %do.end47, %if.then37
  %ret.2 = phi i32 [ %49, %if.then37 ], [ %retval.0.i192.ph, %do.end47 ], [ %ret.1, %out_clk_disable_unprepare ]
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  call void @irq_dispose_mapping(i32 noundef %69) #12
  %rx_chan = getelementptr i8, ptr %call, i32 2400
  %70 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_chan, align 4
  call void @dma_release_channel(ptr noundef %71) #12
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_dispose_mapping, %if.then26
  %ret.3 = phi i32 [ %15, %if.then26 ], [ %ret.2, %out_dispose_mapping ]
  %72 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase, align 4
  call void @iounmap(ptr noundef %73) #12
  br label %do.end106

do.end106:                                        ; preds = %out_iounmap, %do.end20
  %ret.4 = phi i32 [ %ret.3, %out_iounmap ], [ -12, %do.end20 ]
  %74 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35, i32 noundef %ret.4) #15
  call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %do.end94, %do.end
  %retval.0 = phi i32 [ %ret.4, %do.end106 ], [ 0, %do.end94 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %rx_chan = getelementptr i8, ptr %1, i32 2400
  %2 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %7(ptr noundef nonnull %3) #12
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %8 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan, align 4
  tail call void @dma_release_channel(ptr noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit, %entry.if.end_crit_edge
  tail call void @unregister_netdev(ptr noundef %1) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call5 = tail call i32 @sunxi_sram_release(ptr noundef %dev) #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void @clk_disable(ptr noundef %11) #12
  tail call void @clk_unprepare(ptr noundef %11) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %13) #12
  %membase = getelementptr i8, ptr %1, i32 2360
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %15) #12
  tail call void @free_netdev(ptr noundef %1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_remove.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_remove, %if.then10)) #12
          to label %do.end [label %if.then10], !srcloc !192

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_remove.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.81) #12
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #12
  tail call void @netif_device_detach(ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr i8, ptr %1, i32 2360
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !194
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 88
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %8, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %6) #12, !srcloc !194
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  %12 = and i32 %11, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #12, !srcloc !194
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_reset.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_resume, %if.then.i)) #12
          to label %emac_reset.exit [label %if.then.i], !srcloc !192

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_reset.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.44) #12
  br label %emac_reset.exit

emac_reset.exit:                                  ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr i8, ptr %1, i32 2360
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np, ptr noundef %phandle_name) unnamed_addr #5 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #12
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef %phandle_name, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_powerup(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr i8, ptr %ndev, i32 2360
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %3) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  %10 = and i32 %9, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #12, !srcloc !194
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 124
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  %16 = and i32 %15, 66912255
  %17 = or i32 %16, 872415232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %19, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %17) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #12, !srcloc !194
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr44 = getelementptr i8, ptr %25, i32 88
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr52 = getelementptr i8, ptr %28, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %26) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #12
  %30 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase, align 4
  %add.ptr.i1 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @arm_heavy_mb() #12
  %33 = or i32 %32, 16777216
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %33) #12, !srcloc !194
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr8.i = getelementptr i8, ptr %37, i32 92
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %39 = or i32 %38, 201326592
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr18.i = getelementptr i8, ptr %41, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %39) #12, !srcloc !194
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr22.i = getelementptr i8, ptr %43, i32 96
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %45 = or i32 %44, 838860800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr33.i = getelementptr i8, ptr %47, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %45) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  tail call void @arm_heavy_mb() #12
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  %add.ptr38.i = getelementptr i8, ptr %49, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 352321536) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr43.i = getelementptr i8, ptr %51, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 302776320) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !220
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr48.i = getelementptr i8, ptr %53, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 255262720) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr53.i = getelementptr i8, ptr %55, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 393216) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void @arm_heavy_mb() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %56 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_addr, align 64
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv = zext i8 %59 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx58 = getelementptr i8, ptr %57, i32 1
  %60 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %61 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %or61 = or i32 %shl60, %shl
  %arrayidx63 = getelementptr i8, ptr %57, i32 2
  %62 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %63 to i32
  %or65 = or i32 %or61, %conv64
  %64 = tail call i32 @llvm.bswap.i32(i32 %or65)
  %65 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase, align 4
  %add.ptr67 = getelementptr i8, ptr %66, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %64) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr, align 64
  %arrayidx72 = getelementptr i8, ptr %68, i32 3
  %69 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %70 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %arrayidx76 = getelementptr i8, ptr %68, i32 4
  %71 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %72 to i32
  %shl78 = shl nuw nsw i32 %conv77, 8
  %or79 = or i32 %shl78, %shl74
  %arrayidx81 = getelementptr i8, ptr %68, i32 5
  %73 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %74 to i32
  %or83 = or i32 %or79, %conv82
  %75 = tail call i32 @llvm.bswap.i32(i32 %or83)
  %76 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase, align 4
  %add.ptr85 = getelementptr i8, ptr %77, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %75) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_reset(ptr nocapture noundef readonly %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_reset.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_reset, %if.then)) #12
          to label %do.body3 [label %if.then], !srcloc !192

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.emac_board_info, ptr %db, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_reset.__UNIQUE_ID_ddebug353, ptr noundef %1, ptr noundef nonnull @.str.44) #12
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %membase = getelementptr inbounds %struct.emac_board_info, ptr %db, i32 0, i32 4
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 42949600) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 16777216) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 42949600) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_sram_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_open.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_open, %if.then5)) #12
          to label %if.end7 [label %if.then5], !srcloc !192

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev6 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_open.__UNIQUE_ID_ddebug364, ptr noundef %3, ptr noundef nonnull @.str.46, ptr noundef %dev) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body, %entry.if.end7_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @emac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_reset.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_open, %if.then.i)) #12
          to label %emac_reset.exit [label %if.then.i], !srcloc !192

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_reset.__UNIQUE_ID_ddebug353, ptr noundef %7, ptr noundef nonnull @.str.44) #12
  br label %emac_reset.exit

emac_reset.exit:                                  ; preds = %if.then.i, %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 16777216) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %dev)
  %ndev.i = getelementptr i8, ptr %dev, i32 2368
  %14 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i, align 4
  %phy_node.i = getelementptr i8, ptr %dev, i32 2380
  %16 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_node.i, align 4
  %phy_interface.i = getelementptr i8, ptr %dev, i32 2396
  %18 = ptrtoint ptr %phy_interface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_interface.i, align 4
  %call1.i = tail call ptr @of_phy_connect(ptr noundef %15, ptr noundef %17, ptr noundef nonnull @emac_handle_link_change, i32 noundef 0, i32 noundef %19) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %emac_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.75) #15
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call17 = tail call ptr @free_irq(i32 noundef %23, ptr noundef %dev) #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #15
  br label %cleanup

if.end18:                                         ; preds = %emac_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @phy_set_max_speed(ptr noundef nonnull %call1.i, i32 noundef 100) #12
  %link.i = getelementptr i8, ptr %dev, i32 2384
  %24 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %link.i, align 4
  %speed.i = getelementptr i8, ptr %dev, i32 2388
  %25 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %speed.i, align 4
  %duplex.i = getelementptr i8, ptr %dev, i32 2392
  %26 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %duplex.i, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %27 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %28) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then15 ], [ 0, %if.end18 ], [ -11, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_stop.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_stop, %if.then5)) #12
          to label %if.end6 [label %if.then5], !srcloc !192

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_stop.__UNIQUE_ID_ddebug365, ptr noundef %3, ptr noundef nonnull @.str.77, ptr noundef %ndev) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @netif_carrier_off(ptr noundef %ndev) #12
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %7) #12
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr i8, ptr %ndev, i32 2360
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #12, !srcloc !194
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 88
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %14) #12, !srcloc !194
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  %20 = and i32 %19, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !194
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %ndev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_fifo_stat = getelementptr i8, ptr %dev, i32 2372
  %0 = ptrtoint ptr %tx_fifo_stat to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_fifo_stat, align 4
  %2 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp = icmp eq i16 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp2 = icmp eq i16 %2, 1
  %cond = zext i1 %cmp2 to i16
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  tail call void @arm_heavy_mb() #12
  %3 = select i1 %cmp2, i32 16777216, i32 0
  %membase = getelementptr i8, ptr %dev, i32 2360
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #12, !srcloc !194
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 36
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub.i = add i32 %11, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add i32 %or.i, 1
  %div.i = sdiv i32 %add.i, 4
  tail call void @__raw_writesl(ptr noundef %add.ptr15, ptr noundef %9, i32 noundef %div.i) #12
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %14 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %tx_bytes, align 4
  %shl = shl nuw nsw i16 1, %cond
  %16 = ptrtoint ptr %tx_fifo_stat to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_fifo_stat, align 4
  %conv19 = or i16 %17, %shl
  store i16 %conv19, ptr %tx_fifo_stat, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  br i1 %cmp2, label %do.body43, label %do.body23

do.body23:                                        ; preds = %if.end
  %add.ptr28 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %20) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  %26 = or i32 %25, 16777216
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %26) #12, !srcloc !194
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 12
  %32 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i.i = icmp eq i32 %33, %31
  br i1 %cmp.not.i.i, label %do.body23.if.end63_crit_edge, label %do.body5.i.i

do.body23.if.end63_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

do.body5.i.i:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %31, ptr %trans_start.i.i, align 16
  br label %if.end63

do.body43:                                        ; preds = %if.end
  %add.ptr48 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %20) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr55 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  %38 = or i32 %37, 16777216
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr61 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %38) #12, !srcloc !194
  %_tx.i.i100 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i100, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i101 = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 12
  %44 = ptrtoint ptr %trans_start.i.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %trans_start.i.i101, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.not.i.i102 = icmp eq i32 %45, %43
  br i1 %cmp.not.i.i102, label %do.body43.if.end63_crit_edge, label %do.body5.i.i103

do.body43.if.end63_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

do.body5.i.i103:                                  ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %trans_start.i.i101 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %43, ptr %trans_start.i.i101, align 16
  br label %if.end63

if.end63:                                         ; preds = %do.body5.i.i103, %do.body43.if.end63_crit_edge, %do.body5.i.i, %do.body23.if.end63_crit_edge
  %47 = ptrtoint ptr %tx_fifo_stat to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tx_fifo_stat, align 4
  %49 = and i16 %48, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %49)
  %cmp67 = icmp eq i16 %49, 3
  br i1 %cmp67, label %if.then69, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i105 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i105, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end63.if.end70_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70 ], [ 16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_set_rx_mode(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr i8, ptr %ndev, i32 2360
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %5 = and i32 %2, -268522241
  %and = lshr i32 %4, 4
  %6 = and i32 %and, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %7 = or i32 %5, 86784
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %or8 = or i32 %8, %6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or8)
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %9) #12, !srcloc !194
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %shl
  %arrayidx7 = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %or9 = or i32 %or, %conv8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %membase = getelementptr i8, ptr %dev, i32 2360
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #12, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %arrayidx14 = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %arrayidx18 = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %shl20, %shl16
  %arrayidx23 = getelementptr i8, ptr %14, i32 5
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %20 to i32
  %or25 = or i32 %or21, %conv24
  %21 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %21) #12, !srcloc !194
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78) #15
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_reset.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_timeout, %if.then.i)) #12
          to label %emac_reset.exit [label %if.then.i], !srcloc !192

if.then.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_reset.__UNIQUE_ID_ddebug353, ptr noundef %7, ptr noundef nonnull @.str.44) #12
  br label %emac_reset.exit

emac_reset.exit:                                  ; preds = %if.then.i, %do.body3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 16777216) #12, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 42949600) #12
  tail call fastcc void @emac_init_device(ptr noundef %dev)
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 12
  %17 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i.i = icmp eq i32 %18, %16
  br i1 %cmp.not.i.i, label %emac_reset.exit.netif_trans_update.exit_crit_edge, label %do.body5.i.i

emac_reset.exit.netif_trans_update.exit_crit_edge: ; preds = %emac_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %emac_reset.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %16, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %emac_reset.exit.netif_trans_update.exit_crit_edge
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #12
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @emac_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %membase = getelementptr i8, ptr %dev_id, i32 2360
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !194
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 88
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !195
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #12, !srcloc !194
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2364
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body10

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_interrupt.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_interrupt, %if.then16)) #12
          to label %if.end20 [label %if.then16], !srcloc !192

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %dev17 = getelementptr i8, ptr %dev_id, i32 2308
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_interrupt.__UNIQUE_ID_ddebug363, ptr noundef %11, ptr noundef nonnull @.str.49, i32 noundef %5) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.body10, %entry.if.end20_crit_edge
  %and21 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %land.lhs.true

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end20
  %emacrx_completed_flag = getelementptr i8, ptr %dev_id, i32 2376
  %12 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %emacrx_completed_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then23, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %emacrx_completed_flag, align 4
  tail call fastcc void @emac_rx(ptr noundef %dev_id)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %and26 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  %tx_fifo_stat.i = getelementptr i8, ptr %dev_id, i32 2372
  %15 = ptrtoint ptr %tx_fifo_stat.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_fifo_stat.i, align 4
  %17 = trunc i32 %and26 to i16
  %18 = xor i16 %17, -1
  %conv2.i = and i16 %16, %18
  store i16 %conv2.i, ptr %tx_fifo_stat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and26)
  %cmp.i = icmp eq i32 %and26, 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_packets.i, align 4
  %..i = select i1 %cmp.i, i32 2, i32 1
  %inc.i = add i32 %20, %..i
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and7.i = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.then28.emac_tx_done.exit_crit_edge, label %do.body.i

if.then28.emac_tx_done.exit_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %emac_tx_done.exit

do.body.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_tx_done.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_interrupt, %if.then12.i)) #12
          to label %emac_tx_done.exit [label %if.then12.i], !srcloc !192

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev13.i = getelementptr i8, ptr %dev_id, i32 2308
  %23 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_tx_done.__UNIQUE_ID_ddebug354, ptr noundef %24, ptr noundef nonnull @.str.74, i32 noundef %5) #12
  br label %emac_tx_done.exit

emac_tx_done.exit:                                ; preds = %if.then12.i, %do.body.i, %if.then28.emac_tx_done.exit_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %26) #12
  br label %if.end29

if.end29:                                         ; preds = %emac_tx_done.exit, %if.end25.if.end29_crit_edge
  %and30 = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_id, ptr noundef nonnull @.str.50, i32 noundef %5) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %emacrx_completed_flag34 = getelementptr i8, ptr %dev_id, i32 2376
  %27 = ptrtoint ptr %emacrx_completed_flag34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %emacrx_completed_flag34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp35 = icmp eq i32 %28, 1
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr40 = getelementptr i8, ptr %30, i32 84
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %32 = or i32 %31, 251723776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %add.ptr48 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %32) #12, !srcloc !194
  br label %if.end62

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %35 = or i32 %31, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr61 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %35) #12, !srcloc !194
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then36
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_init_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %membase.i = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  %3 = and i32 %2, -65537
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  %speed.i = getelementptr i8, ptr %dev, i32 2388
  %5 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %6)
  %cmp.i = icmp eq i32 %6, 100
  %or.i = or i32 %4, 256
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #12, !srcloc !194
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %11, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  %13 = and i32 %12, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %duplex.i = getelementptr i8, ptr %dev, i32 2392
  %15 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp ne i32 %16, 0
  %or.i42 = zext i1 %tobool.not.i to i32
  %spec.select.i43 = or i32 %14, %or.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i43) #12
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i44 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i44, i32 %17) #12, !srcloc !194
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %23 = or i32 %22, 117440512
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #12, !srcloc !194
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %add.ptr19 = getelementptr i8, ptr %27, i32 84
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  %29 = or i32 %28, 251723776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i, align 4
  %add.ptr28 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %29) #12, !srcloc !194
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %membase = getelementptr i8, ptr %dev, i32 2360
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %dev9 = getelementptr i8, ptr %dev, i32 2308
  %emacrx_completed_flag = getelementptr i8, ptr %dev, i32 2376
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %rx_chan = getelementptr i8, ptr %dev, i32 2400
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %stats341 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  %4 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !195
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.if.end10_crit_edge, label %do.body

while.cond.if.end10_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then8)) #12
          to label %if.end10 [label %if.then8], !srcloc !192

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug355, ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %5) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %while.cond.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end35_crit_edge

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then12:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %emacrx_completed_flag, align 4
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 84
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %14 = or i32 %13, 251723776
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr24 = getelementptr i8, ptr %16, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #12, !srcloc !194
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr28 = getelementptr i8, ptr %18, i32 80
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool32.not = icmp eq i32 %19, 0
  br i1 %tobool32.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end35_crit_edge

if.then12.if.end35_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.then12.if.end35_crit_edge, %if.end10.if.end35_crit_edge
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 76
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #12, !srcloc !195
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and44 = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end35.if.end64_crit_edge, label %do.body47

if.end35.if.end64_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

do.body47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then59)) #12
          to label %if.end64 [label %if.then59], !srcloc !192

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug356, ptr noundef %27, ptr noundef nonnull @.str.53, i32 noundef %23) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %do.body47, %if.end35.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296122625, i32 %22)
  %cmp.not = icmp eq i32 %22, 1296122625
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  br i1 %cmp.not, label %if.end131, label %if.then65

if.then65:                                        ; preds = %if.end64
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  call void @arm_heavy_mb() #12
  %31 = and i32 %30, -67108865
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #12, !srcloc !194
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr82 = getelementptr i8, ptr %35, i32 60
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  call void @arm_heavy_mb() #12
  %37 = or i32 %36, 134217728
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr91 = getelementptr i8, ptr %39, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %37) #12, !srcloc !194
  br label %do.body92

do.body92:                                        ; preds = %do.body92.do.body92_crit_edge, %if.then65
  %40 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase, align 4
  %add.ptr96 = getelementptr i8, ptr %41, i32 60
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  %43 = and i32 %42, 134217728
  %tobool102.not = icmp eq i32 %43, 0
  br i1 %tobool102.not, label %do.end103, label %do.body92.do.body92_crit_edge

do.body92.do.body92_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body92

do.end103:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  call void @arm_heavy_mb() #12
  %47 = or i32 %46, 67108864
  %48 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #12, !srcloc !194
  %50 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase, align 4
  %add.ptr120 = getelementptr i8, ptr %51, i32 84
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  %53 = or i32 %52, 251723776
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %membase, align 4
  %add.ptr129 = getelementptr i8, ptr %55, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %53) #12, !srcloc !194
  %56 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %emacrx_completed_flag, align 4
  br label %cleanup

if.end131:                                        ; preds = %if.end64
  %add.ptr135 = getelementptr i8, ptr %29, i32 76
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #12, !srcloc !195
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %59 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_enable, align 4
  %and140 = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end131.if.end160_crit_edge, label %do.body143

if.end131.if.end160_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

do.body143:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then155)) #12
          to label %if.end160 [label %if.then155], !srcloc !192

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug357, ptr noundef %62, ptr noundef nonnull @.str.54, i32 noundef %58) #12
  br label %if.end160

if.end160:                                        ; preds = %if.then155, %do.body143, %if.end131.if.end160_crit_edge
  %and161 = and i32 %58, 65535
  %shr = lshr i32 %58, 16
  %63 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable, align 4
  %and164 = and i32 %64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end160.if.end184_crit_edge, label %do.body167

if.end160.if.end184_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

do.body167:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then179)) #12
          to label %if.end184 [label %if.then179], !srcloc !192

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug358, ptr noundef %66, ptr noundef nonnull @.str.55, i32 noundef %shr, i32 noundef %and161) #12
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %do.body167, %if.end160.if.end184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and161)
  %cmp185 = icmp ult i32 %and161, 64
  br i1 %cmp185, label %if.then186, label %if.end209.thread

if.then186:                                       ; preds = %if.end184
  %67 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable, align 4
  %and188 = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.then186.if.end209_crit_edge, label %do.body191

if.then186.if.end209_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

do.body191:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then203)) #12
          to label %if.end209 [label %if.then203], !srcloc !192

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug359, ptr noundef %70, ptr noundef nonnull @.str.56) #12
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %do.body191, %if.then186.if.end209_crit_edge
  %71 = and i32 %58, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool211.not = icmp eq i32 %71, 0
  br i1 %tobool211.not, label %if.end209.if.then220_crit_edge, label %if.end209.while.cond.backedge_crit_edge, !prof !261

if.end209.while.cond.backedge_crit_edge:          ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end209.if.then220_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then220

if.end209.thread:                                 ; preds = %if.end184
  %72 = and i32 %58, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool211.not473 = icmp eq i32 %72, 0
  br i1 %tobool211.not473, label %if.end209.thread.if.then220_crit_edge, label %if.then277, !prof !261

if.end209.thread.if.then220_crit_edge:            ; preds = %if.end209.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then220

if.then220:                                       ; preds = %if.end209.thread.if.then220_crit_edge, %if.end209.if.then220_crit_edge
  %73 = and i32 %58, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool222.not = icmp eq i32 %73, 0
  br i1 %tobool222.not, label %if.then220.if.end246_crit_edge, label %if.then223

if.then220.if.end246_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end246

if.then223:                                       ; preds = %if.then220
  %74 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable, align 4
  %and225 = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.then223.if.end245_crit_edge, label %do.body228

if.then223.if.end245_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

do.body228:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then240)) #12
          to label %if.end245 [label %if.then240], !srcloc !192

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug360, ptr noundef %77, ptr noundef nonnull @.str.57) #12
  br label %if.end245

if.end245:                                        ; preds = %if.then240, %do.body228, %if.then223.if.end245_crit_edge
  %78 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_crc_errors, align 8
  %inc = add i32 %79, 1
  store i32 %inc, ptr %rx_crc_errors, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.then220.if.end246_crit_edge
  %80 = and i32 %58, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool248.not = icmp eq i32 %80, 0
  br i1 %tobool248.not, label %if.end246.while.cond.backedge_crit_edge, label %if.then249

if.end246.while.cond.backedge_crit_edge:          ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then249:                                       ; preds = %if.end246
  %81 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable, align 4
  %and251 = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and251)
  %tobool252.not = icmp eq i32 %and251, 0
  br i1 %tobool252.not, label %if.then249.while.cond.backedge.sink.split_crit_edge, label %do.body254

if.then249.while.cond.backedge.sink.split_crit_edge: ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge.sink.split

do.body254:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then266)) #12
          to label %while.cond.backedge.sink.split [label %if.then266], !srcloc !192

if.then266:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug361, ptr noundef %84, ptr noundef nonnull @.str.58) #12
  br label %while.cond.backedge.sink.split

if.then277:                                       ; preds = %if.end209.thread
  %add = add nuw nsw i32 %and161, 4
  %call.i = call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add, i32 noundef 2592) #12
  %tobool279.not = icmp eq ptr %call.i, null
  br i1 %tobool279.not, label %if.then277.while.cond.backedge_crit_edge, label %if.end281

if.then277.while.cond.backedge_crit_edge:         ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end281:                                        ; preds = %if.then277
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i, align 4
  %add.ptr.i459 = getelementptr i8, ptr %86, i32 2
  store ptr %add.ptr.i459, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %88, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub = add nsw i32 %and161, -4
  %call282 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #12
  %89 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable, align 4
  %and284 = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %if.end281.if.end304_crit_edge, label %do.body287

if.end281.if.end304_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end304

do.body287:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_rx.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_rx, %if.then299)) #12
          to label %if.end304 [label %if.then299], !srcloc !192

if.then299:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emac_rx.__UNIQUE_ID_ddebug362, ptr noundef %92, ptr noundef nonnull @.str.59, i32 noundef %and161) #12
  br label %if.end304

if.end304:                                        ; preds = %if.then299, %do.body287, %if.end281.if.end304_crit_edge
  %93 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and161, i32 %94)
  %cmp305.not = icmp ult i32 %and161, %94
  br i1 %cmp305.not, label %if.end304.if.end338_crit_edge, label %land.lhs.true

if.end304.if.end338_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end338

land.lhs.true:                                    ; preds = %if.end304
  %95 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_chan, align 4
  %tobool306.not = icmp eq ptr %96, null
  br i1 %tobool306.not, label %land.lhs.true.if.end338_crit_edge, label %if.then307

land.lhs.true.if.end338_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end338

if.then307:                                       ; preds = %land.lhs.true
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %add.ptr311 = getelementptr i8, ptr %98, i32 60
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr311) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  %100 = or i32 %99, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase, align 4
  %add.ptr320 = getelementptr i8, ptr %102, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 %100) #12, !srcloc !194
  %103 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev9, align 4
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %call282) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then307
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !264

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %104) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %104, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %108, %if.end.i.i.i ], [ %106, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.72, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %109 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev9, align 4
  call void @debug_dma_mapping_error(ptr noundef %110, i32 noundef -1) #12
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then307
  call void @debug_dma_map_single(ptr noundef %104, ptr noundef %call282, i32 noundef %and161) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %111 = load ptr, ptr @mem_map, align 4
  %112 = ptrtoint ptr %call282 to i32
  %sub.i.i = add i32 %112, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %111, i32 %shr.i.i
  %and.i.i = and i32 %112, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %104, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %and161, i32 noundef 2, i32 noundef 0) #12
  %113 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev9, align 4
  call void @debug_dma_mapping_error(ptr noundef %114, i32 noundef %call41.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %115 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.60) #15
  br label %if.end324

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %117 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_chan, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #12
  %119 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #12
  %120 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call41.i.i, ptr %0, align 4
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and161, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i, label %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %118, align 4
  %tobool1.not.i.i = icmp eq ptr %123, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 39
  %124 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %125, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #12
  br label %do.end9.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i62.i = call ptr %125(ptr noundef nonnull %118, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #12
  %tobool5.not.i = icmp eq ptr %call.i62.i, null
  br i1 %tobool5.not.i, label %dmaengine_prep_slave_single.exit.i.do.end9.i_crit_edge, label %if.end11.i

dmaengine_prep_slave_single.exit.i.do.end9.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %dmaengine_prep_slave_single.exit.i.do.end9.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %126 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.63) #15
  br label %prepare_err.i

if.end11.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %128 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 2848, i32 noundef 20) #16
  %tobool.not.i64.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i64.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.66) #15
  br label %alloc_req_err.i

if.end19.i:                                       ; preds = %if.end11.i
  %131 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr.i, ptr %call7.i.i.i.i, align 8
  %desc2.i.i = getelementptr inbounds %struct.emac_dma_req, ptr %call7.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i62.i, ptr %desc2.i.i, align 4
  %skb3.i.i = getelementptr inbounds %struct.emac_dma_req, ptr %call7.i.i.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %skb3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i, ptr %skb3.i.i, align 8
  %rxbuf4.i.i = getelementptr inbounds %struct.emac_dma_req, ptr %call7.i.i.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %rxbuf4.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call41.i.i, ptr %rxbuf4.i.i, align 4
  %count5.i.i = getelementptr inbounds %struct.emac_dma_req, ptr %call7.i.i.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %count5.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and161, ptr %count5.i.i, align 8
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 8
  %136 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i.i.i, ptr %callback_param.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 6
  %137 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @emac_dma_done_callback, ptr %callback.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 4
  %138 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i66.i = call i32 %139(ptr noundef nonnull %call.i62.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i66.i)
  %tobool22.not.i = icmp sgt i32 %call.i66.i, -1
  br i1 %tobool22.not.i, label %emac_dma_inblk_32bit.exit, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.69) #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %alloc_req_err.i

alloc_req_err.i:                                  ; preds = %do.end26.i, %do.end17.i
  %flags.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 1
  %142 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %143, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %alloc_req_err.i.prepare_err.i_crit_edge, label %if.end.i67.i

alloc_req_err.i.prepare_err.i_crit_edge:          ; preds = %alloc_req_err.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_err.i

if.end.i67.i:                                     ; preds = %alloc_req_err.i
  call void @__sanitizer_cov_trace_pc() #14
  %desc_free.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 5
  %144 = ptrtoint ptr %desc_free.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %desc_free.i.i, align 4
  %call1.i.i = call i32 %145(ptr noundef nonnull %call.i62.i) #12
  br label %prepare_err.i

prepare_err.i:                                    ; preds = %if.end.i67.i, %alloc_req_err.i.prepare_err.i_crit_edge, %do.end9.i
  %146 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev9, align 4
  call void @dma_unmap_page_attrs(ptr noundef %147, i32 noundef %call41.i.i, i32 noundef %and161, i32 noundef 2, i32 noundef 0) #12
  br label %if.end324

emac_dma_inblk_32bit.exit:                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rx_chan, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %151, i32 0, i32 50
  %152 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %153(ptr noundef %149) #12
  br label %cleanup

if.end324:                                        ; preds = %prepare_err.i, %do.end.i
  %154 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %membase, align 4
  %add.ptr328 = getelementptr i8, ptr %155, i32 60
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr328) #12, !srcloc !195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  %157 = and i32 %156, -67108865
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  call void @arm_heavy_mb() #12
  %158 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %membase, align 4
  %add.ptr337 = getelementptr i8, ptr %159, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr337, i32 %157) #12, !srcloc !194
  br label %if.end338

if.end338:                                        ; preds = %if.end324, %land.lhs.true.if.end338_crit_edge, %if.end304.if.end338_crit_edge
  %160 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %membase, align 4
  %add.ptr340 = getelementptr i8, ptr %161, i32 76
  %sub.i = add nsw i32 %and161, -1
  %or.i = or i32 %sub.i, 3
  %add.i = add nsw i32 %or.i, 1
  %div.i = sdiv i32 %add.i, 4
  call void @__raw_readsl(ptr noundef %add.ptr340, ptr noundef %call282, i32 noundef %div.i) #12
  %162 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rx_bytes, align 8
  %add342 = add i32 %163, %and161
  store i32 %add342, ptr %rx_bytes, align 8
  %call343 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %164 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %call343, ptr %protocol, align 8
  %call344 = call i32 @netif_rx(ptr noundef nonnull %call.i) #12
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.end338, %if.then266, %do.body254, %if.then249.while.cond.backedge.sink.split_crit_edge
  %stats341.sink474 = phi ptr [ %stats341, %if.end338 ], [ %rx_length_errors, %do.body254 ], [ %rx_length_errors, %if.then266 ], [ %rx_length_errors, %if.then249.while.cond.backedge.sink.split_crit_edge ]
  %165 = ptrtoint ptr %stats341.sink474 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %stats341.sink474, align 8
  %inc346 = add i32 %166, 1
  store i32 %inc346, ptr %stats341.sink474, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %if.then277.while.cond.backedge_crit_edge, %if.end246.while.cond.backedge_crit_edge, %if.end209.while.cond.backedge_crit_edge
  br label %while.cond

cleanup:                                          ; preds = %emac_dma_inblk_32bit.exit, %do.end103, %if.then12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_dma_done_callback(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %skb2 = getelementptr inbounds %struct.emac_dma_req, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %ndev = getelementptr inbounds %struct.emac_board_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %count = getelementptr inbounds %struct.emac_dma_req, ptr %arg, i32 0, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %dev3 = getelementptr inbounds %struct.emac_board_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %rxbuf = getelementptr inbounds %struct.emac_dma_req, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxbuf, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef %7, i32 noundef 2, i32 noundef 0) #12
  %call = tail call zeroext i16 @eth_type_trans(ptr noundef %3, ptr noundef %5) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call, ptr %protocol, align 8
  %call4 = tail call i32 @netif_rx(ptr noundef %3) #12
  %stats = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 2
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %14, %7
  store i32 %add, ptr %rx_bytes, align 8
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %stats, align 8
  %membase = getelementptr inbounds %struct.emac_board_info, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %20 = and i32 %19, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %22, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %20) #12, !srcloc !194
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %24, i32 84
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  %26 = or i32 %25, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr21 = getelementptr i8, ptr %28, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %26) #12, !srcloc !194
  %emacrx_completed_flag = getelementptr inbounds %struct.emac_board_info, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %emacrx_completed_flag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %emacrx_completed_flag, align 4
  tail call void @kfree(ptr noundef %arg) #12
  ret void
}

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
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_handle_link_change(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
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
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then:                                          ; preds = %entry
  %speed = getelementptr i8, ptr %dev, i32 2388
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %speed2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.body4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %8 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed2, align 8
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %speed, align 4
  %membase.i = getelementptr i8, ptr %dev, i32 2360
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %12, i32 116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  %14 = and i32 %13, -65537
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %cmp.i = icmp eq i32 %17, 100
  %or.i = or i32 %15, 256
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %20, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %18) #12, !srcloc !194
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  br label %if.end

if.end:                                           ; preds = %do.body4, %if.then.if.end_crit_edge
  %status_change.0 = phi i32 [ 1, %do.body4 ], [ 0, %if.then.if.end_crit_edge ]
  %duplex = getelementptr i8, ptr %dev, i32 2392
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %duplex, align 4
  %duplex13 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %duplex13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %duplex13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp14.not = icmp eq i32 %22, %24
  br i1 %cmp14.not, label %if.end.if.end35_crit_edge, label %if.end35.thread

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %if.end.if.end35_crit_edge, %entry.if.end35_crit_edge
  %status_change.1 = phi i32 [ %status_change.0, %if.end.if.end35_crit_edge ], [ 0, %entry.if.end35_crit_edge ]
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load37 = load i16, ptr %link, align 8
  %bf.lshr38 = lshr i16 %bf.load37, 2
  %bf.clear39 = and i16 %bf.lshr38, 1
  %bf.cast40 = zext i16 %bf.clear39 to i32
  %link41 = getelementptr i8, ptr %dev, i32 2384
  %26 = ptrtoint ptr %link41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %bf.cast40)
  %cmp42.not = icmp eq i32 %27, %bf.cast40
  br i1 %cmp42.not, label %if.end61, label %if.end35.if.then44_crit_edge

if.end35.if.then44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

if.end35.thread:                                  ; preds = %if.end
  %lock24 = getelementptr i8, ptr %dev, i32 2316
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock24) #12
  %28 = ptrtoint ptr %duplex13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %duplex13, align 4
  %30 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %duplex, align 4
  %membase.i89 = getelementptr i8, ptr %dev, i32 2360
  %31 = ptrtoint ptr %membase.i89 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %32, i32 96
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #12, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  %34 = and i32 %33, -16777217
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp ne i32 %37, 0
  %or.i91 = zext i1 %tobool.not.i to i32
  %spec.select.i92 = or i32 %35, %or.i91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i92) #12
  %39 = ptrtoint ptr %membase.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i89, align 4
  %add.ptr4.i93 = getelementptr i8, ptr %40, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i93, i32 %38) #12, !srcloc !194
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call26) #12
  %41 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load3797 = load i16, ptr %link, align 8
  %bf.lshr3898 = lshr i16 %bf.load3797, 2
  %bf.clear3999 = and i16 %bf.lshr3898, 1
  %bf.cast40100 = zext i16 %bf.clear3999 to i32
  %link41101 = getelementptr i8, ptr %dev, i32 2384
  %42 = ptrtoint ptr %link41101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %link41101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %bf.cast40100)
  %cmp42.not102 = icmp eq i32 %43, %bf.cast40100
  br i1 %cmp42.not102, label %if.end35.thread.if.then63_crit_edge, label %if.end35.thread.if.then44_crit_edge

if.end35.thread.if.then44_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

if.end35.thread.if.then63_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

if.then44:                                        ; preds = %if.end35.thread.if.then44_crit_edge, %if.end35.if.then44_crit_edge
  %link41105 = phi ptr [ %link41101, %if.end35.thread.if.then44_crit_edge ], [ %link41, %if.end35.if.then44_crit_edge ]
  %bf.clear39104 = phi i16 [ %bf.clear3999, %if.end35.thread.if.then44_crit_edge ], [ %bf.clear39, %if.end35.if.then44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear39104)
  %tobool50.not = icmp eq i16 %bf.clear39104, 0
  br i1 %tobool50.not, label %if.then51, label %if.then44.if.end61.thread_crit_edge

if.then44.if.end61.thread_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.thread

if.then51:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %speed52 = getelementptr i8, ptr %dev, i32 2388
  %44 = ptrtoint ptr %speed52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %speed52, align 4
  %duplex53 = getelementptr i8, ptr %dev, i32 2392
  %45 = ptrtoint ptr %duplex53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %duplex53, align 4
  br label %if.end61.thread

if.end61.thread:                                  ; preds = %if.then51, %if.then44.if.end61.thread_crit_edge
  %46 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load56 = load i16, ptr %link, align 8
  %bf.lshr57 = lshr i16 %bf.load56, 2
  %bf.clear58 = and i16 %bf.lshr57, 1
  %bf.cast59 = zext i16 %bf.clear58 to i32
  %47 = ptrtoint ptr %link41105 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.cast59, ptr %link41105, align 4
  br label %if.then63

if.end61:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status_change.1)
  %tobool62.not = icmp eq i32 %status_change.1, 0
  br i1 %tobool62.not, label %if.end61.if.end64_crit_edge, label %if.end61.if.then63_crit_edge

if.end61.if.then63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then63:                                        ; preds = %if.end61.if.then63_crit_edge, %if.end61.thread, %if.end35.thread.if.then63_crit_edge
  tail call void @phy_print_status(ptr noundef %1) #12
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %init_name.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @emac_get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @emac_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !168, !169, !170, !172, !173, !174, !175, !177, !179, !180, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype349, !1, !"__UNIQUE_ID_debugtype349", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug350, !4, !"__UNIQUE_ID_debug350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 43, i32 1}
!5 = !{ptr @__param_watchdog, !6, !"__param_watchdog", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 47, i32 1}
!7 = !{ptr @__UNIQUE_ID_watchdogtype351, !6, !"__UNIQUE_ID_watchdogtype351", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_watchdog352, !9, !"__UNIQUE_ID_watchdog352", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 48, i32 1}
!10 = !{ptr @__initcall__kmod_sun4i_emac__367_1151_emac_driver_init6, !11, !"__initcall__kmod_sun4i_emac__367_1151_emac_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1151, i32 1}
!12 = !{ptr @__exitcall_emac_driver_exit, !11, !"__exitcall_emac_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author368, !14, !"__UNIQUE_ID_author368", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1153, i32 1}
!15 = !{ptr @__UNIQUE_ID_author369, !16, !"__UNIQUE_ID_author369", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1154, i32 1}
!17 = !{ptr @__UNIQUE_ID_description370, !18, !"__UNIQUE_ID_description370", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1155, i32 1}
!19 = !{ptr @__UNIQUE_ID_file371, !20, !"__UNIQUE_ID_file371", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1156, i32 1}
!21 = !{ptr @__UNIQUE_ID_license372, !20, !"__UNIQUE_ID_license372", i1 false, i1 false}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 41, i32 12}
!25 = !{ptr @__param_str_watchdog, !6, !"__param_str_watchdog", i1 false, i1 false}
!26 = !{ptr @watchdog, !27, !"watchdog", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 46, i32 12}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1142, i32 11}
!30 = !{ptr @emac_driver, !31, !"emac_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1140, i32 31}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 974, i32 3}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @emac_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @emac_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @emac_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 987, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 991, i32 3}
!45 = !{ptr @emac_probe._entry.7, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @emac_probe._entry_ptr.9, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1000, i32 20}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1006, i32 21}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1016, i32 3}
!53 = !{ptr @emac_probe._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @emac_probe._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1022, i32 3}
!57 = !{ptr @emac_probe._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @emac_probe._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1026, i32 38}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1028, i32 39}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1030, i32 3}
!65 = !{ptr @emac_probe._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @emac_probe._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1040, i32 3}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @emac_probe._entry.23, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @emac_probe._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1059, i32 3}
!74 = !{ptr @emac_probe._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @emac_probe._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1064, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @emac_probe._entry.30, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @emac_probe._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1079, i32 2}
!83 = !{ptr @emac_probe._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @emac_probe._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 921, i32 20}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 926, i32 20}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 930, i32 45}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 933, i32 7}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 948, i32 20}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 200, i32 2}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @emac_reset.__UNIQUE_ID_ddebug353, !96, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!100 = !{ptr @emac_netdev_ops, !101, !"emac_netdev_ops", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 897, i32 36}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 833, i32 3}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @emac_open.__UNIQUE_ID_ddebug364, !103, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 845, i32 19}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 780, i32 3}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @emac_interrupt.__UNIQUE_ID_ddebug363, !109, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 794, i32 20}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 635, i32 4}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @emac_rx.__UNIQUE_ID_ddebug355, !115, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 653, i32 4}
!120 = !{ptr @emac_rx.__UNIQUE_ID_ddebug356, !119, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 690, i32 4}
!123 = !{ptr @emac_rx.__UNIQUE_ID_ddebug357, !122, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 696, i32 4}
!126 = !{ptr @emac_rx.__UNIQUE_ID_ddebug358, !125, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 703, i32 5}
!129 = !{ptr @emac_rx.__UNIQUE_ID_ddebug359, !128, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 711, i32 6}
!132 = !{ptr @emac_rx.__UNIQUE_ID_ddebug360, !131, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 717, i32 6}
!135 = !{ptr @emac_rx.__UNIQUE_ID_ddebug361, !134, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 732, i32 5}
!138 = !{ptr @emac_rx.__UNIQUE_ID_ddebug362, !137, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 286, i32 3}
!141 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @emac_dma_inblk_32bit._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @emac_dma_inblk_32bit._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 294, i32 3}
!146 = !{ptr @emac_dma_inblk_32bit._entry.62, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @emac_dma_inblk_32bit._entry_ptr.64, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 301, i32 3}
!150 = !{ptr @emac_dma_inblk_32bit._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @emac_dma_inblk_32bit._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 312, i32 3}
!154 = !{ptr @emac_dma_inblk_32bit._entry.68, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @emac_dma_inblk_32bit._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 610, i32 3}
!162 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @emac_tx_done.__UNIQUE_ID_ddebug354, !161, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 179, i32 24}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 881, i32 3}
!168 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @emac_stop.__UNIQUE_ID_ddebug365, !167, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 522, i32 3}
!172 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @emac_timeout._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @emac_timeout._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @emac_ethtool_ops, !176, !"emac_ethtool_ops", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 352, i32 33}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1103, i32 2}
!179 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @emac_remove.__UNIQUE_ID_ddebug366, !178, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!181 = !{ptr @emac_of_match, !182, !"emac_of_match", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/allwinner/sun4i-emac.c", i32 1130, i32 34}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2148748822, i64 2148748827, i64 2148748840, i64 2148748884, i64 2148748918, i64 2148748939}
!193 = !{i64 2156934088}
!194 = !{i64 6101476}
!195 = !{i64 6101894}
!196 = !{i64 2156934765}
!197 = !{i64 2156934993}
!198 = !{i64 2156935688}
!199 = !{i64 2156935943}
!200 = !{i64 2156853737}
!201 = !{i64 2156854695}
!202 = !{i64 2156871008}
!203 = !{i64 2156871245}
!204 = !{i64 2156872476}
!205 = !{i64 2156872714}
!206 = !{i64 2156873409}
!207 = !{i64 2156873661}
!208 = !{i64 2156874075}
!209 = !{i64 2156874475}
!210 = !{i64 2156875152}
!211 = !{i64 2156875380}
!212 = !{i64 2156864981}
!213 = !{i64 2156865229}
!214 = !{i64 2156865957}
!215 = !{i64 2156866225}
!216 = !{i64 2156866986}
!217 = !{i64 2156867241}
!218 = !{i64 2156867665}
!219 = !{i64 2156868110}
!220 = !{i64 2156868606}
!221 = !{i64 2156869078}
!222 = !{i64 2156876404}
!223 = !{i64 2156877102}
!224 = !{i64 2156885271}
!225 = !{i64 2156886870}
!226 = !{i64 2156887785}
!227 = !{i64 2156889203}
!228 = !{i64 2156890118}
!229 = !{i64 2156869770}
!230 = !{i64 2156870136}
!231 = !{i64 2156879088}
!232 = !{i64 2156879774}
!233 = !{i64 2156925682}
!234 = !{i64 2156926359}
!235 = !{i64 2156926590}
!236 = !{i64 2156930250}
!237 = !{i64 2156931306}
!238 = !{i64 2156849216}
!239 = !{i64 2156849470}
!240 = !{i64 2156850165}
!241 = !{i64 2156850411}
!242 = !{i64 2156881020}
!243 = !{i64 2156881308}
!244 = !{i64 2156882102}
!245 = !{i64 2156882472}
!246 = !{i64 2156893075}
!247 = !{i64 2156895964}
!248 = !{i64 2156896334}
!249 = !{i64 2156897029}
!250 = !{i64 2156897534}
!251 = !{i64 2156900499}
!252 = !{i64 2156900749}
!253 = !{i64 2156901483}
!254 = !{i64 2156901722}
!255 = !{i64 2156902450}
!256 = !{i64 2156902955}
!257 = !{i64 2156903203}
!258 = !{i64 2156903931}
!259 = !{i64 2156904301}
!260 = !{i64 2156904996}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{i64 2156924094}
!263 = !{i64 2156924331}
!264 = !{!"branch_weights", i32 2000, i32 1}
!265 = !{i64 2156925026}
!266 = !{i64 2156925263}
!267 = !{i64 2156856541}
!268 = !{i64 2156856778}
!269 = !{i64 2156857473}
!270 = !{i64 2156857710}
