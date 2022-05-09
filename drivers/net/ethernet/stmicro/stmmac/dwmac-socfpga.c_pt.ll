; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.socfpga_dwmac_ops = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
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
%struct.socfpga_dwmac = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8, %struct.tse_pcs, ptr }
%struct.tse_pcs = type { ptr, ptr, ptr, %struct.timer_list, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
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

@__initcall__kmod_dwmac_altr_socfpga__353_535_socfpga_dwmac_driver_init6 = internal global ptr @socfpga_dwmac_driver_init, section ".initcall6.init", align 4
@socfpga_dwmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @socfpga_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @socfpga_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_socfpga_dwmac_driver_exit = internal global ptr @socfpga_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file354 = internal constant [79 x i8] c"dwmac_altr_socfpga.file=drivers/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [34 x i8] c"dwmac_altr_socfpga.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"socfpga-dwmac\00", [18 x i8] zeroinitializer }, align 32
@socfpga_dwmac_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-stmmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_gen5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-stmmac-a10-s10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_gen10_ops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@socfpga_dwmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_dwmac_runtime_suspend, ptr @socfpga_dwmac_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@socfpga_dwmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no of match data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socfpga_dwmac_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@socfpga_dwmac_probe._entry_ptr = internal global ptr @socfpga_dwmac_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmmaceth-ocp\00", [18 x i8] zeroinitializer }, align 32
@socfpga_dwmac_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error getting reset control of ocp %d\0A\00", [57 x i8] zeroinitializer }, align 32
@socfpga_dwmac_probe._entry_ptr.9 = internal global ptr @socfpga_dwmac_probe._entry.7, section ".printk_index", align 4
@socfpga_dwmac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to parse OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@socfpga_dwmac_probe._entry_ptr.12 = internal global ptr @socfpga_dwmac_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr,sysmgr-syscon\00", [45 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 115, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No sysmgr-syscon node found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"socfpga_dwmac_parse_data\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr = internal global ptr @socfpga_dwmac_parse_data._entry, section ".printk_index", align 4
@socfpga_dwmac_parse_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 121, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not read reg_offset from sysmgr-syscon!\0A\00", [49 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.19 = internal global ptr @socfpga_dwmac_parse_data._entry.17, section ".printk_index", align 4
@socfpga_dwmac_parse_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.3, i32 127, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not read reg_shift from sysmgr-syscon!\0A\00", [50 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.22 = internal global ptr @socfpga_dwmac_parse_data._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altr,f2h_ptp_ref_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr,emac-splitter\00", [45 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 138, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing emac splitter address\0A\00", [33 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.27 = internal global ptr @socfpga_dwmac_parse_data._entry.25, section ".printk_index", align 4
@socfpga_dwmac_parse_data._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.3, i32 144, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to mapping emac splitter\0A\00", [63 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.30 = internal global ptr @socfpga_dwmac_parse_data._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"altr,gmii-to-sgmii-converter\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hps_emac_interface_splitter_avalon_slave\00", [55 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERROR: missing emac splitter address\0A\00", [54 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.36 = internal global ptr @socfpga_dwmac_parse_data._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gmii_to_sgmii_adapter_avalon_slave\00", [61 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.15, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR: failed mapping adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.40 = internal global ptr @socfpga_dwmac_parse_data._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"eth_tse_control_port\00", [43 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.15, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ERROR: failed mapping tse control port\0A\00", [52 x i8] zeroinitializer }, align 32
@socfpga_dwmac_parse_data._entry_ptr.44 = internal global ptr @socfpga_dwmac_parse_data._entry.42, section ".printk_index", align 4
@socfpga_gen5_ops = internal constant { %struct.socfpga_dwmac_ops, [28 x i8] } { %struct.socfpga_dwmac_ops { ptr @socfpga_gen5_set_phy_mode }, [28 x i8] zeroinitializer }, align 32
@socfpga_gen10_ops = internal constant { %struct.socfpga_dwmac_ops, [28 x i8] } { %struct.socfpga_dwmac_ops { ptr @socfpga_gen10_set_phy_mode }, [28 x i8] zeroinitializer }, align 32
@socfpga_gen5_set_phy_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad phy mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"socfpga_gen5_set_phy_mode\00", [38 x i8] zeroinitializer }, align 32
@socfpga_gen5_set_phy_mode._entry_ptr = internal global ptr @socfpga_gen5_set_phy_mode._entry, section ".printk_index", align 4
@socfpga_gen5_set_phy_mode._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to initialize TSE PCS\00", [35 x i8] zeroinitializer }, align 32
@socfpga_gen5_set_phy_mode._entry_ptr.49 = internal global ptr @socfpga_gen5_set_phy_mode._entry.47, section ".printk_index", align 4
@socfpga_gen10_set_phy_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"socfpga_gen10_set_phy_mode\00", [37 x i8] zeroinitializer }, align 32
@socfpga_gen10_set_phy_mode._entry_ptr = internal global ptr @socfpga_gen10_set_phy_mode._entry, section ".printk_index", align 4
@switch.table.socfpga_gen5_set_phy_mode = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1], [52 x i8] zeroinitializer }, align 32
@switch.table.socfpga_gen10_set_phy_mode = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"socfpga_dwmac_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 526, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 530, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"socfpga_dwmac_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 519, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"socfpga_dwmac_pm_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 506, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 393, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 411, i32 63 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 414, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 422, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 113, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 115, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 121, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 127, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 131, i32 53 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 133, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 138, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 144, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 150, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 152, i32 54 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 153, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 158, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 175, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 180, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 197, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 202, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"socfpga_gen5_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 511, i32 39 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"socfpga_gen10_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 515, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 271, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 316, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [55 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 373, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [39 x i8] c"switch.table.socfpga_gen5_set_phy_mode\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [40 x i8] c"switch.table.socfpga_gen10_set_phy_mode\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_socfpga_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_altr_socfpga__353_535_socfpga_dwmac_driver_init6, ptr @socfpga_dwmac_driver_exit, ptr @socfpga_dwmac_parse_data._entry, ptr @socfpga_dwmac_parse_data._entry.17, ptr @socfpga_dwmac_parse_data._entry.20, ptr @socfpga_dwmac_parse_data._entry.25, ptr @socfpga_dwmac_parse_data._entry.28, ptr @socfpga_dwmac_parse_data._entry.34, ptr @socfpga_dwmac_parse_data._entry.38, ptr @socfpga_dwmac_parse_data._entry.42, ptr @socfpga_dwmac_parse_data._entry_ptr, ptr @socfpga_dwmac_parse_data._entry_ptr.19, ptr @socfpga_dwmac_parse_data._entry_ptr.22, ptr @socfpga_dwmac_parse_data._entry_ptr.27, ptr @socfpga_dwmac_parse_data._entry_ptr.30, ptr @socfpga_dwmac_parse_data._entry_ptr.36, ptr @socfpga_dwmac_parse_data._entry_ptr.40, ptr @socfpga_dwmac_parse_data._entry_ptr.44, ptr @socfpga_dwmac_probe._entry, ptr @socfpga_dwmac_probe._entry.10, ptr @socfpga_dwmac_probe._entry.7, ptr @socfpga_dwmac_probe._entry_ptr, ptr @socfpga_dwmac_probe._entry_ptr.12, ptr @socfpga_dwmac_probe._entry_ptr.9, ptr @socfpga_gen10_set_phy_mode._entry, ptr @socfpga_gen10_set_phy_mode._entry_ptr, ptr @socfpga_gen5_set_phy_mode._entry, ptr @socfpga_gen5_set_phy_mode._entry.47, ptr @socfpga_gen5_set_phy_mode._entry_ptr, ptr @socfpga_gen5_set_phy_mode._entry_ptr.49, ptr @socfpga_dwmac_driver, ptr @.str, ptr @socfpga_dwmac_match, ptr @socfpga_dwmac_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @socfpga_gen5_ops, ptr @socfpga_gen10_ops, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @switch.table.socfpga_gen5_set_phy_mode, ptr @switch.table.socfpga_gen10_set_phy_mode], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_dwmac_parse_data._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_gen5_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_gen10_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_gen5_set_phy_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_gen5_set_phy_mode._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_gen10_set_phy_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.socfpga_gen5_set_phy_mode to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.socfpga_gen10_set_phy_mode to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @socfpga_dwmac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @socfpga_dwmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @socfpga_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i171.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %reg_offset.i = alloca i32, align 4
  %reg_shift.i = alloca i32, align 4
  %res_splitter.i = alloca %struct.resource, align 4
  %res_tse_pcs.i = alloca %struct.resource, align 4
  %res_sgmii_adapter.i = alloca %struct.resource, align 4
  %stmmac_res = alloca %struct.stmmac_resources, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stmmac_res) #6
  %0 = call ptr @memset(ptr %stmmac_res, i32 255, i32 96)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mac = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 1
  %call8 = call ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #6
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end12.err_remove_config_dt_crit_edge, label %if.end16

if.end12.err_remove_config_dt_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end16:                                         ; preds = %if.end12
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %stmmac_ocp_rst = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %stmmac_ocp_rst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %stmmac_ocp_rst, align 4
  %cmp.i92 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %3) #9
  br label %err_remove_config_dt

if.end26:                                         ; preds = %if.end16
  %call28 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset.i) #6
  %6 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_offset.i, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_shift.i) #6
  %7 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg_shift.i, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res_splitter.i) #6
  %8 = call ptr @memset(ptr %res_splitter.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res_tse_pcs.i) #6
  %9 = call ptr @memset(ptr %res_tse_pcs.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res_sgmii_adapter.i) #6
  %10 = call ptr @memset(ptr %res_sgmii_adapter.i, i32 255, i32 32)
  %call.i93 = call ptr @altr_sysmgr_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.13) #6
  %cmp.i.i = icmp ugt ptr %call.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  %11 = ptrtoint ptr %call.i93 to i32
  br label %socfpga_dwmac_parse_data.exit

if.end.i:                                         ; preds = %if.end26
  %call3.i = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %reg_offset.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.socfpga_dwmac_parse_data.exit.thread_crit_edge

if.end.i.socfpga_dwmac_parse_data.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull %reg_shift.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end15.i, label %if.end8.i.socfpga_dwmac_parse_data.exit.thread_crit_edge

if.end8.i.socfpga_dwmac_parse_data.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread

if.end15.i:                                       ; preds = %if.end8.i
  %call.i.i94 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i94, null
  %f2h_ptp_ref_clk.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %12 = ptrtoint ptr %f2h_ptp_ref_clk.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %f2h_ptp_ref_clk.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %13 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i169.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169.i)
  %tobool.not.i.i = icmp eq i32 %call.i169.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  br label %if.end37.i

of_parse_phandle.exit.i:                          ; preds = %if.end15.i
  %14 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  %tobool18.not.i = icmp eq ptr %15, null
  br i1 %tobool18.not.i, label %of_parse_phandle.exit.i.if.end37.i_crit_edge, label %if.then19.i

of_parse_phandle.exit.i.if.end37.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then19.i:                                      ; preds = %of_parse_phandle.exit.i
  %call20.i = call i32 @of_address_to_resource(ptr noundef nonnull %15, i32 noundef 0, ptr noundef nonnull %res_splitter.i) #6
  call void @of_node_put(ptr noundef nonnull %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end26.i, label %if.then19.i.socfpga_dwmac_parse_data.exit.thread_crit_edge

if.then19.i.socfpga_dwmac_parse_data.exit.thread_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread

if.end26.i:                                       ; preds = %if.then19.i
  %call27.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res_splitter.i) #6
  %splitter_base.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %splitter_base.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call27.i, ptr %splitter_base.i, align 4
  %cmp.i170.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %do.end33.i, label %if.end26.i.if.end37.i_crit_edge

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #9
  %17 = ptrtoint ptr %splitter_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %splitter_base.i, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %socfpga_dwmac_parse_data.exit

if.end37.i:                                       ; preds = %if.end26.i.if.end37.i_crit_edge, %of_parse_phandle.exit.i.if.end37.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i171.i) #6
  %20 = call ptr @memset(ptr %args.i171.i, i32 255, i32 72)
  %call.i172.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i171.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172.i)
  %tobool.not.i173.i = icmp eq i32 %call.i172.i, 0
  br i1 %tobool.not.i173.i, label %of_parse_phandle.exit176.i, label %of_parse_phandle.exit176.thread.i

of_parse_phandle.exit176.thread.i:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i171.i) #6
  br label %socfpga_dwmac_parse_data.exit.thread99

of_parse_phandle.exit176.i:                       ; preds = %if.end37.i
  %21 = ptrtoint ptr %args.i171.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i171.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i171.i) #6
  %tobool39.not.i = icmp eq ptr %22, null
  br i1 %tobool39.not.i, label %of_parse_phandle.exit176.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge, label %if.then40.i

of_parse_phandle.exit176.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge: ; preds = %of_parse_phandle.exit176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread99

if.then40.i:                                      ; preds = %of_parse_phandle.exit176.i
  %call41.i = call i32 @of_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i95 = icmp sgt i32 %call41.i, -1
  br i1 %cmp.i95, label %if.then42.i, label %if.then40.i.if.end58.i_crit_edge

if.then40.i.if.end58.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then42.i:                                      ; preds = %if.then40.i
  %call43.i = call i32 @of_address_to_resource(ptr noundef nonnull %22, i32 noundef %call41.i, ptr noundef nonnull %res_splitter.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end49.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.15) #9
  br label %err_node_put.i

if.end49.i:                                       ; preds = %if.then42.i
  %call50.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res_splitter.i) #6
  %splitter_base51.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %splitter_base51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call50.i, ptr %splitter_base51.i, align 4
  %cmp.i177.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.then54.i, label %if.end49.i.if.end58.i_crit_edge

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call50.i to i32
  br label %err_node_put.i

if.end58.i:                                       ; preds = %if.end49.i.if.end58.i_crit_edge, %if.then40.i.if.end58.i_crit_edge
  %call59.i = call i32 @of_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59.i)
  %cmp60.i = icmp sgt i32 %call59.i, -1
  br i1 %cmp60.i, label %if.then61.i, label %if.end58.i.if.end78.i_crit_edge

if.end58.i.if.end78.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then61.i:                                      ; preds = %if.end58.i
  %call62.i = call i32 @of_address_to_resource(ptr noundef nonnull %22, i32 noundef %call59.i, ptr noundef nonnull %res_sgmii_adapter.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end68.i, label %do.end67.i

do.end67.i:                                       ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.15) #9
  br label %err_node_put.i

if.end68.i:                                       ; preds = %if.then61.i
  %call69.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res_sgmii_adapter.i) #6
  %sgmii_adapter_base.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %sgmii_adapter_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call69.i, ptr %sgmii_adapter_base.i, align 4
  %cmp.i178.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %if.then73.i, label %if.end68.i.if.end78.i_crit_edge

if.end68.i.if.end78.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then73.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call69.i to i32
  br label %err_node_put.i

if.end78.i:                                       ; preds = %if.end68.i.if.end78.i_crit_edge, %if.end58.i.if.end78.i_crit_edge
  %call79.i = call i32 @of_property_match_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call79.i)
  %cmp80.i = icmp sgt i32 %call79.i, -1
  br i1 %cmp80.i, label %if.then81.i, label %if.end78.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge

if.end78.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread99

if.then81.i:                                      ; preds = %if.end78.i
  %call82.i = call i32 @of_address_to_resource(ptr noundef nonnull %22, i32 noundef %call79.i, ptr noundef nonnull %res_tse_pcs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end88.i, label %do.end87.i

do.end87.i:                                       ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.15) #9
  br label %err_node_put.i

if.end88.i:                                       ; preds = %if.then81.i
  %call89.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res_tse_pcs.i) #6
  %tse_pcs_base.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %tse_pcs_base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call89.i, ptr %tse_pcs_base.i, align 4
  %cmp.i179.i = icmp ugt ptr %call89.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %if.then94.i, label %if.end88.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge

if.end88.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %socfpga_dwmac_parse_data.exit.thread99

if.then94.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call89.i to i32
  br label %err_node_put.i

socfpga_dwmac_parse_data.exit.thread99:           ; preds = %if.end88.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge, %if.end78.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge, %of_parse_phandle.exit176.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge, %of_parse_phandle.exit176.thread.i
  %retval.0.i175184.i = phi ptr [ null, %of_parse_phandle.exit176.thread.i ], [ %22, %if.end78.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge ], [ %22, %if.end88.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge ], [ null, %of_parse_phandle.exit176.i.socfpga_dwmac_parse_data.exit.thread99_crit_edge ]
  %29 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_offset.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i, align 4
  %32 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_shift.i, align 4
  %reg_shift102.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %reg_shift102.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %reg_shift102.i, align 4
  %sys_mgr_base_addr103.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %sys_mgr_base_addr103.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i93, ptr %sys_mgr_base_addr103.i, align 4
  %dev104.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %dev104.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev1, ptr %dev104.i, align 4
  call void @of_node_put(ptr noundef %retval.0.i175184.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_sgmii_adapter.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_tse_pcs.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_splitter.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_shift.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset.i) #6
  br label %if.end35

err_node_put.i:                                   ; preds = %if.then94.i, %do.end87.i, %if.then73.i, %do.end67.i, %if.then54.i, %do.end48.i
  %ret.0.i = phi i32 [ -22, %do.end48.i ], [ %24, %if.then54.i ], [ -22, %do.end67.i ], [ %26, %if.then73.i ], [ -22, %do.end87.i ], [ %28, %if.then94.i ]
  call void @of_node_put(ptr noundef nonnull %22) #6
  br label %socfpga_dwmac_parse_data.exit

socfpga_dwmac_parse_data.exit.thread:             ; preds = %if.then19.i.socfpga_dwmac_parse_data.exit.thread_crit_edge, %if.end8.i.socfpga_dwmac_parse_data.exit.thread_crit_edge, %if.end.i.socfpga_dwmac_parse_data.exit.thread_crit_edge
  %.str.18.sink = phi ptr [ @.str.18, %if.end.i.socfpga_dwmac_parse_data.exit.thread_crit_edge ], [ @.str.21, %if.end8.i.socfpga_dwmac_parse_data.exit.thread_crit_edge ], [ @.str.26, %if.then19.i.socfpga_dwmac_parse_data.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull %.str.18.sink) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_sgmii_adapter.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_tse_pcs.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_splitter.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_shift.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset.i) #6
  br label %do.end34

socfpga_dwmac_parse_data.exit:                    ; preds = %err_node_put.i, %do.end33.i, %do.end.i
  %retval.0.i = phi i32 [ %11, %do.end.i ], [ %19, %do.end33.i ], [ %ret.0.i, %err_node_put.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_sgmii_adapter.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_tse_pcs.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res_splitter.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_shift.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool30.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool30.not, label %socfpga_dwmac_parse_data.exit.if.end35_crit_edge, label %socfpga_dwmac_parse_data.exit.do.end34_crit_edge

socfpga_dwmac_parse_data.exit.do.end34_crit_edge: ; preds = %socfpga_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

socfpga_dwmac_parse_data.exit.if.end35_crit_edge: ; preds = %socfpga_dwmac_parse_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end34:                                         ; preds = %socfpga_dwmac_parse_data.exit.do.end34_crit_edge, %socfpga_dwmac_parse_data.exit.thread
  %retval.0.i98 = phi i32 [ -22, %socfpga_dwmac_parse_data.exit.thread ], [ %retval.0.i, %socfpga_dwmac_parse_data.exit.do.end34_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %err_remove_config_dt

if.end35:                                         ; preds = %socfpga_dwmac_parse_data.exit.if.end35_crit_edge, %socfpga_dwmac_parse_data.exit.thread99
  %ops36 = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %ops36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %ops36, align 4
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call8, i32 0, i32 46
  %38 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %bsp_priv, align 4
  %fix_mac_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call8, i32 0, i32 35
  %39 = ptrtoint ptr %fix_mac_speed to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @socfpga_dwmac_fix_mac_speed, ptr %fix_mac_speed, align 4
  %call38 = call i32 @stmmac_dvr_probe(ptr noundef %dev1, ptr noundef %call8, ptr noundef nonnull %stmmac_res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.err_remove_config_dt_crit_edge

if.end35.err_remove_config_dt_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_config_dt

if.end41:                                         ; preds = %if.end35
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %plat = getelementptr i8, ptr %41, i32 17408
  %42 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plat, align 128
  %stmmac_rst = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %43, i32 0, i32 55
  %44 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stmmac_rst, align 4
  %stmmac_rst44 = getelementptr inbounds %struct.socfpga_dwmac, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %stmmac_rst44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %stmmac_rst44, align 4
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  %call45 = call i32 %48(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %err_dvr_remove

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_dvr_remove:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 @stmmac_dvr_remove(ptr noundef %dev1) #6
  br label %err_remove_config_dt

err_remove_config_dt:                             ; preds = %err_dvr_remove, %if.end35.err_remove_config_dt_crit_edge, %do.end34, %if.then20, %if.end12.err_remove_config_dt_crit_edge
  %ret.0 = phi i32 [ %3, %if.then20 ], [ %retval.0.i98, %do.end34 ], [ %call38, %if.end35.err_remove_config_dt_crit_edge ], [ %call45, %err_dvr_remove ], [ -12, %if.end12.err_remove_config_dt_crit_edge ]
  call void @stmmac_remove_config_dt(ptr noundef %pdev, ptr noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %err_remove_config_dt, %if.end41.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then10 ], [ %ret.0, %err_remove_config_dt ], [ -22, %do.end ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stmmac_res) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @socfpga_dwmac_fix_mac_speed(ptr noundef %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %splitter_base1 = getelementptr inbounds %struct.socfpga_dwmac, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %splitter_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %splitter_base1, align 4
  %pcs = getelementptr inbounds %struct.socfpga_dwmac, ptr %priv, i32 0, i32 8
  %tse_pcs_base2 = getelementptr inbounds %struct.socfpga_dwmac, ptr %priv, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %tse_pcs_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tse_pcs_base2, align 4
  %sgmii_adapter_base4 = getelementptr inbounds %struct.socfpga_dwmac, ptr %priv, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %sgmii_adapter_base4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgmii_adapter_base4, align 4
  %dev5 = getelementptr inbounds %struct.socfpga_dwmac, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 145
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 256) #6, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end.if.end20_crit_edge, label %if.then8

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then8:                                         ; preds = %if.end
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %13 = and i32 %12, -50331649
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %if.then8.cleanup_crit_edge [
    i32 1000, label %if.then8.do.body16_crit_edge
    i32 100, label %sw.bb12
    i32 10, label %sw.bb14
  ]

if.then8.do.body16_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb12:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %or13 = or i32 %14, 3
  br label %do.body16

sw.bb14:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %or15 = or i32 %14, 2
  br label %do.body16

do.body16:                                        ; preds = %sw.bb14, %sw.bb12, %if.then8.do.body16_crit_edge
  %val.0 = phi i32 [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %14, %if.then8.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %16) #6, !srcloc !114
  br label %if.end20

if.end20:                                         ; preds = %do.body16, %if.end.if.end20_crit_edge
  br i1 %or.cond, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tse_pcs_fix_mac_speed(ptr noundef %pcs, ptr noundef %11, i32 noundef %speed) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @altr_sysmgr_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tse_pcs_fix_mac_speed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_gen5_set_phy_mode(ptr noundef %dwmac) #2 align 64 {
entry:
  %ctrl = alloca i32, align 4
  %module = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_mgr_base_addr1 = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %sys_mgr_base_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_mgr_base_addr1, align 4
  %dev.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %5, i32 17408
  %6 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat.i, align 128
  %interface.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface.i, align 4
  %10 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dwmac, align 4
  %reg_shift3 = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 1
  %12 = ptrtoint ptr %reg_shift3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #6
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ctrl, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %module) #6
  %15 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %module, align 4, !annotation !108
  %switch.tableidx = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 11
  br i1 %16, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %9) #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1959, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.socfpga_gen5_set_phy_mode, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %splitter_base = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 6
  %19 = ptrtoint ptr %splitter_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %splitter_base, align 4
  %tobool5.not = icmp eq ptr %20, null
  %spec.select = select i1 %tobool5.not, i32 %switch.load, i32 0
  %stmmac_ocp_rst = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 5
  %21 = ptrtoint ptr %stmmac_ocp_rst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stmmac_ocp_rst, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %22) #6
  %stmmac_rst = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 4
  %23 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stmmac_rst, align 4
  %call9 = tail call i32 @reset_control_assert(ptr noundef %24) #6
  %call10 = call i32 @regmap_read(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %ctrl) #6
  %shl = shl i32 3, %13
  %neg = xor i32 %shl, -1
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl, align 4
  %and = and i32 %26, %neg
  %shl11 = shl i32 %spec.select, %13
  %or = or i32 %and, %shl11
  store i32 %or, ptr %ctrl, align 4
  %f2h_ptp_ref_clk = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 7
  %27 = ptrtoint ptr %f2h_ptp_ref_clk to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %f2h_ptp_ref_clk, align 4, !range !115
  %.fr = freeze i8 %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool12.not = icmp ne i8 %.fr, 0
  %call.off = add nsw i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.off)
  %switch = icmp ult i32 %call.off, 3
  %or.cond = or i1 %switch, %tobool12.not
  br i1 %or.cond, label %if.then17, label %switch.lookup.if.end22_crit_edge

switch.lookup.if.end22_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 @regmap_read(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %module) #6
  %div86 = lshr i32 %13, 1
  %shl19 = shl i32 4, %div86
  %29 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %module, align 4
  %or20 = or i32 %30, %shl19
  store i32 %or20, ptr %module, align 4
  %call21 = call i32 @regmap_write(ptr noundef %1, i32 noundef 40, i32 noundef %or20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %switch.lookup.if.end22_crit_edge
  %31 = ptrtoint ptr %f2h_ptp_ref_clk to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %f2h_ptp_ref_clk, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool24.not = icmp eq i8 %32, 0
  %div2984 = lshr i32 %13, 1
  %shl30 = shl i32 16, %div2984
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 4
  %or28 = or i32 %34, %shl30
  br label %if.end33

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %neg31 = xor i32 %shl30, -1
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrl, align 4
  %and32 = and i32 %36, %neg31
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then25
  %storemerge = phi i32 [ %and32, %if.else ], [ %or28, %if.then25 ]
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %ctrl, align 4
  %call34 = call i32 @regmap_write(ptr noundef %1, i32 noundef %11, i32 noundef %storemerge) #6
  %38 = ptrtoint ptr %stmmac_ocp_rst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stmmac_ocp_rst, align 4
  %call36 = call i32 @reset_control_deassert(ptr noundef %39) #6
  %40 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stmmac_rst, align 4
  %call38 = call i32 @reset_control_deassert(ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp39 = icmp eq i32 %9, 4
  br i1 %cmp39, label %if.then40, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end33
  %pcs = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 8
  %tse_pcs_base = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %tse_pcs_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tse_pcs_base, align 4
  %call42 = call i32 @tse_pcs_init(ptr noundef %43, ptr noundef %pcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.then40.cleanup_crit_edge, label %do.end47

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.48) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end47 ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %module) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tse_pcs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_gen10_set_phy_mode(ptr noundef %dwmac) #2 align 64 {
entry:
  %ctrl = alloca i32, align 4
  %module = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_mgr_base_addr1 = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 3
  %0 = ptrtoint ptr %sys_mgr_base_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sys_mgr_base_addr1, align 4
  %dev.i = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %plat.i = getelementptr i8, ptr %5, i32 17408
  %6 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat.i, align 128
  %interface.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface.i, align 4
  %10 = ptrtoint ptr %dwmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dwmac, align 4
  %reg_shift3 = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 1
  %12 = ptrtoint ptr %reg_shift3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #6
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ctrl, align 4, !annotation !108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %module) #6
  %15 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %module, align 4, !annotation !108
  %switch.tableidx = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 11
  br i1 %16, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1959, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.socfpga_gen10_set_phy_mode, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %splitter_base = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 6
  %19 = ptrtoint ptr %splitter_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %splitter_base, align 4
  %tobool5.not = icmp eq ptr %20, null
  %spec.select = select i1 %tobool5.not, i32 %switch.load, i32 0
  %stmmac_ocp_rst = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 5
  %21 = ptrtoint ptr %stmmac_ocp_rst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stmmac_ocp_rst, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %22) #6
  %stmmac_rst = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 4
  %23 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stmmac_rst, align 4
  %call9 = tail call i32 @reset_control_assert(ptr noundef %24) #6
  %call10 = call i32 @regmap_read(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %ctrl) #6
  %25 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl, align 4
  %and = and i32 %26, -4
  %or = or i32 %and, %spec.select
  %f2h_ptp_ref_clk = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 7
  %27 = ptrtoint ptr %f2h_ptp_ref_clk to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %f2h_ptp_ref_clk, align 4, !range !115
  %.fr = freeze i8 %28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool11.not = icmp ne i8 %.fr, 0
  %call.off = add nsw i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.off)
  %switch = icmp ult i32 %call.off, 3
  %or.cond = or i1 %switch, %tobool11.not
  br i1 %or.cond, label %if.then16, label %if.else

if.then16:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %or17 = or i32 %or, 256
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or17, ptr %ctrl, align 4
  %call18 = call i32 @regmap_read(ptr noundef %1, i32 noundef 112, ptr noundef nonnull %module) #6
  %shl = shl nuw i32 1, %13
  %30 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %module, align 4
  %or19 = or i32 %31, %shl
  store i32 %or19, ptr %module, align 4
  %call20 = call i32 @regmap_write(ptr noundef %1, i32 noundef 112, i32 noundef %or19) #6
  br label %if.end22

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i32 %or, -257
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and21, ptr %ctrl, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctrl, align 4
  %call23 = call i32 @regmap_write(ptr noundef %1, i32 noundef %11, i32 noundef %34) #6
  %35 = ptrtoint ptr %stmmac_ocp_rst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stmmac_ocp_rst, align 4
  %call25 = call i32 @reset_control_deassert(ptr noundef %36) #6
  %37 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stmmac_rst, align 4
  %call27 = call i32 @reset_control_deassert(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp28 = icmp eq i32 %9, 4
  br i1 %cmp28, label %if.then29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %if.end22
  %pcs = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 8
  %tse_pcs_base = getelementptr inbounds %struct.socfpga_dwmac, ptr %dwmac, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %tse_pcs_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tse_pcs_base, align 4
  %call31 = call i32 @tse_pcs_init(ptr noundef %40, ptr noundef %pcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.then29.cleanup_crit_edge, label %do.end

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.48) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %module) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat.i = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat.i, align 128
  %bsp_priv.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %bsp_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsp_priv.i, align 4
  %ops = getelementptr inbounds %struct.socfpga_dwmac, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call i32 %9(ptr noundef %5) #6
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @phy_resume(ptr noundef nonnull %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call i32 @stmmac_resume(ptr noundef %dev) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @stmmac_bus_clks_config(ptr noundef %add.ptr.i, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @stmmac_bus_clks_config(ptr noundef %add.ptr.i, i1 noundef zeroext true) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_bus_clks_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_dwmac_altr_socfpga__353_535_socfpga_dwmac_driver_init6, !1, !"__initcall__kmod_dwmac_altr_socfpga__353_535_socfpga_dwmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 535, i32 1}
!2 = !{ptr @__exitcall_socfpga_dwmac_driver_exit, !1, !"__exitcall_socfpga_dwmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file354, !4, !"__UNIQUE_ID_file354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 537, i32 1}
!5 = !{ptr @__UNIQUE_ID_license355, !4, !"__UNIQUE_ID_license355", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 530, i32 21}
!8 = !{ptr @socfpga_dwmac_driver, !9, !"socfpga_dwmac_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 526, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 393, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @socfpga_dwmac_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @socfpga_dwmac_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 411, i32 63}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 414, i32 3}
!22 = !{ptr @socfpga_dwmac_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @socfpga_dwmac_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 422, i32 3}
!26 = !{ptr @socfpga_dwmac_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @socfpga_dwmac_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 113, i32 44}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 115, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @socfpga_dwmac_parse_data._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @socfpga_dwmac_parse_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 121, i32 3}
!38 = !{ptr @socfpga_dwmac_parse_data._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 127, i32 3}
!42 = !{ptr @socfpga_dwmac_parse_data._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 131, i32 53}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 133, i32 37}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 138, i32 4}
!50 = !{ptr @socfpga_dwmac_parse_data._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 144, i32 4}
!54 = !{ptr @socfpga_dwmac_parse_data._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 150, i32 10}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 152, i32 54}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 153, i32 8}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 158, i32 5}
!64 = !{ptr @socfpga_dwmac_parse_data._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 175, i32 8}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 180, i32 5}
!70 = !{ptr @socfpga_dwmac_parse_data._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 197, i32 8}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 202, i32 5}
!76 = !{ptr @socfpga_dwmac_parse_data._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @socfpga_dwmac_parse_data._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @socfpga_dwmac_match, !79, !"socfpga_dwmac_match", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 519, i32 34}
!80 = !{ptr @socfpga_gen5_ops, !81, !"socfpga_gen5_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 511, i32 39}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 271, i32 3}
!84 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @socfpga_gen5_set_phy_mode._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @socfpga_gen5_set_phy_mode._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 316, i32 4}
!89 = !{ptr @socfpga_gen5_set_phy_mode._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @socfpga_gen5_set_phy_mode._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @socfpga_gen10_ops, !92, !"socfpga_gen10_ops", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 515, i32 39}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 373, i32 4}
!95 = !{ptr @socfpga_gen10_set_phy_mode._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @socfpga_gen10_set_phy_mode._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @socfpga_dwmac_pm_ops, !98, !"socfpga_dwmac_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c", i32 506, i32 32}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2157509281}
!110 = !{i64 4034872}
!111 = !{i64 4035910}
!112 = !{i64 2157509971}
!113 = !{i64 2157510207}
!114 = !{i64 4035492}
!115 = !{i8 0, i8 2}
