; ModuleID = '/llk/IR_all_yes/drivers/net/phy/dp83869.c_pt.bc'
source_filename = "../drivers/net/phy/dp83869.c"
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
%struct.dp83869_private = type { i32, i32, i32, i32, i32, i32, i8, i32, i32 }
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

@__initcall__kmod_dp83869__364_906_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@dp83869_driver = internal global { [2 x %struct.phy_driver], [104 x i8] } { [2 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912113, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @dp83869_phy_reset, ptr @dp83869_config_init, ptr @dp83869_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @dp83869_read_status, ptr @dp83869_config_intr, ptr @dp83869_handle_interrupt, ptr null, ptr null, ptr @dp83869_set_wol, ptr @dp83869_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp83869_get_tunable, ptr @dp83869_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536912292, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @dp83869_phy_reset, ptr @dp83869_config_init, ptr @dp83869_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @dp83869_read_status, ptr @dp83869_config_intr, ptr @dp83869_handle_interrupt, ptr null, ptr null, ptr @dp83869_set_wol, ptr @dp83869_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp83869_get_tunable, ptr @dp83869_set_tunable, ptr null, ptr null, ptr null }], [104 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description365 = internal constant [57 x i8] c"dp83869.description=Texas Instruments DP83869 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author366 = internal constant [42 x i8] c"dp83869.author=Dan Murphy <dmurphy@ti.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [37 x i8] c"dp83869.file=drivers/net/phy/dp83869\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [23 x i8] c"dp83869.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TI DP83869\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI DP83561-SP\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,clk-output-sel\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,op-mode\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,max-output-impedance\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,min-output-impedance\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enet-phy-lane-swap\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-fifo-depth\00", [18 x i8] zeroinitializer }, align 32
@dp83869_internal_delay = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 250, i32 500, i32 750, i32 1000, i32 1250, i32 1500, i32 1750, i32 2000, i32 2250, i32 2500, i32 2750, i32 3000, i32 3250, i32 3500, i32 3750, i32 4000], [32 x i8] zeroinitializer }, align 32
@dp83869_get_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 351, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to read RX CFG\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dp83869_get_wol\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/dp83869.c\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dp83869_get_wol._entry_ptr = internal global ptr @dp83869_get_wol._entry, section ".printk_index", align 4
@dp83869_get_wol._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 368, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read RX SOP 1\0A\00", [39 x i8] zeroinitializer }, align 32
@dp83869_get_wol._entry_ptr.16 = internal global ptr @dp83869_get_wol._entry.14, section ".printk_index", align 4
@dp83869_get_wol._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.11, i32 378, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read RX SOP 2\0A\00", [39 x i8] zeroinitializer }, align 32
@dp83869_get_wol._entry_ptr.19 = internal global ptr @dp83869_get_wol._entry.17, section ".printk_index", align 4
@dp83869_get_wol._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.11, i32 388, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read RX SOP 3\0A\00", [39 x i8] zeroinitializer }, align 32
@dp83869_get_wol._entry_ptr.22 = internal global ptr @dp83869_get_wol._entry.20, section ".printk_index", align 4
@dp83869_set_downshift._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 461, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Downshift count must be 1, 2, 4 or 8\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dp83869_set_downshift\00", [42 x i8] zeroinitializer }, align 32
@dp83869_set_downshift._entry_ptr = internal global ptr @dp83869_set_downshift._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"dp83869_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 901, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 902, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 903, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 542, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 547, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 558, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 560, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 563, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 579, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 583, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"dp83869_internal_delay\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 524, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 351, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 368, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 378, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 388, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [29 x i8] c"../drivers/net/phy/dp83869.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 460, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author366, ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_dp83869__364_906_phy_module_init6, ptr @dp83869_get_wol._entry, ptr @dp83869_get_wol._entry.14, ptr @dp83869_get_wol._entry.17, ptr @dp83869_get_wol._entry.20, ptr @dp83869_get_wol._entry_ptr, ptr @dp83869_get_wol._entry_ptr.16, ptr @dp83869_get_wol._entry_ptr.19, ptr @dp83869_get_wol._entry_ptr.22, ptr @dp83869_set_downshift._entry, ptr @dp83869_set_downshift._entry_ptr, ptr @phy_module_exit, ptr @dp83869_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dp83869_internal_delay, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_driver to i32), i32 472, i32 576, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_internal_delay to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_get_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_get_wol._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_get_wol._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_get_wol._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83869_set_downshift._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @dp83869_driver, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_drivers_unregister(ptr noundef nonnull @dp83869_driver, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_phy_reset(ptr noundef %phydev) #2 align 64 {
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
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext -32768) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %call1 = tail call i32 @dp83869_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_config_init(ptr noundef %phydev) #2 align 64 {
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
  %mode.i = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %conv.i = trunc i32 %3 to i16
  %call.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 479, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %5 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %7 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 0, i16 noundef zeroext 4416) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %rx_fifo_depth.i = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_fifo_depth.i, align 4
  %shl.i = shl i32 %10, 12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %shl10.i = shl i32 %12, 14
  %or.i = or i32 %shl.i, %shl10.i
  %or11.i = or i32 %or.i, 72
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end9.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 3, label %sw.bb26.i
    i32 4, label %sw.bb35.i
    i32 5, label %sw.bb45.i
    i32 6, label %sw.bb51.i
    i32 1, label %if.end9.i.dp83869_configure_mode.exit_crit_edge
    i32 2, label %if.end9.i.dp83869_configure_mode.exit_crit_edge95
  ]

if.end9.i.dp83869_configure_mode.exit_crit_edge95: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp83869_configure_mode.exit

if.end9.i.dp83869_configure_mode.exit_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dp83869_configure_mode.exit

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end9.i
  %conv13.i = trunc i32 %or11.i to i16
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i119.i = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 16, i16 noundef zeroext %conv13.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119.i)
  %tobool15.not.i = icmp eq i32 %call.i119.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.i:                                       ; preds = %sw.bb.i
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i122.i = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 9, i16 noundef zeroext 2816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool19.not.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = tail call fastcc i32 @dp83869_configure_rgmii(ptr noundef %phydev, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end4_crit_edge, label %if.end21.i.cleanup_crit_edge

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.i.if.end4_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

sw.bb26.i:                                        ; preds = %if.end9.i
  %call27.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 479, i16 noundef zeroext 64, i16 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %sw.bb26.i.cleanup_crit_edge

sw.bb26.i.cleanup_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.i:                                       ; preds = %sw.bb26.i
  %call31.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3072, i16 noundef zeroext 4416) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end4_crit_edge, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.i.if.end4_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

sw.bb35.i:                                        ; preds = %if.end9.i
  %conv36.i = trunc i32 %or11.i to i16
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i125.i = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 16, i16 noundef zeroext %conv36.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %tobool38.not.i = icmp eq i32 %call.i125.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %sw.bb35.i.cleanup_crit_edge

sw.bb35.i.cleanup_crit_edge:                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40.i:                                       ; preds = %sw.bb35.i
  %call41.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3072, i16 noundef zeroext 4416) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end4_crit_edge, label %if.end40.i.cleanup_crit_edge

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40.i.if.end4_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

sw.bb45.i:                                        ; preds = %if.end9.i
  %conv46.i = trunc i32 %or11.i to i16
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i128.i = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 16, i16 noundef zeroext %conv46.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %tobool48.not.i = icmp eq i32 %call.i128.i, 0
  br i1 %tobool48.not.i, label %sw.bb45.i.if.end4_crit_edge, label %sw.bb45.i.cleanup_crit_edge

sw.bb45.i.cleanup_crit_edge:                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb45.i.if.end4_crit_edge:                      ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

sw.bb51.i:                                        ; preds = %if.end9.i
  %conv52.i = trunc i32 %or11.i to i16
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i131.i = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 16, i16 noundef zeroext %conv52.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %tobool54.not.i = icmp eq i32 %call.i131.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %sw.bb51.i.cleanup_crit_edge

sw.bb51.i.cleanup_crit_edge:                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56.i:                                       ; preds = %sw.bb51.i
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i134.i = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 9, i16 noundef zeroext 2816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %tobool58.not.i = icmp eq i32 %call.i134.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.cleanup_crit_edge

if.end56.i.cleanup_crit_edge:                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60.i:                                       ; preds = %if.end56.i
  %call61.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 3072, i16 noundef zeroext 4416) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.end4_crit_edge, label %if.end60.i.cleanup_crit_edge

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60.i.if.end4_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

dp83869_configure_mode.exit:                      ; preds = %if.end9.i.dp83869_configure_mode.exit_crit_edge, %if.end9.i.dp83869_configure_mode.exit_crit_edge95
  %call66.i = tail call fastcc i32 @dp83869_configure_fiber(ptr noundef %phydev, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool2.not = icmp eq i32 %call66.i, 0
  br i1 %tobool2.not, label %dp83869_configure_mode.exit.if.end4_crit_edge, label %dp83869_configure_mode.exit.cleanup_crit_edge

dp83869_configure_mode.exit.cleanup_crit_edge:    ; preds = %dp83869_configure_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dp83869_configure_mode.exit.if.end4_crit_edge:    ; preds = %dp83869_configure_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %dp83869_configure_mode.exit.if.end4_crit_edge, %if.end60.i.if.end4_crit_edge, %sw.bb45.i.if.end4_crit_edge, %if.end40.i.if.end4_crit_edge, %if.end30.i.if.end4_crit_edge, %if.end21.i.if.end4_crit_edge
  %irq.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %41)
  %42 = icmp ult i32 %41, -2
  br i1 %42, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i, align 8
  %45 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr.i.i, align 8
  %call.i84 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %46, i32 noundef 30) #5
  %47 = trunc i32 %call.i84 to i16
  %conv = or i16 %47, 128
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i87 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 30, i16 noundef zeroext %conv) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %port_mirroring = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %port_mirroring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_mirroring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not = icmp eq i32 %53, 0
  br i1 %cmp.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %port_mirroring.i = getelementptr inbounds %struct.dp83869_private, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %port_mirroring.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_mirroring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp eq i32 %57, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i88 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 0, i16 noundef zeroext 1) #5
  br label %if.end13

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %call.i1.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 49, i16 noundef zeroext 1, i16 noundef zeroext 0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else.i, %if.then.i, %if.end9.if.end13_crit_edge
  %clk_output_sel = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %clk_output_sel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clk_output_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %59)
  %cmp14.not = icmp eq i32 %59, 12
  br i1 %cmp14.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %.tr = trunc i32 %59 to i16
  %conv18 = shl i16 %.tr, 8
  %call19 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 368, i16 noundef zeroext 7936, i16 noundef zeroext %conv18) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then16 ], [ 0, %if.end13.if.end20_crit_edge ]
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %60 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %interface.i, align 4
  %62 = add i32 %61, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %if.then22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %rx_int_delay = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %rx_int_delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_int_delay, align 4
  %tx_int_delay = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %tx_int_delay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_int_delay, align 4
  %shl23 = shl i32 %67, 4
  %or24 = or i32 %shl23, %65
  %conv25 = trunc i32 %or24 to i16
  %call26 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 134, i16 noundef zeroext %conv25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 50) #5
  %68 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %69)
  %cmp32 = icmp eq i32 %69, 10
  %and = and i32 %call30, -4
  %masksel = select i1 %cmp32, i32 0, i32 3
  %spec.select = or i32 %masksel, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %69)
  %cmp37 = icmp eq i32 %69, 12
  %and40 = and i32 %spec.select, -3
  %val.1 = select i1 %cmp37, i32 %and40, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %69)
  %cmp43 = icmp eq i32 %69, 11
  %and46 = and i32 %val.1, 65534
  %val.2 = select i1 %cmp43, i32 %and46, i32 %val.1
  %conv48 = trunc i32 %val.2 to i16
  %call49 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 50, i16 noundef zeroext %conv48) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %dp83869_configure_mode.exit.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %if.end56.i.cleanup_crit_edge, %sw.bb51.i.cleanup_crit_edge, %sw.bb45.i.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %sw.bb35.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %sw.bb26.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call66.i, %dp83869_configure_mode.exit.cleanup_crit_edge ], [ %call26, %if.then22.cleanup_crit_edge ], [ %call49, %if.end29 ], [ %ret.0, %if.end20.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ %call61.i, %if.end60.i.cleanup_crit_edge ], [ %call.i134.i, %if.end56.i.cleanup_crit_edge ], [ %call.i131.i, %sw.bb51.i.cleanup_crit_edge ], [ %call.i128.i, %sw.bb45.i.cleanup_crit_edge ], [ %call41.i, %if.end40.i.cleanup_crit_edge ], [ %call.i125.i, %sw.bb35.i.cleanup_crit_edge ], [ %call31.i, %if.end30.i.cleanup_crit_edge ], [ %call27.i, %sw.bb26.i.cleanup_crit_edge ], [ %call22.i, %if.end21.i.cleanup_crit_edge ], [ %call.i122.i, %if.end17.i.cleanup_crit_edge ], [ %call.i119.i, %sw.bb.i.cleanup_crit_edge ], [ %call.i.i, %if.end5.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_probe(ptr noundef %phydev) #2 align 64 {
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
  %io_impedance.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %io_impedance.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %io_impedance.i, align 4
  %clk_output_sel.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef %clk_output_sel.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.then5.i_crit_edge

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %4 = ptrtoint ptr %clk_output_sel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_output_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp.i = icmp sgt i32 %5, 12
  br i1 %cmp.i, label %lor.lhs.false.i.if.then5.i_crit_edge, label %lor.lhs.false.i.if.end7.i_crit_edge

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

lor.lhs.false.i.if.then5.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

if.then5.i:                                       ; preds = %lor.lhs.false.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %6 = ptrtoint ptr %clk_output_sel.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %clk_output_sel.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %lor.lhs.false.i.if.end7.i_crit_edge
  %mode.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 8
  %call.i.i117.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef %mode.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i117.i)
  %cmp9.i = icmp sgt i32 %call.i.i117.i, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end7.i
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ugt i32 %8, 6
  br i1 %9, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.if.end22.i_crit_edge

if.then10.i.if.end22.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end7.i
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %call.i.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.else.i.cleanup_crit_edge, label %dp83869_set_strapped_mode.exit.thread.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dp83869_set_strapped_mode.exit.thread.i:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %call.i.i, 7
  %mode.i.i = getelementptr inbounds %struct.dp83869_private, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i.i, ptr %mode.i.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %dp83869_set_strapped_mode.exit.thread.i, %if.then10.i.if.end22.i_crit_edge
  %call.i118.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i118.i, null
  br i1 %tobool.i.not.i, label %if.else26.i, label %if.end22.i.if.end31.sink.split.i_crit_edge

if.end22.i.if.end31.sink.split.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.sink.split.i

if.else26.i:                                      ; preds = %if.end22.i
  %call.i119.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %tobool.i120.not.i = icmp eq ptr %call.i119.i, null
  br i1 %tobool.i120.not.i, label %if.else26.i.if.end31.i_crit_edge, label %if.else26.i.if.end31.sink.split.i_crit_edge

if.else26.i.if.end31.sink.split.i_crit_edge:      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.sink.split.i

if.else26.i.if.end31.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.end31.sink.split.i:                            ; preds = %if.else26.i.if.end31.sink.split.i_crit_edge, %if.end22.i.if.end31.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end22.i.if.end31.sink.split.i_crit_edge ], [ 31, %if.else26.i.if.end31.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %io_impedance.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %io_impedance.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.else26.i.if.end31.i_crit_edge
  %call.i121.i = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %tobool.i122.not.i = icmp eq ptr %call.i121.i, null
  br i1 %tobool.i122.not.i, label %if.else34.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %port_mirroring.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %port_mirroring.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %port_mirroring.i, align 4
  br label %if.end45.i

if.else34.i:                                      ; preds = %if.end31.i
  %call35.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.else34.i.cleanup_crit_edge, label %if.end38.i

if.else34.i.cleanup_crit_edge:                    ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38.i:                                       ; preds = %if.else34.i
  %and.i = and i32 %call35.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool39.not.i = icmp eq i32 %and.i, 0
  %port_mirroring43.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 5
  br i1 %tobool39.not.i, label %if.else42.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %port_mirroring43.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %port_mirroring43.i, align 4
  br label %if.end45.i

if.else42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %port_mirroring43.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %port_mirroring43.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else42.i, %if.then40.i, %if.then33.i
  %rx_fifo_depth.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 1
  %call.i.i123.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, ptr noundef %rx_fifo_depth.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i)
  %tobool47.not.i = icmp sgt i32 %call.i.i123.i, -1
  br i1 %tobool47.not.i, label %if.end45.i.if.end50.i_crit_edge, label %if.then48.i

if.end45.i.if.end50.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %rx_fifo_depth.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rx_fifo_depth.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end50.i_crit_edge
  %call.i.i124.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i124.i)
  %tobool52.not.i = icmp sgt i32 %call.i.i124.i, -1
  br i1 %tobool52.not.i, label %if.end50.i.if.end4_crit_edge, label %if.then53.i

if.end50.i.if.end4_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then53.i, %if.end50.i.if.end4_crit_edge
  %call56.i = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef nonnull @dp83869_internal_delay, i32 noundef 16, i1 noundef zeroext true) #5
  %rx_int_delay.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp58.i = icmp slt i32 %call56.i, 0
  %spec.select.i = select i1 %cmp58.i, i32 2000, i32 %call56.i
  %19 = ptrtoint ptr %rx_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %rx_int_delay.i, align 4
  %call62.i = tail call i32 @phy_get_internal_delay(ptr noundef %phydev, ptr noundef %phydev, ptr noundef nonnull @dp83869_internal_delay, i32 noundef 16, i1 noundef zeroext false) #5
  %tx_int_delay.i = getelementptr inbounds %struct.dp83869_private, ptr %call.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp64.i = icmp slt i32 %call62.i, 0
  %storemerge.i = select i1 %cmp64.i, i32 2000, i32 %call62.i
  %20 = ptrtoint ptr %tx_int_delay.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge.i, ptr %tx_int_delay.i, align 4
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 4
  %.off = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then7, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %port = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 10
  %23 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %port, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %call9 = tail call i32 @dp83869_config_init(ptr noundef %phydev)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else34.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %if.else.i.cleanup_crit_edge ], [ %call35.i, %if.else34.i.cleanup_crit_edge ], [ -22, %if.then10.i.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %supported, align 4
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %link, align 8
  %6 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not = icmp eq i16 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %mode = getelementptr inbounds %struct.dp83869_private, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then6, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %speed, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %speed8 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %10 = ptrtoint ptr %speed8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %speed8, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 255, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_config_intr(ptr nocapture noundef readonly %phydev) #2 align 64 {
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
define internal i32 @dp83869_handle_interrupt(ptr noundef %phydev) #2 align 64 {
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
define internal i32 @dp83869_set_wol(ptr noundef %phydev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %0 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attached_dev, align 8
  %call = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 308) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %and = and i32 %7, 106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else112, label %if.then5

if.then5:                                         ; preds = %if.end4
  %or6 = or i32 %call.i, 8
  %8 = and i32 %7, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then5
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
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.then13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end16

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %is_valid_ether_addr.exit
  %arrayidx = getelementptr i8, ptr %11, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %18 to i16
  %shl = shl nuw i16 %conv, 8
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  %conv18 = zext i8 %20 to i16
  %or19 = or i16 %shl, %conv18
  %call21 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 310, i16 noundef zeroext %or19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %arrayidx25 = getelementptr i8, ptr %11, i32 3
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %22 to i16
  %shl27 = shl nuw i16 %conv26, 8
  %arrayidx28 = getelementptr i8, ptr %11, i32 2
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %24 to i16
  %or30 = or i16 %shl27, %conv29
  %call32 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 311, i16 noundef zeroext %or30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %arrayidx36 = getelementptr i8, ptr %11, i32 5
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %26 to i16
  %shl38 = shl nuw i16 %conv37, 8
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i, align 1
  %conv40 = zext i8 %28 to i16
  %or41 = or i16 %shl38, %conv40
  %call43 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 312, i16 noundef zeroext %or41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %or47 = or i32 %call, 129
  br label %if.end49

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %or = and i32 %call, -130
  %and48 = or i32 %or, 128
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.end46
  %val_rxcfg.0 = phi i32 [ %or47, %if.end46 ], [ %and48, %if.else ]
  %29 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wolopts, align 4
  %and51 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else93, label %if.then53

if.then53:                                        ; preds = %if.end49
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %arrayidx54 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %32 to i16
  %shl56 = shl nuw i16 %conv55, 8
  %33 = ptrtoint ptr %sopass to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sopass, align 4
  %conv59 = zext i8 %34 to i16
  %or60 = or i16 %shl56, %conv59
  %call62 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 313, i16 noundef zeroext %or60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.then53
  %arrayidx67 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %36 to i16
  %shl69 = shl nuw i16 %conv68, 8
  %arrayidx71 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx71, align 2
  %conv72 = zext i8 %38 to i16
  %or73 = or i16 %shl69, %conv72
  %call75 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 314, i16 noundef zeroext %or73) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %if.end65
  %arrayidx80 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %40 to i16
  %shl82 = shl nuw i16 %conv81, 8
  %arrayidx84 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx84, align 4
  %conv85 = zext i8 %42 to i16
  %or86 = or i16 %shl82, %conv85
  %call88 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 315, i16 noundef zeroext %or86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %or92 = or i32 %val_rxcfg.0, 32
  br label %if.end95

if.else93:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %and94 = and i32 %val_rxcfg.0, -33
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.end91
  %val_rxcfg.1 = phi i32 [ %or92, %if.end91 ], [ %and94, %if.else93 ]
  %43 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wolopts, align 4
  %and102 = and i32 %val_rxcfg.1, -17
  %and97 = shl i32 %44, 3
  %45 = and i32 %and97, 16
  %val_rxcfg.2 = or i32 %45, %and102
  %and105 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %or108 = or i32 %val_rxcfg.2, 4
  br label %if.end115

if.else109:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %and110 = and i32 %val_rxcfg.2, -5
  br label %if.end115

if.else112:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %and113 = and i32 %call, -129
  %and114 = and i32 %call.i, -9
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.else109, %if.then107
  %val_rxcfg.3 = phi i32 [ %or108, %if.then107 ], [ %and110, %if.else109 ], [ %and113, %if.else112 ]
  %val_micr.0 = phi i32 [ %or6, %if.then107 ], [ %or6, %if.else109 ], [ %and114, %if.else112 ]
  %conv116 = trunc i32 %val_rxcfg.3 to i16
  %call117 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 308, i16 noundef zeroext %conv116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end120:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %conv121 = trunc i32 %val_micr.0 to i16
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 8
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 8
  %call.i185 = tail call i32 @mdiobus_write(ptr noundef %47, i32 noundef %49, i32 noundef 18, i16 noundef zeroext %conv121) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.end115.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i185, %if.end120 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call21, %if.end16.cleanup_crit_edge ], [ %call32, %if.end24.cleanup_crit_edge ], [ %call43, %if.end35.cleanup_crit_edge ], [ %call62, %if.then53.cleanup_crit_edge ], [ %call75, %if.end65.cleanup_crit_edge ], [ %call88, %if.end78.cleanup_crit_edge ], [ %call117, %if.end115.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83869_get_wol(ptr noundef %phydev, ptr nocapture noundef %wol) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %and4 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %or8 = or i32 %5, 8
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3.if.end9_crit_edge
  %and10 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %or14 = or i32 %7, 32
  store i32 %or14, ptr %wolopts, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %and16 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end70_crit_edge, label %if.then18

if.end15.if.end70_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 313) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end27:                                         ; preds = %if.then18
  %conv = trunc i32 %call19 to i8
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %8 = ptrtoint ptr %sopass to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %sopass, align 4
  %9 = lshr i32 %call19, 8
  %conv29 = trunc i32 %9 to i8
  %arrayidx31 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv29, ptr %arrayidx31, align 1
  %call32 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 314) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end27
  %conv43 = trunc i32 %call32 to i8
  %arrayidx45 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv43, ptr %arrayidx45, align 2
  %12 = lshr i32 %call32, 8
  %conv47 = trunc i32 %12 to i8
  %arrayidx49 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv47, ptr %arrayidx49, align 1
  %call50 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 315) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end56, label %if.end59

do.end56:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end59:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %conv61 = trunc i32 %call50 to i8
  %arrayidx63 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv61, ptr %arrayidx63, align 4
  %15 = lshr i32 %call50, 8
  %conv65 = trunc i32 %15 to i8
  %arrayidx67 = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv65, ptr %arrayidx67, align 1
  %17 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wolopts, align 4
  %or69 = or i32 %18, 64
  store i32 %or69, ptr %wolopts, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end59, %if.end15.if.end70_crit_edge
  %and71 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end70.cleanup_crit_edge, %do.end56, %do.end38, %do.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83869_get_tunable(ptr nocapture noundef readonly %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #2 align 64 {
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
define internal i32 @dp83869_set_tunable(ptr noundef %phydev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.23) #8
  br label %return

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge
  %count.0.i = phi i16 [ 3840, %sw.bb7.i ], [ 2816, %sw.bb6.i ], [ 1792, %sw.bb5.i ], [ 768, %if.end.i.sw.epilog.i_crit_edge ]
  %call28.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext %count.0.i) #5
  br label %return

return:                                           ; preds = %sw.epilog.i, %do.end.i, %if.then2.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -22, %do.end.i ], [ %call28.i, %sw.epilog.i ], [ %call.i.i, %if.then2.i ], [ -22, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp83869_configure_rgmii(ptr noundef %phydev, ptr nocapture noundef readonly %dp83869) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface.i, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and = and i32 %call.i, 4095
  %8 = ptrtoint ptr %dp83869 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp83869, align 4
  %shl = shl i32 %9, 14
  %or = or i32 %shl, %and
  %rx_fifo_depth = getelementptr inbounds %struct.dp83869_private, ptr %dp83869, i32 0, i32 1
  %10 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_fifo_depth, align 4
  %shl3 = shl i32 %11, 12
  %or4 = or i32 %or, %shl3
  %conv = trunc i32 %or4 to i16
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i33 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 16, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not = icmp eq i32 %call.i33, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %io_impedance = getelementptr inbounds %struct.dp83869_private, ptr %dp83869, i32 0, i32 4
  %16 = ptrtoint ptr %io_impedance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_impedance, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp9 = icmp sgt i32 %17, -1
  br i1 %cmp9, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %18 = trunc i32 %17 to i16
  %conv14 = and i16 %18, 31
  %call15 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 368, i16 noundef zeroext 31, i16 noundef zeroext %conv14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i33, %if.end.cleanup_crit_edge ], [ %call15, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp83869_configure_fiber(ptr noundef %phydev, ptr nocapture noundef readonly %dp83869) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %advertising = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 17
  %supported = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %supported, i32 noundef 92) #5
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported, align 4
  %or.i.i = or i32 %1, 1024
  store i32 %or.i.i, ptr %supported, align 4
  %add.ptr.i.i = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 31, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i52 = or i32 %3, 1
  store i32 %or.i.i52, ptr %add.ptr.i.i, align 4
  %mode = getelementptr inbounds %struct.dp83869_private, ptr %dp83869, i32 0, i32 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i53 = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i53, align 4
  %or.i.i54 = or i32 %7, 512
  store i32 %or.i.i54, ptr %add.ptr.i.i53, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %add.ptr.i.i55 = getelementptr %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i55, align 4
  %or.i.i58 = or i32 %9, 201326592
  store i32 %or.i.i58, ptr %add.ptr.i.i55, align 4
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %autoneg, align 8
  %15 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %supported, align 4
  %and.i.i = and i32 %16, -65
  store i32 %and.i.i, ptr %supported, align 4
  %17 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %advertising, align 4
  %and.i.i59 = and i32 %18, -65
  store i32 %and.i.i59, ptr %advertising, align 4
  %and = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then20

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %if.end
  %call21 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 0, i16 noundef zeroext 4096, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end.if.end26_crit_edge, %if.then
  tail call void @__bitmap_or(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %supported, i32 noundef 92) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then20.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call.i, %if.else.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_get_internal_delay(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_dp83869__364_906_phy_module_init6, !1, !"__initcall__kmod_dp83869__364_906_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/dp83869.c", i32 906, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description365, !4, !"__UNIQUE_ID_description365", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/dp83869.c", i32 915, i32 1}
!5 = !{ptr @__UNIQUE_ID_author366, !6, !"__UNIQUE_ID_author366", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/dp83869.c", i32 916, i32 1}
!7 = !{ptr @__UNIQUE_ID_file367, !8, !"__UNIQUE_ID_file367", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/dp83869.c", i32 917, i32 1}
!9 = !{ptr @__UNIQUE_ID_license368, !8, !"__UNIQUE_ID_license368", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/dp83869.c", i32 902, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/dp83869.c", i32 903, i32 2}
!14 = !{ptr @dp83869_driver, !15, !"dp83869_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/dp83869.c", i32 901, i32 26}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/dp83869.c", i32 542, i32 38}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/dp83869.c", i32 547, i32 38}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/dp83869.c", i32 558, i32 37}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/dp83869.c", i32 560, i32 42}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/dp83869.c", i32 563, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/dp83869.c", i32 579, i32 36}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/dp83869.c", i32 583, i32 36}
!30 = !{ptr @dp83869_internal_delay, !31, !"dp83869_internal_delay", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/dp83869.c", i32 524, i32 18}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/phy/dp83869.c", i32 351, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dp83869_get_wol._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @dp83869_get_wol._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/dp83869.c", i32 368, i32 4}
!42 = !{ptr @dp83869_get_wol._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dp83869_get_wol._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/dp83869.c", i32 378, i32 4}
!46 = !{ptr @dp83869_get_wol._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dp83869_get_wol._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/dp83869.c", i32 388, i32 4}
!50 = !{ptr @dp83869_get_wol._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dp83869_get_wol._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/phy/dp83869.c", i32 460, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dp83869_set_downshift._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dp83869_set_downshift._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
