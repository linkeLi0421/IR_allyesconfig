; ModuleID = '/llk/IR_all_yes/drivers/net/phy/dp83867.c_pt.bc'
source_filename = "../drivers/net/phy/dp83867.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.dp83867_private = type { i32, i32, i32, i32, i32, i32, i8, i8, i32, i8 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
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
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__initcall__kmod_dp83867__364_884_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@dp83867_driver = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912433, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @dp83867_phy_reset, ptr @dp83867_config_init, ptr @dp83867_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @dp83867_read_status, ptr @dp83867_config_intr, ptr @dp83867_handle_interrupt, ptr null, ptr null, ptr @dp83867_set_wol, ptr @dp83867_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp83867_get_tunable, ptr @dp83867_set_tunable, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description365 = internal constant [57 x i8] c"dp83867.description=Texas Instruments DP83867 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author366 = internal constant [42 x i8] c"dp83867.author=Dan Murphy <dmurphy@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [37 x i8] c"dp83867.file=drivers/net/phy/dp83867\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [23 x i8] c"dp83867.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TI DP83867\00", [21 x i8] zeroinitializer }, align 32
@dp83867_verify_rgmii_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"PHY has delays via pin strapping, but phy-mode = 'rgmii'\0AShould be 'rgmii-id' to use internal delays txskew:%x rxskew:%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dp83867_verify_rgmii_cfg\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/dp83867.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dp83867_verify_rgmii_cfg._entry_ptr = internal global ptr @dp83867_verify_rgmii_cfg._entry, section ".printk_index", align 4
@dp83867_verify_rgmii_cfg._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ti,rx-internal-delay must be specified\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dp83867_verify_rgmii_cfg._entry_ptr.9 = internal global ptr @dp83867_verify_rgmii_cfg._entry.6, section ".printk_index", align 4
@dp83867_verify_rgmii_cfg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ti,tx-internal-delay must be specified\0A\00", [56 x i8] zeroinitializer }, align 32
@dp83867_verify_rgmii_cfg._entry_ptr.12 = internal global ptr @dp83867_verify_rgmii_cfg._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,clk-output-sel\00", [46 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 546, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ti,clk-output-sel value %u out of range\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dp83867_of_init\00", [16 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry_ptr = internal global ptr @dp83867_of_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,max-output-impedance\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,min-output-impedance\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,dp83867-rxctrl-strap-quirk\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ti,sgmii-ref-clock-output-enable\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,rx-internal-delay\00", [43 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 570, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ti,rx-internal-delay value of %u out of range\0A\00", [49 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry_ptr.23 = internal global ptr @dp83867_of_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,tx-internal-delay\00", [43 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 580, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ti,tx-internal-delay value of %u out of range\0A\00", [49 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry_ptr.27 = internal global ptr @dp83867_of_init._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enet-phy-lane-swap\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enet-phy-lane-no-swap\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.3, i32 602, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tx-fifo-depth value %u out of range\0A\00", [59 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry_ptr.34 = internal global ptr @dp83867_of_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.15, ptr @.str.3, i32 613, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx-fifo-depth value %u out of range\0A\00", [59 x i8] zeroinitializer }, align 32
@dp83867_of_init._entry_ptr.38 = internal global ptr @dp83867_of_init._entry.36, section ".printk_index", align 4
@dp83867_set_downshift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 433, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Downshift count must be 1, 2, 4 or 8\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dp83867_set_downshift\00", [42 x i8] zeroinitializer }, align 32
@dp83867_set_downshift._entry_ptr = internal global ptr @dp83867_set_downshift._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"dp83867_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 858, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 862, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 498, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 508, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 516, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 535, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 545, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 551, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 553, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 559, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 562, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 565, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 568, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 575, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 578, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 584, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 587, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 590, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 593, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 601, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 606, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 612, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [29 x i8] c"../drivers/net/phy/dp83867.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 432, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author366, ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_dp83867__364_884_phy_module_init6, ptr @dp83867_of_init._entry, ptr @dp83867_of_init._entry.21, ptr @dp83867_of_init._entry.25, ptr @dp83867_of_init._entry.32, ptr @dp83867_of_init._entry.36, ptr @dp83867_of_init._entry_ptr, ptr @dp83867_of_init._entry_ptr.23, ptr @dp83867_of_init._entry_ptr.27, ptr @dp83867_of_init._entry_ptr.34, ptr @dp83867_of_init._entry_ptr.38, ptr @dp83867_set_downshift._entry, ptr @dp83867_set_downshift._entry_ptr, ptr @dp83867_verify_rgmii_cfg._entry, ptr @dp83867_verify_rgmii_cfg._entry.10, ptr @dp83867_verify_rgmii_cfg._entry.6, ptr @dp83867_verify_rgmii_cfg._entry_ptr, ptr @dp83867_verify_rgmii_cfg._entry_ptr.12, ptr @dp83867_verify_rgmii_cfg._entry_ptr.9, ptr @phy_module_exit, ptr @dp83867_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_verify_rgmii_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_verify_rgmii_cfg._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_verify_rgmii_cfg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_of_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_of_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_of_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_of_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83867_set_downshift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @dp83867_driver, i32 noundef 1, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_drivers_unregister(ptr noundef nonnull @dp83867_driver, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_phy_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 768, i16 noundef zeroext 768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %4 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.i = icmp eq i32 %5, 9
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end16.i_crit_edge

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 111) #5
  %6 = lshr i32 %call.i, 4
  %conv2.i = and i32 %6, 7
  %7 = trunc i32 %call.i to i16
  %conv6.i = and i16 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv2.i)
  %cmp8.not.i = icmp eq i32 %conv2.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv6.i)
  %cmp11.not.i = icmp eq i16 %conv6.i, 4
  %or.cond.i = select i1 %cmp8.not.i, i1 %cmp11.not.i, i1 false
  br i1 %or.cond.i, label %if.then.i.if.end16thread-pre-split.i_crit_edge, label %do.end.i

if.then.i.if.end16thread-pre-split.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16thread-pre-split.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv15.i = zext i16 %conv6.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str.1, i32 noundef %conv2.i, i32 noundef %conv15.i) #8
  br label %if.end16thread-pre-split.i

if.end16thread-pre-split.i:                       ; preds = %do.end.i, %if.then.i.if.end16thread-pre-split.i_crit_edge
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i = load i32, ptr %interface.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %if.end.if.end16.i_crit_edge
  %9 = phi i32 [ %.pr.i, %if.end16thread-pre-split.i ], [ %5, %if.end.if.end16.i_crit_edge ]
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %10)
  %switch.i = icmp eq i32 %10, 10
  br i1 %switch.i, label %land.lhs.true.i, label %if.end16.i.if.end32.i_crit_edge

if.end16.i.if.end32.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp24.i = icmp eq i32 %12, 16
  br i1 %cmp24.i, label %land.lhs.true.i.dp83867_verify_rgmii_cfg.exit_crit_edge, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

land.lhs.true.i.dp83867_verify_rgmii_cfg.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp83867_verify_rgmii_cfg.exit

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %if.end16.i.if.end32.i_crit_edge
  %13 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end32.i.if.end4_crit_edge [
    i32 10, label %if.end32.i.land.lhs.true40.i_crit_edge
    i32 12, label %if.end32.i.land.lhs.true40.i_crit_edge266
  ]

if.end32.i.land.lhs.true40.i_crit_edge266:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true40.i

if.end32.i.land.lhs.true40.i_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true40.i

if.end32.i.if.end4_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true40.i:                                ; preds = %if.end32.i.land.lhs.true40.i_crit_edge, %if.end32.i.land.lhs.true40.i_crit_edge266
  %tx_id_delay.i = getelementptr inbounds %struct.dp83867_private, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %tx_id_delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_id_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp41.i = icmp eq i32 %15, 16
  br i1 %cmp41.i, label %land.lhs.true40.i.dp83867_verify_rgmii_cfg.exit_crit_edge, label %land.lhs.true40.i.if.end4_crit_edge

land.lhs.true40.i.if.end4_crit_edge:              ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true40.i.dp83867_verify_rgmii_cfg.exit_crit_edge: ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp83867_verify_rgmii_cfg.exit

dp83867_verify_rgmii_cfg.exit:                    ; preds = %land.lhs.true40.i.dp83867_verify_rgmii_cfg.exit_crit_edge, %land.lhs.true.i.dp83867_verify_rgmii_cfg.exit_crit_edge
  %.str.11.sink.i = phi ptr [ @.str.7, %land.lhs.true.i.dp83867_verify_rgmii_cfg.exit_crit_edge ], [ @.str.11, %land.lhs.true40.i.dp83867_verify_rgmii_cfg.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull %.str.11.sink.i) #8
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true40.i.if.end4_crit_edge, %if.end32.i.if.end4_crit_edge
  %rxctrl_strap_quirk = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %rxctrl_strap_quirk to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxctrl_strap_quirk, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i244 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 128, i16 noundef zeroext 0) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 111) #5
  %and = and i32 %call9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 46, i16 noundef zeroext 7, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end16_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end16:                                         ; preds = %if.then11.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %18 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interface.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %19, label %if.end16.if.end35_crit_edge [
    i32 12, label %if.end16.if.then18_crit_edge
    i32 11, label %if.end16.if.then18_crit_edge267
    i32 10, label %if.end16.if.then18_crit_edge268
    i32 9, label %if.end16.if.then18_crit_edge269
    i32 4, label %if.end16.if.then18_crit_edge270
  ]

if.end16.if.then18_crit_edge270:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end16.if.then18_crit_edge269:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end16.if.then18_crit_edge268:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end16.if.then18_crit_edge267:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.if.then18_crit_edge267, %if.end16.if.then18_crit_edge268, %if.end16.if.then18_crit_edge269, %if.end16.if.then18_crit_edge270
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr.i, align 8
  %call.i246 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp20 = icmp slt i32 %call.i246, 0
  br i1 %cmp20, label %if.then18.cleanup_crit_edge, label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %and23 = and i32 %call.i246, -49153
  %tx_fifo_depth = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_fifo_depth, align 4
  %shl = shl i32 %26, 14
  %or = or i32 %shl, %and23
  %27 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp25 = icmp eq i32 %28, 4
  br i1 %cmp25, label %if.then26, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %and27 = and i32 %or, -12289
  %rx_fifo_depth = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_fifo_depth, align 4
  %shl28 = shl i32 %30, 12
  %or29 = or i32 %shl28, %and27
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %val.0 = phi i32 [ %or29, %if.then26 ], [ %or, %if.end22.if.end30_crit_edge ]
  %conv = trunc i32 %val.0 to i16
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i, align 8
  %call.i249 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 16, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool32.not = icmp eq i32 %call.i249, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end35:                                         ; preds = %if.end30.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %35 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interface.i, align 4
  %37 = add i32 %36, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %if.then37, label %if.end35.if.end94_crit_edge

if.end35.if.end94_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then37:                                        ; preds = %if.end35
  %bus.i251 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %39 = ptrtoint ptr %bus.i251 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i251, align 8
  %addr.i252 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %41 = ptrtoint ptr %addr.i252 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i252, align 8
  %call.i253 = tail call i32 @mdiobus_read(ptr noundef %40, i32 noundef %42, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %cmp39 = icmp slt i32 %call.i253, 0
  br i1 %cmp39, label %if.then37.cleanup_crit_edge, label %if.end42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.then37
  %call43 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 110) #5
  %and44 = and i32 %call43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and47 = and i32 %call.i253, 63487
  %spec.select = select i1 %tobool45.not, i32 %call.i253, i32 %and47
  %conv49 = trunc i32 %spec.select to i16
  %43 = ptrtoint ptr %bus.i251 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i251, align 8
  %45 = ptrtoint ptr %addr.i252 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i252, align 8
  %call.i256 = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 16, i16 noundef zeroext %conv49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool51.not = icmp eq i32 %call.i256, 0
  br i1 %tobool51.not, label %if.end53, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 50) #5
  %and55 = and i32 %call54, -4
  %47 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %48)
  %cmp57 = icmp eq i32 %48, 10
  %masksel265 = select i1 %cmp57, i32 3, i32 0
  %spec.select242 = or i32 %masksel265, %and55
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %48)
  %cmp63 = icmp eq i32 %48, 12
  %or66 = or i32 %spec.select242, 2
  %val.3 = select i1 %cmp63, i32 %or66, i32 %spec.select242
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %48)
  %cmp69 = icmp eq i32 %48, 11
  %or72 = zext i1 %cmp69 to i32
  %val.4 = or i32 %val.3, %or72
  %conv74 = trunc i32 %val.4 to i16
  %call75 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 50, i16 noundef zeroext %conv74) #5
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp76.not = icmp eq i32 %50, 16
  %conv82 = trunc i32 %50 to i16
  %delay.0 = select i1 %cmp76.not, i16 0, i16 %conv82
  %tx_id_delay = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %tx_id_delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_id_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %52)
  %cmp84.not = icmp eq i32 %52, 16
  %.tr241 = trunc i32 %52 to i16
  %53 = shl i16 %.tr241, 4
  %conv91 = select i1 %cmp84.not, i16 0, i16 %53
  %delay.1 = or i16 %conv91, %delay.0
  %call93 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 134, i16 noundef zeroext %delay.1) #5
  br label %if.end94

if.end94:                                         ; preds = %if.end53, %if.end35.if.end94_crit_edge
  %io_impedance = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %io_impedance to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_impedance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp95 = icmp sgt i32 %55, -1
  br i1 %cmp95, label %if.then97, label %if.end94.if.end101_crit_edge

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %conv99 = trunc i32 %55 to i16
  %call100 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 368, i16 noundef zeroext 31, i16 noundef zeroext %conv99) #5
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end94.if.end101_crit_edge
  %56 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp103 = icmp eq i32 %57, 4
  br i1 %cmp103, label %if.then105, label %if.end101.if.end122_crit_edge

if.end101.if.end122_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then105:                                       ; preds = %if.end101
  %call106 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 367, i16 noundef zeroext 128, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.then105.cleanup_crit_edge

if.then105.cleanup_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end109:                                        ; preds = %if.then105
  %call110 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 211) #5
  %sgmii_ref_clk_en = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %sgmii_ref_clk_en to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sgmii_ref_clk_en, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool115.not = icmp eq i8 %59, 0
  %and118 = and i32 %call114, 49151
  %masksel = select i1 %tobool115.not, i32 0, i32 16384
  %val.5 = or i32 %masksel, %and118
  %conv120 = trunc i32 %val.5 to i16
  %call121 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 211, i16 noundef zeroext %conv120) #5
  br label %if.end122

if.end122:                                        ; preds = %if.end113, %if.end101.if.end122_crit_edge
  %bus.i257 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %60 = ptrtoint ptr %bus.i257 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i257, align 8
  %addr.i258 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %62 = ptrtoint ptr %addr.i258 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i258, align 8
  %call.i259 = tail call i32 @mdiobus_read(ptr noundef %61, i32 noundef %63, i32 noundef 30) #5
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %64 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %65)
  %66 = icmp ult i32 %65, -2
  %or126 = or i32 %call.i259, 128
  %spec.select243 = select i1 %66, i32 %or126, i32 %call.i259
  %67 = trunc i32 %spec.select243 to i16
  %conv129 = or i16 %67, 512
  %68 = ptrtoint ptr %bus.i257 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i257, align 8
  %70 = ptrtoint ptr %addr.i258 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i258, align 8
  %call.i262 = tail call i32 @mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 30, i16 noundef zeroext %conv129) #5
  %port_mirroring = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 5
  %72 = ptrtoint ptr %port_mirroring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port_mirroring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp131.not = icmp eq i32 %73, 0
  br i1 %cmp131.not, label %if.end122.if.end135_crit_edge, label %if.then133

if.end122.if.end135_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.then133:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dp83867_config_port_mirroring(ptr noundef %phydev)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end122.if.end135_crit_edge
  %set_clk_output = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %set_clk_output to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %set_clk_output, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool136.not = icmp eq i8 %75, 0
  br i1 %tobool136.not, label %if.end135.cleanup_crit_edge, label %if.then137

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %clk_output_sel = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %clk_output_sel to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clk_output_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp138 = icmp eq i32 %77, -1
  %.tr = trunc i32 %77 to i16
  %phi.cast = shl i16 %.tr, 8
  %val.7 = select i1 %cmp138, i16 64, i16 %phi.cast
  %mask.0 = select i1 %cmp138, i16 64, i16 8000
  %call149 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 368, i16 noundef zeroext %mask.0, i16 noundef zeroext %val.7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end135.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.then105.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %dp83867_verify_rgmii_cfg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %dp83867_verify_rgmii_cfg.exit ], [ %call12, %if.then11.cleanup_crit_edge ], [ %call.i246, %if.then18.cleanup_crit_edge ], [ %call.i249, %if.end30.cleanup_crit_edge ], [ %call.i253, %if.then37.cleanup_crit_edge ], [ %call.i256, %if.end42.cleanup_crit_edge ], [ %call106, %if.then105.cleanup_crit_edge ], [ %call110, %if.end109.cleanup_crit_edge ], [ 0, %if.then137 ], [ 0, %if.end135.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %priv, align 8
  %of_node2.i = getelementptr inbounds %struct.device, ptr %phydev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node2.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %clk_output_sel.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 8
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, ptr noundef %clk_output_sel.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then4.i:                                       ; preds = %if.end.i
  %set_clk_output.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %set_clk_output.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %set_clk_output.i, align 1
  %4 = ptrtoint ptr %clk_output_sel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_output_sel.i, align 4
  %6 = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %7 = icmp ult i32 %6, 14
  br i1 %7, label %if.then4.i.if.end13.i_crit_edge, label %do.end.i

if.then4.i.if.end13.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.14, i32 noundef %5) #8
  br label %cleanup

if.end13.i:                                       ; preds = %if.then4.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %io_impedance.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %io_impedance.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %io_impedance.i, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end13.i
  %call.i155.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.17, ptr noundef null) #5
  %tobool.i156.not.i = icmp eq ptr %call.i155.i, null
  %io_impedance20.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 4
  br i1 %tobool.i156.not.i, label %if.else19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %io_impedance20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %io_impedance20.i, align 4
  br label %if.end22.i

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %io_impedance20.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %io_impedance20.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then17.i, %if.then15.i
  %call.i157.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.18, ptr noundef null) #5
  %tobool.i158.i = icmp ne ptr %call.i157.i, null
  %rxctrl_strap_quirk.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i158.i to i8
  %11 = ptrtoint ptr %rxctrl_strap_quirk.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %rxctrl_strap_quirk.i, align 4
  %call.i159.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.19, ptr noundef null) #5
  %tobool.i160.i = icmp ne ptr %call.i159.i, null
  %sgmii_ref_clk_en.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 9
  %frombool25.i = zext i1 %tobool.i160.i to i8
  %12 = ptrtoint ptr %sgmii_ref_clk_en.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool25.i, ptr %sgmii_ref_clk_en.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %call.i, align 4
  %call.i.i161.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i161.i)
  %tobool28.not.i = icmp sgt i32 %call.i.i161.i, -1
  br i1 %tobool28.not.i, label %land.lhs.true29.i, label %if.end22.i.if.end39.i_crit_edge

if.end22.i.if.end39.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true29.i:                                ; preds = %if.end22.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %cmp31.i = icmp ugt i32 %15, 15
  br i1 %cmp31.i, label %do.end35.i, label %land.lhs.true29.i.if.end39.i_crit_edge

land.lhs.true29.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

do.end35.i:                                       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.22, i32 noundef %15) #8
  br label %cleanup

if.end39.i:                                       ; preds = %land.lhs.true29.i.if.end39.i_crit_edge, %if.end22.i.if.end39.i_crit_edge
  %tx_id_delay.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %tx_id_delay.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %tx_id_delay.i, align 4
  %call.i.i162.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.24, ptr noundef %tx_id_delay.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i162.i)
  %tobool42.not.i = icmp sgt i32 %call.i.i162.i, -1
  br i1 %tobool42.not.i, label %land.lhs.true43.i, label %if.end39.i.if.end53.i_crit_edge

if.end39.i.if.end53.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

land.lhs.true43.i:                                ; preds = %if.end39.i
  %17 = ptrtoint ptr %tx_id_delay.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_id_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %18)
  %cmp45.i = icmp ugt i32 %18, 15
  br i1 %cmp45.i, label %do.end49.i, label %land.lhs.true43.i.if.end53.i_crit_edge

land.lhs.true43.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.i

do.end49.i:                                       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.26, i32 noundef %18) #8
  br label %cleanup

if.end53.i:                                       ; preds = %land.lhs.true43.i.if.end53.i_crit_edge, %if.end39.i.if.end53.i_crit_edge
  %call.i163.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %tobool.i164.not.i = icmp eq ptr %call.i163.i, null
  br i1 %tobool.i164.not.i, label %if.end53.i.if.end56.i_crit_edge, label %if.then55.i

if.end53.i.if.end56.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  %port_mirroring.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %port_mirroring.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %port_mirroring.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end53.i.if.end56.i_crit_edge
  %call.i165.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.29, ptr noundef null) #5
  %tobool.i166.not.i = icmp eq ptr %call.i165.i, null
  br i1 %tobool.i166.not.i, label %if.end56.i.if.end60.i_crit_edge, label %if.then58.i

if.end56.i.if.end60.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then58.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %port_mirroring59.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %port_mirroring59.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %port_mirroring59.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %if.end56.i.if.end60.i_crit_edge
  %tx_fifo_depth.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 2
  %call.i.i167.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.30, ptr noundef %tx_fifo_depth.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i167.i)
  %tobool62.not.i = icmp sgt i32 %call.i.i167.i, -1
  br i1 %tobool62.not.i, label %if.end60.i.if.end70.i_crit_edge, label %if.then63.i

if.end60.i.if.end70.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.i

if.then63.i:                                      ; preds = %if.end60.i
  %call.i.i168.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef %tx_fifo_depth.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i168.i)
  %tobool66.not.i = icmp sgt i32 %call.i.i168.i, -1
  br i1 %tobool66.not.i, label %if.then63.i.if.end70.i_crit_edge, label %if.end70.thread.i

if.then63.i.if.end70.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.i

if.end70.thread.i:                                ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %tx_fifo_depth.i, align 4
  br label %if.end80.i

if.end70.i:                                       ; preds = %if.then63.i.if.end70.i_crit_edge, %if.end60.i.if.end70.i_crit_edge
  %22 = ptrtoint ptr %tx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %tx_fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp72.i = icmp ugt i32 %.pr.i, 3
  br i1 %cmp72.i, label %do.end76.i, label %if.end70.i.if.end80.i_crit_edge

if.end70.i.if.end80.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

do.end76.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.33, i32 noundef %.pr.i) #8
  br label %cleanup

if.end80.i:                                       ; preds = %if.end70.i.if.end80.i_crit_edge, %if.end70.thread.i
  %rx_fifo_depth.i = getelementptr inbounds %struct.dp83867_private, ptr %call.i, i32 0, i32 3
  %call.i.i169.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.35, ptr noundef %rx_fifo_depth.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i169.i)
  %tobool82.not.i = icmp sgt i32 %call.i.i169.i, -1
  br i1 %tobool82.not.i, label %if.end85.i, label %if.end85.thread.i

if.end85.thread.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_fifo_depth.i, align 4
  br label %cleanup

if.end85.i:                                       ; preds = %if.end80.i
  %24 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr171.i = load i32, ptr %rx_fifo_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr171.i)
  %cmp87.i = icmp ugt i32 %.pr171.i, 3
  br i1 %cmp87.i, label %do.end91.i, label %if.end85.i.cleanup_crit_edge

if.end85.i.cleanup_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end91.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.37, i32 noundef %.pr171.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end91.i, %if.end85.i.cleanup_crit_edge, %if.end85.thread.i, %do.end76.i, %do.end49.i, %do.end35.i, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %do.end76.i ], [ -22, %do.end91.i ], [ -22, %do.end49.i ], [ -22, %do.end35.i ], [ -22, %do.end.i ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end85.i.cleanup_crit_edge ], [ 0, %if.end85.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 17) #5
  %call1 = tail call i32 @genphy_read_status(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and = lshr i32 %call.i, 13
  %and.lobit = and i32 %and, 1
  %4 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.lobit, ptr %4, align 4
  %and8 = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %speed, align 8
  br label %cleanup

if.else11:                                        ; preds = %if.end3
  %and12 = and i32 %call.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %speed17 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  br i1 %tobool13.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %speed17, align 8
  br label %cleanup

if.else16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %speed17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then14, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.else16 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i31 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i31, align 8
  %addr.i32 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i32, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 19) #5
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i31, align 8
  %8 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i32, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = trunc i32 %call.i to i16
  %conv = or i16 %10, -5104
  %11 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i31, align 8
  %13 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i32, align 8
  %call.i30 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 18, i16 noundef zeroext %conv) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i33 = tail call i32 @mdiobus_write(ptr noundef %2, i32 noundef %4, i32 noundef 18, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool9.not = icmp eq i32 %call.i33, 0
  br i1 %tobool9.not, label %if.end11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %bus.i31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i31, align 8
  %17 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i32, align 8
  %call.i.i36 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 19) #5
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i36, i32 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.end5, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i33, %if.else.cleanup_crit_edge ], [ %call.i30, %if.end5 ], [ %19, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_error(ptr noundef %phydev) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2 = icmp slt i32 %call.i16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_error(ptr noundef %phydev) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %call.i16, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_trigger_machine(ptr noundef %phydev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %0 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attached_dev, align 8
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 308) #5
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #5
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %and = and i32 %7, 106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %8 = trunc i32 %call to i16
  br i1 %tobool.not, label %if.else108, label %if.then

if.then:                                          ; preds = %entry
  %9 = trunc i32 %call.i to i16
  %conv7 = or i16 %9, 8
  %and9 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then11
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %11, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %18 to i16
  %shl = shl nuw i16 %conv14, 8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  %conv16 = zext i8 %20 to i16
  %or17 = or i16 %shl, %conv16
  %call19 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 310, i16 noundef zeroext %or17) #5
  %arrayidx20 = getelementptr i8, ptr %11, i32 3
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %22 to i16
  %shl22 = shl nuw i16 %conv21, 8
  %arrayidx23 = getelementptr i8, ptr %11, i32 2
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i16
  %or25 = or i16 %shl22, %conv24
  %call27 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 311, i16 noundef zeroext %or25) #5
  %arrayidx28 = getelementptr i8, ptr %11, i32 5
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %26 to i16
  %shl30 = shl nuw i16 %conv29, 8
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i, align 1
  %conv32 = zext i8 %28 to i16
  %or33 = or i16 %shl30, %conv32
  %call35 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 312, i16 noundef zeroext %or33) #5
  %29 = or i16 %8, 129
  br label %if.end42

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = and i16 %8, -130
  %30 = or i16 %conv4, 128
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end
  %val_rxcfg.0 = phi i16 [ %29, %if.end ], [ %30, %if.else ]
  %31 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wolopts, align 4
  %and44 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else79, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %arrayidx47 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %34 to i16
  %shl49 = shl nuw i16 %conv48, 8
  %35 = ptrtoint ptr %sopass to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sopass, align 4
  %conv52 = zext i8 %36 to i16
  %or53 = or i16 %shl49, %conv52
  %call55 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 313, i16 noundef zeroext %or53) #5
  %arrayidx57 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %38 to i16
  %shl59 = shl nuw i16 %conv58, 8
  %arrayidx61 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx61, align 2
  %conv62 = zext i8 %40 to i16
  %or63 = or i16 %shl59, %conv62
  %call65 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 314, i16 noundef zeroext %or63) #5
  %arrayidx67 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %42 to i16
  %shl69 = shl nuw i16 %conv68, 8
  %arrayidx71 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx71, align 4
  %conv72 = zext i8 %44 to i16
  %or73 = or i16 %shl69, %conv72
  %call75 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 315, i16 noundef zeroext %or73) #5
  %45 = or i16 %val_rxcfg.0, 32
  br label %if.end83

if.else79:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %46 = and i16 %val_rxcfg.0, -33
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %if.then46
  %val_rxcfg.1 = phi i16 [ %45, %if.then46 ], [ %46, %if.else79 ]
  %47 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wolopts, align 4
  %49 = and i16 %val_rxcfg.1, -17
  %50 = trunc i32 %48 to i16
  %51 = shl i16 %50, 3
  %52 = and i16 %51, 16
  %val_rxcfg.2 = or i16 %52, %49
  %and97 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.else103, label %if.then99

if.then99:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %53 = or i16 %val_rxcfg.2, 4
  br label %if.end115

if.else103:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %54 = and i16 %val_rxcfg.2, -5
  br label %if.end115

if.else108:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv111 = and i16 %8, -129
  %55 = trunc i32 %call.i to i16
  %conv114 = and i16 %55, -9
  br label %if.end115

if.end115:                                        ; preds = %if.else108, %if.else103, %if.then99
  %val_rxcfg.3 = phi i16 [ %53, %if.then99 ], [ %54, %if.else103 ], [ %conv111, %if.else108 ]
  %val_micr.0 = phi i16 [ %conv7, %if.then99 ], [ %conv7, %if.else103 ], [ %conv114, %if.else108 ]
  %call116 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 308, i16 noundef zeroext %val_rxcfg.3) #5
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 8
  %call.i161 = tail call i32 @mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 18, i16 noundef zeroext %val_micr.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end115 ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83867_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 106, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 308) #5
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %or8 = or i32 %5, 8
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %and11 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %or15 = or i32 %7, 32
  store i32 %or15, ptr %wolopts, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %and18 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end56_crit_edge, label %if.then20

if.end16.if.end56_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 313) #5
  %conv25 = trunc i32 %call21 to i8
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %8 = ptrtoint ptr %sopass to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv25, ptr %sopass, align 4
  %conv23 = lshr i32 %call21, 8
  %conv27 = trunc i32 %conv23 to i8
  %arrayidx29 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv27, ptr %arrayidx29, align 1
  %call30 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 314) #5
  %conv34 = trunc i32 %call30 to i8
  %arrayidx36 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv34, ptr %arrayidx36, align 2
  %conv32 = lshr i32 %call30, 8
  %conv39 = trunc i32 %conv32 to i8
  %arrayidx41 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv39, ptr %arrayidx41, align 1
  %call42 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 315) #5
  %conv46 = trunc i32 %call42 to i8
  %arrayidx48 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv46, ptr %arrayidx48, align 4
  %conv44 = lshr i32 %call42, 8
  %conv51 = trunc i32 %conv44 to i8
  %arrayidx53 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv51, ptr %arrayidx53, align 1
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %or55 = or i32 %15, 64
  store i32 %or55, ptr %wolopts, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then20, %if.end16.if.end56_crit_edge
  %and58 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wolopts, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %do.end12.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end12.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %6 = lshr i32 %call.i.i, 7
  %switch.shiftamt = and i32 %6, 24
  %switch.downshift = lshr i32 134480385, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %7 = and i32 %call.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i8 0, i8 %switch.masked
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select.i, ptr %data, align 1
  br label %return

return:                                           ; preds = %do.end12.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %do.end12.i ], [ %call.i.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83867_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ugt i8 %3, 8
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %3, label %do.end.i [
    i8 0, label %if.then2.i
    i8 1, label %if.end.i.sw.epilog.i_crit_edge
    i8 2, label %sw.bb5.i
    i8 4, label %sw.bb6.i
    i8 8, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 768, i16 noundef zeroext 0) #5
  br label %return

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.39) #8
  br label %return

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge
  %count.0.i = phi i16 [ 3840, %sw.bb7.i ], [ 2816, %sw.bb6.i ], [ 1792, %sw.bb5.i ], [ 768, %if.end.i.sw.epilog.i_crit_edge ]
  %call28.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext %count.0.i) #5
  br label %return

return:                                           ; preds = %sw.epilog.i, %do.end.i, %if.then2.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -22, %do.end.i ], [ %call28.i, %sw.epilog.i ], [ %call.i.i, %if.then2.i ], [ -7, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dp83867_config_port_mirroring(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %port_mirroring = getelementptr inbounds %struct.dp83867_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port_mirroring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_mirroring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 0, i16 noundef zeroext 1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 1, i16 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_dp83867__364_884_phy_module_init6, !1, !"__initcall__kmod_dp83867__364_884_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/dp83867.c", i32 884, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description365, !4, !"__UNIQUE_ID_description365", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/dp83867.c", i32 893, i32 1}
!5 = !{ptr @__UNIQUE_ID_author366, !6, !"__UNIQUE_ID_author366", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/dp83867.c", i32 894, i32 1}
!7 = !{ptr @__UNIQUE_ID_file367, !8, !"__UNIQUE_ID_file367", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/dp83867.c", i32 895, i32 1}
!9 = !{ptr @__UNIQUE_ID_license368, !8, !"__UNIQUE_ID_license368", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/dp83867.c", i32 862, i32 12}
!12 = !{ptr @dp83867_driver, !13, !"dp83867_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/dp83867.c", i32 858, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/dp83867.c", i32 498, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dp83867_verify_rgmii_cfg._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dp83867_verify_rgmii_cfg._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/dp83867.c", i32 508, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dp83867_verify_rgmii_cfg._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dp83867_verify_rgmii_cfg._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/phy/dp83867.c", i32 516, i32 3}
!29 = !{ptr @dp83867_verify_rgmii_cfg._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dp83867_verify_rgmii_cfg._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/phy/dp83867.c", i32 535, i32 38}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/dp83867.c", i32 545, i32 4}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dp83867_of_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @dp83867_of_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/dp83867.c", i32 551, i32 37}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/dp83867.c", i32 553, i32 42}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/dp83867.c", i32 559, i32 12}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/dp83867.c", i32 562, i32 10}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/phy/dp83867.c", i32 565, i32 38}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/dp83867.c", i32 568, i32 3}
!50 = !{ptr @dp83867_of_init._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dp83867_of_init._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/dp83867.c", i32 575, i32 38}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/dp83867.c", i32 578, i32 3}
!56 = !{ptr @dp83867_of_init._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dp83867_of_init._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/dp83867.c", i32 584, i32 37}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/dp83867.c", i32 587, i32 37}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/dp83867.c", i32 590, i32 38}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/dp83867.c", i32 593, i32 39}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/phy/dp83867.c", i32 601, i32 3}
!68 = !{ptr @dp83867_of_init._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dp83867_of_init._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/dp83867.c", i32 606, i32 38}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/phy/dp83867.c", i32 612, i32 3}
!74 = !{ptr @dp83867_of_init._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dp83867_of_init._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/phy/dp83867.c", i32 432, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dp83867_set_downshift._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dp83867_set_downshift._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
