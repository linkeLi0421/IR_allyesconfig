; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stmmac_probe_config_dt\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_probe_config_dt\09\09\09\09"
module asm "\09.long\09__crc_stmmac_probe_config_dt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_probe_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_probe_config_dt\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_probe_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmmac_remove_config_dt\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_remove_config_dt\09\09\09\09"
module asm "\09.long\09__crc_stmmac_remove_config_dt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_remove_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_remove_config_dt\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_remove_config_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmmac_get_platform_resources\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_get_platform_resources\09\09\09\09"
module asm "\09.long\09__crc_stmmac_get_platform_resources\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_get_platform_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_get_platform_resources\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_get_platform_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmmac_pltfr_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_pltfr_remove\09\09\09\09"
module asm "\09.long\09__crc_stmmac_pltfr_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_pltfr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_pltfr_remove\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_pltfr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stmmac_pltfr_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_stmmac_pltfr_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_stmmac_pltfr_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmmac_pltfr_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22stmmac_pltfr_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_stmmac_pltfr_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max-speed\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_csr\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,phy-addr\00", [18 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snps,phy-addr property is deprecated\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stmmac_probe_config_dt\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry_ptr = internal global ptr @stmmac_probe_config_dt._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,force_sf_dma_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snps,en-tx-lpi-clockgating\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,spear600-gmac\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-3.50a\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-3.70a\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snps,dwmac\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-frame-size\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snps,multicast-filter-bins\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snps,perfect-filter-entries\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-3.40a\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,dwmac-4.00\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-4.10a\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-4.20a\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-5.10a\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snps,tso\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-3.610\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,dwmac-3.710\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snps,dwxgmac\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snps,pbl\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snps,txpbl\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snps,rxpbl\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snps,no-pbl-x8\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snps,aal\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,fixed-burst\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,mixed-burst\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snps,force_thresh_dma_mode\00", [37 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.6, ptr @.str.7, i32 565, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"force_sf_dma_mode is ignored if force_thresh_dma_mode is set.\0A\00", [33 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry_ptr.40 = internal global ptr @stmmac_probe_config_dt._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,ps-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snps,dwc-qos-ethernet-4.10\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmmaceth\00", [22 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.6, ptr @.str.7, i32 583, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot get CSR clock\0A\00", [42 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry_ptr.46 = internal global ptr @stmmac_probe_config_dt._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptp_ref\00", [24 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.6, ptr @.str.7, i32 601, ptr @.str.51, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PTP uses main clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stmmac_probe_config_dt._entry_ptr.52 = internal global ptr @stmmac_probe_config_dt._entry.49, section ".printk_index", align 4
@stmmac_probe_config_dt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.6, ptr @.str.7, ptr @.str.54, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmmac_platform\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PTP rate %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_stmmac_probe_config_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_probe_config_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_probe_config_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_probe_config_dt to i32), ptr @__kstrtab_stmmac_probe_config_dt, ptr @__kstrtabns_stmmac_probe_config_dt }, section "___ksymtab_gpl+stmmac_probe_config_dt", align 4
@__kstrtab_stmmac_remove_config_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_remove_config_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_remove_config_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_remove_config_dt to i32), ptr @__kstrtab_stmmac_remove_config_dt, ptr @__kstrtabns_stmmac_remove_config_dt }, section "___ksymtab_gpl+stmmac_remove_config_dt", align 4
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"macirq\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eth_wake_irq\00", [19 x i8] zeroinitializer }, align 32
@stmmac_get_platform_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.7, i32 685, ptr @.str.51, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IRQ eth_wake_irq not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stmmac_get_platform_resources\00", [34 x i8] zeroinitializer }, align 32
@stmmac_get_platform_resources._entry_ptr = internal global ptr @stmmac_get_platform_resources._entry, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_lpi\00", [24 x i8] zeroinitializer }, align 32
@stmmac_get_platform_resources._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.7, i32 694, ptr @.str.51, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ eth_lpi not found\0A\00", [41 x i8] zeroinitializer }, align 32
@stmmac_get_platform_resources._entry_ptr.63 = internal global ptr @stmmac_get_platform_resources._entry.61, section ".printk_index", align 4
@__kstrtab_stmmac_get_platform_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_get_platform_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_get_platform_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_get_platform_resources to i32), ptr @__kstrtab_stmmac_get_platform_resources, ptr @__kstrtabns_stmmac_get_platform_resources }, section "___ksymtab_gpl+stmmac_get_platform_resources", align 4
@__kstrtab_stmmac_pltfr_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_pltfr_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_pltfr_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_pltfr_remove to i32), ptr @__kstrtab_stmmac_pltfr_remove, ptr @__kstrtabns_stmmac_pltfr_remove }, section "___ksymtab_gpl+stmmac_pltfr_remove", align 4
@stmmac_pltfr_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr @stmmac_pltfr_suspend, ptr @stmmac_pltfr_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_pltfr_noirq_suspend, ptr @stmmac_pltfr_noirq_resume, ptr @stmmac_runtime_suspend, ptr @stmmac_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_stmmac_pltfr_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmmac_pltfr_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_stmmac_pltfr_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmmac_pltfr_pm_ops to i32), ptr @__kstrtab_stmmac_pltfr_pm_ops, ptr @__kstrtabns_stmmac_pltfr_pm_ops }, section "___ksymtab_gpl+stmmac_pltfr_pm_ops", align 4
@__UNIQUE_ID_description356 = internal constant [73 x i8] c"stmmac_platform.description=STMMAC 10/100/1000 Ethernet platform support\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [67 x i8] c"stmmac_platform.author=Giuseppe Cavallaro <peppe.cavallaro@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [73 x i8] c"stmmac_platform.file=drivers/net/ethernet/stmicro/stmmac/stmmac-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [28 x i8] c"stmmac_platform.license=GPL\00", section ".modinfo", align 1
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac-mode\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@stmmac_dt_phy.need_mdio_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc-qos-ethernet-4.10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,dwmac-mdio\00", [16 x i8] zeroinitializer }, align 32
@stmmac_dt_phy.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.98, ptr @.str.7, ptr @.str.99, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmmac_dt_phy\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Found MDIO subnode\0A\00", [44 x i8] zeroinitializer }, align 32
@dwmac1000_validate_ucast_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.7, i32 81, ptr @.str.51, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unicast table entries set to unexpected value %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dwmac1000_validate_ucast_entries\00", [63 x i8] zeroinitializer }, align 32
@dwmac1000_validate_ucast_entries._entry_ptr = internal global ptr @dwmac1000_validate_ucast_entries._entry, section ".printk_index", align 4
@dwmac1000_validate_mcast_bins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.7, i32 50, ptr @.str.51, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Hash table entries set to unexpected value %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwmac1000_validate_mcast_bins\00", [34 x i8] zeroinitializer }, align 32
@dwmac1000_validate_mcast_bins._entry_ptr = internal global ptr @dwmac1000_validate_mcast_bins._entry, section ".printk_index", align 4
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,axi-config\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,lpi_en\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snps,xit_frm\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,axi_kbbe\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,axi_fb\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,axi_mb\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,axi_rb\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,wr_osr_lmt\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,rd_osr_lmt\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snps,blen\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,mtl-rx-config\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,mtl-tx-config\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,rx-queues-to-use\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,rx-sched-sp\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snps,rx-sched-wsp\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,dcb-algorithm\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,avb-algorithm\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snps,map-to-dma-channel\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,priority\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,route-avcp\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snps,route-ptp\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,route-dcbcp\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snps,route-up\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snps,route-multi-broad\00", [41 x i8] zeroinitializer }, align 32
@stmmac_mtl_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.7, i32 219, ptr @.str.130, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not all RX queues were configured\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stmmac_mtl_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stmmac_mtl_setup._entry_ptr = internal global ptr @stmmac_mtl_setup._entry, section ".printk_index", align 4
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,tx-queues-to-use\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snps,tx-sched-wrr\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snps,tx-sched-wfq\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snps,tx-sched-dwrr\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snps,weight\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,send_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,idle_slope\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snps,high_credit\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snps,low_credit\00", [16 x i8] zeroinitializer }, align 32
@stmmac_mtl_setup._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.129, ptr @.str.7, i32 283, ptr @.str.130, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not all TX queues were configured\0A\00", [61 x i8] zeroinitializer }, align 32
@stmmac_mtl_setup._entry_ptr.142 = internal global ptr @stmmac_mtl_setup._entry.140, section ".printk_index", align 4
@switch.table.stmmac_probe_config_dt = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.94, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.143 = internal global [36 x i64] [i64 34, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 428, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 434, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 437, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 448, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 453, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 454, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 461, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 463, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 466, i32 29 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 469, i32 29 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 487, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 488, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 489, i32 31 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 490, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 498, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 499, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 501, i32 28 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 511, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 519, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 520, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 521, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 522, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 526, i32 44 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 529, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 530, i32 31 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 536, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 550, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 553, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 554, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 555, i32 46 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 557, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 558, i32 51 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 559, i32 51 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 561, i32 58 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 564, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 568, i32 27 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 579, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 581, i32 7 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 583, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 589, i32 49 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 597, i32 47 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 601, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 604, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 615, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 669, i32 50 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 681, i32 42 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 685, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 690, i32 42 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 694, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c"stmmac_pltfr_pm_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 825, i32 25 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 375, i32 36 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 211, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 213, i32 10 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 215, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 217, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 219, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 221, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 223, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 225, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 227, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 229, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 231, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 233, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 235, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 237, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 239, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 241, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 243, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 245, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 247, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 249, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 251, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 253, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 255, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 257, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 259, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 261, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 263, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 265, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 267, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 269, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 271, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant [14 x i8] c"need_mdio_ids\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 324, i32 35 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 330, i32 46 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 338, i32 11 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 344, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 80, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 49, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 99, i32 43 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 109, i32 46 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 110, i32 47 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 111, i32 44 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 112, i32 42 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 113, i32 42 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 114, i32 43 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 116, i32 31 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 118, i32 31 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 120, i32 33 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 154, i32 48 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 158, i32 48 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 165, i32 36 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 169, i32 37 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 171, i32 42 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 181, i32 37 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 183, i32 42 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 188, i32 36 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 193, i32 36 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 202, i32 37 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 204, i32 42 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 206, i32 42 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 208, i32 42 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 210, i32 42 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 219, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 224, i32 36 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 228, i32 37 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 230, i32 42 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 232, i32 42 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 244, i32 36 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 255, i32 37 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 258, i32 37 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 261, i32 37 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 264, i32 37 }
@___asan_gen_.574 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.578 = private constant [57 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 283, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant [36 x i8] c"switch.table.stmmac_probe_config_dt\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__ksymtab_stmmac_get_platform_resources, ptr @__ksymtab_stmmac_pltfr_pm_ops, ptr @__ksymtab_stmmac_pltfr_remove, ptr @__ksymtab_stmmac_probe_config_dt, ptr @__ksymtab_stmmac_remove_config_dt, ptr @dwmac1000_validate_mcast_bins._entry, ptr @dwmac1000_validate_mcast_bins._entry_ptr, ptr @dwmac1000_validate_ucast_entries._entry, ptr @dwmac1000_validate_ucast_entries._entry_ptr, ptr @stmmac_get_platform_resources._entry, ptr @stmmac_get_platform_resources._entry.61, ptr @stmmac_get_platform_resources._entry_ptr, ptr @stmmac_get_platform_resources._entry_ptr.63, ptr @stmmac_mtl_setup._entry, ptr @stmmac_mtl_setup._entry.140, ptr @stmmac_mtl_setup._entry_ptr, ptr @stmmac_mtl_setup._entry_ptr.142, ptr @stmmac_probe_config_dt._entry, ptr @stmmac_probe_config_dt._entry.38, ptr @stmmac_probe_config_dt._entry.44, ptr @stmmac_probe_config_dt._entry.49, ptr @stmmac_probe_config_dt._entry_ptr, ptr @stmmac_probe_config_dt._entry_ptr.40, ptr @stmmac_probe_config_dt._entry_ptr.46, ptr @stmmac_probe_config_dt._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @stmmac_pltfr_pm_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @stmmac_dt_phy.need_mdio_ids, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @switch.table.stmmac_probe_config_dt], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_probe_config_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_probe_config_dt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_probe_config_dt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_probe_config_dt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_get_platform_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_get_platform_resources._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_pltfr_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_dt_phy.need_mdio_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_validate_ucast_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_validate_mcast_bins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mtl_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_mtl_setup._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stmmac_probe_config_dt to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stmmac_probe_config_dt(ptr noundef %pdev, ptr noundef %mac) #0 align 64 {
entry:
  %args.i407.i = alloca %struct.of_phandle_args, align 4
  %args.i.i437 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %pm.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 720, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @of_get_mac_address(ptr noundef %1, ptr noundef %mac) #7
  %2 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.end8 [
    i32 0, label %if.end.if.end9_crit_edge
    i32 -517, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memset(ptr %mac, i32 0, i32 6)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %call11 = tail call i32 @device_get_phy_mode(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %call11 to ptr
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %phy_interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %phy_interface to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %phy_interface, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.i) #7
  %6 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %pm.i, align 4, !annotation !306
  %call.i397 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef nonnull %pm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %cmp.i = icmp slt i32 %call.i397, 0
  br i1 %cmp.i, label %if.end15.if.then19_crit_edge, label %for.cond.preheader.i

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

for.cond.preheader.i:                             ; preds = %if.end15
  %7 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pm.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.012.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.012.i)
  %9 = icmp ult i32 %i.012.i, 30
  br i1 %9, label %switch.lookup, label %for.body.i.phy_modes.exit.i_crit_edge

for.body.i.phy_modes.exit.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %phy_modes.exit.i

switch.lookup:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.stmmac_probe_config_dt, i32 0, i32 %i.012.i
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit.i

phy_modes.exit.i:                                 ; preds = %switch.lookup, %for.body.i.phy_modes.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.95, %for.body.i.phy_modes.exit.i_crit_edge ]
  %call3.i = call i32 @strcasecmp(ptr noundef %8, ptr noundef nonnull %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %stmmac_of_get_mac_mode.exit, label %for.inc.i

for.inc.i:                                        ; preds = %phy_modes.exit.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.if.then19_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then19_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

stmmac_of_get_mac_mode.exit:                      ; preds = %phy_modes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i) #7
  %interface = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %i.012.i, ptr %interface, align 4
  br label %if.end22

if.then19:                                        ; preds = %for.inc.i.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.i) #7
  %interface462 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_interface, align 4
  %14 = ptrtoint ptr %interface462 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %interface462, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %stmmac_of_get_mac_mode.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i399 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %tobool.not.i400 = icmp eq i32 %call.i399, 0
  br i1 %tobool.not.i400, label %if.end.i, label %if.end22.of_parse_phandle.exit_crit_edge

if.end22.of_parse_phandle.exit_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end22.of_parse_phandle.exit_crit_edge
  %retval.0.i401 = phi ptr [ %17, %if.end.i ], [ null, %if.end22.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %phy_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i401, ptr %phy_node, align 4
  %phylink_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %phylink_node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %phylink_node, align 4
  %max_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 22
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %max_speed, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %of_parse_phandle.exit.if.end28_crit_edge, label %if.then26

of_parse_phandle.exit.if.end28_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %max_speed, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %of_parse_phandle.exit.if.end28_crit_edge
  %call29 = call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %21 = call i32 @llvm.smax.i32(i32 %call29, i32 0)
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call.i, align 4
  %phy_addr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %phy_addr, align 4
  %clk_csr = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 12
  %24 = ptrtoint ptr %clk_csr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %clk_csr, align 4
  %call.i.i402 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %clk_csr, i32 noundef 1, i32 noundef 0) #7
  %call.i.i403 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %phy_addr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i403)
  %cmp39 = icmp sgt i32 %call.i.i403, -1
  br i1 %cmp39, label %do.end, label %if.end28.if.end42_crit_edge

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end28.if.end42_crit_edge
  %call44 = call fastcc i32 @stmmac_dt_phy(ptr noundef nonnull %call.i, ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %25 = inttoptr i32 %call44 to ptr
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  %tx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 26
  %call.i.i404 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %tx_fifo_size, i32 noundef 1, i32 noundef 0) #7
  %rx_fifo_size = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 27
  %call.i.i405 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %rx_fifo_size, i32 noundef 1, i32 noundef 0) #7
  %call.i406 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i406, null
  %conv = zext i1 %tobool.i to i32
  %force_sf_dma_mode = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %force_sf_dma_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %force_sf_dma_mode, align 4
  %call.i407 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i408 = icmp ne ptr %call.i407, null
  %en_tx_lpi_clockgating = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 63
  %frombool = zext i1 %tobool.i408 to i8
  %27 = ptrtoint ptr %en_tx_lpi_clockgating to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %en_tx_lpi_clockgating, align 4
  %maxmtu = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %maxmtu to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 9000, ptr %maxmtu, align 4
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 24
  %29 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %multicast_filter_bins, align 4
  %unicast_filter_entries = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 25
  %30 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %unicast_filter_entries, align 4
  %call53 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %if.end48.if.then63_crit_edge

if.end48.if.then63_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.end48
  %call55 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %lor.lhs.false57, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %call58 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %lor.lhs.false57.if.then63_crit_edge

lor.lhs.false57.if.then63_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call61 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %lor.lhs.false60.if.end78_crit_edge, label %lor.lhs.false60.if.then63_crit_edge

lor.lhs.false60.if.then63_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false60.if.end78_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then63:                                        ; preds = %lor.lhs.false60.if.then63_crit_edge, %lor.lhs.false57.if.then63_crit_edge, %lor.lhs.false.if.then63_crit_edge, %if.end48.if.then63_crit_edge
  %call.i.i409 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %maxmtu, i32 noundef 1, i32 noundef 0) #7
  %call.i.i410 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %multicast_filter_bins, i32 noundef 1, i32 noundef 0) #7
  %call.i.i411 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef %unicast_filter_entries, i32 noundef 1, i32 noundef 0) #7
  %31 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %unicast_filter_entries, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %32, label %sw.default.i [
    i32 64, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge
    i32 128, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge474
    i32 1, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge475
    i32 2, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge476
    i32 3, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge477
    i32 4, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge478
    i32 5, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge479
    i32 6, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge480
    i32 7, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge481
    i32 8, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge482
    i32 9, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge483
    i32 10, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge484
    i32 11, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge485
    i32 12, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge486
    i32 13, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge487
    i32 14, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge488
    i32 15, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge489
    i32 16, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge490
    i32 17, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge491
    i32 18, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge492
    i32 19, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge493
    i32 20, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge494
    i32 21, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge495
    i32 22, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge496
    i32 23, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge497
    i32 24, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge498
    i32 25, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge499
    i32 26, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge500
    i32 27, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge501
    i32 28, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge502
    i32 29, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge503
    i32 30, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge504
    i32 31, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge505
    i32 32, label %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge506
  ]

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge506: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge505: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge504: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge503: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge502: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge501: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge500: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge499: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge498: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge497: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge496: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge495: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge494: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge493: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge492: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge491: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge490: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge489: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge488: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge487: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge486: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge485: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge484: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge483: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge482: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge481: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge480: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge479: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge478: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge477: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge476: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge475: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge474: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_ucast_entries.exit

sw.default.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %32) #10
  br label %dwmac1000_validate_ucast_entries.exit

dwmac1000_validate_ucast_entries.exit:            ; preds = %sw.default.i, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge474, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge475, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge476, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge477, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge478, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge479, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge480, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge481, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge482, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge483, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge484, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge485, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge486, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge487, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge488, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge489, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge490, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge491, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge492, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge493, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge494, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge495, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge496, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge497, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge498, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge499, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge500, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge501, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge502, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge503, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge504, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge505, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge506
  %x.0.i = phi i32 [ 1, %sw.default.i ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge474 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge475 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge476 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge477 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge478 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge479 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge480 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge481 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge482 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge483 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge484 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge485 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge486 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge487 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge488 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge489 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge490 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge491 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge492 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge493 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge494 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge495 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge496 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge497 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge498 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge499 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge500 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge501 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge502 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge503 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge504 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge505 ], [ %32, %if.then63.dwmac1000_validate_ucast_entries.exit_crit_edge506 ]
  %34 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %x.0.i, ptr %unicast_filter_entries, align 4
  %35 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %multicast_filter_bins, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %36, label %sw.default.i412 [
    i32 64, label %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge
    i32 128, label %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge507
    i32 256, label %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge508
  ]

dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge508: ; preds = %dwmac1000_validate_ucast_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_mcast_bins.exit

dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge507: ; preds = %dwmac1000_validate_ucast_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_mcast_bins.exit

dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge: ; preds = %dwmac1000_validate_ucast_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dwmac1000_validate_mcast_bins.exit

sw.default.i412:                                  ; preds = %dwmac1000_validate_ucast_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %36) #10
  br label %dwmac1000_validate_mcast_bins.exit

dwmac1000_validate_mcast_bins.exit:               ; preds = %sw.default.i412, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge507, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge508
  %x.0.i413 = phi i32 [ 0, %sw.default.i412 ], [ %36, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge ], [ %36, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge507 ], [ %36, %dwmac1000_validate_ucast_entries.exit.dwmac1000_validate_mcast_bins.exit_crit_edge508 ]
  %38 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %x.0.i413, ptr %multicast_filter_bins, align 4
  %has_gmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 13
  %39 = ptrtoint ptr %has_gmac to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %has_gmac, align 4
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %pmt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %pmt, align 4
  br label %if.end78

if.end78:                                         ; preds = %dwmac1000_validate_mcast_bins.exit, %lor.lhs.false60.if.end78_crit_edge
  %call79 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.if.end84_crit_edge, label %if.then81

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %has_gmac82 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 13
  %41 = ptrtoint ptr %has_gmac82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %has_gmac82, align 4
  %enh_desc = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %enh_desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %enh_desc, align 4
  %tx_coe = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 15
  %43 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %tx_coe, align 4
  %bugged_jumbo = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 17
  %44 = ptrtoint ptr %bugged_jumbo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %bugged_jumbo, align 4
  %pmt83 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 18
  %45 = ptrtoint ptr %pmt83 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %pmt83, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end78.if.end84_crit_edge
  %call85 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %if.end84.if.then96_crit_edge

if.end84.if.then96_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false87:                                  ; preds = %if.end84
  %call88 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false90, label %lor.lhs.false87.if.then96_crit_edge

lor.lhs.false87.if.then96_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false90:                                  ; preds = %lor.lhs.false87
  %call91 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %lor.lhs.false90.if.then96_crit_edge

lor.lhs.false90.if.then96_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %call94 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %lor.lhs.false93.if.end101_crit_edge, label %lor.lhs.false93.if.then96_crit_edge

lor.lhs.false93.if.then96_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false93.if.end101_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then96:                                        ; preds = %lor.lhs.false93.if.then96_crit_edge, %lor.lhs.false90.if.then96_crit_edge, %lor.lhs.false87.if.then96_crit_edge, %if.end84.if.then96_crit_edge
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 58
  %46 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %has_gmac4, align 4
  %has_gmac97 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 13
  %47 = ptrtoint ptr %has_gmac97 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %has_gmac97, align 4
  %pmt98 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 18
  %48 = ptrtoint ptr %pmt98 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %pmt98, align 4
  %call.i414 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool.i415 = icmp ne ptr %call.i414, null
  %tso_en = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 60
  %frombool100 = zext i1 %tobool.i415 to i8
  %49 = ptrtoint ptr %tso_en to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool100, ptr %tso_en, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %lor.lhs.false93.if.end101_crit_edge
  %call102 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %if.end101.if.then107_crit_edge

if.end101.if.then107_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

lor.lhs.false104:                                 ; preds = %if.end101
  %call105 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %lor.lhs.false104.if.end111_crit_edge, label %lor.lhs.false104.if.then107_crit_edge

lor.lhs.false104.if.then107_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then107

lor.lhs.false104.if.end111_crit_edge:             ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then107:                                       ; preds = %lor.lhs.false104.if.then107_crit_edge, %if.end101.if.then107_crit_edge
  %enh_desc108 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 14
  %50 = ptrtoint ptr %enh_desc108 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %enh_desc108, align 4
  %bugged_jumbo109 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 17
  %51 = ptrtoint ptr %bugged_jumbo109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %bugged_jumbo109, align 4
  %52 = ptrtoint ptr %force_sf_dma_mode to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %force_sf_dma_mode, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %lor.lhs.false104.if.end111_crit_edge
  %call112 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.if.end119_crit_edge, label %if.then114

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 64
  %53 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %has_xgmac, align 4
  %pmt115 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 18
  %54 = ptrtoint ptr %pmt115 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %pmt115, align 4
  %call.i416 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool.i417 = icmp ne ptr %call.i416, null
  %tso_en117 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 60
  %frombool118 = zext i1 %tobool.i417 to i8
  %55 = ptrtoint ptr %tso_en117 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool118, ptr %tso_en117, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end111.if.end119_crit_edge
  %call.i418 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool122.not = icmp eq ptr %call.i418, null
  br i1 %tobool122.not, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %stmmac_clk.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 47
  %56 = ptrtoint ptr %stmmac_clk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stmmac_clk.i, align 4
  call void @clk_disable(ptr noundef %57) #7
  call void @clk_unprepare(ptr noundef %57) #7
  %pclk.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 48
  %58 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pclk.i, align 4
  call void @clk_disable(ptr noundef %59) #7
  call void @clk_unprepare(ptr noundef %59) #7
  %60 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %61) #7
  %mdio_node.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 7
  %62 = ptrtoint ptr %mdio_node.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdio_node.i, align 4
  call void @of_node_put(ptr noundef %63) #7
  br label %cleanup

if.end125:                                        ; preds = %if.end119
  %dma_cfg126 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 8
  %64 = ptrtoint ptr %dma_cfg126 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i418, ptr %dma_cfg126, align 4
  %call.i.i419 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i418, i32 noundef 1, i32 noundef 0) #7
  %65 = ptrtoint ptr %call.i418 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool129.not = icmp eq i32 %66, 0
  br i1 %tobool129.not, label %if.then130, label %if.end125.if.end132_crit_edge

if.end125.if.end132_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %call.i418 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %call.i418, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end125.if.end132_crit_edge
  %txpbl = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 1
  %call.i.i420 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %txpbl, i32 noundef 1, i32 noundef 0) #7
  %rxpbl = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 2
  %call.i.i421 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %rxpbl, i32 noundef 1, i32 noundef 0) #7
  %call.i422 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef null) #7
  %tobool.i423.not = icmp eq ptr %call.i422, null
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 3
  %frombool136 = zext i1 %tobool.i423.not to i8
  %68 = ptrtoint ptr %pblx8 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool136, ptr %pblx8, align 4
  %call.i424 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef null) #7
  %tobool.i425 = icmp ne ptr %call.i424, null
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 6
  %frombool138 = zext i1 %tobool.i425 to i8
  %69 = ptrtoint ptr %aal to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool138, ptr %aal, align 4
  %call.i426 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %tobool.i427 = icmp ne ptr %call.i426, null
  %conv140 = zext i1 %tobool.i427 to i32
  %fixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 4
  %70 = ptrtoint ptr %fixed_burst to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv140, ptr %fixed_burst, align 4
  %call.i428 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef null) #7
  %tobool.i429 = icmp ne ptr %call.i428, null
  %conv142 = zext i1 %tobool.i429 to i32
  %mixed_burst = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %call.i418, i32 0, i32 5
  %71 = ptrtoint ptr %mixed_burst to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv142, ptr %mixed_burst, align 4
  %call.i430 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef null) #7
  %tobool.i431 = icmp ne ptr %call.i430, null
  %conv144 = zext i1 %tobool.i431 to i32
  %force_thresh_dma_mode = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 20
  %72 = ptrtoint ptr %force_thresh_dma_mode to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv144, ptr %force_thresh_dma_mode, align 4
  br i1 %tobool.i431, label %if.then147, label %if.end132.if.end153_crit_edge

if.end132.if.end153_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then147:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %force_sf_dma_mode to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %force_sf_dma_mode, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %if.end132.if.end153_crit_edge
  %mac_port_sel_speed = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 62
  %call.i.i432 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %mac_port_sel_speed, i32 noundef 1, i32 noundef 0) #7
  %74 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %76 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i433 = call i32 @__of_parse_phandle_with_args(ptr noundef %75, ptr noundef nonnull @.str.104, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i433)
  %tobool.not.i.i = icmp eq i32 %call.i.i433, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %stmmac_axi_setup.exit

of_parse_phandle.exit.i:                          ; preds = %if.end153
  %77 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i434 = icmp eq ptr %78, null
  br i1 %tobool.not.i434, label %of_parse_phandle.exit.i.stmmac_axi_setup.exit_crit_edge, label %if.end.i435

of_parse_phandle.exit.i.stmmac_axi_setup.exit_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmmac_axi_setup.exit

if.end.i435:                                      ; preds = %of_parse_phandle.exit.i
  %call.i54.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call.i54.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i435
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %78) #7
  br label %stmmac_axi_setup.exit

if.end6.i:                                        ; preds = %if.end.i435
  %call.i55.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.105, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i55.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %79 = ptrtoint ptr %call.i54.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool.i, ptr %call.i54.i, align 4
  %call.i56.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.106, ptr noundef null) #7
  %tobool.i57.i = icmp ne ptr %call.i56.i, null
  %axi_xit_frm.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 1
  %frombool9.i = zext i1 %tobool.i57.i to i8
  %80 = ptrtoint ptr %axi_xit_frm.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool9.i, ptr %axi_xit_frm.i, align 1
  %call.i58.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.107, ptr noundef null) #7
  %tobool.i59.i = icmp ne ptr %call.i58.i, null
  %axi_kbbe.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 4
  %frombool11.i = zext i1 %tobool.i59.i to i8
  %81 = ptrtoint ptr %axi_kbbe.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool11.i, ptr %axi_kbbe.i, align 4
  %call.i60.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.108, ptr noundef null) #7
  %tobool.i61.i = icmp ne ptr %call.i60.i, null
  %axi_fb.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 6
  %frombool13.i = zext i1 %tobool.i61.i to i8
  %82 = ptrtoint ptr %axi_fb.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %frombool13.i, ptr %axi_fb.i, align 4
  %call.i62.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.109, ptr noundef null) #7
  %tobool.i63.i = icmp ne ptr %call.i62.i, null
  %axi_mb.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 7
  %frombool15.i = zext i1 %tobool.i63.i to i8
  %83 = ptrtoint ptr %axi_mb.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool15.i, ptr %axi_mb.i, align 1
  %call.i64.i = call ptr @of_find_property(ptr noundef nonnull %78, ptr noundef nonnull @.str.110, ptr noundef null) #7
  %tobool.i65.i = icmp ne ptr %call.i64.i, null
  %axi_rb.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 8
  %frombool17.i = zext i1 %tobool.i65.i to i8
  %84 = ptrtoint ptr %axi_rb.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %frombool17.i, ptr %axi_rb.i, align 2
  %axi_wr_osr_lmt.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %78, ptr noundef nonnull @.str.111, ptr noundef %axi_wr_osr_lmt.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool19.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool19.not.i, label %if.end6.i.if.end22.i_crit_edge, label %if.then20.i

if.end6.i.if.end22.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %axi_wr_osr_lmt.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %axi_wr_osr_lmt.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end6.i.if.end22.i_crit_edge
  %axi_rd_osr_lmt.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 3
  %call.i.i66.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %78, ptr noundef nonnull @.str.112, ptr noundef %axi_rd_osr_lmt.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i66.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i66.i, -1
  br i1 %tobool24.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then25.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %axi_rd_osr_lmt.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %axi_rd_osr_lmt.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %axi_blen.i = getelementptr inbounds %struct.stmmac_axi, ptr %call.i54.i, i32 0, i32 5
  %call.i67.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %78, ptr noundef nonnull @.str.113, ptr noundef %axi_blen.i, i32 noundef 7, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %78) #7
  br label %stmmac_axi_setup.exit

stmmac_axi_setup.exit:                            ; preds = %if.end27.i, %if.then4.i, %of_parse_phandle.exit.i.stmmac_axi_setup.exit_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0.i436 = phi ptr [ %call.i54.i, %if.end27.i ], [ inttoptr (i32 -12 to ptr), %if.then4.i ], [ null, %of_parse_phandle.exit.i.stmmac_axi_setup.exit_crit_edge ], [ null, %of_parse_phandle.exit.thread.i ]
  %axi = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 57
  %87 = ptrtoint ptr %axi to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %retval.0.i436, ptr %axi, align 4
  %rx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 29
  %88 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %rx_queues_to_use.i, align 4
  %tx_queues_to_use.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 30
  %89 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %tx_queues_to_use.i, align 4
  %rx_queues_cfg.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33
  %90 = ptrtoint ptr %rx_queues_cfg.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %rx_queues_cfg.i, align 4
  %mode_to_use2.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 0, i32 1
  %91 = ptrtoint ptr %mode_to_use2.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %mode_to_use2.i, align 4
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i437) #7
  %94 = call ptr @memset(ptr %args.i.i437, i32 255, i32 72)
  %call.i.i440 = call i32 @__of_parse_phandle_with_args(ptr noundef %93, ptr noundef nonnull @.str.114, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i437) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i440)
  %tobool.not.i.i441 = icmp eq i32 %call.i.i440, 0
  br i1 %tobool.not.i.i441, label %of_parse_phandle.exit.i444, label %of_parse_phandle.exit.thread.i442

of_parse_phandle.exit.thread.i442:                ; preds = %stmmac_axi_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i437) #7
  br label %if.end160

of_parse_phandle.exit.i444:                       ; preds = %stmmac_axi_setup.exit
  %95 = ptrtoint ptr %args.i.i437 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %args.i.i437, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i437) #7
  %tobool.not.i443 = icmp eq ptr %96, null
  br i1 %tobool.not.i443, label %of_parse_phandle.exit.i444.if.end160_crit_edge, label %if.end.i445

of_parse_phandle.exit.i444.if.end160_crit_edge:   ; preds = %of_parse_phandle.exit.i444
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.end.i445:                                      ; preds = %of_parse_phandle.exit.i444
  %97 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i407.i) #7
  %99 = call ptr @memset(ptr %args.i407.i, i32 255, i32 72)
  %call.i408.i = call i32 @__of_parse_phandle_with_args(ptr noundef %98, ptr noundef nonnull @.str.115, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i407.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408.i)
  %tobool.not.i409.i = icmp eq i32 %call.i408.i, 0
  br i1 %tobool.not.i409.i, label %of_parse_phandle.exit412.i, label %of_parse_phandle.exit412.thread.i

of_parse_phandle.exit412.thread.i:                ; preds = %if.end.i445
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i407.i) #7
  br label %if.then7.i

of_parse_phandle.exit412.i:                       ; preds = %if.end.i445
  %100 = ptrtoint ptr %args.i407.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %args.i407.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i407.i) #7
  %tobool6.not.i = icmp eq ptr %101, null
  br i1 %tobool6.not.i, label %of_parse_phandle.exit412.i.if.then7.i_crit_edge, label %if.end8.i

of_parse_phandle.exit412.i.if.then7.i_crit_edge:  ; preds = %of_parse_phandle.exit412.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %of_parse_phandle.exit412.i.if.then7.i_crit_edge, %of_parse_phandle.exit412.thread.i
  call void @of_node_put(ptr noundef nonnull %96) #7
  br label %if.end160

if.end8.i:                                        ; preds = %of_parse_phandle.exit412.i
  %call.i.i.i446 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %96, ptr noundef nonnull @.str.116, ptr noundef %rx_queues_to_use.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i446)
  %tobool11.not.i = icmp sgt i32 %call.i.i.i446, -1
  br i1 %tobool11.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then12.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %rx_queues_to_use.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end14.i_crit_edge
  %call.i413.i = call ptr @of_find_property(ptr noundef nonnull %96, ptr noundef nonnull @.str.117, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i413.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_sched_algorithm.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 31
  %103 = ptrtoint ptr %rx_sched_algorithm.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 4, ptr %rx_sched_algorithm.i, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end14.i
  %call.i414.i = call ptr @of_find_property(ptr noundef nonnull %96, ptr noundef nonnull @.str.118, ptr noundef null) #7
  %tobool.i415.not.i = icmp eq ptr %call.i414.i, null
  %rx_sched_algorithm21.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 31
  br i1 %tobool.i415.not.i, label %if.else20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %rx_sched_algorithm21.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 5, ptr %rx_sched_algorithm21.i, align 4
  br label %if.end23.i

if.else20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %rx_sched_algorithm21.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 4, ptr %rx_sched_algorithm21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else20.i, %if.then18.i, %if.then16.i
  %call24.i = call ptr @of_get_next_child(ptr noundef nonnull %96, ptr noundef null) #7
  %cmp.not455.i = icmp eq ptr %call24.i, null
  br i1 %cmp.not455.i, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.for.body.i447_crit_edge

if.end23.i.for.body.i447_crit_edge:               ; preds = %if.end23.i
  br label %for.body.i447

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i447:                                    ; preds = %if.end122.i.for.body.i447_crit_edge, %if.end23.i.for.body.i447_crit_edge
  %queue.0458.i = phi i8 [ %inc.i448, %if.end122.i.for.body.i447_crit_edge ], [ 0, %if.end23.i.for.body.i447_crit_edge ]
  %q_node.0456.i = phi ptr [ %call123.i, %if.end122.i.for.body.i447_crit_edge ], [ %call24.i, %if.end23.i.for.body.i447_crit_edge ]
  %conv.i = zext i8 %queue.0458.i to i32
  %106 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %conv.i)
  %cmp26.not.i = icmp ugt i32 %107, %conv.i
  br i1 %cmp26.not.i, label %if.end29.i, label %for.body.i447.for.end.i_crit_edge

for.body.i447.for.end.i_crit_edge:                ; preds = %for.body.i447
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end29.i:                                       ; preds = %for.body.i447
  %call.i416.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.119, ptr noundef null) #7
  %tobool.i417.not.i = icmp eq ptr %call.i416.i, null
  br i1 %tobool.i417.not.i, label %if.else35.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i
  %108 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %arrayidx33.i, align 4
  br label %if.end48.i

if.else35.i:                                      ; preds = %if.end29.i
  %call.i418.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.120, ptr noundef null) #7
  %tobool.i419.not.i = icmp eq ptr %call.i418.i, null
  %arrayidx45.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i
  br i1 %tobool.i419.not.i, label %if.else42.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %arrayidx45.i, align 4
  br label %if.end48.i

if.else42.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %arrayidx45.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else42.i, %if.then37.i, %if.then31.i
  %chan.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 1
  %call.i.i420.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.121, ptr noundef %chan.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i420.i)
  %tobool53.not.i = icmp sgt i32 %call.i.i420.i, -1
  br i1 %tobool53.not.i, label %if.end48.i.if.end60.i_crit_edge, label %if.then54.i

if.end48.i.if.end60.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv.i, ptr %chan.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then54.i, %if.end48.i.if.end60.i_crit_edge
  %prio.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 4
  %call.i.i421.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.122, ptr noundef %prio.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i421.i)
  %tobool65.not.i = icmp sgt i32 %call.i.i421.i, -1
  br i1 %tobool65.not.i, label %if.end60.i.if.end79.i_crit_edge, label %if.then66.i

if.end60.i.if.end79.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then66.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %prio.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %prio.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then66.i, %if.end60.i.if.end79.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.then66.i ], [ 1, %if.end60.i.if.end79.i_crit_edge ]
  %113 = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 3
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink.i, ptr %113, align 1
  %call.i422.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.123, ptr noundef null) #7
  %tobool.i423.not.i = icmp eq ptr %call.i422.i, null
  br i1 %tobool.i423.not.i, label %if.else85.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_route.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 2
  %115 = ptrtoint ptr %pkt_route.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %pkt_route.i, align 4
  br label %if.end122.i

if.else85.i:                                      ; preds = %if.end79.i
  %call.i424.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.124, ptr noundef null) #7
  %tobool.i425.not.i = icmp eq ptr %call.i424.i, null
  br i1 %tobool.i425.not.i, label %if.else92.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_route91.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 2
  %116 = ptrtoint ptr %pkt_route91.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %pkt_route91.i, align 4
  br label %if.end122.i

if.else92.i:                                      ; preds = %if.else85.i
  %call.i426.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.125, ptr noundef null) #7
  %tobool.i427.not.i = icmp eq ptr %call.i426.i, null
  br i1 %tobool.i427.not.i, label %if.else99.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_route98.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 2
  %117 = ptrtoint ptr %pkt_route98.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 3, ptr %pkt_route98.i, align 4
  br label %if.end122.i

if.else99.i:                                      ; preds = %if.else92.i
  %call.i428.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.126, ptr noundef null) #7
  %tobool.i429.not.i = icmp eq ptr %call.i428.i, null
  br i1 %tobool.i429.not.i, label %if.else106.i, label %if.then101.i

if.then101.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #9
  %pkt_route105.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 2
  %118 = ptrtoint ptr %pkt_route105.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %pkt_route105.i, align 4
  br label %if.end122.i

if.else106.i:                                     ; preds = %if.else99.i
  %call.i430.i = call ptr @of_find_property(ptr noundef nonnull %q_node.0456.i, ptr noundef nonnull @.str.127, ptr noundef null) #7
  %tobool.i431.not.i = icmp eq ptr %call.i430.i, null
  %pkt_route117.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 33, i32 %conv.i, i32 2
  br i1 %tobool.i431.not.i, label %if.else113.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %pkt_route117.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 5, ptr %pkt_route117.i, align 4
  br label %if.end122.i

if.else113.i:                                     ; preds = %if.else106.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %pkt_route117.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %pkt_route117.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.else113.i, %if.then108.i, %if.then101.i, %if.then94.i, %if.then87.i, %if.then81.i
  %inc.i448 = add i8 %queue.0458.i, 1
  %call123.i = call ptr @of_get_next_child(ptr noundef nonnull %96, ptr noundef nonnull %q_node.0456.i) #7
  %cmp.not.i = icmp eq ptr %call123.i, null
  br i1 %cmp.not.i, label %if.end122.i.for.end.i_crit_edge, label %if.end122.i.for.body.i447_crit_edge

if.end122.i.for.body.i447_crit_edge:              ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i447

if.end122.i.for.end.i_crit_edge:                  ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end122.i.for.end.i_crit_edge, %for.body.i447.for.end.i_crit_edge, %if.end23.i.for.end.i_crit_edge
  %q_node.0.lcssa.i = phi ptr [ null, %if.end23.i.for.end.i_crit_edge ], [ null, %if.end122.i.for.end.i_crit_edge ], [ %q_node.0456.i, %for.body.i447.for.end.i_crit_edge ]
  %queue.0.lcssa.i = phi i8 [ 0, %if.end23.i.for.end.i_crit_edge ], [ %inc.i448, %if.end122.i.for.end.i_crit_edge ], [ %queue.0458.i, %for.body.i447.for.end.i_crit_edge ]
  %conv124.i = zext i8 %queue.0.lcssa.i to i32
  %121 = ptrtoint ptr %rx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %conv124.i)
  %cmp126.not.i = icmp eq i32 %122, %conv124.i
  br i1 %cmp126.not.i, label %if.end130.i, label %for.end.i.out.sink.split.i_crit_edge

for.end.i.out.sink.split.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split.i

if.end130.i:                                      ; preds = %for.end.i
  %call.i.i432.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %101, ptr noundef nonnull @.str.131, ptr noundef %tx_queues_to_use.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i432.i)
  %tobool133.not.i = icmp sgt i32 %call.i.i432.i, -1
  br i1 %tobool133.not.i, label %if.end130.i.if.end136.i_crit_edge, label %if.then134.i

if.end130.i.if.end136.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then134.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %tx_queues_to_use.i, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then134.i, %if.end130.i.if.end136.i_crit_edge
  %call.i433.i = call ptr @of_find_property(ptr noundef nonnull %101, ptr noundef nonnull @.str.132, ptr noundef null) #7
  %tobool.i434.not.i = icmp eq ptr %call.i433.i, null
  br i1 %tobool.i434.not.i, label %if.else139.i, label %if.then138.i

if.then138.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_sched_algorithm.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 32
  %124 = ptrtoint ptr %tx_sched_algorithm.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %tx_sched_algorithm.i, align 1
  br label %if.end151.i

if.else139.i:                                     ; preds = %if.end136.i
  %call.i435.i = call ptr @of_find_property(ptr noundef nonnull %101, ptr noundef nonnull @.str.133, ptr noundef null) #7
  %tobool.i436.not.i = icmp eq ptr %call.i435.i, null
  br i1 %tobool.i436.not.i, label %if.else143.i, label %if.then141.i

if.then141.i:                                     ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_sched_algorithm142.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 32
  %125 = ptrtoint ptr %tx_sched_algorithm142.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %tx_sched_algorithm142.i, align 1
  br label %if.end151.i

if.else143.i:                                     ; preds = %if.else139.i
  %call.i437.i = call ptr @of_find_property(ptr noundef nonnull %101, ptr noundef nonnull @.str.134, ptr noundef null) #7
  %tobool.i438.not.i = icmp eq ptr %call.i437.i, null
  %tx_sched_algorithm148.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 32
  br i1 %tobool.i438.not.i, label %if.else147.i, label %if.then145.i

if.then145.i:                                     ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %tx_sched_algorithm148.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %tx_sched_algorithm148.i, align 1
  br label %if.end151.i

if.else147.i:                                     ; preds = %if.else143.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %tx_sched_algorithm148.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %tx_sched_algorithm148.i, align 1
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else147.i, %if.then145.i, %if.then141.i, %if.then138.i
  %call152.i = call ptr @of_get_next_child(ptr noundef nonnull %101, ptr noundef null) #7
  %cmp154.not462.i = icmp eq ptr %call152.i, null
  br i1 %cmp154.not462.i, label %if.end151.i.for.end263.i_crit_edge, label %if.end151.i.for.body156.i_crit_edge

if.end151.i.for.body156.i_crit_edge:              ; preds = %if.end151.i
  br label %for.body156.i

if.end151.i.for.end263.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263.i

for.body156.i:                                    ; preds = %if.end259.i.for.body156.i_crit_edge, %if.end151.i.for.body156.i_crit_edge
  %queue.1464.i = phi i8 [ %inc260.i, %if.end259.i.for.body156.i_crit_edge ], [ 0, %if.end151.i.for.body156.i_crit_edge ]
  %q_node.1463.i = phi ptr [ %call262.i, %if.end259.i.for.body156.i_crit_edge ], [ %call152.i, %if.end151.i.for.body156.i_crit_edge ]
  %conv157.i = zext i8 %queue.1464.i to i32
  %128 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv157.i)
  %cmp159.not.i = icmp ugt i32 %129, %conv157.i
  br i1 %cmp159.not.i, label %if.end162.i, label %for.body156.i.for.end263.i_crit_edge

for.body156.i.for.end263.i_crit_edge:             ; preds = %for.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263.i

if.end162.i:                                      ; preds = %for.body156.i
  %arrayidx165.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i
  %call.i.i439.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.135, ptr noundef %arrayidx165.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i439.i)
  %tobool167.not.i = icmp sgt i32 %call.i.i439.i, -1
  br i1 %tobool167.not.i, label %if.end162.i.if.end174.i_crit_edge, label %if.then168.i

if.end162.i.if.end174.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.i

if.then168.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw nsw i32 %conv157.i, 16
  %130 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add.i, ptr %arrayidx165.i, align 4
  br label %if.end174.i

if.end174.i:                                      ; preds = %if.then168.i, %if.end162.i.if.end174.i_crit_edge
  %call.i440.i = call ptr @of_find_property(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.119, ptr noundef null) #7
  %tobool.i441.not.i = icmp eq ptr %call.i440.i, null
  br i1 %tobool.i441.not.i, label %if.else181.i, label %if.then176.i

if.then176.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode_to_use180.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 1
  %131 = ptrtoint ptr %mode_to_use180.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %mode_to_use180.i, align 4
  br label %if.end238.i

if.else181.i:                                     ; preds = %if.end174.i
  %call.i442.i = call ptr @of_find_property(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.120, ptr noundef null) #7
  %tobool.i443.not.i = icmp eq ptr %call.i442.i, null
  %mode_to_use236.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 1
  br i1 %tobool.i443.not.i, label %if.else232.i, label %if.then183.i

if.then183.i:                                     ; preds = %if.else181.i
  %132 = ptrtoint ptr %mode_to_use236.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %mode_to_use236.i, align 4
  %send_slope.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 2
  %call.i.i444.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.136, ptr noundef %send_slope.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i444.i)
  %tobool192.not.i = icmp sgt i32 %call.i.i444.i, -1
  br i1 %tobool192.not.i, label %if.then183.i.if.end198.i_crit_edge, label %if.then193.i

if.then183.i.if.end198.i_crit_edge:               ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198.i

if.then193.i:                                     ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %send_slope.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %send_slope.i, align 4
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.then193.i, %if.then183.i.if.end198.i_crit_edge
  %idle_slope.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 3
  %call.i.i445.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.137, ptr noundef %idle_slope.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i445.i)
  %tobool203.not.i = icmp sgt i32 %call.i.i445.i, -1
  br i1 %tobool203.not.i, label %if.end198.i.if.end209.i_crit_edge, label %if.then204.i

if.end198.i.if.end209.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209.i

if.then204.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %idle_slope.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %idle_slope.i, align 4
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.then204.i, %if.end198.i.if.end209.i_crit_edge
  %high_credit.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 4
  %call.i.i446.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.138, ptr noundef %high_credit.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i446.i)
  %tobool214.not.i = icmp sgt i32 %call.i.i446.i, -1
  br i1 %tobool214.not.i, label %if.end209.i.if.end220.i_crit_edge, label %if.then215.i

if.end209.i.if.end220.i_crit_edge:                ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.i

if.then215.i:                                     ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %high_credit.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %high_credit.i, align 4
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then215.i, %if.end209.i.if.end220.i_crit_edge
  %low_credit.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 5
  %call.i.i447.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.139, ptr noundef %low_credit.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i447.i)
  %tobool225.not.i = icmp sgt i32 %call.i.i447.i, -1
  br i1 %tobool225.not.i, label %if.end220.i.if.end238.i_crit_edge, label %if.then226.i

if.end220.i.if.end238.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238.i

if.then226.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %low_credit.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %low_credit.i, align 4
  br label %if.end238.i

if.else232.i:                                     ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %mode_to_use236.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %mode_to_use236.i, align 4
  br label %if.end238.i

if.end238.i:                                      ; preds = %if.else232.i, %if.then226.i, %if.end220.i.if.end238.i_crit_edge, %if.then176.i
  %prio242.i = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 7
  %call.i.i448.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %q_node.1463.i, ptr noundef nonnull @.str.122, ptr noundef %prio242.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i448.i)
  %tobool244.not.i = icmp sgt i32 %call.i.i448.i, -1
  br i1 %tobool244.not.i, label %if.end238.i.if.end259.i_crit_edge, label %if.then245.i

if.end238.i.if.end259.i_crit_edge:                ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end259.i

if.then245.i:                                     ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %prio242.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %prio242.i, align 4
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then245.i, %if.end238.i.if.end259.i_crit_edge
  %.sink469.i = phi i8 [ 0, %if.then245.i ], [ 1, %if.end238.i.if.end259.i_crit_edge ]
  %139 = getelementptr %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 34, i32 %conv157.i, i32 6
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %.sink469.i, ptr %139, align 4
  %inc260.i = add i8 %queue.1464.i, 1
  %call262.i = call ptr @of_get_next_child(ptr noundef nonnull %101, ptr noundef nonnull %q_node.1463.i) #7
  %cmp154.not.i = icmp eq ptr %call262.i, null
  br i1 %cmp154.not.i, label %if.end259.i.for.end263.i_crit_edge, label %if.end259.i.for.body156.i_crit_edge

if.end259.i.for.body156.i_crit_edge:              ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body156.i

if.end259.i.for.end263.i_crit_edge:               ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end263.i

for.end263.i:                                     ; preds = %if.end259.i.for.end263.i_crit_edge, %for.body156.i.for.end263.i_crit_edge, %if.end151.i.for.end263.i_crit_edge
  %q_node.1.lcssa.i = phi ptr [ null, %if.end151.i.for.end263.i_crit_edge ], [ null, %if.end259.i.for.end263.i_crit_edge ], [ %q_node.1463.i, %for.body156.i.for.end263.i_crit_edge ]
  %queue.1.lcssa.i = phi i8 [ 0, %if.end151.i.for.end263.i_crit_edge ], [ %inc260.i, %if.end259.i.for.end263.i_crit_edge ], [ %queue.1464.i, %for.body156.i.for.end263.i_crit_edge ]
  %conv264.i = zext i8 %queue.1.lcssa.i to i32
  %141 = ptrtoint ptr %tx_queues_to_use.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tx_queues_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %conv264.i)
  %cmp266.not.i = icmp eq i32 %142, %conv264.i
  br i1 %cmp266.not.i, label %for.end263.i.stmmac_mtl_setup.exit_crit_edge, label %for.end263.i.out.sink.split.i_crit_edge

for.end263.i.out.sink.split.i_crit_edge:          ; preds = %for.end263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split.i

for.end263.i.stmmac_mtl_setup.exit_crit_edge:     ; preds = %for.end263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmmac_mtl_setup.exit

out.sink.split.i:                                 ; preds = %for.end263.i.out.sink.split.i_crit_edge, %for.end.i.out.sink.split.i_crit_edge
  %.str.141.sink.i = phi ptr [ @.str.128, %for.end.i.out.sink.split.i_crit_edge ], [ @.str.141, %for.end263.i.out.sink.split.i_crit_edge ]
  %q_node.2.ph.i = phi ptr [ %q_node.0.lcssa.i, %for.end.i.out.sink.split.i_crit_edge ], [ %q_node.1.lcssa.i, %for.end263.i.out.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.141.sink.i) #10
  br label %stmmac_mtl_setup.exit

stmmac_mtl_setup.exit:                            ; preds = %out.sink.split.i, %for.end263.i.stmmac_mtl_setup.exit_crit_edge
  %q_node.2.i = phi ptr [ %q_node.1.lcssa.i, %for.end263.i.stmmac_mtl_setup.exit_crit_edge ], [ %q_node.2.ph.i, %out.sink.split.i ]
  %tobool157.not = phi i1 [ true, %for.end263.i.stmmac_mtl_setup.exit_crit_edge ], [ false, %out.sink.split.i ]
  %ret.0.i = phi ptr [ null, %for.end263.i.stmmac_mtl_setup.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %out.sink.split.i ]
  call void @of_node_put(ptr noundef nonnull %96) #7
  call void @of_node_put(ptr noundef nonnull %101) #7
  call void @of_node_put(ptr noundef %q_node.2.i) #7
  br i1 %tobool157.not, label %stmmac_mtl_setup.exit.if.end160_crit_edge, label %if.then158

stmmac_mtl_setup.exit.if.end160_crit_edge:        ; preds = %stmmac_mtl_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then158:                                       ; preds = %stmmac_mtl_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %stmmac_clk.i450 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 47
  %143 = ptrtoint ptr %stmmac_clk.i450 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %stmmac_clk.i450, align 4
  call void @clk_disable(ptr noundef %144) #7
  call void @clk_unprepare(ptr noundef %144) #7
  %pclk.i451 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 48
  %145 = ptrtoint ptr %pclk.i451 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pclk.i451, align 4
  call void @clk_disable(ptr noundef %146) #7
  call void @clk_unprepare(ptr noundef %146) #7
  %147 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phy_node, align 4
  call void @of_node_put(ptr noundef %148) #7
  %mdio_node.i453 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 7
  %149 = ptrtoint ptr %mdio_node.i453 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mdio_node.i453, align 4
  call void @of_node_put(ptr noundef %150) #7
  br label %cleanup

if.end160:                                        ; preds = %stmmac_mtl_setup.exit.if.end160_crit_edge, %if.then7.i, %of_parse_phandle.exit.i444.if.end160_crit_edge, %of_parse_phandle.exit.thread.i442
  %call161 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then163, label %if.end160.if.end177_crit_edge

if.end160.if.end177_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then163:                                       ; preds = %if.end160
  %call165 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.43) #7
  %stmmac_clk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 47
  %151 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call165, ptr %stmmac_clk, align 4
  %cmp.i454 = icmp ugt ptr %call165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i454, label %do.end171, label %if.then163.if.end174_crit_edge

if.then163.if.end174_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

do.end171:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  %152 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %stmmac_clk, align 4
  br label %if.end174

if.end174:                                        ; preds = %do.end171, %if.then163.if.end174_crit_edge
  %153 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %stmmac_clk, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %154)
  br label %if.end177

if.end177:                                        ; preds = %if.end174, %if.end160.if.end177_crit_edge
  %call179 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.47) #7
  %pclk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 48
  %155 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call179, ptr %pclk, align 4
  %cmp.i455 = icmp ugt ptr %call179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i455, label %if.end177.error_pclk_get_crit_edge, label %if.end184

if.end177.error_pclk_get_crit_edge:               ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_pclk_get

if.end184:                                        ; preds = %if.end177
  call fastcc void @clk_prepare_enable(ptr noundef %call179)
  %call188 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.48) #7
  %clk_ptp_ref = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 49
  %156 = ptrtoint ptr %clk_ptp_ref to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call188, ptr %clk_ptp_ref, align 4
  %cmp.i456 = icmp ugt ptr %call188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i456, label %if.then191, label %if.else

if.then191:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %stmmac_clk192 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 47
  %157 = ptrtoint ptr %stmmac_clk192 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %stmmac_clk192, align 4
  %call193 = call i32 @clk_get_rate(ptr noundef %158) #7
  %clk_ptp_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 50
  %159 = ptrtoint ptr %clk_ptp_rate to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call193, ptr %clk_ptp_rate, align 4
  %160 = ptrtoint ptr %clk_ptp_ref to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %clk_ptp_ref, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.50) #10
  br label %if.end215

if.else:                                          ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %call200 = call i32 @clk_get_rate(ptr noundef %call188) #7
  %clk_ptp_rate201 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 50
  %161 = ptrtoint ptr %clk_ptp_rate201 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %call200, ptr %clk_ptp_rate201, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmmac_probe_config_dt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmmac_probe_config_dt, %if.then209)) #7
          to label %if.end215 [label %if.then209], !srcloc !307

if.then209:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %clk_ptp_rate201 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %clk_ptp_rate201, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmmac_probe_config_dt.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %163) #7
  br label %if.end215

if.end215:                                        ; preds = %if.then209, %if.else, %if.then191
  %call.i.i457 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %stmmac_rst = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 55
  %164 = ptrtoint ptr %stmmac_rst to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i.i457, ptr %stmmac_rst, align 4
  %cmp.i458 = icmp ugt ptr %call.i.i457, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i458, label %if.end215.error_hw_init_crit_edge, label %if.end222

if.end215.error_hw_init_crit_edge:                ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_hw_init

if.end222:                                        ; preds = %if.end215
  %call.i459 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %stmmac_ahb_rst = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 56
  %165 = ptrtoint ptr %stmmac_ahb_rst to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i459, ptr %stmmac_ahb_rst, align 4
  %cmp.i460 = icmp ugt ptr %call.i459, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i460, label %if.end222.error_hw_init_crit_edge, label %if.end222.cleanup_crit_edge

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end222.error_hw_init_crit_edge:                ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_hw_init

error_hw_init:                                    ; preds = %if.end222.error_hw_init_crit_edge, %if.end215.error_hw_init_crit_edge
  %ret.0.in = phi ptr [ %stmmac_rst, %if.end215.error_hw_init_crit_edge ], [ %stmmac_ahb_rst, %if.end222.error_hw_init_crit_edge ]
  %166 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 %166)
  %ret.0 = load ptr, ptr %ret.0.in, align 4
  %167 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %168) #7
  call void @clk_unprepare(ptr noundef %168) #7
  br label %error_pclk_get

error_pclk_get:                                   ; preds = %error_hw_init, %if.end177.error_pclk_get_crit_edge
  %ret.1 = phi ptr [ %ret.0, %error_hw_init ], [ %call179, %if.end177.error_pclk_get_crit_edge ]
  %stmmac_clk231 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %call.i, i32 0, i32 47
  %169 = ptrtoint ptr %stmmac_clk231 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %stmmac_clk231, align 4
  call void @clk_disable(ptr noundef %170) #7
  call void @clk_unprepare(ptr noundef %170) #7
  br label %cleanup

cleanup:                                          ; preds = %error_pclk_get, %if.end222.cleanup_crit_edge, %if.then158, %if.then123, %if.then46, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then13 ], [ %25, %if.then46 ], [ %ret.0.i, %if.then158 ], [ %ret.1, %error_pclk_get ], [ inttoptr (i32 -12 to ptr), %if.then123 ], [ %call.i, %if.end222.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_phy_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmmac_dt_phy(ptr nocapture noundef %plat, ptr noundef %np, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef %np) #7
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @stmmac_dt_phy.need_mdio_ids, ptr noundef %np) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %np, ptr noundef nonnull @.str.96) #7
  %mdio_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 7
  %0 = ptrtoint ptr %mdio_node to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %mdio_node, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %call3 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %mdio_node4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 7
  %1 = ptrtoint ptr %mdio_node4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %mdio_node4, align 4
  %cmp.not51 = icmp eq ptr %call3, null
  br i1 %cmp.not51, label %if.else.if.end13_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else.for.body_crit_edge
  %storemerge52 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call3, %if.else.for.body_crit_edge ]
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %storemerge52, ptr noundef nonnull @.str.97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.inc:                                          ; preds = %for.body
  %2 = ptrtoint ptr %mdio_node4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_node4, align 4
  %call11 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef %3) #7
  %4 = ptrtoint ptr %mdio_node4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %mdio_node4, align 4
  %cmp.not = icmp eq ptr %call11, null
  br i1 %cmp.not, label %for.inc.if.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %for.body.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then
  %mdio_node14 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 7
  %5 = ptrtoint ptr %mdio_node14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio_node14, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.end25, label %do.body

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmmac_dt_phy.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmmac_dt_phy, %if.then23)) #7
          to label %if.then27 [label %if.then23], !srcloc !307

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stmmac_dt_phy.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.99) #7
  br label %if.then27

if.end25:                                         ; preds = %if.end13
  br i1 %call, label %if.end25.cleanup_crit_edge, label %if.end25.if.then27_crit_edge

if.end25.if.then27_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.end25.if.then27_crit_edge, %if.then23, %do.body
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %mdio_bus_data = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 4
  %7 = ptrtoint ptr %mdio_bus_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %mdio_bus_data, align 4
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.then27.cleanup_crit_edge, label %if.end32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %needs_reset = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then27.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then27.cleanup_crit_edge ], [ 0, %if.end32 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_remove_config_dt(ptr nocapture readnone %pdev, ptr nocapture noundef readonly %plat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stmmac_clk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 47
  %0 = ptrtoint ptr %stmmac_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmmac_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %pclk = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 48
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %phy_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 5
  %4 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_node, align 4
  tail call void @of_node_put(ptr noundef %5) #7
  %mdio_node = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %plat, i32 0, i32 7
  %6 = ptrtoint ptr %mdio_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_node, align 4
  tail call void @of_node_put(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
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
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_get_platform_resources(ptr noundef %pdev, ptr nocapture noundef %stmmac_res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %stmmac_res, i32 0, i32 96)
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.56) #7
  %irq = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 4
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.57) #7
  %wol_irq = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 2
  %2 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %wol_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp5 = icmp slt i32 %call3, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call3)
  %cmp8 = icmp eq i32 %call3, -517
  br i1 %cmp8, label %if.then6.return_crit_edge, label %do.end

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %5 = ptrtoint ptr %wol_irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wol_irq, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %call14 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.60) #7
  %lpi_irq = getelementptr inbounds %struct.stmmac_resources, ptr %stmmac_res, i32 0, i32 3
  %6 = ptrtoint ptr %lpi_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call14, ptr %lpi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.then17, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call14)
  %cmp19 = icmp eq i32 %call14, -517
  br i1 %cmp19, label %if.then17.return_crit_edge, label %do.end23

if.then17.return_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.62) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end13.if.end25_crit_edge
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %7 = ptrtoint ptr %stmmac_res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call26, ptr %stmmac_res, align 4
  %cmp.i.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %call26 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %8, i32 0
  br label %return

return:                                           ; preds = %if.end25, %if.then17.return_crit_edge, %if.then6.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end25 ], [ %call, %entry.return_crit_edge ], [ -517, %if.then6.return_crit_edge ], [ -517, %if.then17.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmmac_pltfr_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat2 = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat2, align 128
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call i32 @stmmac_dvr_remove(ptr noundef %dev) #7
  %exit = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bsp_priv, align 4
  tail call void %5(ptr noundef %pdev, ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stmmac_clk.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 47
  %8 = ptrtoint ptr %stmmac_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stmmac_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %pclk.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 48
  %10 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %phy_node.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_node.i, align 4
  tail call void @of_node_put(ptr noundef %13) #7
  %mdio_node.i = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %mdio_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_node.i, align 4
  tail call void @of_node_put(ptr noundef %15) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @stmmac_suspend(ptr noundef %dev) #7
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %exit = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 41
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bsp_priv, align 4
  tail call void %5(ptr noundef %add.ptr, ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %plat = getelementptr i8, ptr %1, i32 17408
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 128
  %init = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %bsp_priv = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %bsp_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bsp_priv, align 4
  %call5 = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call i32 @stmmac_resume(ptr noundef %dev) #7
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_noirq_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %device_may_wakeup.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then4_crit_edge, label %lor.lhs.false

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %device_may_wakeup.exit
  %plat = getelementptr i8, ptr %1, i32 17408
  %9 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat, align 128
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %pmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %device_may_wakeup.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %plat5 = getelementptr i8, ptr %1, i32 17408
  %13 = ptrtoint ptr %plat5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat5, align 128
  %clk_ptp_ref = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %14, i32 0, i32 49
  %15 = ptrtoint ptr %clk_ptp_ref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_ptp_ref, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  %call6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_pltfr_noirq_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %device_may_wakeup.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then4_crit_edge, label %lor.lhs.false

device_may_wakeup.exit.if.then4_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

lor.lhs.false:                                    ; preds = %device_may_wakeup.exit
  %plat = getelementptr i8, ptr %1, i32 17408
  %9 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat, align 128
  %pmt = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %pmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %device_may_wakeup.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call5 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %systime_flags = getelementptr i8, ptr %1, i32 18184
  %13 = ptrtoint ptr %systime_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %systime_flags, align 8
  %call9 = tail call i32 @stmmac_init_tstamp_counter(ptr noundef %add.ptr.i, i32 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @stmmac_bus_clks_config(ptr noundef %add.ptr.i, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @stmmac_bus_clks_config(ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_init_tstamp_counter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_bus_clks_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !273, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 428, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 434, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 437, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 448, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 453, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 454, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @stmmac_probe_config_dt._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @stmmac_probe_config_dt._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 461, i32 27}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 463, i32 27}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 466, i32 29}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 469, i32 29}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 487, i32 34}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 488, i32 31}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 489, i32 31}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 490, i32 31}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 498, i32 28}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 499, i32 28}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 501, i32 28}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 511, i32 34}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 519, i32 34}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 520, i32 34}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 521, i32 34}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 522, i32 34}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 526, i32 44}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 529, i32 34}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 530, i32 31}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 536, i32 34}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 550, i32 27}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 553, i32 27}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 554, i32 27}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 555, i32 46}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 557, i32 43}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 558, i32 51}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 559, i32 51}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 561, i32 58}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 564, i32 3}
!76 = !{ptr @stmmac_probe_config_dt._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @stmmac_probe_config_dt._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 568, i32 27}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 579, i32 35}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 581, i32 7}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 583, i32 4}
!86 = !{ptr @stmmac_probe_config_dt._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @stmmac_probe_config_dt._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 589, i32 49}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 597, i32 47}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 601, i32 3}
!94 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @stmmac_probe_config_dt._entry.49, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @stmmac_probe_config_dt._entry_ptr.52, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 604, i32 3}
!99 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @stmmac_probe_config_dt.__UNIQUE_ID_ddebug355, !98, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 615, i32 20}
!103 = !{ptr @__ksymtab_stmmac_probe_config_dt, !104, !"__ksymtab_stmmac_probe_config_dt", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 658, i32 1}
!105 = !{ptr @__ksymtab_stmmac_remove_config_dt, !106, !"__ksymtab_stmmac_remove_config_dt", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 659, i32 1}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 669, i32 50}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 681, i32 42}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 685, i32 3}
!113 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @stmmac_get_platform_resources._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @stmmac_get_platform_resources._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 690, i32 42}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 694, i32 3}
!120 = !{ptr @stmmac_get_platform_resources._entry.61, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @stmmac_get_platform_resources._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @__ksymtab_stmmac_get_platform_resources, !123, !"__ksymtab_stmmac_get_platform_resources", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 701, i32 1}
!124 = !{ptr @__ksymtab_stmmac_pltfr_remove, !125, !"__ksymtab_stmmac_pltfr_remove", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 723, i32 1}
!126 = !{ptr @stmmac_pltfr_pm_ops, !127, !"stmmac_pltfr_pm_ops", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 825, i32 25}
!128 = !{ptr @__ksymtab_stmmac_pltfr_pm_ops, !129, !"__ksymtab_stmmac_pltfr_pm_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 830, i32 1}
!130 = !{ptr @__UNIQUE_ID_description356, !131, !"__UNIQUE_ID_description356", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 832, i32 1}
!132 = !{ptr @__UNIQUE_ID_author357, !133, !"__UNIQUE_ID_author357", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 833, i32 1}
!134 = !{ptr @__UNIQUE_ID_file358, !135, !"__UNIQUE_ID_file358", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 834, i32 1}
!136 = !{ptr @__UNIQUE_ID_license359, !135, !"__UNIQUE_ID_license359", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 375, i32 36}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/phy.h", i32 211, i32 10}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/phy.h", i32 213, i32 10}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/phy.h", i32 215, i32 10}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/phy.h", i32 217, i32 10}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/phy.h", i32 219, i32 10}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/phy.h", i32 221, i32 10}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/phy.h", i32 223, i32 10}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/phy.h", i32 225, i32 10}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../include/linux/phy.h", i32 227, i32 10}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/phy.h", i32 229, i32 10}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/phy.h", i32 231, i32 10}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/phy.h", i32 233, i32 10}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/phy.h", i32 235, i32 10}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/linux/phy.h", i32 237, i32 10}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/phy.h", i32 239, i32 10}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/phy.h", i32 241, i32 10}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/phy.h", i32 243, i32 10}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/phy.h", i32 245, i32 10}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/phy.h", i32 247, i32 10}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/phy.h", i32 249, i32 10}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../include/linux/phy.h", i32 251, i32 10}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/phy.h", i32 253, i32 10}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../include/linux/phy.h", i32 255, i32 10}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/phy.h", i32 257, i32 10}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/phy.h", i32 259, i32 10}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/phy.h", i32 261, i32 10}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../include/linux/phy.h", i32 263, i32 10}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../include/linux/phy.h", i32 265, i32 10}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/phy.h", i32 267, i32 10}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/phy.h", i32 269, i32 10}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/phy.h", i32 271, i32 10}
!201 = !{ptr @stmmac_dt_phy.need_mdio_ids, !202, !"need_mdio_ids", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 324, i32 35}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 330, i32 46}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 338, i32 11}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 344, i32 3}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @stmmac_dt_phy.__UNIQUE_ID_ddebug354, !208, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 80, i32 3}
!213 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @dwmac1000_validate_ucast_entries._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @dwmac1000_validate_ucast_entries._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 49, i32 3}
!218 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @dwmac1000_validate_mcast_bins._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @dwmac1000_validate_mcast_bins._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 99, i32 43}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 109, i32 46}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 110, i32 47}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 111, i32 44}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 112, i32 42}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 113, i32 42}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 114, i32 43}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 116, i32 31}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 118, i32 31}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 120, i32 33}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 154, i32 48}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 158, i32 48}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 165, i32 36}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 169, i32 37}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 171, i32 42}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 181, i32 37}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 183, i32 42}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 188, i32 36}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 193, i32 36}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 202, i32 37}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 204, i32 42}
!263 = !{ptr @.str.125, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 206, i32 42}
!265 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 208, i32 42}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 210, i32 42}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 219, i32 3}
!271 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @stmmac_mtl_setup._entry, !270, !"_entry", i1 false, i1 false}
!274 = !{ptr @stmmac_mtl_setup._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 224, i32 36}
!277 = !{ptr @.str.132, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 228, i32 37}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 230, i32 42}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 232, i32 42}
!283 = !{ptr @.str.135, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 244, i32 36}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 255, i32 37}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 258, i32 37}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 261, i32 37}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 264, i32 37}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c", i32 283, i32 3}
!295 = !{ptr @stmmac_mtl_setup._entry.140, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @stmmac_mtl_setup._entry_ptr.142, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{!"auto-init"}
!307 = !{i64 2148313003, i64 2148313008, i64 2148313021, i64 2148313065, i64 2148313099, i64 2148313120}
