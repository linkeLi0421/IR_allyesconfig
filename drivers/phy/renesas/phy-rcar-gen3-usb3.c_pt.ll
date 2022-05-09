; ModuleID = '/llk/IR_all_yes/drivers/phy/renesas/phy-rcar-gen3-usb3.c_pt.bc'
source_filename = "../drivers/phy/renesas/phy-rcar-gen3-usb3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rcar_gen3_usb3 = type { ptr, ptr, i32, i8, i8 }

@__initcall__kmod_phy_rcar_gen3_usb3__289_217_rcar_gen3_phy_usb3_driver_init6 = internal global ptr @rcar_gen3_phy_usb3_driver_init, section ".initcall6.init", align 4
@rcar_gen3_phy_usb3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_gen3_phy_usb3_probe, ptr @rcar_gen3_phy_usb3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_gen3_phy_usb3_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_gen3_phy_usb3_driver_exit = internal global ptr @rcar_gen3_phy_usb3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [63 x i8] c"phy_rcar_gen3_usb3.file=drivers/phy/renesas/phy-rcar-gen3-usb3\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [34 x i8] c"phy_rcar_gen3_usb3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"phy_rcar_gen3_usb3.description=Renesas R-Car Gen3 USB 3.0 PHY\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [79 x i8] c"phy_rcar_gen3_usb3.author=Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phy_rcar_gen3_usb3\00", [45 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"This driver needs device tree\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_gen3_phy_usb3_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/phy/renesas/phy-rcar-gen3-usb3.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry_ptr = internal global ptr @rcar_gen3_phy_usb3_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb3s_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_extal\00", [22 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"This driver needs usb3s_clk and/or usb_extal\0A\00", [50 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry_ptr.10 = internal global ptr @rcar_gen3_phy_usb3_probe._entry.8, section ".printk_index", align 4
@rcar_gen3_phy_usb3_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rcar_gen3_phy_usb3_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to create USB3 PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry_ptr.13 = internal global ptr @rcar_gen3_phy_usb3_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas,ssc-range\00", [46 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_probe._entry_ptr.17 = internal global ptr @rcar_gen3_phy_usb3_probe._entry.15, section ".printk_index", align 4
@rcar_gen3_phy_usb3_enable_ssc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unsupported range (%x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rcar_gen3_phy_usb3_enable_ssc\00", [34 x i8] zeroinitializer }, align 32
@rcar_gen3_phy_usb3_enable_ssc._entry_ptr = internal global ptr @rcar_gen3_phy_usb3_enable_ssc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4003, i64 4492, i64 4980]
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"rcar_gen3_phy_usb3_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 209, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 211, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"rcar_gen3_phy_usb3_match_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 125, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 140, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 152, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 157, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 164, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"rcar_gen3_phy_usb3_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 120, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 177, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 182, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 189, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [44 x i8] c"../drivers/phy/renesas/phy-rcar-gen3-usb3.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 83, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_rcar_gen3_phy_usb3_driver_exit, ptr @__initcall__kmod_phy_rcar_gen3_usb3__289_217_rcar_gen3_phy_usb3_driver_init6, ptr @rcar_gen3_phy_usb3_driver_exit, ptr @rcar_gen3_phy_usb3_enable_ssc._entry, ptr @rcar_gen3_phy_usb3_enable_ssc._entry_ptr, ptr @rcar_gen3_phy_usb3_probe._entry, ptr @rcar_gen3_phy_usb3_probe._entry.11, ptr @rcar_gen3_phy_usb3_probe._entry.15, ptr @rcar_gen3_phy_usb3_probe._entry.8, ptr @rcar_gen3_phy_usb3_probe._entry_ptr, ptr @rcar_gen3_phy_usb3_probe._entry_ptr.10, ptr @rcar_gen3_phy_usb3_probe._entry_ptr.13, ptr @rcar_gen3_phy_usb3_probe._entry_ptr.17, ptr @rcar_gen3_phy_usb3_driver, ptr @.str, ptr @rcar_gen3_phy_usb3_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rcar_gen3_phy_usb3_ops, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_phy_usb3_enable_ssc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_gen3_phy_usb3_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_phy_usb3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_gen3_phy_usb3_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #4
  %cmp.i104 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.end11.if.end20_crit_edge, label %land.lhs.true

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %call.i105 = tail call i32 @clk_prepare(ptr noundef %call12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end.i:                                         ; preds = %land.lhs.true
  %call1.i = tail call i32 @clk_enable(ptr noundef %call12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then16, label %if.end.i.if.end20.sink.split_crit_edge

if.end.i.if.end20.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.sink.split

if.then16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @clk_get_rate(ptr noundef %call12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18 = icmp ne i32 %call17, 0
  %usb3s_clk = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %tobool18 to i8
  %4 = ptrtoint ptr %usb3s_clk to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %usb3s_clk, align 4
  tail call void @clk_disable(ptr noundef %call12) #4
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then16, %if.end.i.if.end20.sink.split_crit_edge
  tail call void @clk_unprepare(ptr noundef %call12) #4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #4
  %cmp.i106 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.end20.if.end32_crit_edge, label %land.lhs.true23

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true23:                                  ; preds = %if.end20
  %call.i107 = tail call i32 @clk_prepare(ptr noundef %call21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i111, label %land.lhs.true23.if.end32_crit_edge

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end.i111:                                      ; preds = %land.lhs.true23
  %call1.i109 = tail call i32 @clk_enable(ptr noundef %call21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool2.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool2.not.i110, label %if.then26, label %if.end.i111.if.end32.sink.split_crit_edge

if.end.i111.if.end32.sink.split_crit_edge:        ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split

if.then26:                                        ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call i32 @clk_get_rate(ptr noundef %call21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28 = icmp ne i32 %call27, 0
  %usb_extal = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 4
  %frombool31 = zext i1 %tobool28 to i8
  %5 = ptrtoint ptr %usb_extal to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool31, ptr %usb_extal, align 1
  tail call void @clk_disable(ptr noundef %call21) #4
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.then26, %if.end.i111.if.end32.sink.split_crit_edge
  tail call void @clk_unprepare(ptr noundef %call21) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %land.lhs.true23.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %usb3s_clk33 = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %usb3s_clk33 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %usb3s_clk33, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool34.not = icmp eq i8 %7, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

land.lhs.true35:                                  ; preds = %if.end32
  %usb_extal36 = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %usb_extal36 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %usb_extal36, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool37.not = icmp eq i8 %9, 0
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true35.if.end42_crit_edge

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end41:                                         ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  br label %error

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  %call43 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @rcar_gen3_phy_usb3_ops) #4
  %phy = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call43, ptr %phy, align 4
  %cmp.i115 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %error

if.end52:                                         ; preds = %if.end42
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %ssc_range = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef %ssc_range, i32 noundef 1, i32 noundef 0) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %driver_data.i.i116 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i116 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i116, align 4
  %call56 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #4
  %cmp.i117 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end61, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  %20 = ptrtoint ptr %call56 to i32
  br label %error

error:                                            ; preds = %do.end61, %do.end49, %do.end41
  %ret.0 = phi i32 [ %13, %do.end49 ], [ %20, %do.end61 ], [ -22, %do.end41 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end52.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %if.then8 ], [ %ret.0, %error ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb3_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_phy_usb3_init(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb3s_clk = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb3s_clk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb3s_clk, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %usb_extal = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb_extal to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_extal, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 2585) #4, !srcloc !60
  %ssc_range.i = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ssc_range.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssc_range.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end.i.i [
    i32 0, label %if.then.rcar_gen3_phy_usb3_select_usb_extal.exit_crit_edge
    i32 4980, label %if.then.do.body11.i.i_crit_edge
    i32 4492, label %sw.bb2.i.i
    i32 4003, label %sw.bb6.i.i
  ]

if.then.do.body11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11.i.i

if.then.rcar_gen3_phy_usb3_select_usb_extal.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_gen3_phy_usb3_select_usb_extal.exit

sw.bb2.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11.i.i

sw.bb6.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body11.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %phy.i.i = getelementptr inbounds %struct.rcar_gen3_usb3, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %9) #7
  br label %rcar_gen3_phy_usb3_select_usb_extal.exit

do.body11.i.i:                                    ; preds = %sw.bb6.i.i, %sw.bb2.i.i, %if.then.do.body11.i.i_crit_edge
  %val.0.i.i = phi i16 [ 20, %sw.bb6.i.i ], [ 18, %sw.bb2.i.i ], [ 16, %if.then.do.body11.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11.i, i16 %val.0.i.i) #4, !srcloc !60
  br label %rcar_gen3_phy_usb3_select_usb_extal.exit

rcar_gen3_phy_usb3_select_usb_extal.exit:         ; preds = %do.body11.i.i, %do.end.i.i, %if.then.rcar_gen3_phy_usb3_select_usb_extal.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -15867) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 4096) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %20, i32 54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12.i, i16 6681) #4, !srcloc !60
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %22, i32 54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13.i, i16 2585) #4, !srcloc !60
  br label %do.body

do.body:                                          ; preds = %rcar_gen3_phy_usb3_select_usb_extal.exit, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 100
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #4, !srcloc !60
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_phy_rcar_gen3_usb3__289_217_rcar_gen3_phy_usb3_driver_init6, !1, !"__initcall__kmod_phy_rcar_gen3_usb3__289_217_rcar_gen3_phy_usb3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 217, i32 1}
!2 = !{ptr @__exitcall_rcar_gen3_phy_usb3_driver_exit, !1, !"__exitcall_rcar_gen3_phy_usb3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 219, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 220, i32 1}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 221, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 211, i32 12}
!12 = !{ptr @rcar_gen3_phy_usb3_driver, !13, !"rcar_gen3_phy_usb3_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 209, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 140, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_gen3_phy_usb3_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_gen3_phy_usb3_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 152, i32 26}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 157, i32 26}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 164, i32 3}
!28 = !{ptr @rcar_gen3_phy_usb3_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rcar_gen3_phy_usb3_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 177, i32 3}
!32 = !{ptr @rcar_gen3_phy_usb3_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rcar_gen3_phy_usb3_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 182, i32 37}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 189, i32 3}
!38 = !{ptr @rcar_gen3_phy_usb3_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rcar_gen3_phy_usb3_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @rcar_gen3_phy_usb3_ops, !41, !"rcar_gen3_phy_usb3_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 120, i32 29}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 83, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rcar_gen3_phy_usb3_enable_ssc._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rcar_gen3_phy_usb3_enable_ssc._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rcar_gen3_phy_usb3_match_table, !48, !"rcar_gen3_phy_usb3_match_table", i1 false, i1 false}
!48 = !{!"../drivers/phy/renesas/phy-rcar-gen3-usb3.c", i32 125, i32 34}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{i64 2155051328}
!60 = !{i64 3072358}
!61 = !{i64 2155053595}
!62 = !{i64 2155054012}
!63 = !{i64 2155054545}
!64 = !{i64 2155056867}
