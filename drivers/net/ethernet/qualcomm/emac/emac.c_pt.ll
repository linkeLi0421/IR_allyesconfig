; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/emac/emac.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/emac/emac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.emac_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.emac_sgmii, %struct.emac_stats, %struct.emac_irq, [7 x ptr], %struct.emac_ring_header, %struct.emac_tx_queue, %struct.emac_rx_queue, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, i16, %struct.mutex }
%struct.emac_sgmii = type { ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.emac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.spinlock }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.emac_irq = type { i32, i32 }
%struct.emac_ring_header = type { ptr, i32, i32, i32 }
%struct.emac_tx_queue = type { %struct.emac_tpd_ring, i32, i32, i16, i16, i16, i8, i8 }
%struct.emac_tpd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.emac_rx_queue = type { ptr, %struct.emac_rrd_ring, %struct.emac_rfd_ring, %struct.napi_struct, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8 }
%struct.emac_rrd_ring = type { ptr, i32, i32, i32, i32, i32 }
%struct.emac_rfd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_qcom_emac__352_770_emac_platform_driver_init6 = internal global ptr @emac_platform_driver_init, section ".initcall6.init", align 4
@emac_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @emac_probe, ptr @emac_remove, ptr @emac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @emac_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_emac_platform_driver_exit = internal global ptr @emac_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file353 = internal constant [60 x i8] c"qcom_emac.file=drivers/net/ethernet/qualcomm/emac/qcom-emac\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [25 x i8] c"qcom_emac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias355 = internal constant [35 x i8] c"qcom_emac.alias=platform:qcom-emac\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-emac\00", [22 x i8] zeroinitializer }, align 32
@emac_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,fsm9900-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@emac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emac_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qualcomm/emac/emac.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr = internal global ptr @emac_probe._entry, section ".printk_index", align 4
@emac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adpt->reset_lock\00", [46 x i8] zeroinitializer }, align 32
@emac_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adpt->stats.lock\00", [46 x i8] zeroinitializer }, align 32
@emac_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not initialize clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.11 = internal global ptr @emac_probe._entry.9, section ".printk_index", align 4
@emac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @emac_open, ptr @emac_close, ptr @emac_start_xmit, ptr null, ptr null, ptr null, ptr @emac_rx_mode_set, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @emac_change_mtu, ptr null, ptr @emac_tx_timeout, ptr @emac_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@emac_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 663, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.13 = internal global ptr @emac_probe._entry.12, section ".printk_index", align 4
@emac_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&adpt->work_thread)\00", [58 x i8] zeroinitializer }, align 32
@emac_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register net device\0A\00", [33 x i8] zeroinitializer }, align 32
@emac_probe._entry_ptr.18 = internal global ptr @emac_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"hardware id %d.%d, hardware version %d.%d.%d\0A\00", [50 x i8] zeroinitializer }, align 32
@emac_clks_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not claim clock %s (error=%li)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emac_clks_get\00", [18 x i8] zeroinitializer }, align 32
@emac_clks_get._entry_ptr = internal global ptr @emac_clks_get._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cfg_ahb_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"high_speed_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdio_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emac-core0\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not request emac-core0 irq\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error allocating rx/tx rings\0A\00", [34 x i8] zeroinitializer }, align 32
@emac_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: error interrupt 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emac_isr\00", [23 x i8] zeroinitializer }, align 32
@emac_isr._entry_ptr = internal global ptr @emac_isr._entry, section ".printk_index", align 4
@emac_isr._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: TX/RX overflow interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@emac_isr._entry_ptr.36 = internal global ptr @emac_isr._entry.34, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@emac_change_mtu.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_emac\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emac_change_mtu\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"changing MTU from %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"emac_platform_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 759, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 763, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"emac_dt_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 575, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 608, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 627, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 628, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 639, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"emac_netdev_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 373, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 663, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 682, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 692, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 701, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 443, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 46 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 58 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 70, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 70, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 235, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 237, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 244, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 144, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 164, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [45 x i8] c"../drivers/net/ethernet/qualcomm/emac/emac.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 217, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias355, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_emac_platform_driver_exit, ptr @__initcall__kmod_qcom_emac__352_770_emac_platform_driver_init6, ptr @emac_clks_get._entry, ptr @emac_clks_get._entry_ptr, ptr @emac_isr._entry, ptr @emac_isr._entry.34, ptr @emac_isr._entry_ptr, ptr @emac_isr._entry_ptr.36, ptr @emac_platform_driver_exit, ptr @emac_probe._entry, ptr @emac_probe._entry.12, ptr @emac_probe._entry.16, ptr @emac_probe._entry.9, ptr @emac_probe._entry_ptr, ptr @emac_probe._entry_ptr.11, ptr @emac_probe._entry_ptr.13, ptr @emac_probe._entry_ptr.18, ptr @emac_platform_driver, ptr @.str, ptr @emac_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @emac_probe.__key, ptr @.str.6, ptr @emac_probe.__key.7, ptr @.str.8, ptr @.str.10, ptr @emac_netdev_ops, ptr @emac_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_clks_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_isr._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_reg_update32(ptr noundef %addr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !96
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %or = or i32 %and, %val
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %2) #7, !srcloc !99
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_reinit_locked(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_lock = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #7
  tail call void @emac_mac_down(ptr noundef %adpt) #7
  tail call void @emac_sgmii_reset(ptr noundef %adpt) #7
  %call = tail call i32 @emac_mac_up(ptr noundef %adpt) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_sgmii_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_mac_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_update_hw_stats(ptr nocapture noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 6
  %base3 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 3
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base3, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %stats_itr.054 = phi ptr [ %stats1, %entry ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %addr.053 = phi i32 [ 5888, %entry ], [ %add4, %while.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 %addr.053
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %stats_itr.054 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %stats_itr.054, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %stats_itr.054, align 8
  %incdec.ptr = getelementptr i64, ptr %stats_itr.054, i32 1
  %add4 = add nuw nsw i32 %addr.053, 4
  %cmp = icmp ult i32 %addr.053, 5973
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %add.ptr6 = getelementptr i8, ptr %1, i32 7112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !96
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %conv9 = zext i32 %7 to i64
  %rx_crc_align = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 6, i32 23
  %8 = ptrtoint ptr %rx_crc_align to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_crc_align, align 8
  %add10 = add i64 %9, %conv9
  store i64 %add10, ptr %rx_crc_align, align 8
  %add.ptr12 = getelementptr i8, ptr %1, i32 7116
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !96
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv15 = zext i32 %11 to i64
  %rx_jabbers = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 6, i32 24
  %12 = ptrtoint ptr %rx_jabbers to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_jabbers, align 8
  %add16 = add i64 %13, %conv15
  store i64 %add16, ptr %rx_jabbers, align 8
  %tx_ok = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 6, i32 25
  br label %while.body20

while.body20:                                     ; preds = %while.body20.while.body20_crit_edge, %while.end
  %stats_itr.156 = phi ptr [ %tx_ok, %while.end ], [ %incdec.ptr27, %while.body20.while.body20_crit_edge ]
  %addr.155 = phi i32 [ 5984, %while.end ], [ %add28, %while.body20.while.body20_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %1, i32 %addr.155
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !96
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %conv25 = zext i32 %15 to i64
  %16 = ptrtoint ptr %stats_itr.156 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stats_itr.156, align 8
  %add26 = add i64 %17, %conv25
  store i64 %add26, ptr %stats_itr.156, align 8
  %incdec.ptr27 = getelementptr i64, ptr %stats_itr.156, i32 1
  %add28 = add nuw nsw i32 %addr.155, 4
  %cmp18 = icmp ult i32 %addr.155, 6077
  br i1 %cmp18, label %while.body20.while.body20_crit_edge, label %while.end29

while.body20.while.body20_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body20

while.end29:                                      ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31 = getelementptr i8, ptr %1, i32 7120
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !96
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv34 = zext i32 %19 to i64
  %tx_col = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 6, i32 50
  %20 = ptrtoint ptr %tx_col to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_col, align 8
  %add35 = add i64 %21, %conv34
  store i64 %add35, ptr %tx_col, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @emac_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emac_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @emac_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 70368744177663) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 70368744177663) #7
  %call2 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1120, i32 noundef 1, i32 noundef 1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %parent, align 8
  tail call void @emac_set_ethtool_ops(ptr noundef nonnull %call2) #7
  %add.ptr.i = getelementptr i8, ptr %call2, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %call2, i32 3328
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 63, ptr %msg_enable, align 8
  %decode_error_count = getelementptr i8, ptr %call2, i32 2336
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %decode_error_count, i32 noundef 4) #7
  %4 = ptrtoint ptr %decode_error_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %decode_error_count, align 4
  %reset_lock = getelementptr i8, ptr %call2, i32 3332
  tail call void @__mutex_init(ptr noundef %reset_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @emac_probe.__key) #7
  %lock = getelementptr i8, ptr %call2, i32 2752
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @emac_probe.__key.7, i16 noundef signext 3) #7
  %irq = getelementptr i8, ptr %call2, i32 2800
  %mask = getelementptr i8, ptr %call2, i32 2804
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 654428152, ptr %mask, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call.i170 = tail call i32 @device_get_ethdev_address(ptr noundef %dev, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i171

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i171:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #7
  %8 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #7
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr.i.i, align 1
  %11 = and i8 %10, -4
  %12 = or i8 %11, 2
  store i8 %12, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #7
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 55
  %13 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i171, %if.end5.if.end.i_crit_edge
  %call2.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i172 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i172, label %if.end.i.err_undo_netdev_crit_edge, label %if.end4.i

if.end.i.err_undo_netdev_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_undo_netdev

if.end4.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %irq, align 8
  %call6.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base.i = getelementptr i8, ptr %call2, i32 2316
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call6.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end4.i.emac_probe_resources.exit_crit_edge, label %if.end12.i

if.end4.i.emac_probe_resources.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_probe_resources.exit

if.end12.i:                                       ; preds = %if.end4.i
  %call13.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #7
  %csr.i = getelementptr i8, ptr %call2, i32 2320
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13.i, ptr %csr.i, align 8
  %cmp.i37.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %if.end12.i.emac_probe_resources.exit_crit_edge, label %emac_probe_resources.exit.thread

if.end12.i.emac_probe_resources.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_probe_resources.exit

emac_probe_resources.exit.thread:                 ; preds = %if.end12.i
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %base_addr.i, align 32
  %call.i.i173 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i173, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %emac_probe_resources.exit.thread.emac_clks_get.exit.i_crit_edge, label %for.inc.i.i

emac_probe_resources.exit.thread.emac_clks_get.exit.i_crit_edge: ; preds = %emac_probe_resources.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

emac_probe_resources.exit:                        ; preds = %if.end12.i.emac_probe_resources.exit_crit_edge, %if.end4.i.emac_probe_resources.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call6.i, %if.end4.i.emac_probe_resources.exit_crit_edge ], [ %call13.i, %if.end12.i.emac_probe_resources.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %err_undo_netdev

for.inc.i.i:                                      ; preds = %emac_probe_resources.exit.thread
  %arrayidx7.i.i = getelementptr i8, ptr %call2, i32 2808
  %21 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i173, ptr %arrayidx7.i.i, align 4
  %call.1.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  %cmp.i.1.i.i = icmp ugt ptr %call.1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.emac_clks_get.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.emac_clks_get.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx7.1.i.i = getelementptr i8, ptr %call2, i32 2812
  %22 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.1.i.i, ptr %arrayidx7.1.i.i, align 4
  %call.2.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  %cmp.i.2.i.i = icmp ugt ptr %call.2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i.i, label %for.inc.1.i.i.emac_clks_get.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.emac_clks_get.exit.i_crit_edge:     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx7.2.i.i = getelementptr i8, ptr %call2, i32 2816
  %23 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.2.i.i, ptr %arrayidx7.2.i.i, align 4
  %call.3.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.25) #7
  %cmp.i.3.i.i = icmp ugt ptr %call.3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i.i, label %for.inc.2.i.i.emac_clks_get.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.emac_clks_get.exit.i_crit_edge:     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx7.3.i.i = getelementptr i8, ptr %call2, i32 2820
  %24 = ptrtoint ptr %arrayidx7.3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.3.i.i, ptr %arrayidx7.3.i.i, align 4
  %call.4.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  %cmp.i.4.i.i = icmp ugt ptr %call.4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i.i, label %for.inc.3.i.i.emac_clks_get.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.emac_clks_get.exit.i_crit_edge:     ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx7.4.i.i = getelementptr i8, ptr %call2, i32 2824
  %25 = ptrtoint ptr %arrayidx7.4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.4.i.i, ptr %arrayidx7.4.i.i, align 4
  %call.5.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  %cmp.i.5.i.i = icmp ugt ptr %call.5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i.i, label %for.inc.4.i.i.emac_clks_get.exit.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.emac_clks_get.exit.i_crit_edge:     ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx7.5.i.i = getelementptr i8, ptr %call2, i32 2828
  %26 = ptrtoint ptr %arrayidx7.5.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.5.i.i, ptr %arrayidx7.5.i.i, align 4
  %call.6.i.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.28) #7
  %cmp.i.6.i.i = icmp ugt ptr %call.6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i.i, label %for.inc.5.i.i.emac_clks_get.exit.i_crit_edge, label %emac_clks_get.exit.thread.i

for.inc.5.i.i.emac_clks_get.exit.i_crit_edge:     ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emac_clks_get.exit.i

emac_clks_get.exit.thread.i:                      ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.6.i.i = getelementptr i8, ptr %call2, i32 2832
  %27 = ptrtoint ptr %arrayidx7.6.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.6.i.i, ptr %arrayidx7.6.i.i, align 4
  br label %if.end3.i

emac_clks_get.exit.i:                             ; preds = %for.inc.5.i.i.emac_clks_get.exit.i_crit_edge, %for.inc.4.i.i.emac_clks_get.exit.i_crit_edge, %for.inc.3.i.i.emac_clks_get.exit.i_crit_edge, %for.inc.2.i.i.emac_clks_get.exit.i_crit_edge, %for.inc.1.i.i.emac_clks_get.exit.i_crit_edge, %for.inc.i.i.emac_clks_get.exit.i_crit_edge, %emac_probe_resources.exit.thread.emac_clks_get.exit.i_crit_edge
  %.lcssa.i.i = phi ptr [ @.str.22, %emac_probe_resources.exit.thread.emac_clks_get.exit.i_crit_edge ], [ @.str.23, %for.inc.i.i.emac_clks_get.exit.i_crit_edge ], [ @.str.24, %for.inc.1.i.i.emac_clks_get.exit.i_crit_edge ], [ @.str.25, %for.inc.2.i.i.emac_clks_get.exit.i_crit_edge ], [ @.str.26, %for.inc.3.i.i.emac_clks_get.exit.i_crit_edge ], [ @.str.27, %for.inc.4.i.i.emac_clks_get.exit.i_crit_edge ], [ @.str.28, %for.inc.5.i.i.emac_clks_get.exit.i_crit_edge ]
  %call.lcssa.i.i = phi ptr [ %call.i.i173, %emac_probe_resources.exit.thread.emac_clks_get.exit.i_crit_edge ], [ %call.1.i.i, %for.inc.i.i.emac_clks_get.exit.i_crit_edge ], [ %call.2.i.i, %for.inc.1.i.i.emac_clks_get.exit.i_crit_edge ], [ %call.3.i.i, %for.inc.2.i.i.emac_clks_get.exit.i_crit_edge ], [ %call.4.i.i, %for.inc.3.i.i.emac_clks_get.exit.i_crit_edge ], [ %call.5.i.i, %for.inc.4.i.i.emac_clks_get.exit.i_crit_edge ], [ %call.6.i.i, %for.inc.5.i.i.emac_clks_get.exit.i_crit_edge ]
  %28 = ptrtoint ptr %call.lcssa.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %.lcssa.i.i, i32 noundef %28) #10
  %tobool.not.i174 = icmp eq ptr %call.lcssa.i.i, null
  br i1 %tobool.not.i174, label %emac_clks_get.exit.i.if.end3.i_crit_edge, label %emac_clks_get.exit.i.do.end28_crit_edge

emac_clks_get.exit.i.do.end28_crit_edge:          ; preds = %emac_clks_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

emac_clks_get.exit.i.if.end3.i_crit_edge:         ; preds = %emac_clks_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %emac_clks_get.exit.i.if.end3.i_crit_edge, %emac_clks_get.exit.thread.i
  %clk.i = getelementptr i8, ptr %call2, i32 2808
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i, align 8
  %call.i44.i = call i32 @clk_prepare(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.i.do.end28_crit_edge

if.end3.i.do.end28_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end.i.i:                                       ; preds = %if.end3.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end7.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i.i
  %arrayidx9.i = getelementptr i8, ptr %call2, i32 2812
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx9.i, align 4
  %call.i45.i = call i32 @clk_prepare(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool.not.i46.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool.not.i46.i, label %if.end.i49.i, label %if.end7.i.disable_clk_axi.i_crit_edge

if.end7.i.disable_clk_axi.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk_axi.i

if.end.i49.i:                                     ; preds = %if.end7.i
  %call1.i47.i = call i32 @clk_enable(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47.i)
  %tobool2.not.i48.i = icmp eq i32 %call1.i47.i, 0
  br i1 %tobool2.not.i48.i, label %if.end13.i, label %if.end.i49.i.disable_clk_axi.sink.split.i_crit_edge

if.end.i49.i.disable_clk_axi.sink.split.i_crit_edge: ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk_axi.sink.split.i

if.end13.i:                                       ; preds = %if.end.i49.i
  %arrayidx15.i = getelementptr i8, ptr %call2, i32 2816
  %33 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx15.i, align 8
  %call16.i = call i32 @clk_set_rate(ptr noundef %34, i32 noundef 19200000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i175, label %if.end13.i.disable_clk_cfg_ahb.i_crit_edge

if.end13.i.disable_clk_cfg_ahb.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk_cfg_ahb.i

if.end19.i175:                                    ; preds = %if.end13.i
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx15.i, align 8
  %call.i53.i = call i32 @clk_prepare(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool.not.i54.i, label %if.end.i57.i, label %if.end19.i175.disable_clk_cfg_ahb.i_crit_edge

if.end19.i175.disable_clk_cfg_ahb.i_crit_edge:    ; preds = %if.end19.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk_cfg_ahb.i

if.end.i57.i:                                     ; preds = %if.end19.i175
  %call1.i55.i = call i32 @clk_enable(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55.i)
  %tobool2.not.i56.i = icmp eq i32 %call1.i55.i, 0
  br i1 %tobool2.not.i56.i, label %if.end30, label %if.then3.i58.i

if.then3.i58.i:                                   ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %36) #7
  br label %disable_clk_cfg_ahb.i

disable_clk_cfg_ahb.i:                            ; preds = %if.then3.i58.i, %if.end19.i175.disable_clk_cfg_ahb.i_crit_edge, %if.end13.i.disable_clk_cfg_ahb.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.end13.i.disable_clk_cfg_ahb.i_crit_edge ], [ %call1.i55.i, %if.then3.i58.i ], [ %call.i53.i, %if.end19.i175.disable_clk_cfg_ahb.i_crit_edge ]
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.i, align 4
  call void @clk_disable(ptr noundef %38) #7
  br label %disable_clk_axi.sink.split.i

disable_clk_axi.sink.split.i:                     ; preds = %disable_clk_cfg_ahb.i, %if.end.i49.i.disable_clk_axi.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %38, %disable_clk_cfg_ahb.i ], [ %32, %if.end.i49.i.disable_clk_axi.sink.split.i_crit_edge ]
  %ret.1.ph.i = phi i32 [ %ret.0.i, %disable_clk_cfg_ahb.i ], [ %call1.i47.i, %if.end.i49.i.disable_clk_axi.sink.split.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink.i) #7
  br label %disable_clk_axi.i

disable_clk_axi.i:                                ; preds = %disable_clk_axi.sink.split.i, %if.end7.i.disable_clk_axi.i_crit_edge
  %ret.1.i = phi i32 [ %call.i45.i, %if.end7.i.disable_clk_axi.i_crit_edge ], [ %ret.1.ph.i, %disable_clk_axi.sink.split.i ]
  %39 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i, align 8
  call void @clk_disable(ptr noundef %40) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %disable_clk_axi.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink69.i = phi ptr [ %40, %disable_clk_axi.i ], [ %30, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %ret.1.i, %disable_clk_axi.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink69.i) #7
  br label %do.end28

do.end28:                                         ; preds = %cleanup.sink.split.i, %if.end3.i.do.end28_crit_edge, %emac_clks_get.exit.i.do.end28_crit_edge
  %retval.0.i176193 = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i44.i, %if.end3.i.do.end28_crit_edge ], [ %28, %emac_clks_get.exit.i.do.end28_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %err_undo_netdev

if.end30:                                         ; preds = %if.end.i57.i
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 115
  %41 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 500, ptr %watchdog_timeo, align 4
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 8
  %irq33 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 64
  %44 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %irq33, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 16
  %45 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @emac_netdev_ops, ptr %netdev_ops, align 8
  %rrd_size.i = getelementptr i8, ptr %call2, i32 3232
  %46 = ptrtoint ptr %rrd_size.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %rrd_size.i, align 8
  %tpd_size.i = getelementptr i8, ptr %call2, i32 3240
  %47 = ptrtoint ptr %tpd_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %tpd_size.i, align 8
  %rfd_size.i = getelementptr i8, ptr %call2, i32 3236
  %48 = ptrtoint ptr %rfd_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %rfd_size.i, align 4
  %tx_desc_cnt.i = getelementptr i8, ptr %call2, i32 3224
  %49 = ptrtoint ptr %tx_desc_cnt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 512, ptr %tx_desc_cnt.i, align 8
  %rx_desc_cnt.i = getelementptr i8, ptr %call2, i32 3228
  %50 = ptrtoint ptr %rx_desc_cnt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 256, ptr %rx_desc_cnt.i, align 4
  %dma_order.i = getelementptr i8, ptr %call2, i32 3272
  %51 = ptrtoint ptr %dma_order.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %dma_order.i, align 8
  %dmar_block.i = getelementptr i8, ptr %call2, i32 3264
  %52 = ptrtoint ptr %dmar_block.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %dmar_block.i, align 8
  %dmaw_block.i = getelementptr i8, ptr %call2, i32 3268
  %53 = ptrtoint ptr %dmaw_block.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dmaw_block.i, align 4
  %dmar_dly_cnt.i = getelementptr i8, ptr %call2, i32 3260
  %54 = ptrtoint ptr %dmar_dly_cnt.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 15, ptr %dmar_dly_cnt.i, align 4
  %dmaw_dly_cnt.i = getelementptr i8, ptr %call2, i32 3256
  %55 = ptrtoint ptr %dmaw_dly_cnt.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %dmaw_dly_cnt.i, align 8
  %tpd_burst.i = getelementptr i8, ptr %call2, i32 3252
  %56 = ptrtoint ptr %tpd_burst.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %tpd_burst.i, align 4
  %rfd_burst.i = getelementptr i8, ptr %call2, i32 3253
  %57 = ptrtoint ptr %rfd_burst.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 8, ptr %rfd_burst.i, align 1
  %irq_mod.i = getelementptr i8, ptr %call2, i32 3276
  %58 = ptrtoint ptr %irq_mod.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8192125, ptr %irq_mod.i, align 4
  %preamble.i = getelementptr i8, ptr %call2, i32 3280
  %59 = ptrtoint ptr %preamble.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 7, ptr %preamble.i, align 8
  %automatic.i = getelementptr i8, ptr %call2, i32 3248
  %60 = ptrtoint ptr %automatic.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %automatic.i, align 8
  %single_pause_mode.i = getelementptr i8, ptr %call2, i32 3251
  %61 = ptrtoint ptr %single_pause_mode.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %single_pause_mode.i, align 1
  %call34 = call i32 @emac_phy_config(ptr noundef %pdev, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end30.err_undo_clocks_crit_edge

if.end30.err_undo_clocks_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_undo_clocks

if.end37:                                         ; preds = %if.end30
  %call38 = call i32 @emac_sgmii_config(ptr noundef %pdev, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_undo_mdiobus_crit_edge

if.end37.err_undo_mdiobus_crit_edge:              ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_undo_mdiobus

if.end41:                                         ; preds = %if.end37
  %arrayidx.i = getelementptr i8, ptr %call2, i32 2824
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 8
  %call1.i177 = call i32 @clk_set_rate(ptr noundef %63, i32 noundef 125000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %tobool.not.i178 = icmp eq i32 %call1.i177, 0
  br i1 %tobool.not.i178, label %if.end3.i181, label %if.end41.do.end47_crit_edge

if.end41.do.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end3.i181:                                     ; preds = %if.end41
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i179 = call i32 @clk_prepare(ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %call.i.i179, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i184, label %if.end3.i181.do.end47_crit_edge

if.end3.i181.do.end47_crit_edge:                  ; preds = %if.end3.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end.i.i184:                                    ; preds = %if.end3.i181
  %call1.i.i182 = call i32 @clk_enable(ptr noundef %65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i182)
  %tobool2.not.i.i183 = icmp eq i32 %call1.i.i182, 0
  br i1 %tobool2.not.i.i183, label %if.end9.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %65) #7
  br label %do.end47

if.end9.i:                                        ; preds = %if.end.i.i184
  %66 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx15.i, align 8
  %call12.i = call i32 @clk_set_rate(ptr noundef %67, i32 noundef 125000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end9.i.do.end47_crit_edge

if.end9.i.do.end47_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end15.i:                                       ; preds = %if.end9.i
  %arrayidx17.i = getelementptr i8, ptr %call2, i32 2820
  %68 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx17.i, align 4
  %call18.i = call i32 @clk_set_rate(ptr noundef %69, i32 noundef 25000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.do.end47_crit_edge

if.end15.i.do.end47_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end21.i:                                       ; preds = %if.end15.i
  %70 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx17.i, align 4
  %call24.i = call fastcc i32 @clk_prepare_enable(ptr noundef %71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end21.i.do.end47_crit_edge

if.end21.i.do.end47_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

if.end27.i:                                       ; preds = %if.end21.i
  %arrayidx29.i = getelementptr i8, ptr %call2, i32 2828
  %72 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx29.i, align 4
  %call30.i = call fastcc i32 @clk_prepare_enable(ptr noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %emac_clks_phase2_init.exit, label %if.end27.i.do.end47_crit_edge

if.end27.i.do.end47_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

emac_clks_phase2_init.exit:                       ; preds = %if.end27.i
  %arrayidx35.i = getelementptr i8, ptr %call2, i32 2832
  %74 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx35.i, align 8
  %call36.i = call fastcc i32 @clk_prepare_enable(ptr noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool43.not = icmp eq i32 %call36.i, 0
  br i1 %tobool43.not, label %if.end49, label %emac_clks_phase2_init.exit.do.end47_crit_edge

emac_clks_phase2_init.exit.do.end47_crit_edge:    ; preds = %emac_clks_phase2_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end47:                                         ; preds = %emac_clks_phase2_init.exit.do.end47_crit_edge, %if.end27.i.do.end47_crit_edge, %if.end21.i.do.end47_crit_edge, %if.end15.i.do.end47_crit_edge, %if.end9.i.do.end47_crit_edge, %if.then3.i.i, %if.end3.i181.do.end47_crit_edge, %if.end41.do.end47_crit_edge
  %retval.0.i185199 = phi i32 [ %call36.i, %emac_clks_phase2_init.exit.do.end47_crit_edge ], [ %call.i.i179, %if.end3.i181.do.end47_crit_edge ], [ %call1.i.i182, %if.then3.i.i ], [ %call30.i, %if.end27.i.do.end47_crit_edge ], [ %call24.i, %if.end21.i.do.end47_crit_edge ], [ %call18.i, %if.end15.i.do.end47_crit_edge ], [ %call12.i, %if.end9.i.do.end47_crit_edge ], [ %call1.i177, %if.end41.do.end47_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %err_undo_mdiobus

if.end49:                                         ; preds = %emac_clks_phase2_init.exit
  %features = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 23
  %76 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 1099512742281, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 24
  %77 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 1099512742281, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 26
  %78 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %vlan_features, align 8
  %or = or i64 %79, 1114121
  store i64 %or, ptr %vlan_features, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 30
  %80 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 46, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 31
  %81 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 9194, ptr %max_mtu, align 4
  %work_thread = getelementptr i8, ptr %call2, i32 3284
  call void @__init_work(ptr noundef %work_thread, i32 noundef 0) #7
  %82 = ptrtoint ptr %work_thread to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -64, ptr %work_thread, align 4
  %lockdep_map = getelementptr i8, ptr %call2, i32 3300
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @emac_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry55 = getelementptr i8, ptr %call2, i32 3288
  %83 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i = getelementptr i8, ptr %call2, i32 3292
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %entry55, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call2, i32 3296
  %85 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @emac_work_thread, ptr %func, align 4
  call void @emac_mac_rx_tx_ring_init_all(ptr noundef %pdev, ptr noundef %add.ptr.i) #7
  %napi = getelementptr i8, ptr %call2, i32 2968
  call void @netif_napi_add(ptr noundef nonnull %call2, ptr noundef %napi, ptr noundef nonnull @emac_napi_rtx, i32 noundef 64) #7
  %call59 = call i32 @register_netdev(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  call void @__netif_napi_del(ptr noundef %napi) #7
  call void @synchronize_net() #7
  br label %err_undo_mdiobus

if.end66:                                         ; preds = %if.end49
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %87, i32 5120
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr73 = getelementptr i8, ptr %90, i32 6516
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #7, !srcloc !96
  %92 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %msg_enable, align 8
  %94 = and i16 %93, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool80.not = icmp eq i16 %94, 0
  br i1 %tobool80.not, label %if.end66.cleanup_crit_edge, label %if.then81

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then81:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %95 = call i32 @llvm.bswap.i32(i32 %91)
  %96 = call i32 @llvm.bswap.i32(i32 %88)
  %and68 = lshr i32 %96, 16
  %conv70 = and i32 %and68, 255
  %and = lshr i32 %96, 24
  %conv = and i32 %and, 127
  %shr85 = lshr i32 %95, 28
  %and86 = lshr i32 %95, 16
  %shr87 = and i32 %and86, 4095
  %and88 = and i32 %95, 65535
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call2, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv70, i32 noundef %shr85, i32 noundef %shr87, i32 noundef %and88) #10
  br label %cleanup

err_undo_mdiobus:                                 ; preds = %do.end64, %do.end47, %if.end37.err_undo_mdiobus_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.err_undo_mdiobus_crit_edge ], [ %retval.0.i185199, %do.end47 ], [ %call59, %do.end64 ]
  %phydev = getelementptr i8, ptr %call2, i32 2312
  %97 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phydev, align 8
  call void @put_device(ptr noundef %98) #7
  %mii_bus = getelementptr i8, ptr %call2, i32 2308
  %99 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mii_bus, align 4
  call void @mdiobus_unregister(ptr noundef %100) #7
  br label %err_undo_clocks

err_undo_clocks:                                  ; preds = %err_undo_mdiobus, %if.end30.err_undo_clocks_crit_edge
  %ret.1 = phi i32 [ %call34, %if.end30.err_undo_clocks_crit_edge ], [ %ret.0, %err_undo_mdiobus ]
  call fastcc void @emac_clks_teardown(ptr noundef %add.ptr.i)
  br label %err_undo_netdev

err_undo_netdev:                                  ; preds = %err_undo_clocks, %do.end28, %emac_probe_resources.exit, %if.end.i.err_undo_netdev_crit_edge
  %ret.2 = phi i32 [ %retval.0.i, %emac_probe_resources.exit ], [ %retval.0.i176193, %do.end28 ], [ %ret.1, %err_undo_clocks ], [ %call2.i, %if.end.i.err_undo_netdev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %err_undo_netdev, %if.then81, %if.end66.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.2, %err_undo_netdev ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #7
  %napi = getelementptr i8, ptr %1, i32 2968
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  tail call fastcc void @emac_clks_teardown(ptr noundef %add.ptr.i)
  %phydev = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 8
  tail call void @put_device(ptr noundef %3) #7
  %mii_bus = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 4
  tail call void @mdiobus_unregister(ptr noundef %5) #7
  %digital = getelementptr i8, ptr %1, i32 2328
  %6 = ptrtoint ptr %digital to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %digital, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy = getelementptr i8, ptr %1, i32 2324
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  tail call void @iounmap(ptr noundef %9) #7
  tail call void @free_netdev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @emac_sgmii_close(ptr noundef %add.ptr.i) #7
  tail call void @emac_mac_reset(ptr noundef %add.ptr.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_set_ethtool_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_phy_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_sgmii_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_work_thread(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -980
  %reset_lock.i = getelementptr i8, ptr %work, i32 48
  tail call void @mutex_lock_nested(ptr noundef %reset_lock.i, i32 noundef 0) #7
  tail call void @emac_mac_down(ptr noundef %add.ptr) #7
  tail call void @emac_sgmii_reset(ptr noundef %add.ptr) #7
  %call.i = tail call i32 @emac_mac_up(ptr noundef %add.ptr) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_rx_tx_ring_init_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_napi_rtx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %irq1 = getelementptr i8, ptr %napi, i32 224
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #7
  %4 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %work_done, align 4
  call void @emac_mac_rx_process(ptr noundef %add.ptr.i, ptr noundef %add.ptr, ptr noundef nonnull %work_done, i32 noundef %budget) #7
  %5 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %budget)
  %cmp = icmp slt i32 %6, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %6) #7
  %intr = getelementptr i8, ptr %napi, i32 228
  %7 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr, align 4
  %mask = getelementptr inbounds %struct.emac_irq, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %or = or i32 %10, %8
  store i32 %or, ptr %mask, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %base = getelementptr i8, ptr %1, i32 2316
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %15, i32 5636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #7, !srcloc !99
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %work_done, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emac_clks_teardown(ptr nocapture noundef readonly %adpt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %arrayidx.1 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %arrayidx.2 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %arrayidx.3 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %arrayidx.4 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %arrayidx.5 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %arrayidx.6 = getelementptr %struct.emac_adapter, ptr %adpt, i32 0, i32 8, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %irq1 = getelementptr i8, ptr %netdev, i32 2800
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @emac_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef %irq1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @emac_mac_rx_tx_rings_alloc_all(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.31) #10
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %irq1) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @emac_sgmii_open(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @emac_mac_rx_tx_rings_free_all(ptr noundef %add.ptr.i) #7
  %8 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1, align 4
  %call16 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %irq1) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = tail call i32 @emac_mac_up(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.then20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @emac_mac_rx_tx_rings_free_all(ptr noundef %add.ptr.i) #7
  %10 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq1, align 4
  %call22 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %irq1) #7
  tail call void @emac_sgmii_close(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end17.cleanup_crit_edge, %if.then14, %if.then7, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call5, %if.then7 ], [ %call12, %if.then14 ], [ %call18, %if.then20 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %reset_lock = getelementptr i8, ptr %netdev, i32 3332
  tail call void @mutex_lock_nested(ptr noundef %reset_lock, i32 noundef 0) #7
  tail call void @emac_sgmii_close(ptr noundef %add.ptr.i) #7
  tail call void @emac_mac_down(ptr noundef %add.ptr.i) #7
  tail call void @emac_mac_rx_tx_rings_free_all(ptr noundef %add.ptr.i) #7
  %irq = getelementptr i8, ptr %netdev, i32 2800
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  %call3 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %irq) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_start_xmit(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_q = getelementptr i8, ptr %netdev, i32 2852
  %call1 = tail call i32 @emac_mac_tx_buf_send(ptr noundef %add.ptr.i, ptr noundef %tx_q, ptr noundef %skb) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_rx_mode_set(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @emac_mac_mode_config(ptr noundef %add.ptr.i) #7
  tail call void @emac_mac_multicast_addr_clear(ptr noundef %add.ptr.i) #7
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %ha.015 = load ptr, ptr %mc, align 4
  %cmp.not16 = icmp eq ptr %ha.015, %mc
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.017 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.015, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.017, i32 0, i32 2
  tail call void @emac_mac_multicast_addr_set(ptr noundef %add.ptr.i, ptr noundef %addr) #7
  %1 = ptrtoint ptr %ha.017 to i32
  call void @__asan_load4_noabort(i32 %1)
  %ha.0 = load ptr, ptr %ha.017, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %msg_enable = getelementptr i8, ptr %netdev, i32 3328
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 8
  %2 = and i16 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emac_change_mtu.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emac_change_mtu, %if.then6)) #7
          to label %do.end10 [label %if.then6], !srcloc !101

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @emac_change_mtu.__UNIQUE_ID_ddebug351, ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef %6, i32 noundef %new_mtu) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body1, %entry.do.end10_crit_edge
  %mtu11 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new_mtu, ptr %mtu11, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end10.cleanup_crit_edge, label %if.then13

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %reset_lock.i = getelementptr i8, ptr %netdev, i32 3332
  tail call void @mutex_lock_nested(ptr noundef %reset_lock.i, i32 noundef 0) #7
  tail call void @emac_mac_down(ptr noundef %add.ptr.i) #7
  tail call void @emac_sgmii_reset(ptr noundef %add.ptr.i) #7
  %call.i = tail call i32 @emac_mac_up(ptr noundef %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then13 ], [ 0, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %work_thread = getelementptr i8, ptr %netdev, i32 3284
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work_thread) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_get_stats64(ptr noundef %netdev, ptr nocapture noundef writeonly %net_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %netdev, i32 2344
  %lock = getelementptr i8, ptr %netdev, i32 2752
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %base3.i = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base3.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %stats_itr.054.i = phi ptr [ %stats1, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %addr.053.i = phi i32 [ 5888, %entry ], [ %add4.i, %while.body.i.while.body.i_crit_edge ]
  %add.ptr.i67 = getelementptr i8, ptr %1, i32 %addr.053.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !96
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %conv.i = zext i32 %3 to i64
  %4 = ptrtoint ptr %stats_itr.054.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %stats_itr.054.i, align 8
  %add.i = add i64 %5, %conv.i
  store i64 %add.i, ptr %stats_itr.054.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %stats_itr.054.i, i32 1
  %add4.i = add nuw nsw i32 %addr.053.i, 4
  %cmp.i = icmp ult i32 %addr.053.i, 5973
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %add.ptr6.i = getelementptr i8, ptr %1, i32 7112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !96
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv9.i = zext i32 %7 to i64
  %rx_crc_align.i = getelementptr i8, ptr %netdev, i32 2528
  %8 = ptrtoint ptr %rx_crc_align.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_crc_align.i, align 8
  %add10.i = add i64 %9, %conv9.i
  store i64 %add10.i, ptr %rx_crc_align.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %1, i32 7116
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !96
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %conv15.i = zext i32 %11 to i64
  %rx_jabbers.i = getelementptr i8, ptr %netdev, i32 2536
  %12 = ptrtoint ptr %rx_jabbers.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_jabbers.i, align 8
  %add16.i = add i64 %13, %conv15.i
  store i64 %add16.i, ptr %rx_jabbers.i, align 8
  %tx_ok.i = getelementptr i8, ptr %netdev, i32 2544
  br label %while.body20.i

while.body20.i:                                   ; preds = %while.body20.i.while.body20.i_crit_edge, %while.end.i
  %stats_itr.156.i = phi ptr [ %tx_ok.i, %while.end.i ], [ %incdec.ptr27.i, %while.body20.i.while.body20.i_crit_edge ]
  %addr.155.i = phi i32 [ 5984, %while.end.i ], [ %add28.i, %while.body20.i.while.body20.i_crit_edge ]
  %add.ptr22.i = getelementptr i8, ptr %1, i32 %addr.155.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !96
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %conv25.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %stats_itr.156.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %stats_itr.156.i, align 8
  %add26.i = add i64 %17, %conv25.i
  store i64 %add26.i, ptr %stats_itr.156.i, align 8
  %incdec.ptr27.i = getelementptr i64, ptr %stats_itr.156.i, i32 1
  %add28.i = add nuw nsw i32 %addr.155.i, 4
  %cmp18.i = icmp ult i32 %addr.155.i, 6077
  br i1 %cmp18.i, label %while.body20.i.while.body20.i_crit_edge, label %emac_update_hw_stats.exit

while.body20.i.while.body20.i_crit_edge:          ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body20.i

emac_update_hw_stats.exit:                        ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31.i = getelementptr i8, ptr %1, i32 7120
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #7, !srcloc !96
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %conv34.i = zext i32 %19 to i64
  %tx_col.i = getelementptr i8, ptr %netdev, i32 2744
  %20 = ptrtoint ptr %tx_col.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_col.i, align 8
  %add35.i = add i64 %21, %conv34.i
  store i64 %add35.i, ptr %tx_col.i, align 8
  %22 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stats1, align 8
  %24 = ptrtoint ptr %net_stats to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %net_stats, align 8
  %25 = ptrtoint ptr %tx_ok.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_ok.i, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 1
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %tx_packets, align 8
  %rx_byte_cnt = getelementptr i8, ptr %netdev, i32 2400
  %28 = ptrtoint ptr %rx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_byte_cnt, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 2
  %30 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rx_bytes, align 8
  %tx_byte_cnt = getelementptr i8, ptr %netdev, i32 2600
  %31 = ptrtoint ptr %tx_byte_cnt to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_byte_cnt, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 3
  %33 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tx_bytes, align 8
  %rx_mcast = getelementptr i8, ptr %netdev, i32 2360
  %34 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_mcast, align 8
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 8
  %36 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %multicast, align 8
  %tx_1_col = getelementptr i8, ptr %netdev, i32 2664
  %37 = ptrtoint ptr %tx_1_col to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_1_col, align 8
  %tx_2_col = getelementptr i8, ptr %netdev, i32 2672
  %39 = ptrtoint ptr %tx_2_col to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_2_col, align 8
  %mul = shl i64 %40, 1
  %add = add i64 %mul, %38
  %tx_late_col = getelementptr i8, ptr %netdev, i32 2680
  %41 = ptrtoint ptr %tx_late_col to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx_late_col, align 8
  %add2 = add i64 %add, %42
  %tx_abort_col = getelementptr i8, ptr %netdev, i32 2688
  %43 = ptrtoint ptr %tx_abort_col to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_abort_col, align 8
  %add3 = add i64 %add2, %44
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 9
  %45 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add3, ptr %collisions, align 8
  %rx_frag = getelementptr i8, ptr %netdev, i32 2416
  %46 = ptrtoint ptr %rx_frag to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_frag, align 8
  %rx_fcs_err = getelementptr i8, ptr %netdev, i32 2384
  %48 = ptrtoint ptr %rx_fcs_err to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rx_fcs_err, align 8
  %add4 = add i64 %49, %47
  %rx_len_err = getelementptr i8, ptr %netdev, i32 2392
  %50 = ptrtoint ptr %rx_len_err to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_len_err, align 8
  %add5 = add i64 %add4, %51
  %rx_sz_ov = getelementptr i8, ptr %netdev, i32 2480
  %52 = ptrtoint ptr %rx_sz_ov to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_sz_ov, align 8
  %add6 = add i64 %add5, %53
  %rx_align_err = getelementptr i8, ptr %netdev, i32 2496
  %54 = ptrtoint ptr %rx_align_err to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_align_err, align 8
  %add7 = add i64 %add6, %55
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 4
  %56 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add7, ptr %rx_errors, align 8
  %rx_rxf_ov = getelementptr i8, ptr %netdev, i32 2488
  %57 = ptrtoint ptr %rx_rxf_ov to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_rxf_ov, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 14
  %59 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %rx_fifo_errors, align 8
  %60 = load i64, ptr %rx_len_err, align 8
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 10
  %61 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %rx_length_errors, align 8
  %62 = load i64, ptr %rx_fcs_err, align 8
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 12
  %63 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %rx_crc_errors, align 8
  %64 = load i64, ptr %rx_align_err, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 13
  %65 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %rx_frame_errors, align 8
  %66 = load i64, ptr %rx_rxf_ov, align 8
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 11
  %67 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %rx_over_errors, align 8
  %68 = load i64, ptr %rx_rxf_ov, align 8
  %rx_missed_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 15
  %69 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %rx_missed_errors, align 8
  %70 = load i64, ptr %tx_late_col, align 8
  %71 = load i64, ptr %tx_abort_col, align 8
  %add15 = add i64 %71, %70
  %tx_underrun = getelementptr i8, ptr %netdev, i32 2696
  %72 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %tx_underrun, align 8
  %add16 = add i64 %add15, %73
  %tx_trunc = getelementptr i8, ptr %netdev, i32 2720
  %74 = ptrtoint ptr %tx_trunc to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %tx_trunc, align 8
  %add17 = add i64 %add16, %75
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 5
  %76 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %add17, ptr %tx_errors, align 8
  %77 = load i64, ptr %tx_underrun, align 8
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 18
  %78 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %tx_fifo_errors, align 8
  %79 = load i64, ptr %tx_abort_col, align 8
  %tx_aborted_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 16
  %80 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %tx_aborted_errors, align 8
  %81 = load i64, ptr %tx_late_col, align 8
  %tx_window_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %net_stats, i32 0, i32 20
  %82 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %tx_window_errors, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %and = and i64 %xor, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %features, ptr %features1, align 16
  %reset_lock.i = getelementptr i8, ptr %netdev, i32 3332
  tail call void @mutex_lock_nested(ptr noundef %reset_lock.i, i32 noundef 0) #7
  tail call void @emac_mac_down(ptr noundef %add.ptr.i) #7
  tail call void @emac_sgmii_reset(ptr noundef %add.ptr.i) #7
  %call.i = tail call i32 @emac_mac_up(ptr noundef %add.ptr.i) #7
  tail call void @mutex_unlock(ptr noundef %reset_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_isr(i32 noundef %_irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %base = getelementptr i8, ptr %data, i32 -484
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #7, !srcloc !99
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 5632
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !96
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mask = getelementptr inbounds %struct.emac_irq, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and = and i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.do.body57_crit_edge, label %if.end

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

if.end:                                           ; preds = %entry
  %and6 = and i32 %and, 17920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %do.body8

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.body8:                                         ; preds = %if.end
  %call9 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body8.do.end20_crit_edge, label %do.end14

do.body8.do.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %9, i32 noundef %and6) #10
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %do.body8.do.end20_crit_edge
  %work_thread = getelementptr i8, ptr %data, i32 484
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work_thread) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end.if.end22_crit_edge
  %intr = getelementptr i8, ptr %data, i32 396
  %11 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intr, align 4
  %and23 = and i32 %12, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %if.then25

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %napi = getelementptr i8, ptr %data, i32 168
  %call26 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call26, label %if.then27, label %if.then25.if.end33_crit_edge

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr, align 4
  %neg = xor i32 %14, -1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and30 = and i32 %16, %neg
  store i32 %and30, ptr %mask, align 4
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then25.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %and34 = and i32 %and, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %tx_q = getelementptr i8, ptr %data, i32 52
  tail call void @emac_mac_tx_process(ptr noundef %add.ptr, ptr noundef %tx_q) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %and38 = and i32 %and, 536871416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.do.body57_crit_edge, label %do.body41

if.end37.do.body57_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

do.body41:                                        ; preds = %if.end37
  %call42 = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.do.body57_crit_edge, label %do.end47

do.body41.do.body57_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %18) #10
  br label %do.body57

do.body57:                                        ; preds = %do.end47, %do.body41.do.body57_crit_edge, %if.end37.do.body57_crit_edge, %entry.do.body57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %23, i32 5636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %21) #7, !srcloc !99
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_mac_rx_tx_rings_alloc_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_sgmii_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_rx_tx_rings_free_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_sgmii_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_tx_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_mac_tx_buf_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_mode_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_multicast_addr_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_multicast_addr_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_rx_process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @emac_mac_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_qcom_emac__352_770_emac_platform_driver_init6, !1, !"__initcall__kmod_qcom_emac__352_770_emac_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 770, i32 1}
!2 = !{ptr @__exitcall_emac_platform_driver_exit, !1, !"__exitcall_emac_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file353, !4, !"__UNIQUE_ID_file353", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 772, i32 1}
!5 = !{ptr @__UNIQUE_ID_license354, !4, !"__UNIQUE_ID_license354", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias355, !7, !"__UNIQUE_ID_alias355", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 773, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 763, i32 12}
!10 = !{ptr @emac_platform_driver, !11, !"emac_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 759, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 608, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @emac_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @emac_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @emac_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 627, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @emac_probe.__key.7, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 628, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 639, i32 3}
!28 = !{ptr @emac_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @emac_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @emac_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 663, i32 3}
!32 = !{ptr @emac_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @emac_probe.__key.14, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 682, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 692, i32 3}
!38 = !{ptr @emac_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @emac_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 701, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 443, i32 4}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @emac_clks_get._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @emac_clks_get._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 69, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 69, i32 13}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 69, i32 28}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 69, i32 46}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 69, i32 58}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 70, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 70, i32 12}
!61 = distinct !{null, !62, !"emac_clk_name", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 68, i32 27}
!63 = !{ptr @emac_netdev_ops, !64, !"emac_netdev_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 373, i32 36}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 235, i32 43}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 237, i32 28}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 244, i32 28}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 144, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @emac_isr._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @emac_isr._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 164, i32 3}
!78 = !{ptr @emac_isr._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @emac_isr._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 217, i32 2}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @emac_change_mtu.__UNIQUE_ID_ddebug351, !81, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!85 = !{ptr @emac_dt_match, !86, !"emac_dt_match", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qualcomm/emac/emac.c", i32 575, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 6042419}
!97 = !{i64 2157210197}
!98 = !{i64 2157210417}
!99 = !{i64 6042001}
!100 = !{i64 2157212094}
!101 = !{i64 2148848592, i64 2148848597, i64 2148848610, i64 2148848654, i64 2148848688, i64 2148848709}
!102 = !{i64 2157213666}
!103 = !{i64 2157219990}
