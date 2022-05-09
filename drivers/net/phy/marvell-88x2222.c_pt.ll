; ModuleID = '/llk/IR_all_yes/drivers/net/phy/marvell-88x2222.c_pt.bc'
source_filename = "../drivers/net/phy/marvell-88x2222.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sfp_upstream_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mv2222_data = type { i32, [3 x i32], i8 }

@__initcall__kmod_marvell_88x2222__347_612_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@mv2222_drivers = internal global { [1 x %struct.phy_driver], [52 x i8] } { [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040912, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @mv2222_soft_reset, ptr @mv2222_config_init, ptr @mv2222_probe, ptr @mv2222_get_features, ptr @mv2222_suspend, ptr @mv2222_resume, ptr @mv2222_config_aneg, ptr @mv2222_aneg_done, ptr @mv2222_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], [52 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description348 = internal constant [72 x i8] c"marvell_88x2222.description=Marvell 88x2222 ethernet transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [53 x i8] c"marvell_88x2222.file=drivers/net/phy/marvell-88x2222\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [28 x i8] c"marvell_88x2222.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Marvell 88X2222\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/phy/marvell-88x2222.c\00", [62 x i8] zeroinitializer }, align 32
@mv2222_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv2222_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv2222_soft_reset._entry_ptr = internal global ptr @mv2222_soft_reset._entry, section ".printk_index", align 4
@sfp_phy_ops = internal constant { %struct.sfp_upstream_ops, [56 x i8] } { %struct.sfp_upstream_ops { ptr @phy_sfp_attach, ptr @phy_sfp_detach, ptr @mv2222_sfp_insert, ptr @mv2222_sfp_remove, ptr null, ptr null, ptr @mv2222_sfp_link_down, ptr @mv2222_sfp_link_up, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mv2222_sfp_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 495, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s SFP module inserted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv2222_sfp_insert\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv2222_sfp_insert._entry_ptr = internal global ptr @mv2222_sfp_insert._entry, section ".printk_index", align 4
@mv2222_sfp_insert._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.1, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Incompatible SFP module inserted\0A\00", [62 x i8] zeroinitializer }, align 32
@mv2222_sfp_insert._entry_ptr.11 = internal global ptr @mv2222_sfp_insert._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mv2222_read_status_10g.timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mv2222_read_status_1g.timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.43 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 21, i64 26]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 21, i64 26]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 21, i64 26]
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"mv2222_drivers\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 596, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 600, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 86, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"sfp_phy_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 549, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 495, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 500, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 211, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 213, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 217, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 219, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 221, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 223, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 225, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 227, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 229, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 231, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 233, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 235, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 237, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 239, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 241, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 243, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 245, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 247, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 249, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 251, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 253, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 255, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 257, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 259, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 261, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 263, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 265, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 267, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 269, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 271, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 328, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.189 = private constant [37 x i8] c"../drivers/net/phy/marvell-88x2222.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 364, i32 13 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_marvell_88x2222__347_612_phy_module_init6, ptr @mv2222_sfp_insert._entry, ptr @mv2222_sfp_insert._entry.9, ptr @mv2222_sfp_insert._entry_ptr, ptr @mv2222_sfp_insert._entry_ptr.11, ptr @mv2222_soft_reset._entry, ptr @mv2222_soft_reset._entry_ptr, ptr @phy_module_exit, ptr @mv2222_drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sfp_phy_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @mv2222_read_status_10g.timeout, ptr @mv2222_read_status_1g.timeout], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_drivers to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_phy_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_sfp_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_sfp_insert._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_read_status_10g.timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv2222_read_status_1g.timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @mv2222_drivers, i32 noundef 1, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @phy_drivers_unregister(ptr noundef nonnull @mv2222_drivers, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_soft_reset(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61443, i16 noundef zeroext -32640) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call1, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 88) #9
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %call1464 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61443) #9
  %and65 = and i32 %call1464, 32896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool15.not66 = icmp eq i32 %and65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1464)
  %cmp1667 = icmp slt i32 %call1464, 0
  %or.cond68 = or i1 %cmp1667, %tobool15.not66
  br i1 %or.cond68, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %if.then23, label %if.then27

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61443) #9
  %.pre = and i32 %call24, 32896
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %call14 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61443) #9
  %and = and i32 %call14, 32896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  %or.cond = or i1 %cmp16, %tobool15.not
  br i1 %or.cond, label %if.then27.for.end_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.then27.for.end_crit_edge, %if.then23, %if.end.for.end_crit_edge
  %and31.pre-phi = phi i32 [ %and65, %if.end.for.end_crit_edge ], [ %.pre, %if.then23 ], [ %and, %if.then27.for.end_crit_edge ]
  %val.0 = phi i32 [ %call1464, %if.end.for.end_crit_edge ], [ %call24, %if.then23 ], [ %call14, %if.then27.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.pre-phi)
  %tobool32.not = icmp eq i32 %and31.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp33 = icmp slt i32 %val.0, 0
  %0 = or i1 %cmp33, %tobool32.not
  %1 = select i1 %0, i32 0, i32 -110
  %__ret.0 = select i1 %cmp33, i32 %val.0, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool37.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool37.not, label %for.end.cleanup_crit_edge, label %do.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %__ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %__ret.0, %do.end41 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv2222_config_init(ptr nocapture noundef readonly %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp.not = icmp eq i32 %1, 25
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %supported19 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16
  %0 = ptrtoint ptr %supported19 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 29951, ptr %supported19, align 4
  %supported.sroa.28.0.supported19.sroa_idx = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %supported.sroa.28.0.supported19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32256, ptr %supported.sroa.28.0.supported19.sroa_idx, align 4
  %supported.sroa.40.0.supported19.sroa_idx = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 16, i32 2
  %2 = ptrtoint ptr %supported.sroa.40.0.supported19.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %supported.sroa.40.0.supported19.sroa_idx, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 20, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call.i, align 4
  %priv22 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %4 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %priv22, align 8
  %call23 = tail call i32 @phy_sfp_probe(ptr noundef %phydev, ptr noundef nonnull @sfp_phy_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv2222_get_features(ptr nocapture noundef readnone %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_suspend(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 9, i16 noundef zeroext 0, i16 noundef zeroext 1) #9
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_resume(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 9, i16 noundef zeroext 1, i16 noundef zeroext 0) #9
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %5 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp2 = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp4 = icmp eq i32 %3, 26
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br i1 %cmp4, label %if.then.i, label %if.then5.if.end9.i_crit_edge

if.then5.if.end9.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i:                                        ; preds = %if.then5
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %7)
  %cmp2.i = icmp sgt i32 %7, 9999
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4.not.i = icmp eq i32 %7, -1
  %or.cond.i = or i1 %cmp2.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.if.end9thread-pre-split.i_crit_edge, label %if.then5.i

if.then.i.if.end9thread-pre-split.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9thread-pre-split.i

if.then5.i:                                       ; preds = %if.then.i
  %call.i = tail call fastcc i32 @mv2222_swap_line_type(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.then5.i.cleanup_crit_edge, label %if.then5.i.if.end9thread-pre-split.i_crit_edge

if.then5.i.if.end9thread-pre-split.i_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9thread-pre-split.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9thread-pre-split.i:                        ; preds = %if.then5.i.if.end9thread-pre-split.i_crit_edge, %if.then.i.if.end9thread-pre-split.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i = load i32, ptr %1, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9thread-pre-split.i, %if.then5.if.end9.i_crit_edge
  %9 = phi i32 [ %.pr.i, %if.end9thread-pre-split.i ], [ %3, %if.then5.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp11.i = icmp eq i32 %9, 4
  br i1 %cmp11.i, label %if.then12.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end9.i
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 8
  %speed.i.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %12 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.bb.i.i [
    i32 10, label %if.then12.i.sw.bb20.i.i_crit_edge
    i32 100, label %if.then12.i.sw.bb7.i.i_crit_edge
  ]

if.then12.i.sw.bb7.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i.i

if.then12.i.sw.bb20.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i.i

sw.bb.i.i:                                        ; preds = %if.then12.i
  %supported.i.i = getelementptr inbounds %struct.mv2222_data, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %supported.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %supported.i.i, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %sw.bb.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

sw.bb.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %18 = ptrtoint ptr %supported.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %supported.i.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i.sw.bb7.i.i_crit_edge, label %lor.lhs.false.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

lor.lhs.false.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false.i.i.sw.bb7.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7.i.i

sw.bb7.i.i:                                       ; preds = %lor.lhs.false.i.i.sw.bb7.i.i_crit_edge, %if.then12.i.sw.bb7.i.i_crit_edge
  %supported8.i.i = getelementptr inbounds %struct.mv2222_data, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %supported8.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %supported8.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false12.i.i, label %sw.bb7.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

sw.bb7.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false12.i.i:                              ; preds = %sw.bb7.i.i
  %24 = ptrtoint ptr %supported8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %supported8.i.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool16.not.i.i, label %lor.lhs.false12.i.i.sw.bb20.i.i_crit_edge, label %lor.lhs.false12.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

lor.lhs.false12.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false12.i.i.sw.bb20.i.i_crit_edge:        ; preds = %lor.lhs.false12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i.i

sw.bb20.i.i:                                      ; preds = %lor.lhs.false12.i.i.sw.bb20.i.i_crit_edge, %if.then12.i.sw.bb20.i.i_crit_edge
  %supported21.i.i = getelementptr inbounds %struct.mv2222_data, ptr %11, i32 0, i32 1
  %27 = ptrtoint ptr %supported21.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %supported21.i.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool24.not.i.i, label %lor.lhs.false25.i.i, label %sw.bb20.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

sw.bb20.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false25.i.i:                              ; preds = %sw.bb20.i.i
  %30 = ptrtoint ptr %supported21.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %supported21.i.i, align 4
  %and1.i.i50.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i50.i.i)
  %tobool29.not.i.i = icmp eq i32 %and1.i.i50.i.i, 0
  br i1 %tobool29.not.i.i, label %lor.lhs.false25.i.i.cleanup_crit_edge, label %lor.lhs.false25.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge

lor.lhs.false25.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge: ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_set_sgmii_speed.exit.i

lor.lhs.false25.i.i.cleanup_crit_edge:            ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mv2222_set_sgmii_speed.exit.i:                    ; preds = %lor.lhs.false25.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge, %sw.bb20.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge, %lor.lhs.false12.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge, %sw.bb7.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge, %lor.lhs.false.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge, %sw.bb.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge
  %.sink.i.i = phi i16 [ 64, %lor.lhs.false.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ], [ 64, %sw.bb.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ], [ 8192, %lor.lhs.false12.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ], [ 8192, %sw.bb7.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ], [ 0, %lor.lhs.false25.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ], [ 0, %sw.bb20.i.i.mv2222_set_sgmii_speed.exit.i_crit_edge ]
  %call31.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8192, i16 noundef zeroext 8256, i16 noundef zeroext %.sink.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp14.i = icmp slt i32 %call31.i.i, 0
  br i1 %cmp14.i, label %mv2222_set_sgmii_speed.exit.i.cleanup_crit_edge, label %mv2222_set_sgmii_speed.exit.i.if.end17.i_crit_edge

mv2222_set_sgmii_speed.exit.i.if.end17.i_crit_edge: ; preds = %mv2222_set_sgmii_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

mv2222_set_sgmii_speed.exit.i.cleanup_crit_edge:  ; preds = %mv2222_set_sgmii_speed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %mv2222_set_sgmii_speed.exit.i.if.end17.i_crit_edge, %if.end9.i.if.end17.i_crit_edge
  %call.i.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8192, i16 noundef zeroext 4608, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end17.i.cleanup_crit_edge, label %if.end17.i.cleanup.sink.split_crit_edge

if.end17.i.cleanup.sink.split_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %supported = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.mv2222_data, ptr %1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %34 = trunc i32 %33 to i16
  %35 = lshr i16 %34, 4
  %36 = and i16 %35, 32
  %37 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %supported, align 4
  %39 = trunc i32 %38 to i16
  %40 = lshr i16 %39, 6
  %41 = and i16 %40, 128
  %42 = or i16 %41, %36
  %43 = load volatile i32, ptr %supported, align 4
  %44 = trunc i32 %43 to i16
  %45 = lshr i16 %44, 6
  %46 = and i16 %45, 256
  %47 = or i16 %42, %46
  %call9 = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8196, i16 noundef zeroext 416, i16 noundef zeroext %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call.i.i = tail call i32 @phy_modify_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8192, i16 noundef zeroext 0, i16 noundef zeroext -28672) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i24 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i24, label %if.end13.cleanup_crit_edge, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.end17.i.cleanup.sink.split_crit_edge
  %call1.i = tail call i32 @mv2222_soft_reset(ptr noundef %phydev) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %mv2222_set_sgmii_speed.exit.i.cleanup_crit_edge, %lor.lhs.false25.i.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ %call.i, %if.then5.i.cleanup_crit_edge ], [ %call31.i.i, %mv2222_set_sgmii_speed.exit.i.cleanup_crit_edge ], [ %call.i.i.i, %if.end17.i.cleanup_crit_edge ], [ -22, %lor.lhs.false25.i.i.cleanup_crit_edge ], [ %call.i.i, %if.end13.cleanup_crit_edge ], [ %call1.i, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_aneg_done(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %supported.i = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %supported.i, align 4
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.mv2222_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false6.i.if.then_crit_edge

lor.lhs.false6.i.if.then_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false11.i:                                ; preds = %lor.lhs.false6.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %13 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not.i = icmp eq i32 %13, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false11.i.if.then_crit_edge

lor.lhs.false11.i.if.then_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false16.i:                                ; preds = %lor.lhs.false11.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not.i = icmp eq i32 %16, 0
  br i1 %tobool20.not.i, label %mv2222_is_10g_capable.exit, label %lor.lhs.false16.i.if.then_crit_edge

lor.lhs.false16.i.if.then_crit_edge:              ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

mv2222_is_10g_capable.exit:                       ; preds = %lor.lhs.false16.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.i.not = icmp eq i32 %19, 0
  br i1 %tobool24.i.not, label %mv2222_is_10g_capable.exit.if.end5_crit_edge, label %mv2222_is_10g_capable.exit.if.then_crit_edge

mv2222_is_10g_capable.exit.if.then_crit_edge:     ; preds = %mv2222_is_10g_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

mv2222_is_10g_capable.exit.if.end5_crit_edge:     ; preds = %mv2222_is_10g_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %mv2222_is_10g_capable.exit.if.then_crit_edge, %lor.lhs.false16.i.if.then_crit_edge, %lor.lhs.false11.i.if.then_crit_edge, %lor.lhs.false6.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call1 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %mv2222_is_10g_capable.exit.if.end5_crit_edge
  %call6 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %and10 = and i32 %call6, 32
  %spec.select = select i1 %cmp7, i32 %call6, i32 %and10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %link2 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %2 = ptrtoint ptr %link2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link2, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %link2, align 8
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %duplex, align 4
  %call.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 1, i32 noundef 10) #9
  %5 = and i32 %call.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not.i = icmp eq i32 %5, 1
  br i1 %.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sfp_bus.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 34
  %6 = ptrtoint ptr %sfp_bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sfp_bus.i, align 8
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %sfp_link.i = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sfp_link.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sfp_link.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %11)
  %cmp = icmp eq i32 %11, 26
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call.i24 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i = icmp slt i32 %call.i24, 0
  br i1 %cmp.i, label %if.then3.cleanup_crit_edge, label %if.end.i25

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i25:                                       ; preds = %if.then3
  %and.i = and i32 %call.i24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %12 = ptrtoint ptr %link2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load3.i = load i16, ptr %link2, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i = and i16 %bf.load3.i, -9
  %13 = ptrtoint ptr %link2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear.i, ptr %link2, align 8
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10000, ptr %speed, align 8
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %duplex, align 4
  br label %if.end9

if.else.i:                                        ; preds = %if.end.i25
  %16 = and i16 %bf.load3.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp5.not.i = icmp eq i16 %16, 0
  br i1 %cmp5.not.i, label %if.else.i.if.end9_crit_edge, label %if.then6.i

if.else.i.if.end9_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6.i:                                       ; preds = %if.else.i
  %17 = load i32, ptr @mv2222_read_status_10g.timeout, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr @mv2222_read_status_10g.timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp7.i = icmp sgt i32 %inc.i, 3
  br i1 %cmp7.i, label %if.then8.i, label %if.then6.i.if.end9_crit_edge

if.then6.i.if.end9_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8.i:                                       ; preds = %if.then6.i
  store i32 0, ptr @mv2222_read_status_10g.timeout, align 4
  %call9.i = tail call fastcc i32 @mv2222_swap_line_type(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.end6_crit_edge

if.then8.i.if.end6_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i27 = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 8193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %if.else.cleanup_crit_edge, label %if.end.i31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i31:                                       ; preds = %if.else
  %18 = ptrtoint ptr %link2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %link2, align 8
  %19 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp1.not.i = icmp ne i16 %19, 0
  %and.i29 = and i32 %call.i27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  %or.cond.i = select i1 %cmp1.not.i, i1 %tobool.not.i30, i1 false
  br i1 %or.cond.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i31
  %20 = load i32, ptr @mv2222_read_status_1g.timeout, align 4
  %inc.i32 = add i32 %20, 1
  store i32 %inc.i32, ptr @mv2222_read_status_1g.timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i32)
  %cmp3.i = icmp sgt i32 %inc.i32, 3
  br i1 %cmp3.i, label %if.then4.i, label %if.then2.i.if.end9_crit_edge

if.then2.i.if.end9_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4.i:                                       ; preds = %if.then2.i
  store i32 0, ptr @mv2222_read_status_1g.timeout, align 4
  %call5.i = tail call fastcc i32 @mv2222_swap_line_type(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then4.i.cleanup_crit_edge, label %if.then4.i.if.end6_crit_edge

if.then4.i.if.end6_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i31
  %and12.i = and i32 %call.i27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end9_crit_edge, label %if.end15.i

if.end11.i.if.end9_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end15.i:                                       ; preds = %if.end11.i
  %call16.i = tail call i32 @phy_read_mmd(ptr noundef %phydev, i32 noundef 3, i32 noundef 40963) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i.cleanup_crit_edge, label %if.end19.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19.i:                                       ; preds = %if.end15.i
  %and20.i = and i32 %call16.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end9_crit_edge, label %if.then22.i

if.end19.i.if.end9_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then22.i:                                      ; preds = %if.end19.i
  %and23.i = lshr i32 %call16.i, 13
  %and23.lobit.i = and i32 %and23.i, 1
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and23.lobit.i, ptr %duplex, align 4
  %and28.i = and i32 %call16.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else31.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000, ptr %speed, align 8
  br label %if.end9

if.else31.i:                                      ; preds = %if.then22.i
  %and32.i = and i32 %call16.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else36.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %speed, align 8
  br label %if.end9

if.else36.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %speed, align 8
  br label %if.end9

if.end6:                                          ; preds = %if.then4.i.if.end6_crit_edge, %if.then8.i.if.end6_crit_edge
  %call9.i33 = tail call i32 @mv2222_config_aneg(ptr noundef %phydev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i33)
  %cmp7 = icmp slt i32 %call9.i33, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.else36.i, %if.then34.i, %if.then30.i, %if.end19.i.if.end9_crit_edge, %if.end11.i.if.end9_crit_edge, %if.then2.i.if.end9_crit_edge, %if.then6.i.if.end9_crit_edge, %if.else.i.if.end9_crit_edge, %if.then1.i
  %link.039 = phi i32 [ %call9.i33, %if.end6.if.end9_crit_edge ], [ 1, %if.end19.i.if.end9_crit_edge ], [ 1, %if.then34.i ], [ 1, %if.else36.i ], [ 1, %if.then30.i ], [ 0, %if.end11.i.if.end9_crit_edge ], [ 0, %if.then2.i.if.end9_crit_edge ], [ 0, %if.else.i.if.end9_crit_edge ], [ 0, %if.then6.i.if.end9_crit_edge ], [ 1, %if.then1.i ]
  %25 = trunc i32 %link.039 to i16
  %26 = ptrtoint ptr %link2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load11 = load i16, ptr %link2, align 8
  %bf.value = shl i16 %25, 2
  %bf.shl = and i16 %bf.value, 4
  %bf.clear12 = and i16 %bf.load11, -5
  %bf.set13 = or i16 %bf.shl, %bf.clear12
  store i16 %bf.set13, ptr %link2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call9.i33, %if.end6.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %call16.i, %if.end15.i.cleanup_crit_edge ], [ %call5.i, %if.then4.i.cleanup_crit_edge ], [ %call.i27, %if.else.cleanup_crit_edge ], [ %call9.i, %if.then8.i.cleanup_crit_edge ], [ %call.i24, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_sfp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_attach(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_detach(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv2222_sfp_insert(ptr noundef %upstream, ptr noundef %id) #2 align 64 {
entry:
  %sfp_supported = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sfp_supported) #9
  %0 = call ptr @memset(ptr %sfp_supported, i32 0, i32 12)
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 26
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 8
  %sfp_bus = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 34
  %3 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sfp_bus, align 8
  call void @sfp_parse_support(ptr noundef %4, ptr noundef %id, ptr noundef nonnull %sfp_supported) #9
  %5 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sfp_bus, align 8
  %call = call i32 @sfp_select_interface(ptr noundef %6, ptr noundef nonnull %sfp_supported) #9
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call, label %phy_modes.exit [
    i32 0, label %entry.do.end11_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %entry.phy_modes.exit.thread52_crit_edge
    i32 5, label %sw.bb5.i
    i32 6, label %sw.bb6.i
    i32 7, label %sw.bb7.i
    i32 8, label %sw.bb8.i
    i32 9, label %sw.bb9.i
    i32 10, label %sw.bb10.i
    i32 11, label %sw.bb11.i
    i32 12, label %sw.bb12.i
    i32 13, label %sw.bb13.i
    i32 14, label %sw.bb14.i
    i32 15, label %sw.bb15.i
    i32 16, label %sw.bb16.i
    i32 17, label %sw.bb17.i
    i32 18, label %sw.bb18.i
    i32 19, label %sw.bb19.i
    i32 21, label %sw.bb20.i
    i32 22, label %sw.bb21.i
    i32 23, label %sw.bb22.i
    i32 24, label %sw.bb23.i
    i32 25, label %sw.bb24.i
    i32 26, label %sw.bb25.i
    i32 27, label %sw.bb26.i
    i32 28, label %sw.bb27.i
    i32 29, label %sw.bb28.i
    i32 20, label %sw.bb29.i
  ]

entry.phy_modes.exit.thread52_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_modes.exit.thread52

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb10.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb12.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb13.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb14.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb16.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb17.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb19.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb20.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_modes.exit.thread52

sw.bb21.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb23.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb24.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %phy_modes.exit.thread52

sw.bb26.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

phy_modes.exit.thread52:                          ; preds = %sw.bb25.i, %sw.bb20.i, %entry.phy_modes.exit.thread52_crit_edge
  %retval.0.i.ph51 = phi ptr [ @.str.32, %sw.bb20.i ], [ @.str.37, %sw.bb25.i ], [ @.str.16, %entry.phy_modes.exit.thread52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %upstream, ptr noundef nonnull @.str.6, ptr noundef nonnull %retval.0.i.ph51) #12
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %2, align 4
  %supported = getelementptr inbounds %struct.mv2222_data, ptr %2, i32 0, i32 1
  %supported13 = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 16
  %call.i.i = call i32 @__bitmap_and(ptr noundef %supported, ptr noundef %supported13, ptr noundef nonnull %sfp_supported, i32 noundef 92) #9
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %12, label %phy_modes.exit.thread52.cleanup_crit_edge [
    i32 26, label %phy_modes.exit.thread52.mv2222_config_line.exit_crit_edge
    i32 21, label %sw.bb2.i46
    i32 4, label %sw.bb4.i47
  ]

phy_modes.exit.thread52.mv2222_config_line.exit_crit_edge: ; preds = %phy_modes.exit.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

phy_modes.exit.thread52.cleanup_crit_edge:        ; preds = %phy_modes.exit.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

phy_modes.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %phy_modes.exit, %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.do.end11_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %phy_modes.exit ], [ @.str.12, %entry.do.end11_crit_edge ], [ @.str.13, %sw.bb1.i ], [ @.str.14, %sw.bb2.i ], [ @.str.15, %sw.bb3.i ], [ @.str.17, %sw.bb5.i ], [ @.str.18, %sw.bb6.i ], [ @.str.19, %sw.bb7.i ], [ @.str.20, %sw.bb8.i ], [ @.str.21, %sw.bb9.i ], [ @.str.22, %sw.bb10.i ], [ @.str.23, %sw.bb11.i ], [ @.str.24, %sw.bb12.i ], [ @.str.25, %sw.bb13.i ], [ @.str.26, %sw.bb14.i ], [ @.str.27, %sw.bb15.i ], [ @.str.28, %sw.bb16.i ], [ @.str.29, %sw.bb17.i ], [ @.str.30, %sw.bb18.i ], [ @.str.31, %sw.bb19.i ], [ @.str.33, %sw.bb21.i ], [ @.str.34, %sw.bb22.i ], [ @.str.35, %sw.bb23.i ], [ @.str.36, %sw.bb24.i ], [ @.str.38, %sw.bb26.i ], [ @.str.39, %sw.bb27.i ], [ @.str.40, %sw.bb28.i ], [ @.str.41, %sw.bb29.i ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %upstream, ptr noundef nonnull @.str.6, ptr noundef nonnull %.str.42.sink) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %upstream, ptr noundef nonnull @.str.10) #12
  br label %cleanup

sw.bb2.i46:                                       ; preds = %phy_modes.exit.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

sw.bb4.i47:                                       ; preds = %phy_modes.exit.thread52
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

mv2222_config_line.exit:                          ; preds = %sw.bb4.i47, %sw.bb2.i46, %phy_modes.exit.thread52.mv2222_config_line.exit_crit_edge
  %.sink.i = phi i16 [ 32627, %sw.bb4.i47 ], [ 31603, %sw.bb2.i46 ], [ 29043, %phy_modes.exit.thread52.mv2222_config_line.exit_crit_edge ]
  %call5.i = call i32 @phy_write_mmd(ptr noundef %upstream, i32 noundef 31, i32 noundef 61442, i16 noundef zeroext %.sink.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp17 = icmp slt i32 %call5.i, 0
  br i1 %cmp17, label %mv2222_config_line.exit.cleanup_crit_edge, label %if.end19

mv2222_config_line.exit.cleanup_crit_edge:        ; preds = %mv2222_config_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %mv2222_config_line.exit
  %lock = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 32
  %call20 = call i32 @mutex_trylock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @mv2222_config_aneg(ptr noundef %upstream)
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %mv2222_config_line.exit.cleanup_crit_edge, %do.end11, %phy_modes.exit.thread52.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call5.i, %mv2222_config_line.exit.cleanup_crit_edge ], [ %call22, %if.then21 ], [ %call5.i, %if.end19.cleanup_crit_edge ], [ -22, %phy_modes.exit.thread52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sfp_supported) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv2222_sfp_remove(ptr nocapture noundef readonly %upstream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv2222_sfp_link_down(ptr nocapture noundef readonly %upstream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sfp_link = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sfp_link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sfp_link, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv2222_sfp_link_up(ptr nocapture noundef readonly %upstream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %upstream, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sfp_link = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sfp_link to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %sfp_link, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_parse_support(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_select_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv2222_swap_line_type(ptr noundef %phydev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 26, label %sw.bb
    i32 21, label %entry.sw.bb7_crit_edge
    i32 4, label %entry.sw.bb7_crit_edge46
  ]

entry.sw.bb7_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.mv2222_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 21, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %9 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1, align 8
  %supported.i = getelementptr inbounds %struct.mv2222_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %supported.i, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then12.sink.split_crit_edge

if.end.if.then12.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false.i:                                  ; preds = %if.end
  %14 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %supported.i, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.then12.sink.split_crit_edge

lor.lhs.false.i.if.then12.sink.split_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %17 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %supported.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false6.i.if.then12.sink.split_crit_edge

lor.lhs.false6.i.if.then12.sink.split_crit_edge:  ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false11.i:                                ; preds = %lor.lhs.false6.i
  %20 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %supported.i, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not.i = icmp eq i32 %22, 0
  br i1 %tobool15.not.i, label %lor.lhs.false16.i, label %lor.lhs.false11.i.if.then12.sink.split_crit_edge

lor.lhs.false11.i.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false16.i:                                ; preds = %lor.lhs.false11.i
  %23 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %supported.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool20.not.i = icmp eq i32 %25, 0
  br i1 %tobool20.not.i, label %mv2222_is_sgmii_capable.exit, label %lor.lhs.false16.i.if.then12.sink.split_crit_edge

lor.lhs.false16.i.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

mv2222_is_sgmii_capable.exit:                     ; preds = %lor.lhs.false16.i
  %26 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %supported.i, align 4
  %and1.i.i38.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i38.i)
  %tobool24.i.not = icmp eq i32 %and1.i.i38.i, 0
  br i1 %tobool24.i.not, label %sw.epilog, label %mv2222_is_sgmii_capable.exit.if.then12.sink.split_crit_edge

mv2222_is_sgmii_capable.exit.if.then12.sink.split_crit_edge: ; preds = %mv2222_is_sgmii_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge46
  %supported.i30 = getelementptr inbounds %struct.mv2222_data, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %supported.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %supported.i30, align 4
  %30 = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i31 = icmp eq i32 %30, 0
  br i1 %tobool.not.i31, label %lor.lhs.false.i34, label %sw.bb7.if.then12.sink.split_crit_edge

sw.bb7.if.then12.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false.i34:                                ; preds = %sw.bb7
  %arrayidx.i.i.i32 = getelementptr %struct.mv2222_data, ptr %1, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i.i32, align 4
  %33 = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool5.not.i33 = icmp eq i32 %33, 0
  br i1 %tobool5.not.i33, label %lor.lhs.false6.i36, label %lor.lhs.false.i34.if.then12.sink.split_crit_edge

lor.lhs.false.i34.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false6.i36:                               ; preds = %lor.lhs.false.i34
  %34 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i32, align 4
  %36 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool10.not.i35 = icmp eq i32 %36, 0
  br i1 %tobool10.not.i35, label %lor.lhs.false11.i38, label %lor.lhs.false6.i36.if.then12.sink.split_crit_edge

lor.lhs.false6.i36.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false6.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false11.i38:                              ; preds = %lor.lhs.false6.i36
  %37 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i.i32, align 4
  %39 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not.i37 = icmp eq i32 %39, 0
  br i1 %tobool15.not.i37, label %lor.lhs.false16.i40, label %lor.lhs.false11.i38.if.then12.sink.split_crit_edge

lor.lhs.false11.i38.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false11.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

lor.lhs.false16.i40:                              ; preds = %lor.lhs.false11.i38
  %40 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i.i32, align 4
  %42 = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not.i39 = icmp eq i32 %42, 0
  br i1 %tobool20.not.i39, label %mv2222_is_10g_capable.exit, label %lor.lhs.false16.i40.if.then12.sink.split_crit_edge

lor.lhs.false16.i40.if.then12.sink.split_crit_edge: ; preds = %lor.lhs.false16.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

mv2222_is_10g_capable.exit:                       ; preds = %lor.lhs.false16.i40
  %43 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i.i32, align 4
  %45 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool24.i41.not = icmp eq i32 %45, 0
  br i1 %tobool24.i41.not, label %mv2222_is_10g_capable.exit.if.end16_crit_edge, label %mv2222_is_10g_capable.exit.if.then12.sink.split_crit_edge

mv2222_is_10g_capable.exit.if.then12.sink.split_crit_edge: ; preds = %mv2222_is_10g_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12.sink.split

mv2222_is_10g_capable.exit.if.end16_crit_edge:    ; preds = %mv2222_is_10g_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

sw.epilog:                                        ; preds = %mv2222_is_sgmii_capable.exit
  br i1 %tobool.i.not, label %sw.epilog.if.end16_crit_edge, label %sw.epilog.if.then12_crit_edge

sw.epilog.if.then12_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12.sink.split:                             ; preds = %mv2222_is_10g_capable.exit.if.then12.sink.split_crit_edge, %lor.lhs.false16.i40.if.then12.sink.split_crit_edge, %lor.lhs.false11.i38.if.then12.sink.split_crit_edge, %lor.lhs.false6.i36.if.then12.sink.split_crit_edge, %lor.lhs.false.i34.if.then12.sink.split_crit_edge, %sw.bb7.if.then12.sink.split_crit_edge, %mv2222_is_sgmii_capable.exit.if.then12.sink.split_crit_edge, %lor.lhs.false16.i.if.then12.sink.split_crit_edge, %lor.lhs.false11.i.if.then12.sink.split_crit_edge, %lor.lhs.false6.i.if.then12.sink.split_crit_edge, %lor.lhs.false.i.if.then12.sink.split_crit_edge, %if.end.if.then12.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.end.if.then12.sink.split_crit_edge ], [ 4, %lor.lhs.false.i.if.then12.sink.split_crit_edge ], [ 4, %lor.lhs.false6.i.if.then12.sink.split_crit_edge ], [ 4, %lor.lhs.false11.i.if.then12.sink.split_crit_edge ], [ 4, %lor.lhs.false16.i.if.then12.sink.split_crit_edge ], [ 4, %mv2222_is_sgmii_capable.exit.if.then12.sink.split_crit_edge ], [ 26, %sw.bb7.if.then12.sink.split_crit_edge ], [ 26, %lor.lhs.false.i34.if.then12.sink.split_crit_edge ], [ 26, %lor.lhs.false6.i36.if.then12.sink.split_crit_edge ], [ 26, %lor.lhs.false11.i38.if.then12.sink.split_crit_edge ], [ 26, %lor.lhs.false16.i40.if.then12.sink.split_crit_edge ], [ 26, %mv2222_is_10g_capable.exit.if.then12.sink.split_crit_edge ]
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %1, align 4
  br label %if.then12

if.then12:                                        ; preds = %if.then12.sink.split, %sw.epilog.if.then12_crit_edge
  %47 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv1, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %50, label %if.then12.cleanup_crit_edge [
    i32 26, label %if.then12.mv2222_config_line.exit_crit_edge
    i32 21, label %sw.bb2.i
    i32 4, label %sw.bb4.i
  ]

if.then12.mv2222_config_line.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

sw.bb4.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %mv2222_config_line.exit

mv2222_config_line.exit:                          ; preds = %sw.bb4.i, %sw.bb2.i, %if.then12.mv2222_config_line.exit_crit_edge
  %.sink.i = phi i16 [ 32627, %sw.bb4.i ], [ 31603, %sw.bb2.i ], [ 29043, %if.then12.mv2222_config_line.exit_crit_edge ]
  %call5.i = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 31, i32 noundef 61442, i16 noundef zeroext %.sink.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %mv2222_config_line.exit.cleanup_crit_edge, label %mv2222_config_line.exit.if.end16_crit_edge

mv2222_config_line.exit.if.end16_crit_edge:       ; preds = %mv2222_config_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

mv2222_config_line.exit.cleanup_crit_edge:        ; preds = %mv2222_config_line.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %mv2222_config_line.exit.if.end16_crit_edge, %sw.epilog.if.end16_crit_edge, %mv2222_is_10g_capable.exit.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %mv2222_config_line.exit.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ %call5.i, %mv2222_config_line.exit.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_marvell_88x2222__347_612_phy_module_init6, !1, !"__initcall__kmod_marvell_88x2222__347_612_phy_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 612, i32 1}
!2 = !{ptr @__exitcall_phy_module_exit, !1, !"__exitcall_phy_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description348, !4, !"__UNIQUE_ID_description348", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 620, i32 1}
!5 = !{ptr @__UNIQUE_ID_file349, !6, !"__UNIQUE_ID_file349", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 621, i32 1}
!7 = !{ptr @__UNIQUE_ID_license350, !6, !"__UNIQUE_ID_license350", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 600, i32 11}
!10 = !{ptr @mv2222_drivers, !11, !"mv2222_drivers", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 596, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 86, i32 9}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mv2222_soft_reset._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mv2222_soft_reset._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sfp_phy_ops, !21, !"sfp_phy_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 549, i32 38}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 495, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mv2222_sfp_insert._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mv2222_sfp_insert._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 500, i32 3}
!30 = !{ptr @mv2222_sfp_insert._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mv2222_sfp_insert._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/phy.h", i32 211, i32 10}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/phy.h", i32 213, i32 10}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/phy.h", i32 215, i32 10}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/phy.h", i32 217, i32 10}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/phy.h", i32 219, i32 10}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/phy.h", i32 221, i32 10}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/phy.h", i32 223, i32 10}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/phy.h", i32 225, i32 10}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/phy.h", i32 227, i32 10}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/phy.h", i32 229, i32 10}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/phy.h", i32 231, i32 10}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/phy.h", i32 233, i32 10}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/phy.h", i32 235, i32 10}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 237, i32 10}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 239, i32 10}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 241, i32 10}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 243, i32 10}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 245, i32 10}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 247, i32 10}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 249, i32 10}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 251, i32 10}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 253, i32 10}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 255, i32 10}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/phy.h", i32 257, i32 10}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/phy.h", i32 259, i32 10}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/phy.h", i32 261, i32 10}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/phy.h", i32 263, i32 10}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/phy.h", i32 265, i32 10}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/phy.h", i32 267, i32 10}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/phy.h", i32 269, i32 10}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/phy.h", i32 271, i32 10}
!94 = !{ptr @mv2222_read_status_10g.timeout, !95, !"timeout", i1 false, i1 false}
!95 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 328, i32 13}
!96 = !{ptr @mv2222_read_status_1g.timeout, !97, !"timeout", i1 false, i1 false}
!97 = !{!"../drivers/net/phy/marvell-88x2222.c", i32 364, i32 13}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
